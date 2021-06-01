unit Demo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.IOUtils, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.FileCtrl, Data.DBXMySQL, Data.DB, Data.SqlExpr;

//Form Start
type
  THome = class(TForm)
    MainMenu: TMainMenu;
    File1: TMenuItem;
    Help1: TMenuItem;
    Support1: TMenuItem;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    Label1: TLabel;
    OpenTextFileDialog1: TOpenTextFileDialog;
    SQLConnection1: TSQLConnection;
    procedure Support1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    //procedure FileListBox1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;
//Global Variables
var
  Home: THome;
  Folder: string;
  Folder1: string;
  txtFile: string;

  var mseconds, starttime: integer;

implementation

{$R *.dfm}

//Start Objects
procedure THome.Button1Click(Sender: TObject);
begin
      //Variables
      Folder := 'C:\Users\Shaki\Desktop\';
      Folder1 := 'C:\Users\Shaki\Desktop\DEMO\';
      txtFile := 'demo.txt';

      //Directory DEMO
      if not TDirectory.Exists(Folder+'DEMO') then
      TDirectory.CreateDirectory(Folder+'DEMO');

      //Progress Bar
      ProgressBar1.Min := 0;
      ProgressBar1.Max := 100;
      ProgressBar1.Position := 0;
     timer1.Enabled := True;
     Label1.Caption := 'Working...';

      //Copy Files

      TFile.Copy(Folder+txtFile, Folder1+txtFile, true);
end;


procedure THome.FormCreate(Sender: TObject);


begin
  starttime := GetTickCount();
  mseconds := 0;
  Timer1.Enabled := false;
  Label1.Caption := '';
  ProgressBar1.Position := 0;
  Label1.Caption := 'Waiting...';
end;

procedure THome.Support1Click(Sender: TObject);
begin
      ShowMessage('Support Email: brettmkettler@icloud.com')
end;

procedure THome.Timer1Timer(Sender: TObject);
begin
    mseconds := GetTickCount() - starttime;
    if mseconds < 5000 then
    ProgressBar1.Position := Trunc(mseconds / 50)
    else begin
    ProgressBar1.Position := 100;
    Label1.Caption := 'Done!';
    Timer1.Enabled := false;
end;

end;
end.
