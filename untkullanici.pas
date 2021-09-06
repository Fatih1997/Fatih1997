unit untkullanici;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids;

type
  Tfrmkullanici = class(TForm)
    DBGrid3: TDBGrid;
    kullanicisource: TDataSource;
    ADOConnection1: TADOConnection;
    kullanici: TADOTable;
    kullaniciadi: TWideStringField;
    kullanicisifre: TWideStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmkullanici: Tfrmkullanici;

implementation

{$R *.dfm}

procedure Tfrmkullanici.FormShow(Sender: TObject);
begin
  ADOConnection1.Close;
  AdoConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+GetCurrentDir+'\Lojistik.mdb;Persist Security Info=False';
  AdoConnection1.Open();
  kullanici.Open;
end;

end.
