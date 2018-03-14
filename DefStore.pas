unit DefStore;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ExtCtrls,
  AddShape,
  StdCtrls,
  AddLabeledEdit,
  DBCtrls,
  DCDBText,
  ComCtrls,
  Win32PageControl,
  Buttons,
  AddBitBtn,
  Grids,
  DBGrids,
  DCDBGrid,
  Db,
  hbtSelectedField,
  Stdlabel,
  ImgList,
  Win32ImageList,
  Win32StatusBar,
  HbtMessageDialog, AddImage, Spin;

type
  TfmStoreInfo = class(TForm)
    shpBanner: TAddShape;
    dbgGoods: TDCDBGrid;
    BtnClose: TAddBitBtn;
    pgcStoreGoods: TWin32PageControl;
    tbsNew: TTabSheet;
    lbledGoodsCode: TAddLabeledEdit;
    lbledGoodsPrice: TAddLabeledEdit;
    lbledMark: TAddLabeledEdit;
    BtnSave: TAddBitBtn;
    BtnSaveNew: TAddBitBtn;
    btnDel: TAddBitBtn;
    tbsEdit: TTabSheet;
    DCDBText2: TDCDBText;
    lbledSelStoreGoods: TAddLabeledEdit;
    btnSleStoreGoods: TAddBitBtn;
    Win32StatusBar1: TWin32StatusBar;
    Win32ImageList1: TWin32ImageList;
    Stdlabel1: TStdlabel;
    lbledStoreCode: TAddLabeledEdit;
    btnselCreator: TAddBitBtn;
    Stdlabel4: TStdlabel;
    Stdlabel5: TStdlabel;
    Stdlabel6: TStdlabel;
    Stdlabel7: TStdlabel;
    Stdlabel9: TStdlabel;
    Stdlabel10: TStdlabel;
    Stdlabel12: TStdlabel;
    Stdlabel13: TStdlabel;
    Stdlabel11: TStdlabel;
    Stdlabel14: TStdlabel;
    Stdlabel15: TStdlabel;
    Stdlabel16: TStdlabel;
    AddImage1: TAddImage;
    Stdlabel17: TStdlabel;
    lbledCreator: TAddLabeledEdit;
    AddLabeledEdit1: TAddLabeledEdit;
    SpinEdit1: TSpinEdit;
    Stdlabel3: TStdlabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lbledSelGoodsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnselCreatorClick(Sender: TObject);
    procedure lbledSelGoodsChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnInsertClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnSaveNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnSaveEditClick(Sender: TObject);
    procedure lbledSelStoreGoodsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSleStoreGoodsClick(Sender: TObject);
    procedure lbledSelStoreGoodsChange(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure dbgGoodsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DefGoodsClick(Sender: TObject);
  private
    Function CheckData(ForInsert:Boolean):Boolean ;

    Procedure LoadGoods(GoodsCode:Integer);
    procedure LoadData(StoreGoodsCode:Integer);
    Procedure ClearAllTextBox;
  public
    { Public declarations }
  end;

var
  fmStoreInfo: TfmStoreInfo;

implementation

uses DMMain, DefGoods;

{$R *.dfm}

procedure TfmStoreInfo.FormShow(Sender: TObject);
begin
     shpBanner.Pen.Color := clHighlight;
     //active Table
     with fmDMmain do
     begin
          tblGoods.Open;
          tblGoodsKind.Open;
          tblstoreInfo.Open;
     end;
     pgcStoreGoods.ActivePage := tbsNew;
     lbledSelGoods.SetFocus;
end;

procedure TfmStoreInfo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     with fmDMmain do
     begin
          tblGoods.Close;
          if (tblstoreInfo.State = dsInsert) or (tblstoreInfo.State = dsEdit) Then
             tblGoods.Cancel;
          tblstoreInfo.Close;
     end;
     ClearAllTextBox;
end;

procedure TfmStoreInfo.lbledSelGoodsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   thiskey : Word;
   thisShift : TShiftState;
begin
     thiskey := Key;
     thisShift := Shift;
     if key=VK_DOWN Then
     begin
          SelectedField.TableName:= 'tblGoods';
          SelectedField.DisplayFieldName :='xGoodsName';
          SelectedField.ReturnFieldName  :='xGoodsCode_Pk_Inc';
          lbledSelGoods.Text := SelectedField.Execute;
     end;
     fmStoreInfo.OnKeyUp(Self,thiskey,thisShift);
end;

procedure TfmStoreInfo.btnselCreatorClick(Sender: TObject);
begin
      SelectedField.TableName:= 'tblGoods';
      SelectedField.DisplayFieldName :='xGoodsName';
      SelectedField.ReturnFieldName  :='xGoodsCode_Pk_Inc';
      lbledSelGoods.Text := SelectedField.Execute;
end;

procedure TfmStoreInfo.LoadGoods(GoodsCode: Integer);
begin
     if IntTostr(GoodsCode)='' then Exit;
     with fmDMmain.tblGoods do
     begin
          Locate('xGoodsCode_Pk_Inc',GoodsCode,[]);
          lbledGoodsCode.Text    := FieldByname('xGoodsCode_Pk_Inc').AsString;
          lbledName.Text         := FieldByname('xGoodsName').AsString;
          lbledMark.Text         := FieldByname('xGoodsMark').AsString;
          lbledModel.Text        := FieldByName('xGoodsModel').AsString;
     end;
end;

procedure TfmStoreInfo.lbledSelGoodsChange(Sender: TObject);
begin
     if Trim(lbledSelGoods.Text) ='' Then Exit;
     LoadGoods(StrToInt(lbledSelGoods.Text));
end;

function TfmStoreInfo.CheckData(ForInsert: Boolean): Boolean;
begin
     Result := True;
     if ForInsert Then
     begin
         if Trim(lbledSelGoods.Text)='' Then
         begin
            Result := False;
            fmDMmain.MessageDialog.Show('·ÿ›« «» œ« ﬁÿ⁄Â „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ' ,HbtInformation);
            Exit;
         end;
         if Trim(lbledCount.Text) = ''  Then
         begin
            Result := False;
            fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ ﬁÿ⁄Â œ— «‰»«— —« Ê«—œ ò‰Ìœ' ,HbtInformation);
            Exit;
         end;
     end
     else
     begin
         if Trim(lbledSelStoreGoods.Text)='' Then
         begin
            Result := False;
            fmDMmain.MessageDialog.Show('·ÿ›« «» œ« ﬁÿ⁄Â „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ' ,HbtInformation);
            Exit;
         end;
         if Trim(lbledCountEdit.Text) = ''  Then
         begin
            Result := False;
            fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ ﬁÿ⁄Â œ— «‰»«— —« Ê«—œ ò‰Ìœ' ,HbtInformation);
            Exit;
         end;
     end;
end;

procedure TfmStoreInfo.ClearAllTextBox;
Var
   I:Integer;//For Index
begin
     for i := 0 To ComponentCount-1 Do
     begin
          If (Components[i] Is TLabeledEdit) Then
            ( Components[i] As TLabeledEdit ).Clear;
     end;
end;

procedure TfmStoreInfo.LoadData(StoreGoodsCode: Integer);
begin
     if IntTostr(StoreGoodsCode)='' then Exit;
     with fmDMmain.tblstoreInfo do
     begin
          Locate('xCode_Pk_AN',StoreGoodsCode,[]);
          lbledNameEdit.Text      := FieldByname('xGoodsName').AsString;
          lbledGoodsCodeEdit.Text := FieldByname('xGoodsCode_Fk').AsString;
          lbledMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
          lbledModelEdit.Text     := FieldByName('xGoodsModel').AsString;
          lbledCountEdit.Text     := FieldByName('xStoreGoodsCount').AsString;
          lbledCommentsEdit.Text  := FieldByName('xComments').AsString;
          lbledBasePriceEdit.Text := FieldByName('xBasePrice').AsString;
     end;
end;

procedure TfmStoreInfo.FormKeyUp(Sender: TObject; var Key: Word;
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
                             pgcStoreGoods.ActivePage := tbsNew;
                             btnDel.Click;
                        end;
              ord('S')  :
                        begin
                             pgcStoreGoods.ActivePage := tbsNew;
                             BtnSave.Click;
                        end;
              ord('E')  :
                        begin
                             pgcStoreGoods.ActivePage := tbsEdit;
                        end;
              ord('R')  :
                        begin
                             pgcStoreGoods.ActivePage := tbsNew;
                             BtnSaveNew.Click;
                        end;
              ord('P')  :
                        begin
                             pgcStoreGoods.ActivePage := tbsEdit;
                             btnSaveEdit.Click;
                        end;
         end;
end;

procedure TfmStoreInfo.BtnInsertClick(Sender: TObject);
begin
     lbledSelGoods.SetFocus;
     with TDefStoreInfoClass do
     begin
          Insert;
          ClearAllTextBox;
     end;
end;

procedure TfmStoreInfo.BtnSaveClick(Sender: TObject);
begin
     with TDefStoreInfoClass Do
     begin
         if fmdmMain.tblstoreInfo.Locate('xGoodsCode_Fk',StrToint(lbledSelGoods.Text),[]) Then
         begin
               fmDMmain.MessageDialog.Show('«Ì‰ ﬁÿ⁄Â œ— Õ«· Õ«÷— À»  ‘œÂ «”  œ— ’Ê—   „«Ì· „Ì  Ê«‰Ìœ ¬‰ —« ÊÌ—«Ì‘ ò‰Ìœ',HbtInformation);
               Exit;
         end;
         Insert; // Becuase Of Locate 
         if CheckData(True)Then
           InsertValues(StrToint(lbledGoodsCode.Text),Trim(lbledName.Text),Trim(lbledMark.Text),Trim(lbledModel.Text),StrToint(lbledCount.Text),Trim(lbledComment.Text),StrToInt(lbledBasePrice.Text));
     end;
     fmDMmain.tblstoreInfo.Refresh;
end;

procedure TfmStoreInfo.BtnSaveNewClick(Sender: TObject);
begin
     with TDefStoreInfoClass Do
     begin
          if CheckData(True) Then
          begin
             InsertValues(StrToint(lbledGoodsCode.Text),Trim(lbledName.Text),Trim(lbledMark.Text),Trim(lbledModel.Text),StrToint(lbledCount.Text),Trim(lbledComment.Text),StrToInt(lbledBasePrice.Text));
             ClearAllTextBox;
             Insert;
          end;
     end;
     fmDMmain.tblGoods.Refresh;
end;

procedure TfmStoreInfo.btnDelClick(Sender: TObject);
begin
     with fmDMmain.tblstoreInfo Do
     begin
          if fmDMmain.YesNoDialog.Show('¬Ì« «ÿ„Ì‰«‰ œ«—Ìœ ø') then
             Delete;
     end;
end;

procedure TfmStoreInfo.btnSaveEditClick(Sender: TObject);
begin
     with TDefStoreInfoClass do
     begin
          if lbledSelStoreGoods.Text = '' then
          begin
               fmDMmain.MessageDialog.Show('·ÿ›«  ⁄œ«œ ﬁÿ⁄Â —« Ê«—œ ò‰Ìœ',HbtInformation);
               Exit;
          end;
          if CheckData(False)Then
             Update(Trim(lbledSelStoreGoods.Text),Trim(lbledCountEdit.Text),Trim(lbledCommentsEdit.Text),Trim(lbledBasePriceEdit.Text));
     end;
     fmDMmain.tblstoreInfo.Refresh;
     if CheckData(False)Then
        ClearAllTextBox;
end;

procedure TfmStoreInfo.lbledSelStoreGoodsKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
Var
   thisKey   : Word;
   thisShift : TShiftState;
begin
     thisKey := Key;
     thisshift:= Shift;
     if key = VK_DOWN Then
     begin
          SelectedField.TableName := 'tblStoreInfo';
          SelectedField.ReturnFieldName :='xCode_Pk_An';
          SelectedField.DisplayFieldName :='xGoodsName';
          lbledSelStoreGoods.Text := SelectedField.Execute;
     end;
     fmStoreInfo.OnKeyUp(Self,thisKey,thisShift);
end;

procedure TfmStoreInfo.btnSleStoreGoodsClick(Sender: TObject);
begin
  SelectedField.TableName := 'tblStoreInfo';
  SelectedField.ReturnFieldName :='xCode_Pk_An';
  SelectedField.DisplayFieldName :='xGoodsName';
  lbledSelStoreGoods.Text := SelectedField.Execute;
end;

procedure TfmStoreInfo.lbledSelStoreGoodsChange(Sender: TObject);
begin
     if Trim(lbledSelStoreGoods.Text) <>'' then
        LoadData(StrToInt(lbledSelStoreGoods.Text));
end;

procedure TfmStoreInfo.BtnCloseClick(Sender: TObject);
begin
     Close;
end;

procedure TfmStoreInfo.dbgGoodsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
   thiskey : Word;
   thisShift : TShiftState;
begin
     thiskey := Key;
     thisShift := Shift;
     if (ssCtrl In Shift) and (Key=VK_TAB) Then
        SelectNext(Self,True,True);
     fmStoreInfo.OnKeyUp(Self,thiskey,thisShift);
end;

procedure TfmStoreInfo.DefGoodsClick(Sender: TObject);
begin
     lbledSelGoods.Text := fmDefGoods.MyShowModal;
     if Not (fmDMmain.tblstoreInfo.State = dsInsert) Then
     begin
          with TDefStoreInfoClass do
          begin
               Insert;
          end;
     end;
     fmDMmain.tblGoods.Refresh;
end;

end.
