unit untsofor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.Win.ADODB;

type
  Tfrmsofor = class(TForm)
    ADOConnection1: TADOConnection;
    soforler: TADOTable;
    soforsource: TDataSource;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    soforlerID: TAutoIncField;
    soforlerAdiSoyadi: TWideStringField;
    soforlerDogumTarihi: TDateTimeField;
    soforlerKimlikNo: TWideStringField;
    soforlerEhliyetSinifi: TWideStringField;
    soforlerEmeklimi: TBooleanField;
    soforlerMedeniHali: TWideStringField;
    soforlerMaas: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsofor: Tfrmsofor;

implementation

{$R *.dfm}

procedure Tfrmsofor.FormShow(Sender: TObject);
begin
  ADOConnection1.Close;
  AdoConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+GetCurrentDir+'\Lojistik.mdb;Persist Security Info=False';
  AdoConnection1.Open();
  soforler.Open;
end;

end.
