unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, ShellAPI, MMSystem;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    Bevel3: TBevel;
    Label4: TLabel;
    Bevel4: TBevel;
    Label5: TLabel;
    Bevel5: TBevel;
    Label6: TLabel;
    Bevel6: TBevel;
    Label7: TLabel;
    Bevel7: TBevel;
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label2Click(Sender: TObject);
    procedure Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label3Click(Sender: TObject);
    procedure Label4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label4Click(Sender: TObject);
    procedure Label5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label5Click(Sender: TObject);
    procedure Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label6Click(Sender: TObject);
    procedure Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Bevel1.Visible := false;
  Bevel2.Visible := false;
  Bevel3.Visible := false;
  Bevel4.Visible := false;
  Bevel5.Visible := false;
  Bevel6.Visible := false;
  Bevel7.Visible := false;
  Label1.Font.Style := [];
  Label2.Font.Style := [];
  Label3.Font.Style := [];
  Label4.Font.Style := [];
  Label5.Font.Style := [];
  Label6.Font.Style := [];
  Label7.Font.Style := [];
end;

procedure TForm1.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Bevel1.Visible := true;
  Label1.Font.Style := [fsBold];
  PlaySound('water.wav', 0, SND_ASYNC);
  label1.BringToFront;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Label2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Bevel2.Visible := true;
  Label2.Font.Style := [fsBold];
  PlaySound('water.wav', 0, SND_ASYNC);
  Label2.BringToFront;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
  ShellExecute(handle, nil, pchar('.\文档（内含视频）\演示文档(内含视频)\模拟现实.wmv'), nil, nil, SW_SHOWNORMAL);
  Bevel2.Visible := false;
  Label2.Font.Style := [];
  Form1.WindowState := wsMinimized;
end;

procedure TForm1.Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Bevel3.Visible := true;
  Label3.Font.Style := [fsBold];
  PlaySound('water.wav', 0, SND_ASYNC);
  Label3.BringToFront;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
  ShellExecute(handle, nil, pchar('.\源程序（包含.doc或者.txt格式作品源代码、）'), nil, nil, SW_SHOWNORMAL);
  Bevel3.Visible := false;
  Label3.Font.Style := [];
  Form1.WindowState := wsMinimized;
end;

procedure TForm1.Label4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Bevel4.Visible := true;
  Label4.Font.Style := [fsBold];
  PlaySound('water.wav', 0, SND_ASYNC);
  Label4.BringToFront;
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
  ShellExecute(handle, nil, pchar('http://wlwjsj3.vicp.cc'), nil, nil, SW_SHOWNORMAL);
  Bevel4.Visible := false;
  Label4.Font.Style := [];
  Form1.WindowState := wsMinimized;
end;

procedure TForm1.Label5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Bevel5.Visible := true;
  Label5.Font.Style := [fsBold];
  PlaySound('water.wav', 0, SND_ASYNC);
  Label5.BringToFront;
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
  ShellExecute(handle, nil, pchar('.\产品（包含“作品安装程序”“安装说明”）\安装手册.pdf'), nil, nil, SW_SHOWNORMAL);
  Bevel5.Visible := false;
  Label5.Font.Style := [];
  Form1.WindowState := wsMinimized;
end;

procedure TForm1.Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Bevel6.Visible := true;
  Label6.Font.Style := [fsBold];
  PlaySound('water.wav', 0, SND_ASYNC);
  Label6.BringToFront;
end;

procedure TForm1.Label6Click(Sender: TObject);
begin
  ShellExecute(handle, nil, pchar('.\文档（内含视频）'), nil, nil, SW_SHOWNORMAL);
  Bevel6.Visible := false;
  Label6.Font.Style := [];
  Form1.WindowState := wsMinimized;
end;

procedure TForm1.Label7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Bevel7.Visible := true;
  Label7.Font.Style := [fsBold];
  PlaySound('water.wav', 0, SND_ASYNC);
  Label7.BringToFront;
end;

procedure TForm1.Label7Click(Sender: TObject);
begin
  ShellExecute(handle, nil, pchar('.\文档（内含视频）\演示文档(内含视频)\网站展示.wmv'), nil, nil, SW_SHOWNORMAL);
  Bevel7.Visible := false;
  Label7.Font.Style := [];
  Form1.WindowState := wsMinimized;
end;

end.
