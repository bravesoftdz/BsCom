unit ShowDateTime;

interface

uses
  Classes;

type
  TDateTimeShow = class(TThread)
  private
    { Private declarations }
  protected
    Procedure UpdateStatusBar();
    procedure Execute; override;
  end;
Var
   DateTime:TDateTime;
   DateTimeStr:String;
   
implementation

Uses
    Main,
    SysUtils;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TDateTimeShow.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ TDateTimeShow }

procedure TDateTimeShow.Execute;
begin
     FreeOnTerminate:=True;
     while Not(Terminated) Do
     begin
          DateTime:=Time;
          DateTimeStr:=TimeTostr(DateTime);
          UpdateStatusBar;
     end;


end;

procedure TDateTimeShow.UpdateStatusBar;
begin
     With fmMain Do
     Begin
          if fmMain.Visible Then
           begin
                StatusBar1.Panels[0].Text:=DateTimeStr;
                StatusBar1.Update;
           end;
     end;
end;

end.
 