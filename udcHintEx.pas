unit udcHintEx; 
 
interface 
 
uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms;
 
type
  TTransparentBitmap = class(TObject)
  protected
    procedure NewBitmap;
    procedure NewTransBitmap;
    procedure FreeBitmap;
    procedure FreeTransBitmap;
    procedure GetScreenBitmap(r: TRect);
  public
    Bitmap: TBitmap;
    TransBitmap: TBitmap;
    procedure CreateBitmap(r: TRect; Color: TColor; Level: Integer); virtual;
    procedure PrepareScreenBitmap(R: TRect); virtual;
    procedure ApplyTransparency(r: TRect; Color: TColor; Level: Integer); virtual;
    destructor Destroy; override;
  end;

  TdcInternalHintEx = class(THintWindow) 
  private 
    FTransBitmap: TTransparentBitmap; 
    FActivating: Boolean; 
  protected 
    procedure Paint; override; 
    procedure CreateParams(var Params: TCreateParams); override; 
  public 
    procedure ActivateHint(Rect: TRect; const AHint: string); override; 
    function CalcHintRect(MaxWidth: Integer; const AHint: string; 
      AData: Pointer): TRect; override; 
    constructor Create(AOwner:TComponent); override; 
    destructor Destroy; override; 
  end; 
 
  TdcHintEx= class(TComponent) 
  private 
    FFont: TFont; 
    FTransparent: Boolean; 
    FTransparency: Integer; 
    FTranspColor: TColor; 
    FShadowColor: TColor; 
    FEnabled: Boolean; 
    FLeftMargin: Integer; 
    FRightMargin: Integer; 
    FBottomMargin: Integer; 
    FTopMargin: Integer; 
    procedure SetEnable(const Value: Boolean); 
    procedure SetTransparency(const Value: Integer); 
    procedure SetFont(const Value: TFont); 
  public 
    constructor Create(AOwner: TComponent); override; 
    destructor Destroy; override; 
  published 
    property Transparent: boolean read FTransparent write FTransparent; 
    property Transparency: Integer read FTransparency write SetTransparency default 30; 
    property TranspColor: TColor read FTranspColor write FTranspColor default clInfoBk; 
    property ShadowColor: TColor read FShadowColor write FShadowColor default clWhite; 
    property Enabled: Boolean read FEnabled write SetEnable; 
    property Font: TFont read FFont write SetFont; 
    property LeftMargin: Integer read FLeftMargin write FLeftMargin default 5; 
    property TopMargin: Integer read FTopMargin write FTopMargin default 5; 
    property RightMargin: Integer read FRightMargin write FRightMargin default 5; 
    property BottomMargin: Integer read FBottomMargin write FBottomMargin default 5; 
  end; 
 
procedure Register; 
 
 
implementation 
 

 
var dcHintEx: TdcHintEx;

procedure TTransparentBitmap.ApplyTransparency(r: TRect; Color: TColor;
  Level: Integer);
type
  PRGBArray = ^TRGBArray;
  TRGBArray = array[0..1000000] of TRGBTriple;
var
  SL: PRGBArray;
  X, Y: Integer;
  aColor: Cardinal;
begin
  NewTransBitmap;
  TransBitmap.Width := r.Right-r.Left+1;
  TransBitmap.Height := r.Bottom-r.Top+1;
  BitBlt(TransBitmap.Canvas.Handle, r.Left, r.Top, r.Right, r.Bottom,
    Bitmap.Canvas.Handle, 0, 0, SRCCOPY);
  aColor := ColorToRGB(Color);
  for Y := 0 to TransBitmap.Height - 1 do begin
    SL := TransBitmap.ScanLine[Y];
    for X := 0 to TransBitmap.Width - 1 do
      try
       SL[X].rgbtRed := (Level * SL[X].rgbtRed + (100 -
                         Level) * GetRValue(aColor)) div 100;
       SL[X].rgbtGreen := (Level * SL[X].rgbtGreen + (100 -
                           Level)* GetGValue(aColor)) div 100;
       SL[X].rgbtBlue := (Level * SL[X].rgbtBlue + (100 -
                          Level) * GetBValue(aColor)) div 100;
      except
      end;
  end;
end;

procedure TTransparentBitmap.CreateBitmap(r: TRect; Color: TColor; Level: Integer);
begin
  PrepareScreenBitmap(r);
  ApplyTransparency(Rect(0,0, Bitmap.Width-1, Bitmap.Height-1), Color, Level);
end;

destructor TTransparentBitmap.Destroy;
begin
  FreeBitmap;
  FreeTransBitmap;
  inherited;
end;

procedure TTransparentBitmap.FreeBitmap;
begin
  Bitmap.Free;
end;

procedure TTransparentBitmap.FreeTransBitmap;
begin
  TransBitmap.Free;
end;

procedure TTransparentBitmap.GetScreenBitmap(r: TRect);
var DC: HDC;
begin
  Bitmap.Width := r.Right-r.Left+1;
  Bitmap.Height := r.Bottom-r.Top+1;
  DC := GetDC(0);
  try
    with Bitmap do
      BitBlt(Canvas.Handle, 0, 0,
             Width, Height, DC, r.Left, r.Top, SrcCopy);
  finally
    ReleaseDC(0, DC);
  end;
end;

procedure TTransparentBitmap.NewBitmap;
begin
  FreeBitmap;
  Bitmap := TBitmap.Create;
  Bitmap.PixelFormat := pf24bit;
end;

procedure TTransparentBitmap.NewTransBitmap;
begin
  FreeTransBitmap;
  TransBitmap := TBitmap.Create;
  TransBitmap.PixelFormat := pf24bit;
end;

procedure TTransparentBitmap.PrepareScreenBitmap(r: TRect);
begin
  NewBitmap;
  GetScreenBitmap(R);
end;

 
procedure TdcInternalHintEx.ActivateHint(Rect: TRect; const AHint: string); 
type 
  PRGBArray = ^TRGBArray; 
  TRGBArray = array[0..1000000] of TRGBTriple; 
begin 
  FActivating := True; 
  try 
    ShowWindow(Handle, SW_HIDE); 
    Caption := AHint; 
    Inc(Rect.Bottom, 2); 
    Inc(Rect.Right, 2); 
    UpdateBoundsRect(Rect); 
    if Rect.Top + Height > Screen.DesktopHeight then 
      Rect.Top := Screen.DesktopHeight - Height; 
    if Rect.Left + Width > Screen.DesktopWidth then 
      Rect.Left := Screen.DesktopWidth - Width; 
    if Rect.Left < Screen.DesktopLeft then Rect.Left := Screen.DesktopLeft; 
    if Rect.Bottom < Screen.DesktopTop then Rect.Bottom := Screen.DesktopTop; 
 
    if dcHintEx.Transparent then 
      FTransBitmap.CreateBitmap(Rect, dcHintEx.TranspColor, dcHintEx.Transparency); 
    SetWindowPos(Handle, HWND_TOPMOST, Rect.Left, Rect.Top, Width, Height, 
      SWP_SHOWWINDOW or SWP_NOACTIVATE); 
    Invalidate; 
  finally 
    FActivating := False; 
  end; 
end; 
 
function TdcInternalHintEx.CalcHintRect(MaxWidth: Integer; const AHint: string; 
  AData: Pointer): TRect; 
begin 
  Result := Rect(0, 0, MaxWidth, 0); 
  Canvas.Font := dchintEx.Font; 
  DrawText(Canvas.Handle, PChar(AHint), -1, Result, DT_CALCRECT or DT_LEFT or 
    DT_WORDBREAK or DT_NOPREFIX or DrawTextBiDiModeFlagsReadingOnly); 
  Inc(Result.Right, dchintEx.RightMargin+dcHintEx.LeftMargin); 
  Inc(Result.Bottom, dcHintEx.BottomMargin+dcHintEx.TopMargin); 
end; 
 
constructor TdcInternalHintEx.Create(AOwner: TComponent); 
begin 
  inherited; 
  FTransBitmap := TTransparentBitmap.Create; 
end; 
 
procedure TdcInternalHintEx.CreateParams(var Params: TCreateParams); 
begin 
  inherited; 
  Params.Style := Params.Style - WS_BORDER; 
end; 
 
destructor TdcInternalHintEx.Destroy; 
begin 
  FTransBitmap.Free; 
  inherited; 
end; 
 
procedure TdcInternalHintEx.Paint; 
var R: TRect; 
begin 
  R := ClientRect; 
  Canvas.Font := dcHintEx.Font; 
  if dcHintEx.Transparent then 
    BitBlt(Canvas.Handle, 0, 0, FTransBitmap.TransBitmap.Width, FTransBitmap.TransBitmap.Height, 
      FTransBitmap.TransBitmap.Canvas.Handle, 0, 0, SRCCOPY); 
 
  Inc(R.Left, dcHintEx.LeftMargin-1); 
  Inc(R.Top, dcHintEx.TopMargin-1); 
  Dec(R.Right, dcHintEx.RightMargin+1); 
  Dec(R.Bottom, dcHintEx.BottomMargin+1); 
 
  Canvas.Font.Color := dcHintEx.ShadowColor; 
  DrawText(Canvas.Handle, PChar(Caption), -1, R, DT_LEFT or DT_NOPREFIX or 
    DT_WORDBREAK or DrawTextBiDiModeFlagsReadingOnly); 
 
  Inc(R.Left,2); 
  Inc(R.Top,2); 
  Inc(R.Right,2); 
  Inc(R.Bottom,2); 
  DrawText(Canvas.Handle, PChar(Caption), -1, R, DT_LEFT or DT_NOPREFIX or 
    DT_WORDBREAK or DrawTextBiDiModeFlagsReadingOnly); 
 
  Dec(R.Left); 
  Dec(R.Top); 
  Dec(R.Right); 
  Dec(R.Left); 
  Canvas.Font.Color := dcHintEx.Font.Color; 
  DrawText(Canvas.Handle, PChar(Caption), -1, R, DT_LEFT or DT_NOPREFIX or 
    DT_WORDBREAK or DrawTextBiDiModeFlagsReadingOnly); 
end; 
 
{ TdcHintEx } 
 
constructor TdcHintEx.Create(AOwner: TComponent); 
begin 
  if not (AOwner.InheritsFrom(TCustomForm)) then 
    raise Exception.Create('dcHintEx must be dropped on a form.'); 
  inherited; 
  FLeftMargin:= 5; 
  FRightMargin:= 5; 
  FTopMargin:= 5; 
  FBottomMargin:= 5; 
  FTransparent := True; 
  FTransparency := 30; 
  FTranspColor := clInfoBk; 
  FShadowColor := clWhite; 
  FFont := TFont.Create; 
  FFont.Assign(TCustomForm(AOwner).Font); 
end; 
 
destructor TdcHintEx.Destroy; 
begin 
  FFont.Free; 
  inherited; 
end; 
 
procedure TdcHintEx.SetEnable(const Value: Boolean); 
begin 
  if FEnabled <> Value then begin 
    FEnabled := Value; 
    if not (csDesigning in ComponentState) then 
      if FEnabled then begin 
        dcHintEx := Self; 
        HintWindowClass := TdcInternalHintEx 
      end 
      else begin 
        dcHintEx := nil; 
        if HintWindowClass = TdcInternalHintEx then 
          HintWindowClass := THintWindow; 
      end; 
  end; 
end; 
 
procedure TdcHintEx.SetFont(const Value: TFont); 
begin 
  FFont.Assign(Value); 
end; 
 
procedure TdcHintEx.SetTransparency(const Value: Integer); 
begin 
  if (Value < 0) or (Value > 100) then 
    raise Exception.Create('Invalid transparency percentage value.'); 
  FTransparency := Value; 
end; 
 
procedure Register; 
begin 
  RegisterComponents('dc Tools', [TdcHintEx]); 
end; 
 
end. 