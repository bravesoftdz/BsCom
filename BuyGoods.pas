unit BuyGoods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AddShape, StdCtrls, Stdlabel, AddImage, AddBevel,
  Grids, DBGrids, DCDBGrid, ComCtrls, Win32StatusBar, Win32PageControl,
  AddLabeledEdit, HbtDatePicker, Win32RichEdit, DBCtrls, DCDBText, Buttons,
  AddBitBtn, StdEdit, StdCheckBox, StdComboBox, hbtSelectedField, ImgList,
  Win32ImageList,HbtMessageDialog, DB, ADODB, MADOQuery,DateCurrency,
  HbtAlphaBlend;

type
  TfmBuyGoods = class(TForm)
    shpBanner: TAddShape;
    AddImage1: TAddImage;
    lblTitle: TStdlabel;
    AddBevel1: TAddBevel;
    Stdlabel1: TStdlabel;
    DCDBGrid1: TDCDBGrid;
    Win32StatusBar1: TWin32StatusBar;
    BtnClose: TAddBitBtn;
    pgcOrderGoods: TWin32PageControl;
    tbsNew: TTabSheet;
    Stdlabel2: TStdlabel;
    dbtxtName: TDCDBText;
    dbtxtFamily: TDCDBText;
    Stdlabel4: TStdlabel;
    AddBevel15: TAddBevel;
    Stdlabel10: TStdlabel;
    AddBevel39: TAddBevel;
    Stdlabel26: TStdlabel;
    Stdlabel44: TStdlabel;
    Stdlabel49: TStdlabel;
    lbledFactorNo: TAddLabeledEdit;
    BuyDate: THbtDatePicker;
    lbledSeller: TAddLabeledEdit;
    btnSelSeller: TAddBitBtn;
    redOrderComments: TWin32RichEdit;
    lbledSelGoods: TAddLabeledEdit;
    btnSelGoods: TAddBitBtn;
    btnAddToList: TAddBitBtn;
    btnDelFromList: TAddBitBtn;
    DCDBGrid2: TDCDBGrid;
    pgcPay: TWin32PageControl;
    tbsnaghd: TTabSheet;
    Stdlabel43: TStdlabel;
    Stdlabel55: TStdlabel;
    nLbledTotalGP: TAddLabeledEdit;
    NlbledPishPardakht: TAddLabeledEdit;
    NlbledTakhfif: TAddLabeledEdit;
    NlbledMande: TAddLabeledEdit;
    NPayDate: THbtDatePicker;
    NredComments: TWin32RichEdit;
    tbsAghsat: TTabSheet;
    Stdlabel56: TStdlabel;
    Stdlabel57: TStdlabel;
    Stdlabel58: TStdlabel;
    Stdlabel59: TStdlabel;
    AlbledTotalGp: TAddLabeledEdit;
    AlbledPishPardakht: TAddLabeledEdit;
    AlbledMande: TAddLabeledEdit;
    AlbledTakhfif: TAddLabeledEdit;
    APayDate: THbtDatePicker;
    AlbledGhestPrice: TAddLabeledEdit;
    AlbledGhestDay: TAddLabeledEdit;
    AStartDate: THbtDatePicker;
    AEndDate: THbtDatePicker;
    AredComments: TWin32RichEdit;
    tbsCheck: TTabSheet;
    Stdlabel60: TStdlabel;
    Stdlabel61: TStdlabel;
    Stdlabel62: TStdlabel;
    Stdlabel63: TStdlabel;
    clbledTotalGp: TAddLabeledEdit;
    ClbledPishPardakht: TAddLabeledEdit;
    ClbledMande: TAddLabeledEdit;
    ClbledTakhfif: TAddLabeledEdit;
    CPayDate: THbtDatePicker;
    ClbledMablagh: TAddLabeledEdit;
    CheckPayDate: THbtDatePicker;
    CheckVosolDate: THbtDatePicker;
    ClbledCheckNo: TAddLabeledEdit;
    ClbledBankName: TAddLabeledEdit;
    ClbledBankAddress: TAddLabeledEdit;
    chbForZemanat: TStdCheckBox;
    CredComments: TWin32RichEdit;
    cmbPardakhtKind: TStdComboBox;
    redGPComments: TWin32RichEdit;
    lbledGoodsName: TAddLabeledEdit;
    lbledGoodsMark: TAddLabeledEdit;
    lbledGoodsModel: TAddLabeledEdit;
    lbledGoodsCount: TAddLabeledEdit;
    lbledGoodsPrice: TAddLabeledEdit;
    Stdlabel3: TStdlabel;
    chbIsvaranty: TStdCheckBox;
    lbledVarantyNo: TAddLabeledEdit;
    Stdlabel5: TStdlabel;
    StartVarantyDate: THbtDatePicker;
    Stdlabel6: TStdlabel;
    EndVarantydate: THbtDatePicker;
    redVarantyComment: TWin32RichEdit;
    Stdlabel7: TStdlabel;
    Stdlabel8: TStdlabel;
    Stdlabel9: TStdlabel;
    btnCalc: TAddBitBtn;
    lbledTotalCalc: TAddLabeledEdit;
    BtnSave: TAddBitBtn;
    BtnSaveNew: TAddBitBtn;
    btnDel: TAddBitBtn;
    tbsEdit: TTabSheet;
    Stdlabel11: TStdlabel;
    DCDBText1: TDCDBText;
    DCDBText2: TDCDBText;
    Stdlabel12: TStdlabel;
    AddBevel2: TAddBevel;
    Stdlabel13: TStdlabel;
    AddBevel3: TAddBevel;
    Stdlabel14: TStdlabel;
    Stdlabel15: TStdlabel;
    Stdlabel16: TStdlabel;
    lbledFactorNoEdit: TAddLabeledEdit;
    BuyDateEdit: THbtDatePicker;
    lbledSellerEdit: TAddLabeledEdit;
    btnSelSellerEdit: TAddBitBtn;
    redOrderCommentsEdit: TWin32RichEdit;
    lbledSelGoodsEdit: TAddLabeledEdit;
    btnSelGoodsEdit: TAddBitBtn;
    btnAddToListEdit: TAddBitBtn;
    DCDBGrid3: TDCDBGrid;
    cmbpardakhtKindEdit: TStdComboBox;
    redGPCommentsEdit: TWin32RichEdit;
    lbledGoodsNameEdit: TAddLabeledEdit;
    lbledGoodsMarkEdit: TAddLabeledEdit;
    lbledGoodsModelEdit: TAddLabeledEdit;
    lbledGoodsPriceEdit: TAddLabeledEdit;
    chbIsvarantyEdit: TStdCheckBox;
    lbledVarantyNoEdit: TAddLabeledEdit;
    Stdlabel28: TStdlabel;
    Stdlabel29: TStdlabel;
    EndVarantydateEdit: THbtDatePicker;
    redVarantyCommentEdit: TWin32RichEdit;
    Stdlabel30: TStdlabel;
    redCommentsEdit: TWin32RichEdit;
    Stdlabel31: TStdlabel;
    Stdlabel32: TStdlabel;
    btnCalcEdit: TAddBitBtn;
    lbledTotalCalcEdit: TAddLabeledEdit;
    StartVarantyDateEdit: THbtDatePicker;
    lbledGoodsCountedit: TAddLabeledEdit;
    Stdlabel33: TStdlabel;
    btnDefSellerEdit: TAddBitBtn;
    btnSaveEdit: TAddBitBtn;
    lbledSelorder: TAddLabeledEdit;
    btnselOrder: TAddBitBtn;
    Stdlabel35: TStdlabel;
    Stdlabel36: TStdlabel;
    Stdlabel37: TStdlabel;
    Stdlabel38: TStdlabel;
    Stdlabel40: TStdlabel;
    Stdlabel41: TStdlabel;
    Stdlabel42: TStdlabel;
    Stdlabel45: TStdlabel;
    Stdlabel46: TStdlabel;
    Stdlabel47: TStdlabel;
    Stdlabel48: TStdlabel;
    Stdlabel50: TStdlabel;
    lbledCompony: TAddLabeledEdit;
    pgcPayEdit: TWin32PageControl;
    tbsNaghdEdit: TTabSheet;
    Stdlabel17: TStdlabel;
    Stdlabel18: TStdlabel;
    NLbledTotalGPEdit: TAddLabeledEdit;
    NlbledPishPardakhtEdit: TAddLabeledEdit;
    NlbledTakhfifEdit: TAddLabeledEdit;
    NlbledMandeEdit: TAddLabeledEdit;
    NPayDateEdit: THbtDatePicker;
    NredCommentsEdit: TWin32RichEdit;
    tbsAghsatEdit: TTabSheet;
    Stdlabel19: TStdlabel;
    Stdlabel20: TStdlabel;
    Stdlabel21: TStdlabel;
    Stdlabel22: TStdlabel;
    AlbledTotalGpEdit: TAddLabeledEdit;
    AlbledPishPardakhtEdit: TAddLabeledEdit;
    AlbledMandeEdit: TAddLabeledEdit;
    AlbledTakhfifEdit: TAddLabeledEdit;
    APayDateEdit: THbtDatePicker;
    AlbledGhestPriceEdit: TAddLabeledEdit;
    AlbledGhestDayEdit: TAddLabeledEdit;
    AStartDateEdit: THbtDatePicker;
    AEndDateEdit: THbtDatePicker;
    AredCommentsEdit: TWin32RichEdit;
    tbsCheckEdit: TTabSheet;
    Stdlabel23: TStdlabel;
    Stdlabel24: TStdlabel;
    Stdlabel25: TStdlabel;
    Stdlabel27: TStdlabel;
    clbledTotalGpEdit: TAddLabeledEdit;
    ClbledPishPardakhtEdit: TAddLabeledEdit;
    ClbledMandeEdit: TAddLabeledEdit;
    ClbledTakhfifEdit: TAddLabeledEdit;
    ClbledMablaghEdit: TAddLabeledEdit;
    CheckPayDateEdit: THbtDatePicker;
    CheckVosolDateEdit: THbtDatePicker;
    ClbledCheckNoEdit: TAddLabeledEdit;
    ClbledBankNameEdit: TAddLabeledEdit;
    ClbledBankAddressEdit: TAddLabeledEdit;
    chbForZemanatEdit: TStdCheckBox;
    CredCommentsEdit: TWin32RichEdit;
    lbledComponyEdit: TAddLabeledEdit;
    btnDelFromListEdit: TAddBitBtn;
    Win32ImageList1: TWin32ImageList;
    SelectedField: ThbtSelectedField;
    MADOQuery1: TMADOQuery;
    redComments: TWin32RichEdit;
    CPayDateEdit: THbtDatePicker;
    btnDefSeller: TAddBitBtn;
    procedure FormShow(Sender: TObject);
    procedure lbledSelGoodsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelGoodsClick(Sender: TObject);
    procedure btnSelGoodsEditClick(Sender: TObject);
    procedure lbledSelGoodsEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelGoodsChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSelGoodsEditChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSelSellerEditClick(Sender: TObject);
    procedure lbledSellerEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbledSellerEditChange(Sender: TObject);
    procedure btnAddToListEditClick(Sender: TObject);
    procedure lbledSellerChange(Sender: TObject);
    procedure lbledSellerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSelSellerClick(Sender: TObject);
    procedure btnAddToListClick(Sender: TObject);
    procedure lbledFactorNoChange(Sender: TObject);
    procedure btnDelFromListClick(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnSaveNewClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure lbledSelorderKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnselOrderClick(Sender: TObject);
    procedure lbledSelorderChange(Sender: TObject);
    procedure btnDelFromListEditClick(Sender: TObject);
    procedure btnCalcEditClick(Sender: TObject);
    procedure NlbledTakhfifEditExit(Sender: TObject);
    procedure AlbledTakhfifEditExit(Sender: TObject);
    procedure ClbledTakhfifEditExit(Sender: TObject);
    procedure cmbpardakhtKindEditChange(Sender: TObject);
    procedure cmbPardakhtKindChange(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure lbledGoodsCountKeyPress(Sender: TObject; var Key: Char);
    procedure tbsEditEnter(Sender: TObject);
    procedure redOrderCommentsEditEnter(Sender: TObject);
    procedure redVarantyCommentEditEnter(Sender: TObject);
    procedure btnSaveEditClick(Sender: TObject);
    procedure ClbledTakhfifExit(Sender: TObject);
    procedure AlbledTakhfifExit(Sender: TObject);
    procedure NlbledTakhfifExit(Sender: TObject);
    procedure btnDefSellerEditClick(Sender: TObject);
    procedure btnDefSellerClick(Sender: TObject);
    procedure AddBitBtn1Click(Sender: TObject);
  private
         Procedure SelectedFieldExe(ForInsert:Boolean);
         procedure LoadDevice(ForInsert:Boolean;deviceCode:Integer);
         Procedure ClearAllTextBox;
         Procedure clearAllDate;
         Procedure ClearGoodsInfo(ForInsert:Boolean);
         Procedure LoadDate(OrderCode:Integer);
         Function CheckData(ForInsert:Boolean):Boolean ;
         Function CheckGoodsData(ForInsert:Boolean):Boolean ;
         Function Calc(ForInsert:Boolean;ordercode:Integer):String;
         Function CalcMande(ForInsert:Boolean):String;
  public
    { Public declarations }
  end;

var
  fmBuyGoods : TfmBuyGoods;
  thisOrderCode:Integer;

implementation

uses
    DMMain,
    MyLibrary, VarUtils, DefSeller;

{$R *.dfm}

procedure TfmBuyGoods.FormShow(Sender: TObject);
begin
     shpBanner.Pen.Color := clBtnHighlight;
     with fmDMmain do
     begin
          tblPerson.Filtered := False;
          tblPerson.Filter := ' xIsSeller = True ';
          tblPerson.Filtered :=True;
          tblPerson.Open;
          tblOrder.Filtered := False;
          tblOrder.Filter   := 'xSellFactorNo = Null and xIsSystemOrder = False';
          tblOrder.Filtered := True;
          tblOrder.Open;
          tblGp.Open;
          tblNaghd.Open;
          tblAghsat.Open;
          tblChecks.Open;
          tblstoreInfo.Open;
     end;
     pgcPay.ActivePage    := tbsnaghd;
     tbsAghsat.TabVisible := False;
     tbsCheck.TabVisible  := False;
     tbsnaghd.TabVisible  := True;

     pgcOrderGoods.ActivePage := tbsNew;
     cmbPardakhtKind.ItemIndex := 0;

     pgcPayEdit.ActivePage     := tbsNaghdEdit;
     tbsAghsatEdit.TabVisible  := False;
     tbsCheckEdit.TabVisible   := False;
     tbsNaghdEdit.TabVisible   := True;

     lbledFactorNo.SetFocus;
     clearAllDate;

end;

procedure TfmBuyGoods.lbledSelGoodsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key= VK_DOWN Then
          SelectedFieldExe(True);
     fmBuyGoods.OnKeyUp(Sender,Key,Shift);
end;

procedure TfmBuyGoods.LoadDevice(ForInsert: Boolean;deviceCode:Integer);
begin
     if IntTostr(deviceCode)='' then Exit;
     with fmDMmain.tblstoreInfo do
     begin
          Locate('xCode_Pk_AN',DeviceCode,[]);
          if ForInsert Then
          begin
              lbledGoodsName.Text      := FieldByname('xGoodsName').AsString;
              lbledGoodsMark.Text      := FieldByname('xGoodsMark').AsString;
              lbledGoodsModel.Text     := FieldByName('xGoodsModel').AsString;
              lbledGoodsPrice.Text     := FieldByName('xBasePrice').AsString;
          end
          else
          begin
              lbledGoodsNameEdit.Text      := FieldByname('xGoodsName').AsString;
              lbledGoodsMarkEdit.Text      := FieldByname('xGoodsMark').AsString;
              lbledGoodsModelEdit.Text     := FieldByName('xGoodsModel').AsString;
              lbledGoodsPriceEdit.Text     := FieldByName('xBasePrice').AsString;
          end;
     end;

end;

procedure TfmBuyGoods.SelectedFieldExe(ForInsert: Boolean);
begin
      SelectedField.FormCaption :='«‰ Œ«» ﬁÿ⁄Â';
      SelectedField.Query :=' Select xCode_Pk_An,xGoodsName From tblStoreInfo order By xGoodsName';
      SelectedField.DisplayFieldName := 'xGoodsName';
      SelectedField.ReturnFieldName  := 'xCode_Pk_An';
      if ForInsert Then
         lbledSelGoods.Text := SelectedField.Execute
      else
          lbledSelGoodsEdit.Text := SelectedField.Execute;


end;

procedure TfmBuyGoods.btnSelGoodsClick(Sender: TObject);
begin
     SelectedFieldExe(True);     
end;

procedure TfmBuyGoods.btnSelGoodsEditClick(Sender: TObject);
begin
     SelectedFieldExe(False);
end;

procedure TfmBuyGoods.lbledSelGoodsEditKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key= VK_DOWN Then
          SelectedFieldExe(False);
     fmBuyGoods.OnKeyUp(Sender,Key,Shift);
end;

procedure TfmBuyGoods.lbledSelGoodsChange(Sender: TObject);
begin
     if Trim(lbledSelGoods.Text) = '' Then Exit;
     LoadDevice(True,StrToint(lbledSelGoods.Text));
end;

procedure TfmBuyGoods.FormKeyUp(Sender: TObject; var Key: Word;
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
                             pgcOrderGoods.ActivePage := tbsNew;
                             btnDel.Click;
                        end;
              ord('S')  :
                        begin
                             pgcOrderGoods.ActivePage := tbsNew;
                             BtnSave.Click;
                        end;
              ord('E')  :
                        begin
                             pgcOrderGoods.ActivePage := tbsEdit;
                        end;
              ord('R')  :
                        begin
                             pgcOrderGoods.ActivePage := tbsNew;
                             BtnSaveNew.Click;
                        end;
              ord('P')  :
                        begin
                             pgcOrderGoods.ActivePage := tbsEdit;
                             btnSaveEdit.Click;
                        end;
         end;
end;

procedure TfmBuyGoods.lbledSelGoodsEditChange(Sender: TObject);
begin
     if Trim(lbledSelGoodsEdit.Text) = '' Then Exit;
     LoadDevice(False,StrToint(lbledSelGoodsEdit.Text));
end;

procedure TfmBuyGoods.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     with fmDMmain do
     begin
          tblPerson.Filtered := False;
          tblPerson.Filter := '';
          tblPerson.Close;
          tblstoreInfo.Close;
          tblOrder.Filtered := False;
          tblOrder.Filter   := '';
          tblOrder.Close;
          tblGp.Close;
          tblNaghd.Close;
          tblAghsat.Close;
          tblOrderGoodsList.Filtered := False;
          tblOrderGoodsList.Filter :='';
          tblOrderGoodsList.Close;
          tblChecks.Close;
     end;
     pgcPay.ActivePage    := tbsnaghd;
     tbsAghsat.TabVisible := False;
     tbsCheck.TabVisible  := False;
     tbsnaghd.TabVisible  := True;

     pgcOrderGoods.ActivePage := tbsNew;
     cmbPardakhtKind.ItemIndex := 0;

     pgcPayEdit.ActivePage     := tbsNaghdEdit;
     tbsAghsatEdit.TabVisible  := False;
     tbsCheckEdit.TabVisible   := False;
     tbsNaghdEdit.TabVisible   := True;

     cmbpardakhtKindEdit.ItemIndex := 0;

     thisOrderCode := 0;
     ClearAllTextBox;
     clearAllDate;

end;

procedure TfmBuyGoods.btnSelSellerEditClick(Sender: TObject);
begin
      SelectedField.FormCaption :='«‰ Œ«» ›—Ê‘‰œÂ';
      SelectedField.Query :='Select xPersonCode_Pk_AN,xIsSeller,(xName+'+QuotedStr(' ')+'+xFamily) As NameFamily From tblPerson Where xIsSeller=True Order By (xName+'+QuotedStr(' ')+'+xFamily)';
      SelectedField.DisplayFieldName := 'NameFamily';
      SelectedField.ReturnFieldName  := 'xPersonCode_Pk_AN';
      lbledSellerEdit.Text := SelectedField.Execute;
end;

procedure TfmBuyGoods.lbledSellerEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_DOWN Then
     begin
          SelectedField.FormCaption :='«‰ Œ«» ›—Ê‘‰œÂ';
          SelectedField.Query :='Select xPersonCode_Pk_AN,xIsSeller,(xName+'+QuotedStr(' ')+'+xFamily) As NameFamily From tblPerson Where xIsSeller=True Order By (xName+'+QuotedStr(' ')+'+xFamily)';
          SelectedField.DisplayFieldName := 'NameFamily';
          SelectedField.ReturnFieldName  := 'xPersonCode_Pk_AN';
          lbledSellerEdit.Text := SelectedField.Execute;
     end;
     fmBuyGoods.OnKeyUp(Sender,Key,Shift);
end;

procedure TfmBuyGoods.lbledSellerEditChange(Sender: TObject);
begin
     if Trim(lbledSellerEdit.Text) <> '' Then
        fmDMmain.tblPerson.Locate('xPersonCode_Pk_AN',StrToInt(lbledSellerEdit.Text),[]);
end;

procedure TfmBuyGoods.btnAddToListEditClick(Sender: TObject);
begin
     if Trim(lbledSelorder.Text) = '' Then Exit;
     with TDefBuyGoodsOrderClass do
     begin
          if CheckGoodsData(False) Then
          begin
               InsertGoodsListValue(StrToint(lbledSelorder.Text),strToint(lbledSelGoodsEdit.Text),StrToint(lbledGoodsCountedit.Text),StrToint(lbledGoodsPriceEdit.Text),lbledGoodsNameEdit.Text,StartVarantyDateEdit.Date,EndVarantydateEdit.Date,lbledComponyEdit.Text,lbledVarantyNoEdit.Text,redVarantyCommentEdit.Text,redOrderCommentsEdit.Text,chbIsvaranty.Checked);
               ClearGoodsInfo(False);               
          end;
     end;

end;

function TfmBuyGoods.Calc(ForInsert: Boolean;ordercode:Integer): String;
Var
   thisQry : TMADOQuery ;
begin
     thisQry := TMADOQuery.Create(Self);
     thisQry.Connection := fmDMmain.cnnMain;
     thisQry.SQL.Clear;
     thisqry.SQL.Text :=' Select Sum(TotalPay)As STotalPay From ( ';
     thisQry.SQL.Text := thisQry.SQL.Text +' Select xOrderNo_Fk,xCount,xBasePrice,(xCount* xBasePrice) As TotalPay From  tblOrderGoodsList Where xOrderNo_Fk ='+ IntToStr(ordercode);
     thisQry.SQL.Text := thisQry.SQL.Text +')';
     thisQry.Open;
     if ForInsert Then
        lbledTotalCalc.Text := thisQry.FieldByName('STotalPay').AsString
     else
        lbledTotalCalcEdit.Text := thisQry.FieldByName('STotalPay').AsString;
     Result := thisQry.FieldByName('STotalPay').AsString;
end;

function TfmBuyGoods.CalcMande(ForInsert: Boolean): String;
var
   thisResult : Integer;
begin
     thisResult := 0;
     if ForInsert Then
     begin
          case cmbPardakhtKind.ItemIndex of
               0:
                 begin
                      thisResult := StrToInt(NLbledTotalGP.Text)- StrToInt(NlbledPishPardakht.Text)- StrToInt(NlbledTakhfif.Text);
                 end;
               1:
                 begin
                      thisResult := StrToInt(ALbledTotalGP.Text)- StrToInt(AlbledPishPardakht.Text)- StrToInt(AlbledTakhfif.Text);
                 end;
               2:
                 begin
                      thisResult := StrToInt(CLbledTotalGP.Text)- StrToInt(ClbledPishPardakht.Text)- StrToInt(ClbledTakhfif.Text);
                 end;
          end;
     end
     else
     begin
          case cmbPardakhtKindEdit.ItemIndex of
               0:
                 begin
                      thisResult := StrToInt(NLbledTotalGPEdit.Text)- StrToInt(NlbledPishPardakhtEdit.Text)- StrToInt(NlbledTakhfifEdit.Text);
                 end;
               1:
                 begin
                      thisResult := StrToInt(ALbledTotalGPEdit.Text)- StrToInt(AlbledPishPardakhtEdit.Text)- StrToInt(AlbledTakhfifEdit.Text);
                 end;
               2:
                 begin
                      thisResult := StrToInt(CLbledTotalGPEdit.Text)- StrToInt(ClbledPishPardakhtEdit.Text)- StrToInt(NlbledTakhfifEdit.Text);
                 end;
          end;
     end;
     Result := IntToStr(thisResult);
end;

function TfmBuyGoods.CheckData(ForInsert: Boolean): Boolean;
begin
     Result := True;
     if ForInsert Then
     begin
          //---------------------------Order Info ---------------------------------
          if lbledFactorNo.Text=''  Then
          begin
               lbledFactorNo.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ‘„«—Â ›«ò Ê— Œ—Ìœ —« Ê«—œ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if not FIsValidDate(BuyDate.Date) Then
          begin
               BuyDate.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if lbledSeller.Text ='' Then
          begin
               lbledSeller.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ›—Ê‘‰œÂ „Ê—œ ‰Ÿ— —« „⁄Ì‰ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          case cmbPardakhtKind.ItemIndex of
               0:
                 begin
                      if nLbledTotalGP.Text ='' Then
                      begin
                           nLbledTotalGP.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ò· —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if NlbledPishPardakht.Text ='' Then
                      begin
                           NlbledPishPardakht.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if NlbledTakhfif.Text = '' Then
                           NlbledTakhfif.Text := '0';
                 end;
               1:
                 begin
                      if ALbledTotalGP.Text ='' Then
                      begin
                           ALbledTotalGP.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ò· —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if AlbledPishPardakht.Text ='' Then
                      begin
                           AlbledPishPardakht.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if AlbledTakhfif.Text = '' Then
                           AlbledTakhfif.Text := '0';
                      if AlbledGhestPrice.Text = '' Then
                      begin
                           AlbledGhestPrice.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ Â— ﬁ”ÿ —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if AlbledGhestDay.Text = '' Then
                         AlbledGhestDay.Text := '0';
                 end;

               2:
                 begin
                      if CLbledTotalGP.Text ='' Then
                      begin
                           CLbledTotalGP.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ò· —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if ClbledPishPardakht.Text ='' Then
                      begin
                           ClbledPishPardakht.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if ClbledTakhfif.Text = '' Then
                           ClbledTakhfif.Text := '0';
                      if ClbledMablagh.Text = '' Then
                      begin
                           ClbledMablagh.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ çò —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                 end;
          end;
     end
     else
     begin
          //---------------------------Order Info ---------------------------------
          if lbledSelorder.Text ='' Then
          begin
               lbledSelorder.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ”›«—‘ „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if lbledFactorNoEdit.Text=''  Then
          begin
               lbledFactorNoEdit.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ‘„«—Â ›«ò Ê— Œ—Ìœ —« Ê«—œ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if not FIsValidDate(BuyDateEdit.Date) Then
          begin
               BuyDateEdit.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if lbledSellerEdit.Text ='' Then
          begin
               lbledSellerEdit.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ›—Ê‘‰œÂ „Ê—œ ‰Ÿ— —« „⁄Ì‰ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          case cmbPardakhtKindEdit.ItemIndex of
               0:
                 begin
                      if nLbledTotalGPEdit.Text ='' Then
                      begin
                           nLbledTotalGPEdit.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ò· —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if NlbledPishPardakhtEdit.Text ='' Then
                      begin
                           NlbledPishPardakhtEdit.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if NlbledTakhfifEdit.Text = '' Then
                           NlbledTakhfifEdit.Text := '0';
                 end;
               1:
                 begin
                      if ALbledTotalGPEdit.Text ='' Then
                      begin
                           ALbledTotalGPEdit.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ò· —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if AlbledPishPardakhtEdit.Text ='' Then
                      begin
                           AlbledPishPardakhtEdit.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if AlbledTakhfifEdit.Text = '' Then
                           AlbledTakhfifEdit.Text := '0';
                      if AlbledGhestPriceEdit.Text = '' Then
                      begin
                           AlbledGhestPriceEdit.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ Â— ﬁ”ÿ —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if AlbledGhestDayEdit.Text = '' Then
                         AlbledGhestDayEdit.Text := '0';
                 end;

               2:
                 begin
                      if CLbledTotalGPEdit.Text ='' Then
                      begin
                           CLbledTotalGPEdit.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ò· —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if ClbledPishPardakhtEdit.Text ='' Then
                      begin
                           ClbledPishPardakhtEdit.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ ÅÌ‘ Å—œ«Œ  —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                      if ClbledTakhfifEdit.Text = '' Then
                           ClbledTakhfifEdit.Text := '0';
                      if ClbledMablagh.Text = '' Then
                      begin
                           ClbledMablaghEdit.SetFocus;
                           fmdmMain.MessageDialog.Show('·ÿ›« „»·€ çò —« Ê«—œ ò‰Ìœ',HbtError);
                           Result := False;
                           Exit;
                      end;
                 end;
          end;
     end;

end;

procedure TfmBuyGoods.ClearAllTextBox;
Var
   i:Integer;
begin
     for i := 0 To ComponentCount-1 Do
     begin
          If (Components[i] Is TLabeledEdit) Then
             (Components[i] As TLabeledEdit ).Clear;
          If (Components[i] Is TEdit) Then
             (Components[i] As TEdit ).Clear;
          if (Components[i] Is TRichEdit) Then
             (Components[i] As TRichEdit ).Clear;
     end;
end;

procedure TfmBuyGoods.LoadDate(OrderCode: Integer);
Var
   thisGpCode:Integer;
begin
     if OrderCode = 0 Then Exit;
     with fmDMmain do
     begin
          with tblOrder do
          begin
               Locate('xOrderNo_Pk_AN',OrderCode,[]);
               lbledFactorNoEdit.Text      :=FieldByName('xBuyOrderFactorNo').AsString;
               BuyDateEdit.Date            :=FieldByName('xDate').AsString;
               lbledSellerEdit.Text        :=FieldByName('xPersonCode_Fk').AsString;
               redOrderCommentsEdit.Text   :=FieldByName('xComments').AsString ;
          end;
          with tblOrderGoodsList do
          begin
               Close;
               Filtered := False;
               Filter   :='xOrderNo_Fk = '+IntToStr(OrderCode);
               Filtered := True;
               Open;
          end;
          with tblGp do
          begin
               Locate('xOrderCode_Fk',OrderCode,[]);

               thisGpCode                    := FieldByName('xGPCode_Pk_AN').AsInteger;
               cmbpardakhtKindEdit.ItemIndex := cmbpardakhtKindEdit.Items.IndexOf(FieldByName('xGpKind').AsString);
               cmbpardakhtKindEdit.OnChange(Self);
               redGPCommentsEdit.Text        := FieldByName('xComments').AsString;
           end;
           case cmbpardakhtKindEdit.ItemIndex of
               0:
                 begin
                      with tblNaghd do
                      begin
                           Locate('xGpCode_Fk',thisGpCode,[]);

                           NLbledTotalGPEdit.Text            := FieldByName('xTotalGP').AsString;
                           NlbledPishPardakhtEdit.Text       := FieldByName('xPishPardakht').AsString;
                           NlbledTakhfifEdit.Text            := FieldByName('xTakhfif').AsString;
                           NlbledMandeEdit.Text              := FieldByName('xMande').AsString;

                           NPayDateEdit.Date                 :='';
                           NPayDateEdit.Date                 := FieldByName('xPayDate').AsString;

                           NredCommentsEdit.Text             := FieldByName('xComment').AsString;

                      end;
                 end;
               1:
                 begin
                      with tblAghsat do
                      begin
                           Locate('xGPCode_Fk',thisGpCode,[]);

                           AlbledTotalGpEdit.Text                := FieldByName('xTotalGP').AsString;
                           AlbledPishPardakhtEdit.Text           := FieldByName('xPishPardakht').AsString;
                           AlbledTakhfifEdit.Text                := FieldByName('xTakhfif').AsString;
                           AlbledMandeEdit.Text                  := FieldByName('xMande').AsString;
                           AlbledGhestPriceEdit.Text             := FieldByName('xAghsatPrice').AsString;

                           AStartDateEdit.Date                   :='';
                           AStartDateEdit.Date                   := FieldByName('xStartDate').AsString;

                           AEndDateEdit.Date                     :='';
                           AEndDateEdit.Date                     := FieldByName('xEndDate').AsString;

                           AlbledGhestDayEdit.Text               := FieldByName('xSarResidDay').AsString;

                           APayDateEdit.Date                     :='';
                           APayDateEdit.Date                     := FieldByName('xPayDate').AsString;

                           AredCommentsEdit.Text                     := FieldByName('xComments').AsString;

                      end;
                 end;
               2:
                 begin
                      with tblChecks do
                      begin
                           Locate('xGpCode_Fk',thisGpCode,[]);

                           clbledTotalGpEdit.Text                      := FieldByName('xTotalGp').AsString;
                           ClbledPishPardakhtEdit.Text                 := FieldByName('xPishPardakht').AsString;
                           ClbledTakhfifEdit.Text                      := FieldByName('xTakhfif').AsString;
                           ClbledMandeEdit.Text                        := FieldByName('xMande').AsString;
                           ClbledCheckNoEdit.Text                      := FieldByName('xCheckNo').AsString;
                           ClbledMablaghEdit.Text                      := FieldByName('xCheckPirce').AsString;

                           CheckPayDateEdit.Date                       := '';
                           CheckPayDateEdit.Date                       := FieldByName('xCheckTahvilDate').AsString;
                           
                           CheckVosolDateEdit.Date                     := '';
                           CheckVosolDateEdit.Date                     := FieldByName('xCheckVosolDate').AsString;

                           CPayDateEdit.Date                           := '';
                           CPayDateEdit.Date                           := FieldByName('xPayDate').AsString;

                           ClbledBankNameEdit.Text                     := FieldByName('xCheckBank').AsString;
                           ClbledBankAddressEdit.Text                  := FieldByName('xBankaddress').AsString;
                           chbForZemanatEdit.Checked                   := FieldByName('xIsCheckForZemanat').AsBoolean;
                           CredCommentsEdit.Text                       := FieldByName('xComments').AsString;

                      end;
                 end;
          end


     end;

end;

procedure TfmBuyGoods.lbledSellerChange(Sender: TObject);
begin
     if Trim(lbledSeller.Text) <> '' Then
        fmDMmain.tblPerson.Locate('xPersonCode_Pk_AN',StrToInt(lbledSeller.Text),[]);
end;

procedure TfmBuyGoods.lbledSellerKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_DOWN Then
     begin
          SelectedField.FormCaption :='«‰ Œ«» ›—Ê‘‰œÂ';
          SelectedField.Query :='Select xPersonCode_Pk_AN,xIsSeller,(xName+'+QuotedStr(' ')+'+xFamily) As NameFamily From tblPerson Where xIsSeller=True Order By (xName+'+QuotedStr(' ')+'+xFamily)';
          SelectedField.DisplayFieldName := 'NameFamily';
          SelectedField.ReturnFieldName  := 'xPersonCode_Pk_AN';
          lbledSeller.Text := SelectedField.Execute;
     end;
     fmBuyGoods.OnKeyUp(Sender,Key,Shift);
end;

procedure TfmBuyGoods.btnSelSellerClick(Sender: TObject);
begin
      SelectedField.FormCaption :='«‰ Œ«» ›—Ê‘‰œÂ';
      SelectedField.Query :='Select xPersonCode_Pk_AN,xIsSeller,(xName+'+QuotedStr(' ')+'+xFamily) As NameFamily From tblPerson Where xIsSeller=True Order By (xName+'+QuotedStr(' ')+'+xFamily)';
      SelectedField.DisplayFieldName := 'NameFamily';
      SelectedField.ReturnFieldName  := 'xPersonCode_Pk_AN';
      lbledSeller.Text := SelectedField.Execute;
end;

procedure TfmBuyGoods.btnAddToListClick(Sender: TObject);
begin
     with TDefBuyGoodsOrderClass do
     begin
          if CheckGoodsData(True) Then
          begin
               if thisOrderCode = 0 Then
               begin
                  thisOrderCode := InsertOrderValue(StrToInt(lbledFactorNo.Text),BuyDate.Date,StrToInt(lbledGoodsCount.Text),StrToInt(lbledSeller.Text),redOrderComments.Text);
                  with fmDMmain.tblOrderGoodsList do
                  begin
                       Filtered := False;
                       Filter   := 'xOrderNo_Fk = '+IntToStr(thisOrderCode);
                       Filtered := True;
                       Open;
                  end;

               end;
               InsertGoodsListValue(thisOrderCode,strToint(lbledSelGoods.Text),StrToint(lbledGoodsCount.Text),StrToint(lbledGoodsPrice.Text),lbledGoodsName.Text,StartVarantyDate.Date,EndVarantydate.Date,lbledCompony.Text,lbledVarantyNo.Text,redVarantyComment.Text,redOrderComments.Text,chbIsvaranty.Checked);
               ClearGoodsInfo(True);
               lbledSelGoods.SetFocus;
          end;
     end;
end;

procedure TfmBuyGoods.lbledFactorNoChange(Sender: TObject);
begin
     if fmDMmain.tblOrder.Active Then
     begin
         fmDMmain.tblOrder.Locate('xOrderNo_Pk_AN',thisOrderCode,[]);
         if Not( fmDMmain.tblOrder.FieldByName('xBuyOrderFactorNo').AsString = lbledFactorNo.Text ) Then
            thisOrderCode:= 0;
     end;
end;

procedure TfmBuyGoods.btnDelFromListClick(Sender: TObject);
begin
     if fmDMmain.YesNoDialog.Show('¬Ì« «ÿ„Ì‰«‰ œ«—Ìœ ø',HbtInformation) Then
        fmDMmain.tblOrderGoodsList.Delete;
end;

procedure TfmBuyGoods.btnCalcClick(Sender: TObject);
Var
   TotalPrice:String;
begin
     if thisOrderCode = 0 Then Exit;
     TotalPrice := Calc(True,thisOrderCode);
     lbledTotalCalc.Text := TotalPrice;
     case cmbPardakhtKind.ItemIndex of
          0:nLbledTotalGP.Text := TotalPrice;
          1:AlbledTotalGp.Text := TotalPrice;
          2:clbledTotalGp.Text := TotalPrice;
     end;
end;

procedure TfmBuyGoods.BtnSaveClick(Sender: TObject);
begin
     case cmbpardakhtKind.ItemIndex of
        0:NlbledMande.Text:= CalcMande(True);
        1:AlbledMande.Text:= CalcMande(True);
        2:ClbledMande.Text:= CalcMande(True);
     end;
     with TDefBuyGoodsOrderClass do
     begin
          if CheckData(True) Then
          begin
               case cmbpardakhtKind.ItemIndex of
                    0:InsertNPayValue(thisOrderCode,cmbPardakhtKind.Text,redGPComments.Text,StrToInt(nLbledTotalGP.Text),StrToint(NlbledPishPardakht.Text),StrToint(NlbledTakhfif.Text),StrToint(NlbledMande.Text),NPayDate.Date,NredComments.Text);
                    1:InsertAPayValue(thisOrderCode,cmbPardakhtKind.Text,redGPComments.Text,StrToint(ALbledTotalGP.Text),StrToint(AlbledPishPardakht.Text),StrToint(AlbledTakhfif.Text),StrToint(AlbledMande.Text),StrToInt(AlbledGhestDay.Text),StrToInt(AlbledGhestPrice.Text),APayDate.Date,AStartDate.Date,AEndDate.Date,AredComments.Text);
                    2:InSertCPayValue(thisOrderCode,cmbPardakhtKind.Text,redGPComments.Text,StrToint(clbledTotalGp.Text),StrToint(ClbledPishPardakht.Text),StrToint(ClbledTakhfif.Text),strtoint(ClbledMande.Text),StrToInt(ClbledMablagh.Text),CPayDate.Date,CheckPayDate.Date,CheckVosolDate.Date,ClbledCheckNo.Text,ClbledBankName.Text,ClbledBankAddress.Text,CredComments.Text,chbForZemanat.Checked);
               end;
               ClearAllTextBox;
               clearAllDate;
          end;
     end;

end;

procedure TfmBuyGoods.BtnSaveNewClick(Sender: TObject);
begin
     case cmbpardakhtKind.ItemIndex of
        0:NlbledMande.Text:= CalcMande(True);
        1:AlbledMande.Text:= CalcMande(True);
        2:ClbledMande.Text:= CalcMande(True);
     end;
     with TDefBuyGoodsOrderClass do
     begin
          if CheckData(True) Then
          begin
               case cmbpardakhtKind.ItemIndex of
                    0:InsertNPayValue(thisOrderCode,cmbPardakhtKind.Text,redGPComments.Text,StrToInt(nLbledTotalGP.Text),StrToint(NlbledPishPardakht.Text),StrToint(NlbledTakhfif.Text),StrToint(NlbledMande.Text),NPayDate.Date,NredComments.Text);
                    1:InsertAPayValue(thisOrderCode,cmbPardakhtKind.Text,redGPComments.Text,StrToint(ALbledTotalGP.Text),StrToint(AlbledPishPardakht.Text),StrToint(AlbledTakhfif.Text),StrToint(AlbledMande.Text),StrToInt(AlbledGhestDay.Text),StrToInt(AlbledGhestPrice.Text),APayDate.Date,AStartDate.Date,AEndDate.Date,AredComments.Text);
                    2:InSertCPayValue(thisOrderCode,cmbPardakhtKind.Text,redGPComments.Text,StrToint(clbledTotalGp.Text),StrToint(ClbledPishPardakht.Text),StrToint(ClbledTakhfif.Text),strtoint(ClbledMande.Text),StrToInt(ClbledMablagh.Text),CPayDate.Date,CheckPayDate.Date,CheckVosolDate.Date,ClbledCheckNo.Text,ClbledBankName.Text,ClbledBankAddress.Text,CredComments.Text,chbForZemanat.Checked);
               end;
               fmDMmain.MessageDialog.Show('«ÿ·«⁄«  »« „Ê›ﬁÌ  À»  ê—œÌœ',HbtInformation);               
               ClearAllTextBox;
               clearAllDate;
          end;
     end;
     lbledFactorNo.SetFocus;
end;

procedure TfmBuyGoods.btnDelClick(Sender: TObject);
begin
     if fmDMmain.YesNoDialog.Show('¬Ì« «ÿ„Ì‰«‰ œ«—Ìœ ø',HbtInformation) Then
        fmDMmain.tblOrder.Delete;
end;

procedure TfmBuyGoods.lbledSelorderKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key= Vk_down Then
     begin
          SelectedField.FormCaption      := '‘„«—Â ›«ò Ê— Œ—Ìœ';
          SelectedField.Query            := ' select xSellFactorNo,xOrderNo_Pk_AN,xIsSystemOrder,xBuyOrderFactorNo From tblOrder Where xBuyOrderFactorNo <> Null and xIsSystemOrder = False ';
          SelectedField.DisplayFieldName := 'xBuyOrderFactorNo';
          SelectedField.ReturnFieldName  := 'xOrderNo_Pk_AN';
          lbledSelOrder.Text := SelectedField.Execute;
     end;
     fmBuyGoods.OnKeyUp(Sender,Key,Shift);
end;

procedure TfmBuyGoods.btnselOrderClick(Sender: TObject);
begin
      SelectedField.FormCaption      := '‘„«—Â ›«ò Ê— Œ—Ìœ';
      SelectedField.Query            := ' select xSellFactorNo,xOrderNo_Pk_AN,xIsSystemOrder,xBuyOrderFactorNo From tblOrder Where xBuyOrderFactorNo <> Null and xIsSystemOrder = False ';
      SelectedField.DisplayFieldName := 'xBuyOrderFactorNo';
      SelectedField.ReturnFieldName  := 'xOrderNo_Pk_AN';
      lbledSelOrder.Text := SelectedField.Execute;
end;

procedure TfmBuyGoods.lbledSelorderChange(Sender: TObject);
begin
     if Trim(lbledSelorder.Text)='' Then Exit;
     LoadDate(StrToInt(lbledSelorder.Text));
end;

procedure TfmBuyGoods.ClearGoodsInfo(ForInsert:Boolean);
begin
     if ForInsert Then
     begin
          lbledSelGoods.Clear;
          lbledGoodsName.Clear;
          lbledGoodsMark.Clear;
          lbledGoodsModel.Clear;
          lbledGoodsCount.Clear;
          lbledGoodsPrice.Clear;
          chbIsvaranty.Checked := False;
          lbledVarantyNo.Clear;
          redVarantyComment.Clear;
          redComments.Clear;
     end
     else
     begin
          lbledSelGoodsEdit.Clear;
          lbledGoodsNameEdit.Clear;
          lbledGoodsMarkEdit.Clear;
          lbledGoodsModelEdit.Clear;
          lbledGoodsCountEdit.Clear;
          lbledGoodsPriceEdit.Clear;
          chbIsvarantyEdit.Checked := False;
          lbledVarantyNoEdit.Clear;
          redVarantyCommentEdit.Clear;
          redCommentsEdit.Clear;
     end;

end;

procedure TfmBuyGoods.btnDelFromListEditClick(Sender: TObject);
begin
     if fmDMmain.YesNoDialog.Show('¬Ì« «ÿ„Ì‰«‰ œ«—Ìœ ø',HbtInformation) Then
        fmDMmain.tblOrderGoodsList.Delete;
end;

procedure TfmBuyGoods.btnCalcEditClick(Sender: TObject);
Var
   TotalPrice:String;
begin
     if Trim(lbledSelorder.Text)='' Then Exit;
     TotalPrice := Calc(False,StrToInt(lbledSelorder.Text));
     lbledTotalCalcEdit.Text := TotalPrice;
     case cmbpardakhtKindEdit.ItemIndex of
          0:nLbledTotalGPedit.Text := TotalPrice;
          1:AlbledTotalGpEdit.Text := TotalPrice;
          2:clbledTotalGpEdit.Text := TotalPrice;
     end;

end;

procedure TfmBuyGoods.NlbledTakhfifEditExit(Sender: TObject);
begin
     if NlbledTakhfifEdit.Text = '' Then
        NlbledTakhfifEdit.Text := '0';
end;

procedure TfmBuyGoods.AlbledTakhfifEditExit(Sender: TObject);
begin
     if AlbledTakhfifEdit.Text = '' Then
        AlbledTakhfifEdit.Text := '0';
end;

procedure TfmBuyGoods.ClbledTakhfifEditExit(Sender: TObject);
begin
     if ClbledTakhfifEdit.Text = '' Then
        ClbledTakhfifEdit.Text := '0';
end;

procedure TfmBuyGoods.cmbpardakhtKindEditChange(Sender: TObject);
Var
   TotalPrice:String;
begin
     if Trim(lbledSelorder.Text)<>'' then
        TotalPrice := Calc(False,StrToInt(lbledSelorder.Text));
     case cmbpardakhtKindEdit.ItemIndex of
       0:
         begin
              NLbledTotalGPedit.Text := TotalPrice;
              tbsAghsatEdit.TabVisible := False;
              tbsCheckEdit.TabVisible  := False;
              pgcPayEdit.ActivePage    := tbsnaghdEdit;
              tbsnaghdEdit.TabVisible  := True;
         end;
       1:
         begin
              AlbledTotalGpEdit.Text := TotalPrice;
              tbsAghsatEdit.TabVisible := True;
              tbsCheckEdit.TabVisible  := False;
              pgcPayEdit.ActivePage    := tbsAghsatEdit;
              tbsnaghdEdit.TabVisible  := False;
         end;
       2:
         begin
              clbledTotalGpEdit.Text := TotalPrice;         
              tbsAghsatEdit.TabVisible := False;
              tbsCheckEdit.TabVisible  := True;
              pgcPayEdit.ActivePage    := tbsCheckEdit;
              tbsnaghdEdit.TabVisible  := False;
         end;
     end;//end of case
end;

procedure TfmBuyGoods.cmbPardakhtKindChange(Sender: TObject);
var
   totalPrice:String;
begin
     if thisOrderCode <> 0 then
        totalPrice := Calc(True,thisOrderCode);
     case cmbPardakhtKind.ItemIndex of
       0:
         begin
              nLbledTotalGP.Text   := totalPrice;
              tbsAghsat.TabVisible := False;
              tbsCheck.TabVisible  := False;
              pgcPay.ActivePage    := tbsnaghd;
              tbsnaghd.TabVisible  := True;
         end;
       1:
         begin
              AlbledTotalGp.Text   := totalPrice;
              tbsAghsat.TabVisible := True;
              tbsCheck.TabVisible  := False;
              pgcPay.ActivePage    := tbsAghsat;
              tbsnaghd.TabVisible  := False;
         end;
       2:
         begin
              clbledTotalGp.Text   := totalPrice;
              tbsAghsat.TabVisible := False;
              tbsCheck.TabVisible  := True;
              pgcPay.ActivePage    := tbsCheck;
              tbsnaghd.TabVisible  := False;
         end;
     end;//end of case
end;

procedure TfmBuyGoods.BtnCloseClick(Sender: TObject);
begin
     Close;
end;

procedure TfmBuyGoods.lbledGoodsCountKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (Key In ['a'..'z']) or (Key in ['A'..'Z'])or (Key In ['"',',',':',';','?','|','\','`','~','!','@','#','$','%','^','&','(',')','{','}','[',']']) then
    key:=#0;
end;

procedure TfmBuyGoods.tbsEditEnter(Sender: TObject);
begin
     lbledSelorder.SetFocus;
end;

procedure TfmBuyGoods.redOrderCommentsEditEnter(Sender: TObject);
begin
     redCommentsEdit.SelStart :=0;
end;

procedure TfmBuyGoods.redVarantyCommentEditEnter(Sender: TObject);
begin
     redVarantyCommentEdit.SelStart := 0;
end;

procedure TfmBuyGoods.btnSaveEditClick(Sender: TObject);
begin
     case cmbpardakhtKindEdit.ItemIndex of
        0:NlbledMandeEdit.Text:= CalcMande(False);
        1:AlbledMandeEdit.Text:= CalcMande(False);
        2:ClbledMandeEdit.Text:= CalcMande(False);
     end;
     if Trim(lbledSelorder.Text)='' Then Exit;
     with TDefBuyGoodsOrderClass do
     begin
          if CheckData(False) Then
          begin
               updateOrderValue(lbledSelorder.Text,lbledFactorNoEdit.Text,BuyDateEdit.Date,lbledSellerEdit.Text,redOrderCommentsEdit.Text);
               case cmbpardakhtKindEdit.ItemIndex of
                    0:UpdateNPayValue(StrToInt(lbledSelorder.Text),cmbPardakhtKindEdit.Text,redGPCommentsEdit.Text,NLbledTotalGPEdit.Text,NlbledPishPardakhtEdit.Text,NlbledTakhfifEdit.Text,NlbledMandeEdit.Text,NPayDateEdit.Date,NredCommentsEdit.Text);
                    1:UpdateAPayValue(StrToInt(lbledSelorder.Text),cmbPardakhtKindEdit.Text,redGPCommentsEdit.Text,ALbledTotalGPEdit.Text,AlbledPishPardakhtEdit.Text,AlbledTakhfifEdit.Text,AlbledMandeEdit.Text,AlbledGhestDayEdit.Text,AlbledGhestPriceEdit.Text,APayDateEdit.Date,AStartDateEdit.Date,AEndDateEdit.Date,AredCommentsEdit.Text);
                    2:UpdateCPayValue(StrToInt(lbledSelorder.Text),cmbPardakhtKindEdit.Text,redGPCommentsEdit.Text,ClbledTotalGpEdit.Text,ClbledPishPardakhtEdit.Text,ClbledTakhfifEdit.Text,ClbledMandeEdit.Text,ClbledMablaghEdit.Text,CPayDateEdit.Date,CheckPayDateEdit.Date,CheckVosolDateEdit.Date,ClbledCheckNoEdit.Text,ClbledBankNameEdit.Text,ClbledBankAddressEdit.Text,CredComments.Text,chbForZemanatEdit.Checked);
               end;
               ClearAllTextBox;
               clearAllDate;
          end;
     end;
end;

function TfmBuyGoods.CheckGoodsData(ForInsert: Boolean): Boolean;
begin
     Result := True;
     if ForInsert Then
     begin
          //---------------------------Order Info ---------------------------------
          if lbledFactorNo.Text=''  Then
          begin
               lbledFactorNo.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ‘„«—Â ›«ò Ê— Œ—Ìœ —« Ê«—œ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if not FIsValidDate(BuyDate.Date) Then
          begin
               BuyDate.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if lbledSeller.Text ='' Then
          begin
               lbledSeller.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ›—Ê‘‰œÂ „Ê—œ ‰Ÿ— —« „⁄Ì‰ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          //-----------------------------------------------------------------------
          if lbledSelGoods.Text= '' Then
          begin
               lbledSelGoods.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ﬁÿ⁄Â „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if lbledGoodsCount.Text='' Then
          begin
               lbledGoodsCount.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›«  ⁄œ«œ ﬁÿ⁄Â —« „‘Œ’ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if lbledGoodsPrice.Text ='' Then
          begin
               lbledGoodsPrice.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ﬁÌ„  Å«ÌÂ —« „‘Œ’ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
     end
     else
     begin
          //---------------------------Order Info ---------------------------------
          if lbledSelorder.Text ='' Then
          begin
               lbledSelorder.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ”›«—‘ „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if lbledFactorNoEdit.Text=''  Then
          begin
               lbledFactorNoEdit.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ‘„«—Â ›«ò Ê— Œ—Ìœ —« Ê«—œ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if not FIsValidDate(BuyDateEdit.Date) Then
          begin
               BuyDateEdit.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›«  «—ÌŒ „⁄ »— Ê«—œ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if lbledSellerEdit.Text ='' Then
          begin
               lbledSellerEdit.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ›—Ê‘‰œÂ „Ê—œ ‰Ÿ— —« „⁄Ì‰ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          //-----------------------------------------------------------------------
          if lbledSelGoodsEdit.Text= '' Then
          begin
               lbledSelGoodsEdit.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ﬁÿ⁄Â „Ê—œ ‰Ÿ— —« «‰ Œ«» ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if lbledGoodsCountEdit.Text='' Then
          begin
               lbledGoodsCountEdit.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›«  ⁄œ«œ ﬁÿ⁄Â —« „‘Œ’ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
          if lbledGoodsPriceEdit.Text ='' Then
          begin
               lbledGoodsPriceEdit.SetFocus;
               fmdmMain.MessageDialog.Show('·ÿ›« ﬁÌ„  Å«ÌÂ —« „‘Œ’ ò‰Ìœ',HbtError);
               Result := False;
               Exit;
          end;
     end;
end;

procedure TfmBuyGoods.ClbledTakhfifExit(Sender: TObject);
begin
     if ClbledTakhfif.Text = '' Then
        ClbledTakhfif.Text := '0';
end;

procedure TfmBuyGoods.AlbledTakhfifExit(Sender: TObject);
begin
     if AlbledTakhfif.Text = '' Then
        AlbledTakhfif.Text := '0';
end;

procedure TfmBuyGoods.NlbledTakhfifExit(Sender: TObject);
begin
     if NlbledTakhfif.Text = '' Then
        NlbledTakhfif.Text := '0';
end;

procedure TfmBuyGoods.clearAllDate;
Var
   i:Integer;
begin
     for i:=0 to componentcount-1 Do
     begin
          if (Components[i] Is THbtDatePicker) Then
          begin
               //(Components[i] As THbtDatePicker).Clear;
               (Components[i] As THbtDatePicker).Date :='';
               (Components[i] As THbtDatePicker).Date := FarsiDate(DateToStr(Now),False);
          end;
     end;
end;

procedure TfmBuyGoods.btnDefSellerEditClick(Sender: TObject);
begin
     lbledSellerEdit.Text := fmDefSeller.MyShowModal();
end;

procedure TfmBuyGoods.btnDefSellerClick(Sender: TObject);
begin
     ShowMessage(' ');
     lbledSeller.Text := fmDefSeller.MyShowModal();
end;

procedure TfmBuyGoods.AddBitBtn1Click(Sender: TObject);
begin
     ShowMessage(' ');
end;

end.
