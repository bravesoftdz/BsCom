unit DefSeller;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AddShape, StdCtrls, Stdlabel, Grids, DBGrids, DCDBGrid,
  hbtSelectedField, ComCtrls, Win32StatusBar, Win32PageControl, Buttons,
  AddBitBtn, StdComboBox, AddLabeledEdit, StdCheckBox, AddBevel, DBCtrls,
  DCDBText, ImgList, Win32ImageList,HbtMessageDialog, AddImage;

type
  TfmDefSeller = class(TForm)
    shpBaner: TAddShape;
    Stdlabel1: TStdlabel;
    dbgPerson: TDCDBGrid;
    pgcPerson: TWin32PageControl;
    Win32StatusBar1: TWin32StatusBar;
    tbsNew: TTabSheet;
    tbsEdit: TTabSheet;
    BtnClose: TAddBitBtn;
    lbledName: TAddLabeledEdit;
    lbledFamily: TAddLabeledEdit;
    lbledJob: TAddLabeledEdit;
    cmbTahsilat: TStdComboBox;
    Stdlabel2: TStdlabel;
    lbledHomeTell: TAddLabeledEdit;
    lbledWorkTel: TAddLabeledEdit;
    lbledMobile: TAddLabeledEdit;
    lbledHomeAddress: TAddLabeledEdit;
    lbledWorkAddress: TAddLabeledEdit;
    lbledcomments: TAddLabeledEdit;
    lbledJobEdit: TAddLabeledEdit;
    lbledfamilyEdit: TAddLabeledEdit;
    lbledNameEdit: TAddLabeledEdit;
    cmbtahsilatEdit: TStdComboBox;
    lbledHomeTelEdit: TAddLabeledEdit;
    lbledWorkTelEdit: TAddLabeledEdit;
    Stdlabel3: TStdlabel;
    lbledMobileEdit: TAddLabeledEdit;
    lbledHomeAddressEdit: TAddLabeledEdit;
    lblWorkAddressEdit: TAddLabeledEdit;
    lbledCommentsEdit: TAddLabeledEdit;
    Stdlabel5: TStdlabel;
    Stdlabel6: TStdlabel;
    chbIsMarrid: TStdCheckBox;
    chbGendor: TStdCheckBox;
    Stdlabel8: TStdlabel;
    chbIsMarridEdit: TStdCheckBox;
    Stdlabel9: TStdlabel;
    chbGendorEdit: TStdCheckBox;
    BtnSave: TAddBitBtn;
    BtnSaveNew: TAddBitBtn;
    btnDel: TAddBitBtn;
    AddBevel1: TAddBevel;
    Stdlabel11: TStdlabel;
    Stdlabel12: TStdlabel;
    Stdlabel13: TStdlabel;
    Stdlabel14: TStdlabel;
    Stdlabel16: TStdlabel;
    Stdlabel17: TStdlabel;
    Stdlabel18: TStdlabel;
    Stdlabel19: TStdlabel;
    Stdlabel20: TStdlabel;
    Stdlabel21: TStdlabel;
    Stdlabel22: TStdlabel;
    Stdlabel23: TStdlabel;
    lbledSelPerson: TAddLabeledEdit;
    dbtxtName: TDCDBText;
    dbtxtFamily: TDCDBText;
    btnSelPerson: TAddBitBtn;
    btnSaveEdit: TAddBitBtn;
    AddBevel2: TAddBevel;
    Win32ImageList1: TWin32ImageList;
    SelectedField: ThbtSelectedField;
    AddImage1: TAddImage;
    procedure FormShow(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chbIsMarridClick(Sender: TObject);
    procedure chbGendorClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInsertClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnSaveNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure lbledSelPersonKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelPersonClick(Sender: TObject);
    procedure lbledSelPersonChange(Sender: TObject);
    procedure btnSaveEditClick(Sender: TObject);
    procedure dbgPersonKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Function CheckData(ForInsert:Boolean):Boolean ;

    procedure LoadData(PersonCode:Integer);
    Procedure ClearAllTextBox;
  public
    Function MyShowModal():String;
  end;

var
  fmDefSeller: TfmDefSeller;

implementation

uses DMMain, DB;

{$R *.dfm}

procedure TfmDefSeller.FormShow(Sender: TObject);
begin
     shpBaner.Pen.Color := clHighlight;
     //Active Tables
     with fmDMmain do
     begin
          tblPerson.Filtered := False;
          tblPerson.Filter   :='xIsSeller = True';
          tblPerson.Filtered := True;
          tblPerson.Open;
     end;
     pgcPerson.ActivePage := tbsNew;
     lbledName.SetFocus;

end;

procedure TfmDefSeller.BtnCloseClick(Sender: TObject);
begin
     Close;
end;

procedure TfmDefSeller.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     with fmDMmain do
     begin
          if (tblPerson.state=dsInsert) or (tblPerson.State=dsEdit) Then
             tblPerson.Cancel;

          tblPerson.Filtered := False;
          tblPerson.Filter   :='';
          tblPerson.Close;
     end;
     ClearAllTextBox;
end;

function TfmDefSeller.CheckData(ForInsert: Boolean): Boolean;
begin
     Result := True;
     if ForInsert Then
     begin
          if lbledName.Text='' Then
          begin
               lbledName.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« ‰«„ —« Ê«—œ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledFamily.Text='' Then
          begin
               lbledFamily.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« ‰«„ Œ«‰Ê«œêÌ —« Ê«—œ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if (lbledWorkTel.Text='') and (lbledHomeTell.Text='') and (lbledMobile.Text='') Then
          begin
               lbledHomeTell.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« ÌòÌ «“ ‘„«—Â Â«Ì  ·›‰ Ì«  ·›‰ Â„—«Â —« Ê«—œ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
     end
     else
     begin
          if lbledNameEdit.Text='' Then
          begin
               lbledNameEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« ‰«„ —« Ê«—œ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if lbledFamilyEdit.Text='' Then
          begin
               lbledFamilyEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« ‰«„ Œ«‰Ê«œêÌ —« Ê«—œ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
          if (lbledWorkTelEdit.Text='') and (lbledHomeTelEdit.Text='') and (lbledMobileEdit.Text='') Then
          begin
               lbledHomeTelEdit.SetFocus;
               fmDMmain.MessageDialog.Show('·ÿ›« ÌòÌ «“ ‘„«—Â Â«Ì  ·›‰ Ì«  ·›‰ Â„—«Â —« Ê«—œ ò‰Ìœ',HbtInformation);
               Result := false;
               Exit;
          end;
     end;
end;

procedure TfmDefSeller.ClearAllTextBox;
Var
   I:Integer;//For Index
begin
     for i := 0 To ComponentCount-1 Do
     begin
          If (Components[i] Is TLabeledEdit) Then
            ( Components[i] As TLabeledEdit ).Clear;
     end;
end;

procedure TfmDefSeller.LoadData(PersonCode: Integer);
begin
     if IntTostr(PersonCode)='' then Exit;
     with fmDMmain.tblPerson do
     begin
          Locate('xPersonCode_Pk_AN',PersonCode,[]);
          chbIsMarrid.Checked      := FieldByName('xIsMarrid').AsBoolean;
          chbGendor.checked        := FieldByName('xGendor').AsBoolean;
          lbledNameEdit.Text       := FieldByName('xName').AsString;
          lbledfamilyEdit.Text     := FieldByName('xFamily').AsString;
          lbledJobEdit.Text        := FieldByName('xJob').AsString;
          cmbtahsilatEdit.Text     := FieldByName('xTahsilat').AsString;
          lbledHomeTelEdit.Text    := FieldByName('xTell1').AsString;
          lbledWorkTelEdit.Text    := FieldByName('xTell2').AsString;
          lbledMobileEdit.Text     := FieldByName('xMobile').AsString ;
          lbledHomeAddressEdit.Text:= FieldByName('xHomeAddress').AsString;
          lblWorkAddressEdit.Text  := FieldByName('xWorkAddress').AsString;
          lbledCommentsEdit.Text   := FieldByName('xComments').AsString;
     end;
end;

procedure TfmDefSeller.chbIsMarridClick(Sender: TObject);
begin
     case chbIsMarrid.Checked of
          False : chbIsMarrid.Caption := '„Ã—œ';
          True  : chbIsMarrid.Caption := '„ «Â·';
     end;
end;

procedure TfmDefSeller.chbGendorClick(Sender: TObject);
begin
     case chbGendor.Checked Of
          False : chbGendor.Caption :='„—œ';
          True  : chbGendor.Caption :='“‰';
     end;
end;

procedure TfmDefSeller.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key =VK_ESCAPE Then
     begin
        BtnClose.Click;
        Exit;
     end;
     if (ssAlt In Shift) then
         case Key of
              VK_DELETE :
                        begin
                             pgcPerson.ActivePage := tbsNew;
                             btnDel.Click;
                        end;
              ord('S')  :
                        begin
                             pgcPerson.ActivePage := tbsNew;
                             BtnSave.Click;
                        end;
              ord('E')  :
                        begin
                             pgcPerson.ActivePage := tbsEdit;
                        end;
              ord('R')  :
                        begin
                             pgcPerson.ActivePage := tbsNew;
                             BtnSaveNew.Click;
                        end;
              ord('P')  :
                        begin
                             pgcPerson.ActivePage := tbsEdit;
                             btnSaveEdit.Click;
                        end;
         end;
end;

procedure TfmDefSeller.BtnInsertClick(Sender: TObject);
begin
     lbledName.SetFocus;
     with TDefPersonClass do
     begin
          Insert;
          ClearAllTextBox;
     end;
end;

procedure TfmDefSeller.BtnSaveClick(Sender: TObject);
begin
     with TDefPersonClass Do
     begin
          if CheckData(True) Then
              InsertValues(Trim(lbledName.Text),Trim(lbledFamily.Text),Trim(lbledJob.Text),cmbTahsilat.Text,Trim(lbledHomeTell.Text),
                           Trim(lbledWorkTel.Text),Trim(lbledMobile.Text),True,chbIsMarrid.Checked,chbGendor.Checked,
                           Trim(lbledHomeAddress.Text),Trim(lbledWorkAddress.Text),Trim(lbledcomments.Text));
     end;
     fmDMmain.tblPerson.Refresh;
end;

procedure TfmDefSeller.BtnSaveNewClick(Sender: TObject);
begin
     with TDefPersonClass Do
     begin
          if CheckData(True) Then
          begin
              InsertValues(Trim(lbledName.Text),Trim(lbledFamily.Text),Trim(lbledJob.Text),cmbTahsilat.Text,Trim(lbledHomeTell.Text),
                           Trim(lbledWorkTel.Text),Trim(lbledMobile.Text),True,chbIsMarrid.Checked,chbGendor.Checked,
                           Trim(lbledHomeAddress.Text),Trim(lbledWorkAddress.Text),Trim(lbledcomments.Text));
              ClearAllTextBox;
              Insert;              
          end;
     end;
     fmDMmain.tblPerson.Refresh;
end;

procedure TfmDefSeller.btnDelClick(Sender: TObject);
begin
     with fmDMmain.tblPerson Do
     begin
          if fmDMmain.YesNoDialog.Show('¬Ì« «ÿ„Ì‰«‰ œ«—Ìœ ø') then
             Delete;
     end;
end;

procedure TfmDefSeller.lbledSelPersonKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   thisKey : Word;
   thisShift : TShiftState;
begin
     thiskey := Key;
     thisShift := Shift;
     if key = VK_DOWN Then
     begin
          SelectedField.Query :='Select xPersonCode_Pk_AN,(xName+'+QuotedStr(' ')+'+xFamily) As NameFamily , xIsSeller From tblPerson where xIsSeller = TRUE order By (xName+'+QuotedStr(' ')+'+xFamily)';
          SelectedField.DisplayFieldName := 'NameFamily';
          lbledSelPerson.Text := SelectedField.Execute;
     end;
     fmDefSeller.OnKeyUp(Self,thisKey,Shift)
end;

procedure TfmDefSeller.btnSelPersonClick(Sender: TObject);
begin
     SelectedField.Query :='Select xPersonCode_Pk_AN,(xName+'+QuotedStr(' ')+'+xFamily) As NameFamily , xIsSeller From tblPerson where xIsSeller = TRUE order By (xName+'+QuotedStr(' ')+'+xFamily)';
     SelectedField.DisplayFieldName := 'NameFamily';
     lbledSelPerson.Text := SelectedField.Execute;
end;

procedure TfmDefSeller.lbledSelPersonChange(Sender: TObject);
begin
     if Trim(lbledSelPerson.Text) <>'' then
        LoadData(StrToInt(lbledSelPerson.Text));
end;

procedure TfmDefSeller.btnSaveEditClick(Sender: TObject);
begin
     with TDefPersonClass do
     begin
          if lbledSelPerson.Text = '' then
          begin
               fmDMmain.MessageDialog.Show('·ÿ›« ‘Œ’ „Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Exit;
          end;
          if CheckData(False)Then
              Update(lbledSelPerson.Text,Trim(lbledNameEdit.Text),Trim(lbledFamilyEdit.Text),Trim(lbledJobEdit.Text),cmbTahsilatEdit.Text,Trim(lbledHomeTelEdit.Text),
                     Trim(lbledWorkTelEdit.Text),Trim(lbledMobileEdit.Text),True,chbIsMarridEdit.Checked,chbGendorEdit.Checked,
                     Trim(lbledHomeAddressEdit.Text),Trim(lblWorkAddressEdit.Text),Trim(lbledCommentsEdit.Text));
     end;
     fmDMmain.tblPerson.Refresh;
     if CheckData(False) Then
        ClearAllTextBox;
end;

procedure TfmDefSeller.dbgPersonKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   thisKey : Word;
   thisShift :TShiftState;
begin
     thisKey   := key;
     thisShift := Shift;
     if (ssctrl In Shift) and (Key=Vk_Tab) then
        SelectNext(Self,True,True);
     fmDefSeller.OnKeyUp(Self,thisKey,thisShift);
end;

function TfmDefSeller.MyShowModal: String;
begin
     ShowModal;
     with fmDMmain.tblPerson do
     begin
          Open;
          Last;
          Result := FieldByName('xPersonCode_Pk_AN').AsString;
     end;
end;

end.
