unit untsplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tsplashfrm = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  splashfrm: Tsplashfrm;

implementation

{$R *.dfm}

procedure Tsplashfrm.FormShow(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure Tsplashfrm.Timer1Timer(Sender: TObject);
begin
  Close;
end;

end.
