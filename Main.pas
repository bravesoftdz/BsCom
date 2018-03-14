unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, HBTMainMenuXP, XPMan, Win32XPManifest, ExtCtrls, AddImage;

type
  TfmMain = class(TForm)
    HbtMainMenuXP1: THbtMainMenuXP;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N18: TMenuItem;
    N17: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    Win32XPManifest1: TWin32XPManifest;
    N2: TMenuItem;
    N5: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N1: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    AddImage1: TAddImage;
    procedure N33Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

uses DMMain, DefGoodsKind, DefGoods,MyLibrary, DefCustomer, DefSeller,
  StoreInfo, BuySystem, SellSystem, BuyGoods,RpRave, Splash, SellGoods;

{$R *.dfm}

procedure TfmMain.N33Click(Sender: TObject);
begin
     ShowMessage('');
end;

procedure TfmMain.N35Click(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TfmMain.N3Click(Sender: TObject);
begin
     fmDefGoodsKind.ShowModal;
end;

procedure TfmMain.N2Click(Sender: TObject);
begin
     fmDefGoods.ShowModal;
end;

procedure TfmMain.N5Click(Sender: TObject);
begin
     fmDefCustomer.ShowModal;
end;

procedure TfmMain.N38Click(Sender: TObject);
begin
     fmDefSeller.ShowModal;
end;

procedure TfmMain.N39Click(Sender: TObject);
begin
     fmStoreInfo.ShowModal;
end;

procedure TfmMain.N8Click(Sender: TObject);
begin
     fmBuySystem.ShowModal;
end;

procedure TfmMain.N9Click(Sender: TObject);
begin
     fmSellSystem.ShowModal;
end;

procedure TfmMain.N11Click(Sender: TObject);
begin
     fmBuyGoods.ShowModal;
end;

procedure TfmMain.N41Click(Sender: TObject);
begin
     with fmDMmain do
     begin
          with tblPerson do
          begin
               Filtered := False;
               Filter := ' xIsSeller = False ';
               Filtered :=True;
               Open;
          end;
          with rvprjCustomer do
          begin
               ProjectFile := ExtractFilePath(ParamStr(0))+'\Reports\repCustomer.rav';
               Execute;

          end;

          with tblPerson do
          begin
               Filtered := False;
               Filter := '';
               Close;
          end;
     end;
end;

procedure TfmMain.N42Click(Sender: TObject);
begin
     with fmDMmain do
     begin
          with tblPerson do
          begin
               Filtered := False;
               Filter := ' xIsSeller = True ';
               Filtered :=True;
               Open;
          end;
          with RvPrjSeller do
          begin
               ProjectFile := ExtractFilePath(ParamStr(0))+'\Reports\repSeller.rav';
               Execute;
          end;

          with tblPerson do
          begin
               Filtered := False;
               Filter := '';
               Close;
          end;
     end;
end;

procedure TfmMain.N43Click(Sender: TObject);
begin
     with fmDMmain do
     begin
          tblstoreInfo.Open;
          with RvPrjStoreInfo do
          begin
               ProjectFile := ExtractFilePath(ParamStr(0))+'\Reports\repStoreInfo.rav';
               Execute;
          end;
          tblstoreInfo.Close;
     end;
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Application.Terminate;
end;

procedure TfmMain.N12Click(Sender: TObject);
begin
  fmSellGoods.ShowModal;
end;

end.
