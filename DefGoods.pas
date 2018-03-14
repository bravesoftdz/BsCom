unit DefGoods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AddShape, StdCtrls, Buttons, AddBitBtn,
  AddLabeledEdit, AddBevel, StdGroupBox, Stdlabel, ComCtrls, Win32StatusBar,
  Grids, DBGrids, DCDBGrid, hbtSelectedField, DBCtrls, DCDBText,DB,HbtMessageDialog,
  Win32PageControl, ImgList, Win32ImageList, AddImage;

type
  TfmDefGoods = class(TForm)
    AddShape1: TAddShape;
    Win32StatusBar1: TWin32StatusBar;
    Stdlabel1: TStdlabel;
    Stdlabel3: TStdlabel;
    Stdlabel4: TStdlabel;
    Stdlabel6: TStdlabel;
    Stdlabel7: TStdlabel;
    Stdlabel9: TStdlabel;
    Stdlabel10: TStdlabel;
    Stdlabel12: TStdlabel;
    Stdlabel13: TStdlabel;
    dbgGoods: TDCDBGrid;
    SelectedField: ThbtSelectedField;
    pgcGoods: TWin32PageControl;
    tbsNew: TTabSheet;
    dbtxtKindName: TDCDBText;
    lbledName: TAddLabeledEdit;
    lbledModel: TAddLabeledEdit;
    lbledMatk: TAddLabeledEdit;
    lbledComment: TAddLabeledEdit;
    BtnSave: TAddBitBtn;
    BtnSaveNew: TAddBitBtn;
    btnDel: TAddBitBtn;
    lbledKind: TAddLabeledEdit;
    btnGoodsKind: TAddBitBtn;
    tbsEdit: TTabSheet;
    BtnClose: TAddBitBtn;
    lbledNameEdit: TAddLabeledEdit;
    lbledKindEdit: TAddLabeledEdit;
    lbledMarkEdit: TAddLabeledEdit;
    lbledModelEdit: TAddLabeledEdit;
    lbledCommentsEdit: TAddLabeledEdit;
    btnSaveEdit: TAddBitBtn;
    lbledSelGoods: TAddLabeledEdit;
    btnGoodsSelect: TAddBitBtn;
    DCDBText2: TDCDBText;
    btnGoodKindEdit: TAddBitBtn;
    dbtxtKindNameEdit: TDCDBText;
    Stdlabel5: TStdlabel;
    Stdlabel11: TStdlabel;
    Stdlabel14: TStdlabel;
    Stdlabel15: TStdlabel;
    Win32ImageList1: TWin32ImageList;
    AddImage1: TAddImage;
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnInsertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbledKindKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure lbledKindChange(Sender: TObject);
    procedure btnGoodsKindClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure BtnSaveNewClick(Sender: TObject);
    procedure lbledSelGoodsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelGoodsChange(Sender: TObject);
    procedure btnGoodsSelectClick(Sender: TObject);
    procedure btnSaveEditClick(Sender: TObject);
    procedure lbledKindEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGoodKindEditClick(Sender: TObject);
    procedure dbgGoodsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private

    Function CheckData(ForInsert:Boolean):Boolean ;

    procedure LoadData(GoodsCode:Integer);
    Procedure ClearAllTextBox;

  public
        Function MyShowModal():String; 
  end;

var
  fmDefGoods: TfmDefGoods;

implementation

uses DMMain, Math, ADODB, MyLibrary;

{$R *.dfm}

procedure TfmDefGoods.FormKeyUp(Sender: TObject; var Key: Word;
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
                             pgcGoods.ActivePage := tbsNew;
                             btnDel.Click;
                        end;
              ord('S')  :
                        begin
                             pgcGoods.ActivePage := tbsNew;
                             BtnSave.Click;
                        end;
              ord('E')  :
                        begin
                             pgcGoods.ActivePage := tbsEdit;
                        end;
              ord('R')  :
                        begin
                             pgcGoods.ActivePage := tbsNew;
                             BtnSaveNew.Click;
                        end;
              ord('P')  :
                        begin
                             pgcGoods.ActivePage := tbsEdit;
                             btnSaveEdit.Click;
                        end;
         end;

end;

procedure TfmDefGoods.BtnCloseClick(Sender: TObject);
begin
     Close;
end;

procedure TfmDefGoods.BtnSaveClick(Sender: TObject);
begin
     with TDefGoodsClass Do
     begin
         if CheckData(True)Then
           InsertValues(StrToint(lbledKind.Text),Trim(lbledName.Text),Trim(lbledMatk.Text),Trim(lbledModel.Text),Trim(lbledComment.Text));
     end;
     fmDMmain.tblGoods.Refresh;
end;

procedure TfmDefGoods.BtnInsertClick(Sender: TObject);
begin
     lbledName.SetFocus;
     with TDefGoodsClass do
     begin
          Insert;
          ClearAllTextBox;
     end;
end;

Procedure TfmDefGoods.ClearAllTextBox;
Var
   I:Integer;//For Index
begin
     for i := 0 To ComponentCount-1 Do
     begin
          If (Components[i] Is TLabeledEdit) Then
            ( Components[i] As TLabeledEdit ).Clear;
     end;
end;

procedure TfmDefGoods.FormCreate(Sender: TObject);
begin
     with fmDMmain Do
     begin
          tblGoods.Open;
     end;
end;

procedure TfmDefGoods.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     with fmDMmain Do
     begin
          if (tblGoods.State = dsInsert) or (tblGoods.State = dsEdit) Then
             tblGoods.Cancel;
          tblGoods.Close;
          tblGoodsKind.Close;
     end;
     ClearAllTextBox;
end;

procedure TfmDefGoods.lbledKindKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key =VK_DOWN Then
        lbledKind.Text:=SelectedField.Execute;
end;

procedure TfmDefGoods.FormShow(Sender: TObject);
begin
     with fmDMmain Do
     begin
          tblGoods.Open;
          tblGoodsKind.Open;
     end;
     pgcGoods.ActivePage := tbsNew;
     lbledName.SetFocus;
end;

procedure TfmDefGoods.lbledKindChange(Sender: TObject);
begin
     with fmDMmain.tblGoodsKind do
     begin
          if Trim(lbledKind.Text)<>'' then
             Locate('xCode_Pk_inc',strToint(lbledKind.Text),[]);
     end;

end;
procedure TfmDefGoods.btnGoodsKindClick(Sender: TObject);
begin
     SelectedField.TableName := 'tblGoodsKind';
     SelectedField.ReturnFieldName :='xCode_Pk_inc';
     SelectedField.DisplayFieldName :='xGoodsTypeName';
     lbledKind.Text:=SelectedField.Execute;
end;

procedure TfmDefGoods.btnDelClick(Sender: TObject);
begin
     with fmDMmain.tblGoods Do
     begin
          if fmDMmain.YesNoDialog.Show('¬Ì« «ÿ„Ì‰«‰ œ«—Ìœ ø') then
             Delete;
     end;
end;

procedure TfmDefGoods.BtnSaveNewClick(Sender: TObject);
begin
     with TDefGoodsClass Do
     begin
          if CheckData(True) Then
          begin
             InsertValues(StrToint(lbledKind.Text),Trim(lbledName.Text),Trim(lbledMatk.Text),Trim(lbledModel.Text),Trim(lbledComment.Text));
             ClearAllTextBox;
             Insert;
          end;
     end;
     fmDMmain.tblGoods.Refresh;     
end;

procedure TfmDefGoods.lbledSelGoodsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   thisKey   : Word;
   thisShift : TShiftState;
begin
     thisKey := Key;
     thisshift:= Shift;
     if key = VK_DOWN Then
     begin
          SelectedField.TableName := 'tblGoods';
          SelectedField.ReturnFieldName :='xGoodsCode_Pk_Inc';
          SelectedField.DisplayFieldName :='xGoodsName';
          lbledSelGoods.Text := SelectedField.Execute;
     end;
     fmDefGoods.OnKeyUp(Self,thisKey,thisShift);
end;

procedure TfmDefGoods.lbledSelGoodsChange(Sender: TObject);
begin
     if Trim(lbledSelGoods.Text) <>'' then
        LoadData(StrToInt(lbledSelGoods.Text));
end;

procedure TfmDefGoods.LoadData(GoodsCode: Integer);
begin
     if IntTostr(GoodsCode)='' then Exit;
     with fmDMmain.tblGoods do
     begin
          Locate('xGoodsCode_Pk_Inc',GoodsCode,[]);
          lbledNameEdit.Text     := FieldByname('xGoodsName').AsString;
          lbledKindEdit.Text     := FieldByname('xGoodsKindCode_Fk').AsString;
          lbledMarkEdit.Text     := FieldByname('xGoodsMark').AsString;
          lbledModelEdit.Text    := FieldByName('xGoodsModel').AsString;
          lbledCommentsEdit.Text := FieldByName('xComments').AsString;
     end;
end;

procedure TfmDefGoods.btnGoodsSelectClick(Sender: TObject);
begin
      SelectedField.TableName := 'tblGoods';
      SelectedField.ReturnFieldName :='xGoodsCode_Pk_Inc';
      SelectedField.DisplayFieldName :='xGoodsName';
      lbledSelGoods.Text := SelectedField.Execute;
end;

procedure TfmDefGoods.btnSaveEditClick(Sender: TObject);
begin
     with TDefGoodsClass do
     begin
          if lbledSelGoods.Text = '' then
          begin
               fmDMmain.MessageDialog.Show('·ÿ›« ﬁÿ⁄Â „Ê—œ ‰Ÿ— ŒÊœ —« «‰ Œ«» ò‰Ìœ',HbtInformation);
               Exit;
          end;
          if CheckData(False)Then
             Update(lbledSelGoods.Text,lbledKindEdit.Text,Trim(lbledNameEdit.Text),Trim(lbledMarkEdit.Text),Trim(lbledModelEdit.Text),Trim(lbledCommentsEdit.Text));
     end;
     fmDMmain.tblGoods.Refresh;
     if CheckData(False)Then
        ClearAllTextBox;
end;

Function TfmDefGoods.CheckData(ForInsert:Boolean):Boolean ;
begin
     Result := True;
     if ForInsert Then
     begin
         if lbledName.Text  = ''  Then
         begin
            Result := False;
            fmDMmain.MessageDialog.Show('·ÿ›« ‰«„ ﬁÿ⁄Â —« Ê«—œ ò‰Ìœ' ,HbtInformation);
            Exit;
         end;
         if lbledKind.Text  = ''  Then
         begin
            Result := False;
            fmDMmain.MessageDialog.Show('·ÿ›« ‰Ê⁄ ﬁÿ⁄Â —« „⁄Ì‰ ò‰Ìœ' ,HbtInformation);
            Exit;
         end;
     end
     else
     begin
         if lbledNameEdit.Text  = ''  Then
         begin
            Result := False;
            fmDMmain.MessageDialog.Show('·ÿ›« ‰«„ ﬁÿ⁄Â —« Ê«—œ ò‰Ìœ' ,HbtInformation);
            Exit;
         end;
         if lbledKindEdit.Text  = ''  Then
         begin
            Result := False;
            fmDMmain.MessageDialog.Show('·ÿ›« ‰Ê⁄ ﬁÿ⁄Â —« „⁄Ì‰ ò‰Ìœ' ,HbtInformation);
            Exit;
         end;
     end;
end;

procedure TfmDefGoods.lbledKindEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key =VK_DOWN Then
        lbledKindEdit.Text:=SelectedField.Execute;
end;

procedure TfmDefGoods.btnGoodKindEditClick(Sender: TObject);
begin
     SelectedField.TableName := 'tblGoodsKind';
     SelectedField.ReturnFieldName :='xCode_Pk_inc';
     SelectedField.DisplayFieldName :='xGoodsTypeName';
     lbledKind.Text:=SelectedField.Execute;
end;

procedure TfmDefGoods.dbgGoodsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   thisKey : Word;
   thisShift :TShiftState;
begin
     thisKey   := key;
     thisShift := Shift;
     if (ssctrl In Shift) and (Key=Vk_Tab) then
        SelectNext(Self,True,True);
     fmDefGoods.OnKeyUp(Self,thisKey,thisShift);
end;

function TfmDefGoods.MyShowModal: String;
begin
     ShowModal;
     with fmDMmain.tblGoods do
     begin
          Open;
          Last;
          Result := FieldByName('xGoodsCode_Pk_Inc').AsString;
     end;

end;

end.
