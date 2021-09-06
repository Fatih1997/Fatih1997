unit UntGiris;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Data.Win.ADODB;

type
  Tfrmgiris = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgiris: Tfrmgiris;

implementation

{$R *.dfm}


procedure Tfrmgiris.SpeedButton1Click(Sender: TObject);
var Q : TAdoQuery;
begin
  Q := TAdoQuery.Create(nil);
  with Q do
  begin
    ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+GetCurrentDir+'\Lojistik.mdb;Persist Security Info=False';
    SQL.Text := 'SELECT * FROM kullanicilar where adi=' + quotedstr(Edit1.Text);
    Open;
    if Edit2.Text <> FieldByName('sifre').AsString then
    begin
      ShowMessage('Bilgileri Kontrol Edip Tekrar Deneyiniz.');
      Exit;
    end;
    Close;
    Free;
  end;

  Close;
end;

procedure Tfrmgiris.SpeedButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
