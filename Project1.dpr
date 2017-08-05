program Project1;
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
uses
  Winapi.Windows,
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  RateGather in 'RateGather.pas';

var
  H: THandle;

{$R *.res}

begin
  H := CreateMutex(nil, True, '1cb6ffc4-d87d-4f83-97fb-9fffc76ddc00');
  if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    CloseHandle(H);
    Exit;
  end;
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  Application.Title := 'Economic Calculator';
  TStyleManager.TrySetStyle('XaKOps');
  Application.CreateForm(TForm1, Form1);

  Application.Run;
  ReleaseMutex(H);
end.
