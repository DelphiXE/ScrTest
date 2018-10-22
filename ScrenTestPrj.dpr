program ScrenTestPrj;

uses
  Vcl.Forms,
  MainScrTest in 'MainScrTest.pas' {FmMain},
  Vcl.Themes,
  Vcl.Styles,
  Report in 'Report.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TFmMain, FmMain);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
