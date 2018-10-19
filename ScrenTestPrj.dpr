program ScrenTestPrj;

uses
  Vcl.Forms,
  MainScrTest in 'MainScrTest.pas' {FmMain},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TFmMain, FmMain);
  Application.Run;
end.
