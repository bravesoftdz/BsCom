program BsCom;

uses
  Forms,Dialogs,
  Main in 'Main.pas' {fmMain},
  DMMain in 'DMMain.pas' {fmDMmain: TDataModule},
  DefGoodsKind in 'DefGoodsKind.pas' {fmDefGoodsKind},
  DefGoods in 'DefGoods.pas' {fmDefGoods},
  DefSeller in 'DefSeller.pas' {fmDefSeller},
  MyLibrary in 'MyLibrary.pas',
  DefCustomer in 'DefCustomer.pas' {fmDefCustomer},
  StoreInfo in 'StoreInfo.pas' {fmStoreInfo},
  BuySystem in 'BuySystem.pas' {fmBuySystem},
  SellSystem in 'SellSystem.pas' {fmSellSystem},
  BuyGoods in 'BuyGoods.pas' {fmBuyGoods},
  SellGoods in 'SellGoods.pas' {fmSellGoods},
  Splash in 'Splash.pas' {fmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmSplash, fmSplash);
  Application.ShowMainForm:=False;
  fmSplash.Show;
  //Set The Hint Property For This Application
  if Screen.Height <> 768 Then
  begin
       fmSplash.FCloseSpalsh := True;
       fmSplash.Close;
       MessageDlg('·ÿ›« ’›ÕÂ ‰„«Ì‘ê— ŒÊœ —« —ÊÌ 768*1024  ‰ŸÌ„ ò‰Ìœ',mtError,[mbOK],0);
       Application.Terminate;

       Application.Run;
  end;
  if Screen.Width <> 1024 Then
  begin
       fmSplash.FCloseSpalsh := True;  
       fmSplash.Close;
       MessageDlg('·ÿ›« ’›ÕÂ ‰„«Ì‘ê— ŒÊœ —« —ÊÌ 768*1024  ‰ŸÌ„ ò‰Ìœ',mtError,[mbOK],0);       
       Application.Terminate;
       Application.Run;
  end;
  Application.HintHidePause:=7000;
  Application.BiDiKeyboard:='00000429';
  Application.Run;
end.
