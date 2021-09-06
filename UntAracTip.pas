unit UntAracTip;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrmAracTip = class(TForm)
    GrdAracTip: TDBGrid;
    PnlAracTip: TPanel;
    ADOConnection1: TADOConnection;
    tipler: TADOTable;
    tiplersource: TDataSource;
    DBNavigator1: TDBNavigator;
    tiplerID: TAutoIncField;
    tiplerAracTipi: TWideStringField;
    tiplerAciklama: TWideMemoField;
    tiplerKMUcreti: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAracTip: TFrmAracTip;

implementation

{$R *.dfm}

procedure TFrmAracTip.FormShow(Sender: TObject);
begin
  ADOConnection1.Close;
  AdoConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+GetCurrentDir+'\Lojistik.mdb;Persist Security Info=False';
  AdoConnection1.Open();
  tipler.Open;
end;

end.
