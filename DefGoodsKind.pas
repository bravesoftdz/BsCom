unit DefGoodsKind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AddShape, StdCtrls, Stdlabel, Grids, DBGrids, DCDBGrid,
  AddBevel, AddLabeledEdit, StdGroupBox, Buttons, AddBitBtn, ComCtrls,
  Win32StatusBar, AddImage;

type
  TfmDefGoodsKind = class(TForm)
    shpMain: TAddShape;
    lblTitle: TStdlabel;
    Stdlabel1: TStdlabel;
    Stdlabel2: TStdlabel;
    Win32StatusBar1: TWin32StatusBar;
    GrdGoodsKind: TDCDBGrid;
    AddImage1: TAddImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDefGoodsKind: TfmDefGoodsKind;

implementation

uses DMMain, DateUtils;

{$R *.dfm}

procedure TfmDefGoodsKind.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     with fmDMmain do
     begin
          tblGoodsKind.Close;
     end;

end;

procedure TfmDefGoodsKind.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if (ssAlt In Shift) and (Key = VK_DELETE) Then
     begin
          if fmDMmain.yesNoDialog.Show('¬Ì« «ÿ„Ì‰«‰ œ«—Ìœø') Then
             fmDMmain.tblGoodsKind.Delete;
     end;
end;

procedure TfmDefGoodsKind.FormShow(Sender: TObject);
begin
     shpMain.Pen.Color := clHighlight;
     //Active Tables
     with fmDMmain Do
     begin
          tblGoodsKind.Open;
     end;
end;

end.
