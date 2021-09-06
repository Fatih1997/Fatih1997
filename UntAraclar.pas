unit UntAraclar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrmAraclar = class(TForm)
    PnlArac: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ADOConnection1: TADOConnection;
    araclar: TADOTable;
    aracsource: TDataSource;
    araclarID: TAutoIncField;
    araclarPlaka: TWideStringField;
    araclarAracTipi: TIntegerField;
    araclarMarka: TWideStringField;
    araclarModel: TWideStringField;
    araclarDurumu: TWideStringField;
    araclarMaksYukKapasitesi: TIntegerField;
    araclarYakitTipi: TWideStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    araclarModelYili: TIntegerField;
    araclarKM: TIntegerField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    tipler: TADOTable;
    tiplerID: TAutoIncField;
    tiplerAracTipi: TWideStringField;
    tiplerAciklama: TWideMemoField;
    tiplerKMUcreti: TIntegerField;
    tiplersource: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAraclar: TFrmAraclar;

implementation

{$R *.dfm}

procedure TFrmAraclar.FormShow(Sender: TObject);
begin
  ADOConnection1.Close;
  AdoConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+GetCurrentDir+'\Lojistik.mdb;Persist Security Info=False';
  AdoConnection1.Open();
  araclar.Open;
  tipler.Open;
end;

end.
