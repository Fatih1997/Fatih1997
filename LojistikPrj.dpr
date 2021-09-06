program LojistikPrj;

uses
  Vcl.Forms,
  unit1 in 'unit1.pas' {frmlojistik},
  UntAracTip in 'UntAracTip.pas' {FrmAracTip},
  UntAraclar in 'UntAraclar.pas' {FrmAraclar},
  Vcl.Themes,
  Vcl.Styles,
  untsofor in 'untsofor.pas' {frmsofor},
  untsplash in 'untsplash.pas' {splashfrm},
  unttasima in 'unttasima.pas' {frmtasima},
  untkullanici in 'untkullanici.pas' {frmkullanici},
  UntGiris in 'UntGiris.pas' {frmgiris};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glossy');
  Application.CreateForm(Tfrmlojistik, frmlojistik);
  Application.CreateForm(TFrmAracTip, FrmAracTip);
  Application.CreateForm(TFrmAraclar, FrmAraclar);
  Application.CreateForm(Tfrmsofor, frmsofor);
  Application.CreateForm(Tsplashfrm, splashfrm);
  Application.CreateForm(Tfrmtasima, frmtasima);
  Application.CreateForm(Tfrmkullanici, frmkullanici);
  Application.CreateForm(Tfrmgiris, frmgiris);
  Application.Run;
end.
