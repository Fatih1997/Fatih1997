unit unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  UntAracTip, UntAraclar, untsofor, untsplash, unttasima, untkullanici, untgiris;

type
  Tfrmlojistik = class(TForm)
    MainMenu1: TMainMenu;
    anmlamalar1: TMenuItem;
    AraTipleri1: TMenuItem;
    Aralar1: TMenuItem;
    ofrler1: TMenuItem;
    Hareketler1: TMenuItem;
    amalemleri1: TMenuItem;
    Kullanclar1: TMenuItem;
    Kullanclar2: TMenuItem;
    Yardm1: TMenuItem;
    Hazrlayan1: TMenuItem;
    procedure AraTipleri1Click(Sender: TObject);
    procedure Aralar1Click(Sender: TObject);
    procedure Hazrlayan1Click(Sender: TObject);
    procedure ofrler1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure amalemleri1Click(Sender: TObject);
    procedure Kullanclar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlojistik: Tfrmlojistik;


implementation

{$R *.dfm}

procedure Tfrmlojistik.amalemleri1Click(Sender: TObject);
begin
  frmtasima.Show;
end;

procedure Tfrmlojistik.Aralar1Click(Sender: TObject);
begin
  FrmAraclar.Show;
end;

procedure Tfrmlojistik.AraTipleri1Click(Sender: TObject);
begin
  FrmAracTip.Show;
end;

procedure Tfrmlojistik.FormCreate(Sender: TObject);
var frmsp : Tsplashfrm;
var frmg : Tfrmgiris;
begin
  frmsp := Tsplashfrm.Create(nil);
  frmg := Tfrmgiris.Create(nil);
  frmsp.ShowModal;
  frmg.ShowModal;
end;

procedure Tfrmlojistik.Hazrlayan1Click(Sender: TObject);
begin
  ShowMessage('Bu Program Görsel Programlama Dersi Ýçin Fatih Ubeyd Köse Tarafýndan Hazýrlanmýþtýr!');
end;

procedure Tfrmlojistik.Kullanclar2Click(Sender: TObject);
begin
  frmkullanici.Show;
end;

procedure Tfrmlojistik.ofrler1Click(Sender: TObject);
begin
  FrmSofor.Show;
end;

end.
