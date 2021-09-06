unit unttasima;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Data.Win.ADODB;

type
  Tfrmtasima = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    ADOConnection1: TADOConnection;
    tasima: TADOTable;
    tasimasource: TDataSource;
    tasimaID: TAutoIncField;
    tasimaBelgeNo: TWideStringField;
    tasimaSofor: TIntegerField;
    tasimaAracPlaka: TWideStringField;
    tasimaTarih: TDateTimeField;
    tasimaMusteriAdi: TWideStringField;
    tasimaKalkisNoktasi: TWideStringField;
    tasimaVarisNoktasi: TWideStringField;
    tasimaGuzergah: TWideStringField;
    tasimaKM: TIntegerField;
    tasimaTahminiYakit: TIntegerField;
    tasimaUcret: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    soforler: TADOTable;
    soforlerID: TAutoIncField;
    soforlerAdiSoyadi: TWideStringField;
    soforlerDogumTarihi: TDateTimeField;
    soforlerKimlikNo: TWideStringField;
    soforlerEhliyetSinifi: TWideStringField;
    soforlerEmeklimi: TBooleanField;
    soforlerMedeniHali: TWideStringField;
    soforlerMaas: TIntegerField;
    soforsource: TDataSource;
    aracsource: TDataSource;
    araclar: TADOTable;
    araclarID: TAutoIncField;
    araclarPlaka: TWideStringField;
    araclarAracTipi: TIntegerField;
    araclarMarka: TWideStringField;
    araclarModel: TWideStringField;
    araclarDurumu: TWideStringField;
    araclarMaksYukKapasitesi: TIntegerField;
    araclarYakitTipi: TWideStringField;
    araclarModelYili: TIntegerField;
    araclarKM: TIntegerField;
    DBGrid1: TDBGrid;
    tipler: TADOTable;
    tiplerID: TAutoIncField;
    tiplerAracTipi: TWideStringField;
    tiplerAciklama: TWideMemoField;
    tiplerKMUcreti: TIntegerField;
    tiplersource: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure DBEdit9Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtasima: Tfrmtasima;

implementation

{$R *.dfm}

procedure Tfrmtasima.DBEdit9Exit(Sender: TObject);
var yakit: extended;
begin
  if not(tasima.State in [dsEdit, dsInsert]) then Exit;
  yakit := Tasima.FieldByName('KM').AsFloat * 0.75;
  DBEdit10.Text := floattostr(yakit);
  Tasima.FieldByName('TahminiYakit').AsFloat := StrToFloat(DBEdit10.Text);
  DBEdit11.Text := FloatToStr(Tasima.FieldByName('KM').AsFloat * tipler.FieldByName('KMUcreti').AsFloat);
  Tasima.FieldByName('Ucret').AsFloat := StrToFloat(DBEdit11.Text);
end;

procedure Tfrmtasima.FormShow(Sender: TObject);
begin
  ADOConnection1.Close;
  AdoConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+GetCurrentDir+'\Lojistik.mdb;Persist Security Info=False';
  AdoConnection1.Open();
  soforler.Open;
  araclar.Open;
  tipler.Open;
  tasima.Open;
end;

end.
