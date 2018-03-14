unit Splash;

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
  ComCtrls,
  StdCtrls,
  HbtstatusBar,
  jpeg;

type
  TfmSplash = class(TForm)
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    Timer2: TTimer;
    statusBar1: THbtstatusBar;
    Image1: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer2Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
         Procedure CreateDataAndForm();

  public
         FCloseSpalsh:Boolean;
  end;

var
  fmSplash: TfmSplash;
  CloseSpalsh:Boolean=False;
  CreateNeedData:Boolean=False;

implementation

uses
    BuyGoods, BuySystem, DefGoodsKind, DefCustomer, DefGoods,
  DefSeller, DMMain, MyLibrary, Main, SellGoods, SellSystem, StoreInfo,
  ADODB;

{$R *.dfm}

procedure TfmSplash.Timer1Timer(Sender: TObject);
begin
     if not FCloseSpalsh Then
     begin
         CloseSpalsh:=True;
         fmSplash.Close;
     end;
end;

procedure TfmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     if CloseSpalsh Then
     begin
        fmSplash.Free;
        fmMain.Enabled:=True;//Because Disable It For Disable ShortCut
        fmMain.ShowModal;
     end
     else if FCloseSpalsh Then
          //Do Nothing
     else
         Action:=CaNone;
end;
//------------------------------------------------------------------------------
procedure TfmSplash.Timer2Timer(Sender: TObject);
begin
     CreateNeedData:=True;
     CreateDataAndForm();//Use This Procedure For Creating Forms And Data
end;

procedure TfmSplash.CreateDataAndForm;
begin
     if CreateNeedData Then
     begin
          ProgressBar1.Position:=10;
          fmSplash.AlphaBlendValue:=140;
          StatusBar1.Panels[0].Text:='«ÌÃ«œ „«éÊ· œ«œÂ';
          Application.CreateForm(TfmDMmain, fmDMmain);
          ProgressBar1.Update;
          StatusBar1.Update;

          ProgressBar1.Position:=20;
          fmSplash.AlphaBlendValue:=150;
          StatusBar1.Panels[0].Text:='««ÌÃ«œ ›—„  ⁄—Ì› ﬁÿ⁄« ';
          Application.CreateForm(TfmDefGoodsKind, fmDefGoodsKind);
          Application.Createform(TfmDefGoods,fmDefGoods);
          ProgressBar1.Update;
          StatusBar1.Update;

          ProgressBar1.Position:=30;
          fmSplash.AlphaBlendValue:=155;
          statusBar1.Panels[0].Text:='«ÌÃ«œ ›—„ ›—Ê‘‰œê«‰';
          Application.CreateForm(TfmDefSeller, fmDefSeller);
          ProgressBar1.Update;
          StatusBar1.Update;

          ProgressBar1.Position:=40;
          fmSplash.AlphaBlendValue:=160;
          StatusBar1.Panels[0].Text:='«ÌÃ«œ ›—„ Œ—Ìœ«—«‰';
          Application.CreateForm(TfmDefCustomer, fmDefCustomer);
          ProgressBar1.Update;
          StatusBar1.Update;

          ProgressBar1.Position:=50;
          fmSplash.AlphaBlendValue:=165;
          statusBar1.Panels[0].Text:='«ÌÃ«œ ›—„ «ÿ·«⁄«  «‰»«—';
          Application.CreateForm(TfmStoreInfo, fmStoreInfo);
          ProgressBar1.Update;
          statusBar1.Update;

          ProgressBar1.Position:=60;
          fmSplash.AlphaBlendValue:=175;
          statusBar1.Panels[0].Text:='«ÌÃ«œ ›—„ Œ—Ìœ ”Ì” „';
          Application.CreateForm(TfmBuySystem, fmBuySystem);
          ProgressBar1.Update;
          statusBar1.Update;

          ProgressBar1.Position:=70;
          fmSplash.AlphaBlendValue:=185;
          statusBar1.Panels[0].Text:='«ÌÃ«œ ›—„ ›—Ê‘ ”Ì” „';
          Application.CreateForm(TfmSellSystem, fmSellSystem);
          ProgressBar1.Update;
          statusBar1.Update;

          ProgressBar1.Position:=80;
          fmSplash.AlphaBlendValue:=190;
          statusBar1.Panels[0].Text:='«ÌÃ«œ ›—„ Œ—Ìœ ﬁÿ⁄Â';
          Application.CreateForm(TfmBuyGoods, fmBuyGoods);
          ProgressBar1.Update;
          statusBar1.Update;

          ProgressBar1.Position:=100;
          fmSplash.AlphaBlendValue:=195;
          statusBar1.Panels[0].Text:='«ÌÃ«œ ›—„ ›—Ê‘ ﬁÿ⁄Â';
          Application.CreateForm(TfmSellGoods, fmSellGoods);
          ProgressBar1.Update;
          statusBar1.Update;

          ProgressBar1.Position:=110;
          fmSplash.AlphaBlendValue:=200;
          statusBar1.Panels[0].Text:='„ﬁœ«— œÂÌ „ €Ì—Â«Ì „Ê—œ ‰Ì«“';
          ProgressBar1.Update;
          statusBar1.Update;

          ProgressBar1.Position:=120;
          fmSplash.AlphaBlendValue:=225;
          statusBar1.Panels[0].Text:='«ÌÃ«œ «— »«ÿ »« Å«Ìê«Â œ«œÂ';
          with fmDMmain do
          begin
               with cnnMain do
               begin
                    Connected := False;
                    ConnectionString :='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='+ExtractFilePath(ParamStr(0))+'\DataBase\BsCom.mdb'+';Mode=Share Deny None;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;';
                    Connected :=True;
               end;
           end;
          ProgressBar1.Update;
          statusBar1.Update;
      end;
end;

procedure TfmSplash.FormShow(Sender: TObject);
begin
          fmSplash.AlphaBlendValue:=130;
          fmSplash.AlphaBlend:=True;
          fmMain.Enabled:=False;//For Disable ShortCut
end;

end.
