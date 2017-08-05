unit Unit1;
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.Math,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.Samples.Spin,
  Vcl.Imaging.pngimage, RateGather, udcHintEx;

type
  TForm1 = class(TForm)
    GroupBox22: TGroupBox;
    SpeedButton210: TSpeedButton;
    SpeedButton211: TSpeedButton;
    SpeedButton212: TSpeedButton;
    SpeedButton213: TSpeedButton;
    SpeedButton214: TSpeedButton;
    SpeedButton215: TSpeedButton;
    SpeedButton216: TSpeedButton;
    SpeedButton217: TSpeedButton;
    SpeedButton218: TSpeedButton;
    GroupBox23: TGroupBox;
    SpeedButton219: TSpeedButton;
    SpeedButton220: TSpeedButton;
    SpeedButton221: TSpeedButton;
    SpeedButton222: TSpeedButton;
    SpeedButton223: TSpeedButton;
    SpeedButton224: TSpeedButton;
    SpeedButton225: TSpeedButton;
    SpeedButton226: TSpeedButton;
    SpeedButton227: TSpeedButton;
    Panel1: TPanel;
    GroupBox5: TGroupBox;
    SpeedButton34: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    SpeedButton43: TSpeedButton;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton44: TSpeedButton;
    GroupBox2: TGroupBox;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    GroupBox3: TGroupBox;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    GroupBox4: TGroupBox;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    Panel2: TPanel;
    GroupBox7: TGroupBox;
    SpeedButton50: TSpeedButton;
    SpeedButton51: TSpeedButton;
    SpeedButton52: TSpeedButton;
    SpeedButton53: TSpeedButton;
    SpeedButton54: TSpeedButton;
    SpeedButton55: TSpeedButton;
    SpeedButton56: TSpeedButton;
    GroupBox8: TGroupBox;
    SpeedButton57: TSpeedButton;
    SpeedButton58: TSpeedButton;
    SpeedButton59: TSpeedButton;
    SpeedButton60: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton62: TSpeedButton;
    SpeedButton63: TSpeedButton;
    SpeedButton64: TSpeedButton;
    SpeedButton65: TSpeedButton;
    GroupBox6: TGroupBox;
    SpeedButton45: TSpeedButton;
    SpeedButton46: TSpeedButton;
    SpeedButton47: TSpeedButton;
    SpeedButton48: TSpeedButton;
    SpeedButton49: TSpeedButton;
    Panel3: TPanel;
    GroupBox18: TGroupBox;
    SpeedButton176: TSpeedButton;
    SpeedButton177: TSpeedButton;
    SpeedButton178: TSpeedButton;
    SpeedButton179: TSpeedButton;
    SpeedButton181: TSpeedButton;
    SpeedButton182: TSpeedButton;
    SpeedButton184: TSpeedButton;
    GroupBox19: TGroupBox;
    SpeedButton180: TSpeedButton;
    SpeedButton183: TSpeedButton;
    SpeedButton185: TSpeedButton;
    SpeedButton186: TSpeedButton;
    SpeedButton187: TSpeedButton;
    SpeedButton188: TSpeedButton;
    SpeedButton189: TSpeedButton;
    SpeedButton190: TSpeedButton;
    GroupBox20: TGroupBox;
    SpeedButton191: TSpeedButton;
    SpeedButton192: TSpeedButton;
    SpeedButton193: TSpeedButton;
    SpeedButton194: TSpeedButton;
    SpeedButton195: TSpeedButton;
    SpeedButton196: TSpeedButton;
    SpeedButton197: TSpeedButton;
    SpeedButton198: TSpeedButton;
    SpeedButton202: TSpeedButton;
    GroupBox21: TGroupBox;
    SpeedButton199: TSpeedButton;
    SpeedButton200: TSpeedButton;
    SpeedButton201: TSpeedButton;
    SpeedButton203: TSpeedButton;
    SpeedButton204: TSpeedButton;
    SpeedButton205: TSpeedButton;
    SpeedButton206: TSpeedButton;
    SpeedButton207: TSpeedButton;
    SpeedButton208: TSpeedButton;
    SpeedButton209: TSpeedButton;
    GroupBox9: TGroupBox;
    SpeedButton66: TSpeedButton;
    SpeedButton67: TSpeedButton;
    SpeedButton68: TSpeedButton;
    SpeedButton69: TSpeedButton;
    SpeedButton70: TSpeedButton;
    SpeedButton71: TSpeedButton;
    SpeedButton72: TSpeedButton;
    SpeedButton73: TSpeedButton;
    SpeedButton74: TSpeedButton;
    SpeedButton75: TSpeedButton;
    SpeedButton76: TSpeedButton;
    SpeedButton77: TSpeedButton;
    SpeedButton78: TSpeedButton;
    SpeedButton241: TSpeedButton;
    GroupBox24: TGroupBox;
    SpeedButton228: TSpeedButton;
    SpeedButton229: TSpeedButton;
    SpeedButton230: TSpeedButton;
    SpeedButton231: TSpeedButton;
    SpeedButton232: TSpeedButton;
    SpeedButton233: TSpeedButton;
    SpeedButton234: TSpeedButton;
    SpeedButton235: TSpeedButton;
    SpeedButton236: TSpeedButton;
    SpeedButton237: TSpeedButton;
    SpeedButton238: TSpeedButton;
    SpeedButton239: TSpeedButton;
    SpeedButton240: TSpeedButton;
    SpeedButton242: TSpeedButton;
    GroupBox10: TGroupBox;
    SpeedButton79: TSpeedButton;
    SpeedButton80: TSpeedButton;
    SpeedButton81: TSpeedButton;
    SpeedButton82: TSpeedButton;
    SpeedButton83: TSpeedButton;
    SpeedButton86: TSpeedButton;
    SpeedButton87: TSpeedButton;
    SpeedButton88: TSpeedButton;
    SpeedButton89: TSpeedButton;
    SpeedButton90: TSpeedButton;
    SpeedButton91: TSpeedButton;
    GroupBox11: TGroupBox;
    SpeedButton84: TSpeedButton;
    SpeedButton85: TSpeedButton;
    SpeedButton92: TSpeedButton;
    SpeedButton93: TSpeedButton;
    SpeedButton94: TSpeedButton;
    SpeedButton95: TSpeedButton;
    SpeedButton96: TSpeedButton;
    SpeedButton97: TSpeedButton;
    SpeedButton99: TSpeedButton;
    SpeedButton100: TSpeedButton;
    SpeedButton101: TSpeedButton;
    GroupBox12: TGroupBox;
    SpeedButton102: TSpeedButton;
    SpeedButton103: TSpeedButton;
    SpeedButton104: TSpeedButton;
    SpeedButton105: TSpeedButton;
    SpeedButton106: TSpeedButton;
    SpeedButton107: TSpeedButton;
    SpeedButton108: TSpeedButton;
    SpeedButton109: TSpeedButton;
    SpeedButton110: TSpeedButton;
    SpeedButton111: TSpeedButton;
    SpeedButton112: TSpeedButton;
    SpeedButton113: TSpeedButton;
    GroupBox13: TGroupBox;
    SpeedButton98: TSpeedButton;
    SpeedButton114: TSpeedButton;
    SpeedButton115: TSpeedButton;
    SpeedButton116: TSpeedButton;
    SpeedButton118: TSpeedButton;
    SpeedButton119: TSpeedButton;
    SpeedButton120: TSpeedButton;
    SpeedButton121: TSpeedButton;
    SpeedButton122: TSpeedButton;
    SpeedButton123: TSpeedButton;
    SpeedButton124: TSpeedButton;
    SpeedButton125: TSpeedButton;
    GroupBox14: TGroupBox;
    SpeedButton117: TSpeedButton;
    SpeedButton126: TSpeedButton;
    SpeedButton127: TSpeedButton;
    SpeedButton128: TSpeedButton;
    SpeedButton129: TSpeedButton;
    SpeedButton130: TSpeedButton;
    SpeedButton132: TSpeedButton;
    SpeedButton133: TSpeedButton;
    SpeedButton134: TSpeedButton;
    SpeedButton135: TSpeedButton;
    SpeedButton136: TSpeedButton;
    SpeedButton137: TSpeedButton;
    GroupBox15: TGroupBox;
    SpeedButton131: TSpeedButton;
    SpeedButton138: TSpeedButton;
    SpeedButton139: TSpeedButton;
    SpeedButton140: TSpeedButton;
    SpeedButton141: TSpeedButton;
    SpeedButton142: TSpeedButton;
    SpeedButton143: TSpeedButton;
    SpeedButton144: TSpeedButton;
    SpeedButton145: TSpeedButton;
    SpeedButton146: TSpeedButton;
    SpeedButton147: TSpeedButton;
    SpeedButton148: TSpeedButton;
    GroupBox16: TGroupBox;
    SpeedButton149: TSpeedButton;
    SpeedButton150: TSpeedButton;
    SpeedButton151: TSpeedButton;
    SpeedButton152: TSpeedButton;
    SpeedButton153: TSpeedButton;
    SpeedButton154: TSpeedButton;
    SpeedButton156: TSpeedButton;
    SpeedButton157: TSpeedButton;
    SpeedButton160: TSpeedButton;
    SpeedButton155: TSpeedButton;
    SpeedButton158: TSpeedButton;
    GroupBox17: TGroupBox;
    SpeedButton159: TSpeedButton;
    SpeedButton161: TSpeedButton;
    SpeedButton162: TSpeedButton;
    SpeedButton163: TSpeedButton;
    SpeedButton164: TSpeedButton;
    SpeedButton165: TSpeedButton;
    SpeedButton166: TSpeedButton;
    SpeedButton167: TSpeedButton;
    SpeedButton168: TSpeedButton;
    SpeedButton169: TSpeedButton;
    SpeedButton170: TSpeedButton;
    SpeedButton171: TSpeedButton;
    SpeedButton172: TSpeedButton;
    SpeedButton173: TSpeedButton;
    SpeedButton174: TSpeedButton;
    SpeedButton175: TSpeedButton;
    ComboBoxEx1: TComboBoxEx;
    ImageList1: TImageList;
    SpeedButton243: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    SpinEdit9: TSpinEdit;
    SpinEdit10: TSpinEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    ComboBoxEx2: TComboBoxEx;
    ImageList2: TImageList;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    DateTimePicker7: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    DateTimePicker9: TDateTimePicker;
    DateTimePicker10: TDateTimePicker;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    SpeedButton244: TSpeedButton;
    SpeedButton245: TSpeedButton;
    SpeedButton246: TSpeedButton;
    SpeedButton247: TSpeedButton;
    SpeedButton248: TSpeedButton;
    SpeedButton249: TSpeedButton;
    SpeedButton250: TSpeedButton;
    SpeedButton251: TSpeedButton;
    dcHintEx1: TdcHintEx;
    SpeedButton257: TSpeedButton;
    Panel4: TPanel;
    GroupBox26: TGroupBox;
    SpeedButton258: TSpeedButton;
    SpeedButton259: TSpeedButton;
    SpeedButton260: TSpeedButton;
    SpeedButton261: TSpeedButton;
    SpeedButton262: TSpeedButton;
    SpeedButton263: TSpeedButton;
    SpeedButton264: TSpeedButton;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    SpeedButton265: TSpeedButton;
    DateTimePicker19: TDateTimePicker;
    DateTimePicker20: TDateTimePicker;
    DateTimePicker21: TDateTimePicker;
    GroupBox25: TGroupBox;
    Label42: TLabel;
    Label51: TLabel;
    Label54: TLabel;
    Image11: TImage;
    SpeedButton254: TSpeedButton;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    SpeedButton255: TSpeedButton;
    SpeedButton256: TSpeedButton;
    SpeedButton266: TSpeedButton;
    SpeedButton267: TSpeedButton;
    SpinEdit13: TSpinEdit;
    DateTimePicker13: TDateTimePicker;
    DateTimePicker14: TDateTimePicker;
    SpinEdit15: TSpinEdit;
    SpinEdit16: TSpinEdit;
    RadioGroup1: TRadioGroup;
    SpinEdit14: TSpinEdit;
    DateTimePicker15: TDateTimePicker;
    SpinEdit17: TSpinEdit;
    DateTimePicker16: TDateTimePicker;
    DateTimePicker17: TDateTimePicker;
    DateTimePicker18: TDateTimePicker;
    GroupBox27: TGroupBox;
    SpeedButton252: TSpeedButton;
    SpeedButton253: TSpeedButton;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    SpinEdit11: TSpinEdit;
    DateTimePicker11: TDateTimePicker;
    SpinEdit12: TSpinEdit;
    DateTimePicker12: TDateTimePicker;
    ComboBoxEx3: TComboBoxEx;
    SpeedButton268: TSpeedButton;
    SpeedButton269: TSpeedButton;
    SpeedButton270: TSpeedButton;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DateTimePicker22: TDateTimePicker;
    DateTimePicker23: TDateTimePicker;
    DateTimePicker24: TDateTimePicker;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    ComboBoxEx4: TComboBoxEx;
    SpeedButton271: TSpeedButton;
    Image21: TImage;
    Image25: TImage;
    Image26: TImage;
    Label67: TLabel;
    Label68: TLabel;
    DateTimePicker25: TDateTimePicker;
    DateTimePicker26: TDateTimePicker;
    Label69: TLabel;
    Label70: TLabel;
    SpinEdit18: TSpinEdit;
    SpinEdit19: TSpinEdit;
    SpeedButton272: TSpeedButton;
    SpeedButton273: TSpeedButton;
    ComboBoxEx5: TComboBoxEx;
    ComboBoxEx6: TComboBoxEx;
    SpeedButton274: TSpeedButton;
    SpeedButton275: TSpeedButton;
    SpeedButton276: TSpeedButton;
    SpeedButton277: TSpeedButton;
    SpeedButton278: TSpeedButton;
    GroupBox28: TGroupBox;
    SpeedButton279: TSpeedButton;
    SpeedButton280: TSpeedButton;
    SpeedButton281: TSpeedButton;
    SpeedButton282: TSpeedButton;
    Image27: TImage;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    SpinEdit20: TSpinEdit;
    DateTimePicker27: TDateTimePicker;
    Image28: TImage;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    SpinEdit21: TSpinEdit;
    DateTimePicker28: TDateTimePicker;
    ComboBoxEx7: TComboBoxEx;
    SpeedButton283: TSpeedButton;
    SpeedButton284: TSpeedButton;
    SpeedButton285: TSpeedButton;
    SpeedButton286: TSpeedButton;
    SpeedButton287: TSpeedButton;
    SpeedButton288: TSpeedButton;
    SpeedButton289: TSpeedButton;
    SpeedButton290: TSpeedButton;
    SpeedButton291: TSpeedButton;
    SpeedButton292: TSpeedButton;
    SpeedButton293: TSpeedButton;
    SpeedButton294: TSpeedButton;
    SpeedButton295: TSpeedButton;
    SpeedButton296: TSpeedButton;
    SpeedButton297: TSpeedButton;
    SpeedButton298: TSpeedButton;
    SpeedButton299: TSpeedButton;
    SpeedButton300: TSpeedButton;
    SpeedButton301: TSpeedButton;
    SpeedButton302: TSpeedButton;
    SpeedButton303: TSpeedButton;
    SpeedButton304: TSpeedButton;
    SpeedButton305: TSpeedButton;
    SpeedButton306: TSpeedButton;
    Image29: TImage;
    Label77: TLabel;
    Label78: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ComboBoxEx1Change(Sender: TObject);
    procedure SpinEdit1Exit(Sender: TObject);
    procedure SpeedButton214Click(Sender: TObject);
    procedure SpeedButton216Click(Sender: TObject);
    procedure SpeedButton218Click(Sender: TObject);
    procedure SpeedButton212Click(Sender: TObject);
    procedure SpeedButton217Click(Sender: TObject);
    procedure SpeedButton213Click(Sender: TObject);
    procedure SpeedButton215Click(Sender: TObject);
    procedure SpeedButton210Click(Sender: TObject);
    procedure SpeedButton211Click(Sender: TObject);
    procedure SpeedButton221Click(Sender: TObject);
    procedure SpeedButton222Click(Sender: TObject);
    procedure SpeedButton219Click(Sender: TObject);
    procedure SpeedButton224Click(Sender: TObject);
    procedure SpeedButton227Click(Sender: TObject);
    procedure SpeedButton225Click(Sender: TObject);
    procedure SpeedButton223Click(Sender: TObject);
    procedure SpeedButton220Click(Sender: TObject);
    procedure SpeedButton226Click(Sender: TObject);
    procedure SpeedButton50Click(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
    procedure SpeedButton52Click(Sender: TObject);
    procedure SpeedButton53Click(Sender: TObject);
    procedure SpeedButton54Click(Sender: TObject);
    procedure SpeedButton55Click(Sender: TObject);
    procedure SpeedButton56Click(Sender: TObject);
    procedure SpeedButton45Click(Sender: TObject);
    procedure SpeedButton46Click(Sender: TObject);
    procedure SpeedButton47Click(Sender: TObject);
    procedure SpeedButton48Click(Sender: TObject);
    procedure SpeedButton49Click(Sender: TObject);
    procedure SpeedButton57Click(Sender: TObject);
    procedure SpeedButton58Click(Sender: TObject);
    procedure SpeedButton59Click(Sender: TObject);
    procedure SpeedButton60Click(Sender: TObject);
    procedure SpeedButton61Click(Sender: TObject);
    procedure SpeedButton62Click(Sender: TObject);
    procedure SpeedButton63Click(Sender: TObject);
    procedure SpeedButton64Click(Sender: TObject);
    procedure SpeedButton65Click(Sender: TObject);
    procedure SpeedButton34Click(Sender: TObject);
    procedure SpeedButton39Click(Sender: TObject);
    procedure SpeedButton41Click(Sender: TObject);
    procedure SpeedButton42Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton43Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure SpeedButton38Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton40Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton35Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton44Click(Sender: TObject);
    procedure SpeedButton102Click(Sender: TObject);
    procedure SpeedButton105Click(Sender: TObject);
    procedure SpeedButton107Click(Sender: TObject);
    procedure SpeedButton109Click(Sender: TObject);
    procedure SpeedButton113Click(Sender: TObject);
    procedure SpeedButton104Click(Sender: TObject);
    procedure SpeedButton103Click(Sender: TObject);
    procedure SpeedButton106Click(Sender: TObject);
    procedure SpeedButton108Click(Sender: TObject);
    procedure SpeedButton243Click(Sender: TObject);
    procedure SpeedButton110Click(Sender: TObject);
    procedure SpeedButton111Click(Sender: TObject);
    procedure SpeedButton112Click(Sender: TObject);
    procedure SpeedButton98Click(Sender: TObject);
    procedure SpeedButton114Click(Sender: TObject);
    procedure SpeedButton121Click(Sender: TObject);
    procedure SpeedButton119Click(Sender: TObject);
    procedure SpeedButton125Click(Sender: TObject);
    procedure SpeedButton116Click(Sender: TObject);
    procedure SpeedButton115Click(Sender: TObject);
    procedure SpeedButton118Click(Sender: TObject);
    procedure SpeedButton120Click(Sender: TObject);
    procedure SpeedButton122Click(Sender: TObject);
    procedure SpeedButton123Click(Sender: TObject);
    procedure SpeedButton124Click(Sender: TObject);
    procedure SpeedButton66Click(Sender: TObject);
    procedure SpeedButton67Click(Sender: TObject);
    procedure SpeedButton70Click(Sender: TObject);
    procedure SpeedButton72Click(Sender: TObject);
    procedure SpeedButton74Click(Sender: TObject);
    procedure SpeedButton78Click(Sender: TObject);
    procedure SpeedButton69Click(Sender: TObject);
    procedure SpeedButton68Click(Sender: TObject);
    procedure SpeedButton71Click(Sender: TObject);
    procedure SpeedButton73Click(Sender: TObject);
    procedure SpeedButton241Click(Sender: TObject);
    procedure SpeedButton75Click(Sender: TObject);
    procedure SpeedButton76Click(Sender: TObject);
    procedure SpeedButton77Click(Sender: TObject);
    procedure SpeedButton159Click(Sender: TObject);
    procedure SpeedButton163Click(Sender: TObject);
    procedure SpeedButton165Click(Sender: TObject);
    procedure SpeedButton166Click(Sender: TObject);
    procedure SpeedButton170Click(Sender: TObject);
    procedure SpeedButton162Click(Sender: TObject);
    procedure SpeedButton161Click(Sender: TObject);
    procedure SpeedButton164Click(Sender: TObject);
    procedure SpeedButton175Click(Sender: TObject);
    procedure SpeedButton167Click(Sender: TObject);
    procedure SpeedButton171Click(Sender: TObject);
    procedure SpeedButton173Click(Sender: TObject);
    procedure SpeedButton168Click(Sender: TObject);
    procedure SpeedButton169Click(Sender: TObject);
    procedure SpeedButton174Click(Sender: TObject);
    procedure SpeedButton172Click(Sender: TObject);
    procedure SpeedButton149Click(Sender: TObject);
    procedure SpeedButton152Click(Sender: TObject);
    procedure SpeedButton156Click(Sender: TObject);
    procedure SpeedButton160Click(Sender: TObject);
    procedure SpeedButton155Click(Sender: TObject);
    procedure SpeedButton158Click(Sender: TObject);
    procedure SpeedButton151Click(Sender: TObject);
    procedure SpeedButton150Click(Sender: TObject);
    procedure SpeedButton153Click(Sender: TObject);
    procedure SpeedButton157Click(Sender: TObject);
    procedure SpeedButton154Click(Sender: TObject);
    procedure SpeedButton131Click(Sender: TObject);
    procedure SpeedButton138Click(Sender: TObject);
    procedure SpeedButton141Click(Sender: TObject);
    procedure SpeedButton145Click(Sender: TObject);
    procedure SpeedButton143Click(Sender: TObject);
    procedure SpeedButton140Click(Sender: TObject);
    procedure SpeedButton139Click(Sender: TObject);
    procedure SpeedButton142Click(Sender: TObject);
    procedure SpeedButton144Click(Sender: TObject);
    procedure SpeedButton146Click(Sender: TObject);
    procedure SpeedButton147Click(Sender: TObject);
    procedure SpeedButton148Click(Sender: TObject);
    procedure SpeedButton117Click(Sender: TObject);
    procedure SpeedButton126Click(Sender: TObject);
    procedure SpeedButton129Click(Sender: TObject);
    procedure SpeedButton137Click(Sender: TObject);
    procedure SpeedButton133Click(Sender: TObject);
    procedure SpeedButton128Click(Sender: TObject);
    procedure SpeedButton127Click(Sender: TObject);
    procedure SpeedButton130Click(Sender: TObject);
    procedure SpeedButton132Click(Sender: TObject);
    procedure SpeedButton134Click(Sender: TObject);
    procedure SpeedButton135Click(Sender: TObject);
    procedure SpeedButton136Click(Sender: TObject);
    procedure SpeedButton84Click(Sender: TObject);
    procedure SpeedButton85Click(Sender: TObject);
    procedure SpeedButton94Click(Sender: TObject);
    procedure SpeedButton96Click(Sender: TObject);
    procedure SpeedButton93Click(Sender: TObject);
    procedure SpeedButton92Click(Sender: TObject);
    procedure SpeedButton95Click(Sender: TObject);
    procedure SpeedButton97Click(Sender: TObject);
    procedure SpeedButton99Click(Sender: TObject);
    procedure SpeedButton100Click(Sender: TObject);
    procedure SpeedButton101Click(Sender: TObject);
    procedure SpeedButton79Click(Sender: TObject);
    procedure SpeedButton80Click(Sender: TObject);
    procedure SpeedButton83Click(Sender: TObject);
    procedure SpeedButton87Click(Sender: TObject);
    procedure SpeedButton91Click(Sender: TObject);
    procedure SpeedButton82Click(Sender: TObject);
    procedure SpeedButton81Click(Sender: TObject);
    procedure SpeedButton86Click(Sender: TObject);
    procedure SpeedButton88Click(Sender: TObject);
    procedure SpeedButton89Click(Sender: TObject);
    procedure SpeedButton90Click(Sender: TObject);
    procedure SpeedButton228Click(Sender: TObject);
    procedure SpeedButton229Click(Sender: TObject);
    procedure SpeedButton232Click(Sender: TObject);
    procedure SpeedButton234Click(Sender: TObject);
    procedure SpeedButton236Click(Sender: TObject);
    procedure SpeedButton240Click(Sender: TObject);
    procedure SpeedButton231Click(Sender: TObject);
    procedure SpeedButton230Click(Sender: TObject);
    procedure SpeedButton233Click(Sender: TObject);
    procedure SpeedButton235Click(Sender: TObject);
    procedure SpeedButton237Click(Sender: TObject);
    procedure SpeedButton238Click(Sender: TObject);
    procedure SpeedButton239Click(Sender: TObject);
    procedure SpeedButton242Click(Sender: TObject);
    procedure SpeedButton199Click(Sender: TObject);
    procedure SpeedButton200Click(Sender: TObject);
    procedure SpeedButton205Click(Sender: TObject);
    procedure SpeedButton206Click(Sender: TObject);
    procedure SpeedButton203Click(Sender: TObject);
    procedure SpeedButton201Click(Sender: TObject);
    procedure SpeedButton209Click(Sender: TObject);
    procedure SpeedButton204Click(Sender: TObject);
    procedure SpeedButton207Click(Sender: TObject);
    procedure SpeedButton208Click(Sender: TObject);
    procedure SpeedButton191Click(Sender: TObject);
    procedure SpeedButton196Click(Sender: TObject);
    procedure SpeedButton197Click(Sender: TObject);
    procedure SpeedButton194Click(Sender: TObject);
    procedure SpeedButton193Click(Sender: TObject);
    procedure SpeedButton192Click(Sender: TObject);
    procedure SpeedButton195Click(Sender: TObject);
    procedure SpeedButton198Click(Sender: TObject);
    procedure SpeedButton202Click(Sender: TObject);
    procedure SpeedButton180Click(Sender: TObject);
    procedure SpeedButton183Click(Sender: TObject);
    procedure SpeedButton188Click(Sender: TObject);
    procedure SpeedButton189Click(Sender: TObject);
    procedure SpeedButton190Click(Sender: TObject);
    procedure SpeedButton186Click(Sender: TObject);
    procedure SpeedButton187Click(Sender: TObject);
    procedure SpeedButton185Click(Sender: TObject);
    procedure SpeedButton176Click(Sender: TObject);
    procedure SpeedButton177Click(Sender: TObject);
    procedure SpeedButton182Click(Sender: TObject);
    procedure SpeedButton184Click(Sender: TObject);
    procedure SpeedButton181Click(Sender: TObject);
    procedure SpeedButton178Click(Sender: TObject);
    procedure SpeedButton179Click(Sender: TObject);
    procedure ComboBoxEx2Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SpinEdit5Change(Sender: TObject);
    procedure SpinEdit6Change(Sender: TObject);
    procedure SpinEdit7Change(Sender: TObject);
    procedure SpinEdit8Change(Sender: TObject);
    procedure SpinEdit9Change(Sender: TObject);
    procedure SpinEdit10Change(Sender: TObject);
    procedure SpeedButton244Click(Sender: TObject);
    procedure SpeedButton245Click(Sender: TObject);
    procedure SpeedButton246Click(Sender: TObject);
    procedure SpeedButton247Click(Sender: TObject);
    procedure SpeedButton248Click(Sender: TObject);
    procedure SpeedButton249Click(Sender: TObject);
    procedure SpeedButton250Click(Sender: TObject);
    procedure SpeedButton251Click(Sender: TObject);
    procedure SpeedButton252Click(Sender: TObject);
    procedure SpeedButton253Click(Sender: TObject);
    procedure SpinEdit11Change(Sender: TObject);
    procedure SpinEdit12Change(Sender: TObject);
    procedure SpinEdit13Change(Sender: TObject);
    procedure SpinEdit15Change(Sender: TObject);
    procedure SpeedButton254Click(Sender: TObject);
    procedure SpinEdit14Change(Sender: TObject);
    procedure SpinEdit17Change(Sender: TObject);
    procedure SpinEdit16Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DateTimePicker14Change(Sender: TObject);
    procedure DateTimePicker17Change(Sender: TObject);
    procedure DateTimePicker18Change(Sender: TObject);
    procedure SpeedButton255Click(Sender: TObject);
    procedure SpeedButton256Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton257Click(Sender: TObject);
    procedure SpeedButton258Click(Sender: TObject);
    procedure SpeedButton259Click(Sender: TObject);
    procedure SpeedButton260Click(Sender: TObject);
    procedure SpeedButton261Click(Sender: TObject);
    procedure SpeedButton265Click(Sender: TObject);
    procedure SpeedButton262Click(Sender: TObject);
    procedure SpeedButton263Click(Sender: TObject);
    procedure SpeedButton264Click(Sender: TObject);
    procedure DateTimePicker19Change(Sender: TObject);
    procedure DateTimePicker20Change(Sender: TObject);
    procedure DateTimePicker21Change(Sender: TObject);
    procedure SpeedButton266Click(Sender: TObject);
    procedure SpeedButton267Click(Sender: TObject);
    procedure ComboBoxEx3Change(Sender: TObject);
    procedure SpeedButton269Click(Sender: TObject);
    procedure SpeedButton268Click(Sender: TObject);
    procedure SpeedButton270Click(Sender: TObject);
    procedure SpeedButton271Click(Sender: TObject);
    procedure DateTimePicker22Change(Sender: TObject);
    procedure DateTimePicker23Change(Sender: TObject);
    procedure DateTimePicker24Change(Sender: TObject);
    procedure SpinEdit18Change(Sender: TObject);
    procedure SpinEdit19Change(Sender: TObject);
    procedure ComboBoxEx6Change(Sender: TObject);
    procedure ComboBoxEx5Change(Sender: TObject);
    procedure SpeedButton279Click(Sender: TObject);
    procedure SpeedButton280Click(Sender: TObject);
    procedure SpeedButton278Click(Sender: TObject);
    procedure SpeedButton277Click(Sender: TObject);
    procedure SpeedButton274Click(Sender: TObject);
    procedure SpeedButton275Click(Sender: TObject);
    procedure SpeedButton276Click(Sender: TObject);
    procedure SpeedButton281Click(Sender: TObject);
    procedure SpeedButton282Click(Sender: TObject);
    procedure SpinEdit20Change(Sender: TObject);
    procedure SpinEdit21Change(Sender: TObject);
    procedure ComboBoxEx7Change(Sender: TObject);
    procedure SpeedButton283Click(Sender: TObject);
    procedure SpeedButton284Click(Sender: TObject);
    procedure SpeedButton286Click(Sender: TObject);
    procedure SpeedButton285Click(Sender: TObject);
    procedure SpeedButton288Click(Sender: TObject);
    procedure SpeedButton287Click(Sender: TObject);
    procedure SpeedButton289Click(Sender: TObject);
    procedure SpeedButton290Click(Sender: TObject);
    procedure SpeedButton292Click(Sender: TObject);
    procedure SpeedButton291Click(Sender: TObject);
    procedure SpeedButton294Click(Sender: TObject);
    procedure SpeedButton293Click(Sender: TObject);
    procedure SpeedButton295Click(Sender: TObject);
    procedure SpeedButton296Click(Sender: TObject);
    procedure SpeedButton299Click(Sender: TObject);
    procedure SpeedButton297Click(Sender: TObject);
    procedure SpeedButton298Click(Sender: TObject);
    procedure SpeedButton300Click(Sender: TObject);
    procedure SpeedButton301Click(Sender: TObject);
    procedure SpeedButton302Click(Sender: TObject);
    procedure SpeedButton303Click(Sender: TObject);
    procedure SpeedButton304Click(Sender: TObject);
    procedure SpeedButton305Click(Sender: TObject);
    procedure SpeedButton306Click(Sender: TObject);
  private
    { Private declarations }
    RG: TRateGather;
    RAG: TRateAutoGather;
    SG: TShipGather;
    procedure SetVisibleOn(var CB: TGroupBox);
    procedure SetVisibleOff(var CB: TGroupBox);
    procedure SetVisibleDeck(const Index: Integer);
    procedure SetVisibleMarket(const Index: Integer);
    procedure SetVisibleMFPP(const Index: Integer);
    procedure SetDownOn(SB: TComponent);
    procedure SetDownOff(SB: TComponent);
    procedure UpdateLabel;
    procedure UpdateLabel2;
    procedure UpdateLabel3;
    procedure UpdateLabel4;
    procedure UpdateLabel5;
    procedure SetColor(var L: TLabel; const A: Extended);
    procedure ClickOff(GB: TGroupBox);
    procedure ClickOn(GB: TGroupBox);
    function GetSecond(const D: TDateTime): Int64;

    function SetHint(const D: TArray<string>): string;
    function SetHint2(const D: TArray<string>): string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{$R Flag.res}

function TForm1.SetHint(const D: TArray<string>): string;
var
  S: TStringList;
  i: Integer;
begin
  Result := '';
  S := TStringList.Create;
  S.Add(D[0]);
  S.Add('');
  for i := 1 to Length(D) - 1 do
    S.Add('• Villager: Changes Gather Work Rate for ' + D[i] + '.00 %');
  Result := Copy(S.Text, 0 , S.Text.Length - 2);
  FreeAndNil(S);
end;

function TForm1.SetHint2(const D: TArray<string>): string;
var
  S: TStringList;
  i: Integer;
begin
  Result := '';
  S := TStringList.Create;
  S.Add(D[0]);
  S.Add('');
  for i := 1 to Length(D) - 1 do
    S.Add('• Settler Wagon: Changes Gather Work Rate for ' + D[i] + '.00 %');
  Result := Copy(S.Text, 0 , S.Text.Length - 2);
  FreeAndNil(S);
end;

function TForm1.GetSecond(const D: TDateTime): Int64;
var
  h, min, sec, msec: Word;
begin
  DecodeTime(D, h, min, sec, msec);
  Result := h * 3600 + min * 60 + sec;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  RAG.SetShrineInc(SpinEdit15.Value, RadioGroup1.ItemIndex + 1);
  RAG.SetToshoguShrineInc(SpinEdit16.Value, RadioGroup1.ItemIndex + 1);
  UpdateLabel2;
end;

procedure TForm1.ClickOff(GB: TGroupBox);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  if Components[i] is TSpeedButton then
  if TSpeedButton(Components[i]).Parent = GB then
  if not (Components[i] as TSpeedButton).Down then
  begin
    SetDownOn(Components[i]);
    if TSpeedButton(Components[i]).AllowAllUp then
      TSpeedButton(Components[i]).Click;
  end;
end;

procedure TForm1.ClickOn(GB: TGroupBox);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  if Components[i] is TSpeedButton then
  if TSpeedButton(Components[i]).Parent = GB then
  if (Components[i] as TSpeedButton).Down then
  begin
    SetDownOff(Components[i]);
    if TSpeedButton(Components[i]).AllowAllUp then
      TSpeedButton(Components[i]).Click;
  end;
end;

procedure TForm1.SetColor(var L: TLabel; const A: Extended);
begin
  L.Visible := False;
  if Round((A - 1) * 100) > 0 then
  begin
    L.Color := clGreen;
    L.Caption := '+' + Round((A - 1) * 100).ToString + ' %';
    L.Visible := True;
  end
  else
  if Round((A - 1) * 100) < 0 then
  begin
    L.Color := clMaroon;
    L.Caption := Round((A - 1) * 100).ToString  + ' %';
    L.Visible := True;
  end;
end;

procedure TForm1.UpdateLabel3;
begin
  Label55.Caption := RoundTo(RAG.TricleRate.rFood, -3).ToString;
  Label56.Caption := RoundTo(RAG.TricleRate.rWood, -3).ToString;
  Label57.Caption := RoundTo(RAG.TricleRate.rGold, -3).ToString;

  DateTimePicker19.OnChange(DateTimePicker19);
  DateTimePicker20.OnChange(DateTimePicker20);
  DateTimePicker21.OnChange(DateTimePicker21);
end;

procedure TForm1.UpdateLabel4;
begin
  Label31.Caption := RoundTo(RAG.Factory, -3).ToString;
  Label34.Caption := RoundTo(RAG.Bank, -3).ToString;
  SetColor(Label32, RAG.FactoryChanges);
  SetColor(Label35, RAG.BankChanges);
  SpinEdit11.OnChange(SpinEdit11);
  SpinEdit12.OnChange(SpinEdit12);

  Label58.Caption := RoundTo(RAG.PorcelainTower.rFood, -3).ToString;
  Label59.Caption := RoundTo(RAG.PorcelainTower.rWood, -3).ToString;
  Label60.Caption := RoundTo(RAG.PorcelainTower.rGold, -3).ToString;

  DateTimePicker22.OnChange(DateTimePicker22);
  DateTimePicker23.OnChange(DateTimePicker23);
  DateTimePicker24.OnChange(DateTimePicker24);

  Label67.Caption := RoundTo(RAG.Grazing.rFood, -3).ToString;
  Label68.Caption := RoundTo(RAG.Grazing.rWood, -3).ToString;

  SpinEdit18.OnChange(SpinEdit18);
  SpinEdit19.OnChange(SpinEdit19);
end;

procedure TForm1.UpdateLabel2;
begin
  Label37.Caption := RoundTo(RAG.ShrineFood, -3).ToString;
  Label43.Caption := RoundTo(RAG.ShrineWood, -3).ToString;
  Label46.Caption := RoundTo(RAG.ShrineGold, -3).ToString;

  SetColor(Label38, RAG.ShrineChanges.rFood);
  SetColor(Label44, RAG.ShrineChanges.rWood);
  SetColor(Label47, RAG.ShrineChanges.rGold);

  Label40.Caption := RoundTo(RAG.ToshoguShrineFood, -3).ToString;
  Label49.Caption := RoundTo(RAG.ToshoguShrineWood, -3).ToString;
  Label52.Caption := RoundTo(RAG.ToshoguShrineGold, -3).ToString;

  SetColor(Label41, RAG.ToshoguShrineChanges.rFood);
  SetColor(Label50, RAG.ToshoguShrineChanges.rWood);
  SetColor(Label53, RAG.ToshoguShrineChanges.rGold);





  SpinEdit13.OnChange(SpinEdit13);
  SpinEdit14.OnChange(SpinEdit14);
  SpinEdit17.OnChange(SpinEdit17);

  DateTimePicker14.OnChange(DateTimePicker14);
  DateTimePicker17.OnChange(DateTimePicker17);
  DateTimePicker18.OnChange(DateTimePicker18);
end;

procedure TForm1.UpdateLabel5;
begin
  Label71.Caption := RoundTo(SG.Fish, -3).ToString;
  Label74.Caption := RoundTo(SG.Whale, -3).ToString;

  SetColor(Label72, SG.ShipChange.rFish);
  SetColor(Label75, SG.ShipChange.rWhale);

  SpinEdit20.OnChange(SpinEdit20);
  SpinEdit21.OnChange(SpinEdit21);
end;

procedure TForm1.UpdateLabel;
begin
  Label1.Caption := RoundTo(RG.Huntable, -3).ToString;
  Label2.Caption := RoundTo(RG.Herdable, -3).ToString;
  Label3.Caption := RoundTo(RG.Mill, -3).ToString;
  Label4.Caption := RoundTo(RG.BerryBush, -3).ToString;
  Label5.Caption := RoundTo(RG.Farm, -3).ToString;
  Label6.Caption := RoundTo(RG.RicePaddyFood, -3).ToString;
  Label7.Caption := RoundTo(RG.Tree, -3).ToString;
  Label8.Caption := RoundTo(RG.Mine, -3).ToString;
  Label9.Caption := RoundTo(RG.RicePaddyGold, -3).ToString;
  Label10.Caption := RoundTo(RG.Plantation, -3).ToString;



  SetColor(Label11, RG.Changes.rHuntable + RG.TheWiseWomanSiox);
  SetColor(Label12, RG.Changes.rHerdable);
  SetColor(Label13, RG.Changes.rMill);
  SetColor(Label14, RG.Changes.rBerryBush);
  SetColor(Label15, RG.Changes.rFarm + RG.TheWiseWomanAztecs);
  SetColor(Label16, RG.Changes.rRicePaddyFood);
  SetColor(Label17, RG.Changes.rTree);
  SetColor(Label18, RG.Changes.rMine);
  SetColor(Label19, RG.Changes.rRicePaddyGold);
  SetColor(Label20, RG.Changes.rPlantation + RG.TheWiseWomanAztecs);



  SpinEdit1.OnChange(SpinEdit1);
  SpinEdit2.OnChange(SpinEdit2);
  SpinEdit3.OnChange(SpinEdit3);
  SpinEdit4.OnChange(SpinEdit4);
  SpinEdit5.OnChange(SpinEdit5);
  SpinEdit6.OnChange(SpinEdit6);
  SpinEdit7.OnChange(SpinEdit7);
  SpinEdit8.OnChange(SpinEdit8);
  SpinEdit9.OnChange(SpinEdit9);
  SpinEdit10.OnChange(SpinEdit10);
end;

procedure TForm1.SetDownOn(SB: TComponent);
begin
  if TSpeedButton(SB).AllowAllUp then
    TSpeedButton(SB).Down := True;
end;

procedure TForm1.SetDownOff(SB: TComponent);
begin
  if TSpeedButton(SB).AllowAllUp then
    TSpeedButton(SB).Down := False;
end;

procedure TForm1.SetVisibleOff(var CB: TGroupBox);
begin
  if CB.Visible then
  begin
    ClickOff(CB);
    CB.Visible := False;
  end;
end;

procedure TForm1.SetVisibleOn(var CB: TGroupBox);
begin
  if not CB.Visible then
  begin
    CB.Visible := True;
  end;
end;

procedure TForm1.SetVisibleMFPP(const Index: Integer);
begin
  case Index of
    0..7:
    begin
      SetVisibleOn(GroupBox6);
      SetVisibleOff(GroupBox7);
      SetVisibleOff(GroupBox8);
    end;
    8..10:
    begin
      SetVisibleOn(GroupBox7);
      SetVisibleOff(GroupBox6);
      SetVisibleOff(GroupBox8);
    end;
    11..13:
    begin
      SetVisibleOn(GroupBox8);
      SetVisibleOff(GroupBox6);
      SetVisibleOff(GroupBox7);
    end;
  end;
end;

procedure TForm1.SetVisibleMarket(const Index: Integer);
begin
  case Index of
    0..7:
    begin
      SetVisibleOn(GroupBox1);
      SetVisibleOff(GroupBox2);
      SetVisibleOff(GroupBox3);
      SetVisibleOff(GroupBox4);
      SetVisibleOff(GroupBox5);
    end;
    8..10:
    begin
      SetVisibleOn(GroupBox2);
      SetVisibleOff(GroupBox1);
      SetVisibleOff(GroupBox3);
      SetVisibleOff(GroupBox4);
      SetVisibleOff(GroupBox5);
    end;
    11:
    begin
      SetVisibleOn(GroupBox3);
      SetVisibleOff(GroupBox1);
      SetVisibleOff(GroupBox2);
      SetVisibleOff(GroupBox4);
      SetVisibleOff(GroupBox5);
    end;
    12:
    begin
      SetVisibleOn(GroupBox5);
      SetVisibleOff(GroupBox2);
      SetVisibleOff(GroupBox3);
      SetVisibleOff(GroupBox4);
      SetVisibleOff(GroupBox1);
    end;
    13:
    begin
      SetVisibleOn(GroupBox4);
      SetVisibleOff(GroupBox2);
      SetVisibleOff(GroupBox3);
      SetVisibleOff(GroupBox1);
      SetVisibleOff(GroupBox5);
    end;
  end;
end;

procedure TForm1.SetVisibleDeck(const Index: Integer);
begin
  case Index of
    0:
    begin
      SetVisibleOn(GroupBox13);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    1:
    begin
      SetVisibleOn(GroupBox11);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    2:
    begin
      SetVisibleOn(GroupBox12);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    3:
    begin
      SetVisibleOn(GroupBox9);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    4:
    begin
      SetVisibleOn(GroupBox10);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    5:
    begin
      SetVisibleOn(GroupBox14);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    6:
    begin
      SetVisibleOn(GroupBox24);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    7:
    begin
      SetVisibleOn(GroupBox21);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    8:
    begin
      SetVisibleOn(GroupBox18);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    9:
    begin
      SetVisibleOn(GroupBox19);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    10:
    begin
      SetVisibleOn(GroupBox20);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    11:
    begin
      SetVisibleOn(GroupBox15);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox17);
    end;
    12:
    begin
      SetVisibleOn(GroupBox16);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox13);
      SetVisibleOff(GroupBox17);
    end;
    13:
    begin
      SetVisibleOn(GroupBox17);
      SetVisibleOff(GroupBox11);
      SetVisibleOff(GroupBox12);
      SetVisibleOff(GroupBox9);
      SetVisibleOff(GroupBox10);
      SetVisibleOff(GroupBox14);
      SetVisibleOff(GroupBox24);
      SetVisibleOff(GroupBox21);
      SetVisibleOff(GroupBox18);
      SetVisibleOff(GroupBox19);
      SetVisibleOff(GroupBox20);
      SetVisibleOff(GroupBox15);
      SetVisibleOff(GroupBox16);
      SetVisibleOff(GroupBox13);
    end;
  end;
end;

procedure TForm1.ComboBoxEx1Change(Sender: TObject);
var
  PNG: TPNGImage;
begin
  ComboBoxEx1.Enabled := False;
  PNG := TPNGImage.Create;
  PNG.LoadFromResourceName(HInstance, 'F' + (ComboBoxEx1.ItemIndex + 1).ToString);
  Image29.Picture.Assign(PNG);
  FreeAndNil(PNG);
  Label77.Caption := ComboBoxEx1.Text;
  if (ComboBoxEx1.ItemIndex = 6) and (ComboBoxEx2.ItemIndex = 2) then
    SpeedButton242.Enabled := True
  else
    SpeedButton242.Enabled := False;
    if (ComboBoxEx7.ItemIndex = 0) or (ComboBoxEx7.ItemIndex = 3) then
      SpeedButton278.Enabled := True
    else
      SpeedButton278.Enabled := False;
  if RG.I = 0 then
  if ComboBoxEx1.ItemIndex = 4  then
    RG.SetRateMine := 0.69
  else
    RG.SetRateMine := RG.SetRateMine;
  if SpeedButton273.Visible then
    SpeedButton273.Visible := False;
  if SpeedButton272.Visible then
    SpeedButton272.Visible := False;

  GroupBox2.Caption := 'Market Upgrades';
  if ComboBoxEx1.ItemIndex = 9 then
  begin
    if not ComboBoxEx6.Visible then
      ComboBoxEx6.Show;
    if not SpeedButton272.Visible then
      SpeedButton272.Visible := True;
    if ComboBoxEx5.Visible then
      ComboBoxEx5.Hide;
    GroupBox2.Caption := 'Market and Age Up Upgrades';
    GroupBox2.Visible := False;
  end
  else
  if ComboBoxEx1.ItemIndex = 10 then
  begin
    if not ComboBoxEx5.Visible then
      ComboBoxEx5.Show;
    if not SpeedButton273.Visible then
      SpeedButton273.Visible := True;
    if ComboBoxEx6.Visible then
      ComboBoxEx6.Hide;
    GroupBox2.Caption := 'Market and Age Up Upgrades';
    GroupBox2.Visible := False;
  end
  else
  begin
    if ComboBoxEx5.Visible then
      ComboBoxEx5.Hide;
    if ComboBoxEx6.Visible then
      ComboBoxEx6.Hide;
  end;
  case ComboBoxEx1.ItemIndex of
    12:
    begin
      RG.SetRateHunt := RG.SetRateHunt;
      RG.SetRateWood := RG.SetRateWood * 1.15;
      RG.SetRateHerd := 0;
    end;
    13:
    begin
      RG.SetRateHerd := 0;
      RG.SetRateHunt := 0;
      RG.SetRateWood := RG.SetRateWood;
    end;
    else
    begin
      RG.SetRateHerd := RG.SetRateHerd;
      RG.SetRateHunt := RG.SetRateHunt;
      RG.SetRateWood := RG.SetRateWood;
    end;
  end;
  SetVisibleDeck(ComboBoxEx1.ItemIndex);
  SetVisibleMarket(ComboBoxEx1.ItemIndex);
  SetVisibleMFPP(ComboBoxEx1.ItemIndex);
  UpdateLabel;
  ComboBoxEx1.Enabled := True;
end;

procedure TForm1.ComboBoxEx2Change(Sender: TObject);
var
  i: Integer;
begin
  ComboBoxEx2.Enabled := False;
  if RG.I <> ComboBoxEx2.ItemIndex then
  begin
    FreeAndNil(RG);
    RG := TRateGather.Create(ComboBoxEx2.ItemIndex);
    if (ComboBoxEx1.ItemIndex = 6) and (ComboBoxEx2.ItemIndex = 2) then
      SpeedButton242.Enabled := True
    else
      SpeedButton242.Enabled := False;
    if RG.I = 0 then
    if ComboBoxEx1.ItemIndex = 4  then
      RG.SetRateMine := 0.69
    else
      RG.SetRateMine := RG.SetRateMine;
    case ComboBoxEx1.ItemIndex of
      12:
      begin
        RG.SetRateHunt := RG.SetRateHunt;
        RG.SetRateWood := RG.SetRateWood * 1.15;
        RG.SetRateHerd := 0;
      end;
      13:
      begin
        RG.SetRateHerd := 0;
        RG.SetRateHunt := 0;
        RG.SetRateWood := RG.SetRateWood;
      end;
      else
      begin
        RG.SetRateHerd := RG.SetRateHerd;
        RG.SetRateHunt := RG.SetRateHunt;
        RG.SetRateWood := RG.SetRateWood;
      end;
    end;
    for i := 0 to ComponentCount - 1 do
    if Components[i] is TSpeedButton then
    if (not (Components[i] as TSpeedButton).Down) and ((Components[i] as TSpeedButton).Enabled) then
    if TSpeedButton(Components[i]).AllowAllUp then
      TSpeedButton(Components[i]).Click;
    UpdateLabel;
  end;
  ComboBoxEx2.Enabled := True;
end;

procedure TForm1.ComboBoxEx3Change(Sender: TObject);
begin
  ComboBoxEx3.Enabled := False;
  case ComboBoxEx3.ItemIndex of
    0: GroupBox27.BringToFront;
    1: GroupBox26.BringToFront;
    2: GroupBox25.BringToFront;
  end;
  ComboBoxEx3.Enabled := True;
end;

procedure TForm1.ComboBoxEx5Change(Sender: TObject);
begin
  ComboBoxEx5.Enabled := False;
  RG.SetTheWiseWomanAztecs(ComboBoxEx5.ItemIndex, not SpeedButton273.Down);
  UpdateLabel;
  ComboBoxEx5.Enabled := True;
end;

procedure TForm1.ComboBoxEx6Change(Sender: TObject);
begin
  ComboBoxEx6.Enabled := False;
  RG.SetTheWiseWomanSiox(ComboBoxEx6.ItemIndex, not SpeedButton272.Down);
  UpdateLabel;
  ComboBoxEx6.Enabled := True;
end;

procedure TForm1.ComboBoxEx7Change(Sender: TObject);
var
  i: Integer;
begin
  ComboBoxEx7.Enabled := False;
  if SG.I <> ComboBoxEx7.ItemIndex then
  begin
    FreeAndNil(SG);
    SG := TShipGather.Create(ComboBoxEx7.ItemIndex);
    if (ComboBoxEx7.ItemIndex = 0) or (ComboBoxEx7.ItemIndex = 3) then
      SpeedButton278.Enabled := True
    else
      SpeedButton278.Enabled := False;
    for i := 0 to ComponentCount - 1 do
    if Components[i] is TSpeedButton then
    if (not (Components[i] as TSpeedButton).Down) and ((Components[i] as TSpeedButton).Enabled) then
    if TSpeedButton(Components[i]).AllowAllUp then
      TSpeedButton(Components[i]).Click;
    UpdateLabel5;
  end;
  ComboBoxEx7.Enabled := True;
end;

procedure TForm1.DateTimePicker14Change(Sender: TObject);
begin
  Label42.Caption := FormatFloat('#,###,###.###', Round(RAG.ToshoguShrineFood * GetSecond(DateTimePicker14.Time)));
end;

procedure TForm1.DateTimePicker17Change(Sender: TObject);
begin
  Label51.Caption := FormatFloat('#,###,###.###', Round(RAG.ToshoguShrineWood * GetSecond(DateTimePicker17.Time)));
end;

procedure TForm1.DateTimePicker18Change(Sender: TObject);
begin
  Label54.Caption := FormatFloat('#,###,###.###', Round(RAG.ToshoguShrineGold * GetSecond(DateTimePicker18.Time)));
end;

procedure TForm1.DateTimePicker19Change(Sender: TObject);
begin
  Label63.Caption := FormatFloat('#,###,###.###', Round(RAG.TricleRate.rFood * GetSecond(DateTimePicker19.Time)));
end;

procedure TForm1.DateTimePicker20Change(Sender: TObject);
begin
  Label62.Caption := FormatFloat('#,###,###.###', Round(RAG.TricleRate.rWood * GetSecond(DateTimePicker20.Time)));
end;

procedure TForm1.DateTimePicker21Change(Sender: TObject);
begin
  Label61.Caption := FormatFloat('#,###,###.###', Round(RAG.TricleRate.rGold * GetSecond(DateTimePicker21.Time)));
end;

procedure TForm1.DateTimePicker22Change(Sender: TObject);
begin
  Label64.Caption := FormatFloat('#,###,###.###', Round(RAG.PorcelainTower.rFood * GetSecond(DateTimePicker22.Time)));
end;

procedure TForm1.DateTimePicker23Change(Sender: TObject);
begin
  Label65.Caption := FormatFloat('#,###,###.###', Round(RAG.PorcelainTower.rWood * GetSecond(DateTimePicker23.Time)));

end;

procedure TForm1.DateTimePicker24Change(Sender: TObject);
begin
  Label66.Caption := FormatFloat('#,###,###.###', Round(RAG.PorcelainTower.rGold * GetSecond(DateTimePicker24.Time)));
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  SpeedButton1.Glyph.Assign(SpeedButton8.Glyph);

  SpeedButton6.Glyph.Assign(SpeedButton13.Glyph);

  SpeedButton35.Glyph.Assign(SpeedButton12.Glyph);

  SpeedButton41.Glyph.Assign(SpeedButton5.Glyph);
  SpeedButton31.Glyph.Assign(SpeedButton5.Glyph);
  SpeedButton21.Glyph.Assign(SpeedButton5.Glyph);

  SpeedButton32.Glyph.Assign(SpeedButton42.Glyph);
  SpeedButton22.Glyph.Assign(SpeedButton42.Glyph);

  SpeedButton19.Glyph.Assign(SpeedButton39.Glyph);

  SpeedButton14.Glyph.Assign(SpeedButton34.Glyph);

  SpeedButton25.Glyph.Assign(SpeedButton15.Glyph);

  SpeedButton20.Glyph.Assign(SpeedButton30.Glyph);

  SpeedButton26.Glyph.Assign(SpeedButton36.Glyph);
  SpeedButton16.Glyph.Assign(SpeedButton36.Glyph);

  SpeedButton33.Glyph.Assign(SpeedButton43.Glyph);
  SpeedButton23.Glyph.Assign(SpeedButton43.Glyph);

  SpeedButton27.Glyph.Assign(SpeedButton37.Glyph);
  SpeedButton17.Glyph.Assign(SpeedButton37.Glyph);

  SpeedButton28.Glyph.Assign(SpeedButton38.Glyph);
  SpeedButton18.Glyph.Assign(SpeedButton38.Glyph);

  SpeedButton269.Glyph.Assign(SpeedButton268.Glyph);

  SpeedButton163.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton149.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton117.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton98.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton79.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton66.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton131.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton84.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton199.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton191.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton180.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton228.Glyph.Assign(SpeedButton159.Glyph);
  SpeedButton176.Glyph.Assign(SpeedButton159.Glyph);

  SpeedButton152.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton126.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton114.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton102.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton80.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton67.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton138.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton85.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton200.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton196.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton183.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton229.Glyph.Assign(SpeedButton165.Glyph);
  SpeedButton177.Glyph.Assign(SpeedButton165.Glyph);

  SpeedButton160.Glyph.Assign(SpeedButton166.Glyph);
  SpeedButton129.Glyph.Assign(SpeedButton166.Glyph);
  SpeedButton105.Glyph.Assign(SpeedButton166.Glyph);
  SpeedButton87.Glyph.Assign(SpeedButton166.Glyph);
  SpeedButton141.Glyph.Assign(SpeedButton166.Glyph);
  SpeedButton197.Glyph.Assign(SpeedButton166.Glyph);
  SpeedButton189.Glyph.Assign(SpeedButton166.Glyph);

  SpeedButton158.Glyph.Assign(SpeedButton170.Glyph);
  SpeedButton137.Glyph.Assign(SpeedButton170.Glyph);
  SpeedButton125.Glyph.Assign(SpeedButton170.Glyph);
  SpeedButton113.Glyph.Assign(SpeedButton170.Glyph);
  SpeedButton91.Glyph.Assign(SpeedButton170.Glyph);
  SpeedButton78.Glyph.Assign(SpeedButton170.Glyph);
  SpeedButton240.Glyph.Assign(SpeedButton170.Glyph);
  SpeedButton182.Glyph.Assign(SpeedButton170.Glyph);

  SpeedButton275.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton283.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton285.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton287.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton289.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton291.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton295.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton297.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton300.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton302.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton303.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton304.Glyph.Assign(SpeedButton274.Glyph);
  SpeedButton306.Glyph.Assign(SpeedButton274.Glyph);

  SpeedButton293.Glyph.Assign(SpeedButton276.Glyph);
  SpeedButton298.Glyph.Assign(SpeedButton276.Glyph);

  SpeedButton161.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton151.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton128.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton116.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton104.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton82.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton69.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton140.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton93.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton203.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton186.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton231.Glyph.Assign(SpeedButton162.Glyph);
  SpeedButton179.Glyph.Assign(SpeedButton162.Glyph);

  SpeedButton150.Glyph.Assign(SpeedButton164.Glyph);
  SpeedButton127.Glyph.Assign(SpeedButton164.Glyph);
  SpeedButton115.Glyph.Assign(SpeedButton164.Glyph);
  SpeedButton103.Glyph.Assign(SpeedButton164.Glyph);
  SpeedButton81.Glyph.Assign(SpeedButton164.Glyph);
  SpeedButton68.Glyph.Assign(SpeedButton164.Glyph);
  SpeedButton139.Glyph.Assign(SpeedButton164.Glyph);
  SpeedButton92.Glyph.Assign(SpeedButton164.Glyph);
  SpeedButton201.Glyph.Assign(SpeedButton164.Glyph);
  SpeedButton193.Glyph.Assign(SpeedButton164.Glyph);
  SpeedButton230.Glyph.Assign(SpeedButton164.Glyph);
  SpeedButton178.Glyph.Assign(SpeedButton164.Glyph);

  SpeedButton132.Glyph.Assign(SpeedButton175.Glyph);
  SpeedButton120.Glyph.Assign(SpeedButton175.Glyph);
  SpeedButton108.Glyph.Assign(SpeedButton175.Glyph);
  SpeedButton86.Glyph.Assign(SpeedButton175.Glyph);
  SpeedButton73.Glyph.Assign(SpeedButton175.Glyph);
  SpeedButton144.Glyph.Assign(SpeedButton175.Glyph);
  SpeedButton97.Glyph.Assign(SpeedButton175.Glyph);
  SpeedButton204.Glyph.Assign(SpeedButton175.Glyph);
  SpeedButton235.Glyph.Assign(SpeedButton175.Glyph);

  SpeedButton284.Glyph.Assign(SpeedButton277.Glyph);
  SpeedButton286.Glyph.Assign(SpeedButton277.Glyph);
  SpeedButton288.Glyph.Assign(SpeedButton277.Glyph);
  SpeedButton290.Glyph.Assign(SpeedButton277.Glyph);
  SpeedButton292.Glyph.Assign(SpeedButton277.Glyph);
  SpeedButton294.Glyph.Assign(SpeedButton277.Glyph);
  SpeedButton296.Glyph.Assign(SpeedButton277.Glyph);
  SpeedButton299.Glyph.Assign(SpeedButton277.Glyph);
  SpeedButton301.Glyph.Assign(SpeedButton277.Glyph);
  SpeedButton305.Glyph.Assign(SpeedButton277.Glyph);

  SpeedButton157.Glyph.Assign(SpeedButton167.Glyph);
  SpeedButton134.Glyph.Assign(SpeedButton167.Glyph);
  SpeedButton122.Glyph.Assign(SpeedButton167.Glyph);
  SpeedButton110.Glyph.Assign(SpeedButton167.Glyph);
  SpeedButton88.Glyph.Assign(SpeedButton167.Glyph);
  SpeedButton75.Glyph.Assign(SpeedButton167.Glyph);
  SpeedButton146.Glyph.Assign(SpeedButton167.Glyph);
  SpeedButton99.Glyph.Assign(SpeedButton167.Glyph);
  SpeedButton207.Glyph.Assign(SpeedButton167.Glyph);
  SpeedButton237.Glyph.Assign(SpeedButton167.Glyph);

  SpeedButton135.Glyph.Assign(SpeedButton171.Glyph);
  SpeedButton123.Glyph.Assign(SpeedButton171.Glyph);
  SpeedButton111.Glyph.Assign(SpeedButton171.Glyph);
  SpeedButton89.Glyph.Assign(SpeedButton171.Glyph);
  SpeedButton76.Glyph.Assign(SpeedButton171.Glyph);
  SpeedButton147.Glyph.Assign(SpeedButton171.Glyph);
  SpeedButton100.Glyph.Assign(SpeedButton171.Glyph);
  SpeedButton208.Glyph.Assign(SpeedButton171.Glyph);
  SpeedButton238.Glyph.Assign(SpeedButton171.Glyph);

  SpeedButton136.Glyph.Assign(SpeedButton173.Glyph);
  SpeedButton124.Glyph.Assign(SpeedButton173.Glyph);
  SpeedButton112.Glyph.Assign(SpeedButton173.Glyph);
  SpeedButton90.Glyph.Assign(SpeedButton173.Glyph);
  SpeedButton77.Glyph.Assign(SpeedButton173.Glyph);
  SpeedButton148.Glyph.Assign(SpeedButton173.Glyph);
  SpeedButton101.Glyph.Assign(SpeedButton173.Glyph);
  SpeedButton239.Glyph.Assign(SpeedButton173.Glyph);

  SpeedButton83.Glyph.Assign(SpeedButton156.Glyph);
  SpeedButton70.Glyph.Assign(SpeedButton156.Glyph);
  SpeedButton94.Glyph.Assign(SpeedButton156.Glyph);
  SpeedButton232.Glyph.Assign(SpeedButton156.Glyph);

  SpeedButton119.Glyph.Assign(SpeedButton155.Glyph);
  SpeedButton107.Glyph.Assign(SpeedButton155.Glyph);
  SpeedButton72.Glyph.Assign(SpeedButton155.Glyph);
  SpeedButton143.Glyph.Assign(SpeedButton155.Glyph);
  SpeedButton205.Glyph.Assign(SpeedButton155.Glyph);
  SpeedButton194.Glyph.Assign(SpeedButton155.Glyph);
  SpeedButton190.Glyph.Assign(SpeedButton155.Glyph);
  SpeedButton234.Glyph.Assign(SpeedButton155.Glyph);

  SpeedButton130.Glyph.Assign(SpeedButton153.Glyph);
  SpeedButton118.Glyph.Assign(SpeedButton153.Glyph);
  SpeedButton106.Glyph.Assign(SpeedButton153.Glyph);
  SpeedButton71.Glyph.Assign(SpeedButton153.Glyph);
  SpeedButton142.Glyph.Assign(SpeedButton153.Glyph);
  SpeedButton95.Glyph.Assign(SpeedButton153.Glyph);
  SpeedButton209.Glyph.Assign(SpeedButton153.Glyph);
  SpeedButton187.Glyph.Assign(SpeedButton153.Glyph);
  SpeedButton233.Glyph.Assign(SpeedButton153.Glyph);
  SpeedButton181.Glyph.Assign(SpeedButton153.Glyph);

  SpeedButton188.Glyph.Assign(SpeedButton154.Glyph);

  SpeedButton121.Glyph.Assign(SpeedButton133.Glyph);
  SpeedButton109.Glyph.Assign(SpeedButton133.Glyph);
  SpeedButton74.Glyph.Assign(SpeedButton133.Glyph);
  SpeedButton206.Glyph.Assign(SpeedButton133.Glyph);
  SpeedButton236.Glyph.Assign(SpeedButton133.Glyph);

  SpeedButton96.Glyph.Assign(SpeedButton145.Glyph);
  SpeedButton184.Glyph.Assign(SpeedButton145.Glyph);

  SpeedButton274.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton275.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton283.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton285.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton287.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton289.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton291.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton295.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton297.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton300.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton302.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton303.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton304.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';
  SpeedButton306.Hint := 'Fish Market' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 25.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 25.00 %';

  SpeedButton277.Hint := 'Rendering Plant' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';
  SpeedButton284.Hint := 'Rendering Plant' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';
  SpeedButton286.Hint := 'Rendering Plant' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';
  SpeedButton288.Hint := 'Rendering Plant' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';
  SpeedButton290.Hint := 'Rendering Plant' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';
  SpeedButton292.Hint := 'Rendering Plant' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';
  SpeedButton294.Hint := 'Rendering Plant' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';
  SpeedButton296.Hint := 'Rendering Plant' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';
  SpeedButton299.Hint := 'Rendering Plant' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';
  SpeedButton301.Hint := 'Rendering Plant' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';
  SpeedButton305.Hint := 'Rendering Plant' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';

  SpeedButton276.Hint := 'Whale Oil' + #13#13'• Fishing Boat: Changes Gather Work Rate for Whale by 35.00 %';
  SpeedButton293.Hint := 'Whale Oil' + #13#13'• Fishing Boat: Changes Gather Work Rate for Whale by 35.00 %';
  SpeedButton298.Hint := 'Whale Oil' + #13#13'• Fishing Boat: Changes Gather Work Rate for Whale by 35.00 %';

  SpeedButton279.Hint := 'Gill Nets' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 15.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 15.00 %';
  SpeedButton280.Hint := 'Long Lines' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 30.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 30.00 %';


  SpeedButton278.Hint := 'Peacetime Fishing' + #13#13'• War Ship: Changes Gather Work Rate for Fish by 125.00 %'#13'• War Ship: Changes Gather Work Rate for Whale by 125.00 %';
  SpeedButton282.Hint := 'Fish Market Team' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 10.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 10.00 %';
  SpeedButton281.Hint := 'Huron Fish Wedding' + #13#13'• Fishing Boat: Changes Gather Work Rate for Fish by 20.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 20.00 %';


  Image21.Hint := 'Grazing'#13#13'• Camel: Enables Auto Gather Food Action'#13'• Elephant: Enables Auto Gather Wood Action';

  SpeedButton258.Hint := 'Colbertism'#13#13'• Player: Adds 1.50 to Food Tricle Rate';
  SpeedButton259.Hint := 'Distributivism'#13#13'• Player: Adds 1.25 to Wood Tricle Rate';
  SpeedButton260.Hint := 'Foreign Logging'#13#13'• Player: Adds 2.35 to Wood Tricle Rate';
  SpeedButton261.Hint := 'Capitalism'#13#13'• Player: Adds 1.25 to Coin Tricle Rate';
  SpeedButton265.Hint := 'Dutch Allies'#13#13'• Player: Adds 0.80 to Coin Tricle Rate';
  SpeedButton262.Hint := 'Earth Bounty'#13#13'• Player: Adds 0.65 to Wood Tricle Rate'#13'• Player: Adds 0.65 to Coin Tricle Rate';
  SpeedButton263.Hint := 'Sumptuary Laws'#13#13'• Player: Adds 0.30 to Food Tricle Rate'#13'• Player: Adds 0.30 to Wood Tricle Rate'#13'• Player: Adds 0.30 to Coin Tricle Rate';
  SpeedButton264.Hint := 'Sumptuary Laws Team'#13#13'• Player: Adds 0.20 to Food Tricle Rate'#13'• Player: Adds 0.20 to Wood Tricle Rate'#13'• Player: Adds 0.20 to Coin Tricle Rate';

  SpeedButton257.Hint := SetHint(['Temple of Xolotl Support', 'Mill by 10', 'Farm by 10', 'Plantation by 10']);

  SpeedButton266.Hint := 'Punjabi New Year'#13#13'• Herded Animals: Changes Work Rate for Shrine by 10.00 %';
  SpeedButton267.Hint := 'Wool Staple Ports Team'#13#13'• Herded Animals: Changes Work Rate for Shrine by 25.00 %';

  SpeedButton254.Hint := 'Toshogu Shrine'#13#13'• Shrine: Changes Auto Gather Work Rate for Food by 50.00 %'#13'• Shrine: Changes Auto Gather Work Rate for Wood by 50.00 %'#13'• Shrine: Changes Auto Gather Work Rate for Coin by 50.00 %';
  SpeedButton255.Hint := 'Tempo Reforms'#13#13'• Shrine: Changes Auto Gather Work Rate for Food by 350.00 %'#13'• Shrine: Changes Auto Gather Work Rate for Wood by 300.00 %'#13'• Shrine: Changes Auto Gather Work Rate for Coin by 300.00 %';
  SpeedButton256.Hint := 'Heavenly Kami'#13#13'• Shrine: Changes Auto Gather Work Rate for Food by 50.00 %'#13'• Shrine: Changes Auto Gather Work Rate for Wood by 50.00 %'#13'• Shrine: Changes Auto Gather Work Rate for Coin by 50.00 %';

  SpeedButton252.Hint := 'Factory (Cannery/Water Power/Steam Power)'#13#13'• Factory: Changes Auto Gather Work Rate for Food by 30.00 %'#13'• Factory: Changes Auto Gather Work Rate for Wood by 30.00 %'#13'• Factory: Changes Auto Gather Work Rate for Coin by 30.00 %';
  SpeedButton253.Hint := 'Bank (Tulip Speculation)'#13#13'• Bank: Changes Auto Gather Work Rate for Coin by 15.00 %';

  SpeedButton169.Hint := SetHint(['Cherry Blossom Festival', 'Berry/Cherry by 15']);
  SpeedButton172.Hint := SetHint(['Terraced Hillsides', 'Mill by 10', 'Farm by 10', 'Rice Paddy (Food) by 10', 'Rice Paddy (Coin) by 10', 'Plantation by 10']);
  SpeedButton1.Hint := SetHint(['Hunting Dogs', 'Hunted Animals by 10']);
  SpeedButton8.Hint := SetHint(['Hunting Dogs', 'Hunted Animals by 10']);
  SpeedButton2.Hint := SetHint(['Steel Traps', 'Hunted Animals by 20']);
  SpeedButton3.Hint := SetHint(['Gang Saw', 'Wood by 10']);
  SpeedButton4.Hint := SetHint(['Log Flume', 'Wood by 20']);
  SpeedButton5.Hint := SetHint(['Circular Saw', 'Wood by 30']);

  SpeedButton9.Hint := SetHint(['Lumber Ceremony', 'Wood by 20']);
  SpeedButton10.Hint := SetHint(['Forest People Ceremony', 'Wood by 20']);
  SpeedButton11.Hint := SetHint(['Forest Spirit Ceremony', 'Wood by 20']);

  SpeedButton6.Hint := SetHint(['Placer Mines', 'Mine by 10']);
  SpeedButton13.Hint := SetHint(['Placer Mines', 'Mine by 10']);
  SpeedButton7.Hint := SetHint(['Amalgamation', 'Mine by 20']);

  SpeedButton45.Hint := SetHint(['Seed Drill', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton46.Hint := SetHint(['Artificial Fertilizer', 'Mill by 30', 'Farm by 30', 'Rice Paddy (Food) by 30']);
  SpeedButton50.Hint := SetHint(['Great Feast', 'Hunted Animals by 10', 'Mill by 10', 'Berry/Cherry by 10', 'Farm by 10', 'Rice Paddy (Food) by 10']);
  SpeedButton51.Hint := SetHint(['Harvest Ceremony', 'Hunted Animals by 15', 'Mill by 15', 'Berry/Cherry by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton52.Hint := SetHint(['Green Corn Ceremony', 'Hunted Animals by 20', 'Mill by 20', 'Berry/Cherry by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);
  SpeedButton53.Hint := SetHint(['Large Scale Gathering', 'Hunted Animals by 50', 'Mill by 50', 'Farm by 50', 'Rice Paddy (Food) by 50']);
  SpeedButton47.Hint := SetHint(['Bookkeeping', 'Rice Paddy (Coin) by 10', 'Plantation by 10']);
  SpeedButton48.Hint := SetHint(['Home Steading', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton49.Hint := SetHint(['Refineries', 'Rice Paddy (Coin) by 30', 'Plantation by 30']);

  SpeedButton54.Hint := SetHint(['Earth Ceremony', 'Mine by 10', 'Rice Paddy (Coin) by 10', 'Plantation by 10']);
  SpeedButton55.Hint := SetHint(['Earth Gift Ceremony', 'Mine by 20', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton56.Hint := SetHint(['Excessive Tribute', 'Mine by 50', 'Rice Paddy (Coin) by 50', 'Plantation by 50']);
  SpeedButton56.Hint := SpeedButton56.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Whale by 50.00 %';

  SpeedButton40.Hint := SetHint(['Large Scale Agriculture', 'Mill by 50', 'Farm by 50', 'Rice Paddy (Food) by 50']);
  SpeedButton12.Hint := SetHint(['Deforestation', 'Wood by 50']);
  SpeedButton35.Hint := SetHint(['Deforestation', 'Wood by 50']);
  SpeedButton44.Hint := SetHint(['Excessive Taxation', 'Mine by 50', 'Rice Paddy (Coin) by 50', 'Plantation by 50']);
  SpeedButton44.Hint := SpeedButton44.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Whale by 50.00 %';
  SpeedButton14.Hint := SetHint(['Hunting Eagles', 'Hunted Animals by 5']);
  SpeedButton34.Hint := SetHint(['Hunting Eagles', 'Hunted Animals by 5']);
  SpeedButton19.Hint := SetHint(['Professional Hunters', 'Hunted Animals by 10']);
  SpeedButton39.Hint := SetHint(['Professional Hunters', 'Hunted Animals by 10']);
  SpeedButton24.Hint := SetHint(['Hanami Parties', 'Berry/Cherry by 5']);
  SpeedButton29.Hint := SetHint(['Yozakura Lanterns', 'Berry/Cherry by 10']);

  SpeedButton25.Hint := SetHint(['Water Wheel', 'Wood by 5']);
  SpeedButton30.Hint := SetHint(['Regenerative Forestry', 'Wood by 10']);
  SpeedButton31.Hint := SetHint(['Timber Trade', 'Wood by 30']);
  SpeedButton32.Hint := SetHint(['Tropical Timber Trade', 'Wood by 50']);
  SpeedButton15.Hint := SetHint(['Water Wheel', 'Wood by 5']);
  SpeedButton20.Hint := SetHint(['Regenerative Forestry', 'Wood by 10']);
  SpeedButton21.Hint := SetHint(['Timber Trade', 'Wood by 30']);
  SpeedButton22.Hint := SetHint(['Tropical Timber Trade', 'Wood by 50']);
  SpeedButton41.Hint := SetHint(['Timber Trade', 'Wood by 30']);
  SpeedButton42.Hint := SetHint(['Tropical Timber Trade', 'Wood by 50']);

  SpeedButton36.Hint := SetHint(['Blanket Filters', 'Mine by 5']);
  SpeedButton43.Hint := SetHint(['Flume And Ditching', 'Mine by 10']);
  SpeedButton37.Hint := SetHint(['Civil Servants', 'Hunted Animals by 5', 'Herded Animals by 5', 'Berry/Cherry by 5', 'Wood by 5', 'Mine by 5']);
  SpeedButton38.Hint := SetHint(['Imperial Beureaucracy',  'Hunted Animals by 10', 'Herded Animals by 10', 'Berry/Cherry by 10', 'Wood by 10', 'Mine by 10']);
  SpeedButton26.Hint := SetHint(['Blanket Filters', 'Mine by 5']);
  SpeedButton23.Hint := SetHint(['Flume And Ditching', 'Mine by 10']);
  SpeedButton27.Hint := SetHint(['Civil Servants', 'Hunted Animals by 5', 'Herded Animals by 5', 'Berry/Cherry by 5', 'Wood by 5', 'Mine by 5']);
  SpeedButton28.Hint := SetHint(['Imperial Beureaucracy',  'Hunted Animals by 10', 'Herded Animals by 10', 'Berry/Cherry by 10', 'Wood by 10', 'Mine by 10']);
  SpeedButton16.Hint := SetHint(['Blanket Filters', 'Mine by 5']);
  SpeedButton13.Hint := SetHint(['Flume And Ditching', 'Mine by 10']);
  SpeedButton17.Hint := SetHint(['Civil Servants', 'Hunted Animals by 5', 'Herded Animals by 5', 'Berry/Cherry by 5', 'Wood by 5', 'Mine by 5']);
  SpeedButton18.Hint := SetHint(['Imperial Beureaucracy',  'Hunted Animals by 10', 'Herded Animals by 10', 'Berry/Cherry by 10', 'Wood by 10', 'Mine by 10']);

  SpeedButton57.Hint := SetHint(['Paddy Threshing', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton58.Hint := SetHint(['Irrigation Channels', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton59.Hint := SetHint(['Dike-Controlled Canals', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton60.Hint := SetHint(['Mechanized Rice Cultivation', 'Mill by 50', 'Farm by 50', 'Rice Paddy (Food) by 50']);
  SpeedButton61.Hint := SetHint(['Rice Surplus', 'Rice Paddy (Coin) by 10', 'Plantation by 10']);
  SpeedButton62.Hint := SetHint(['Rice Trade', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton63.Hint := SetHint(['Rice Markets', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton64.Hint := SetHint(['Rice Exports', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton65.Hint := SetHint(['Collective Economy', 'Mine by 50', 'Rice Paddy (Coin) by 50', 'Plantation by 50']);
  SpeedButton65.Hint := SpeedButton65.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Whale by 50.00 %';

  SpeedButton225.Hint := SetHint(['Vegetarianism', 'Berry/Cherry by 40']);
  SpeedButton222.Hint := SetHint(['Incan Metalworking', 'Mine by 20']);
  SpeedButton227.Hint := SetHint(['Klamath Work Ethos', 'Hunted Animals by 5', 'Mill by 5', 'Berry/Cherry by 5', 'Farm by 5', 'Wood by 5', 'Mine by 5', 'Plantation by 5']);
  SpeedButton221.Hint := SetHint(['Maya Calendar', 'Hunted Animals by 10', 'Mill by 10', 'Farm by 10', 'Rice Paddy (Food) by 10']);
  SpeedButton223.Hint := SetHint(['Navajo Craftsmanship', 'Mine by 20', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton223.Hint := SpeedButton223.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Whale by 20.00 %';

  SpeedButton226.Hint := SetHint(['Wood Clearing', 'Wood by 20']);
  SpeedButton219.Hint := SetHint(['Fasting', 'Hunted Animals by 10', 'Herded Animals by 10', 'Mill by 10', 'Berry/Cherry by 10', 'Farm by 10', 'Rice Paddy (Food) by 10', 'Wood by 10', 'Mine by 10', 'Rice Paddy (Coin) by 10', 'Plantation by 10']);
  SpeedButton224.Hint := SetHint(['Punjabi New Year', 'Mill by 10', 'Farm by 10', 'Rice Paddy (Food) by 10', 'Rice Paddy (Coin) by 10', 'Plantation by 10']);
  SpeedButton220.Hint := SetHint(['Zapotec Food Of The Gods', 'Mill by 10', 'Berry/Cherry by 10', 'Farm by 10', 'Rice Paddy (Food) by 10', 'Rice Paddy (Coin) by 10', 'Plantation by 10']);

  SpeedButton243.Hint := SetHint(['Code Napoleon', 'Hunted Animals by 10', 'Mill by 10', 'Berry/Cherry by 10', 'Farm by 10', 'Wood by 10', 'Mine by 10', 'Plantation by 10']);
  SpeedButton241.Hint := SetHint(['Econmedia Manor', 'Hunted Animals by -5', 'Mill by 20', 'Berry/Cherry by -5', 'Farm by 20', 'Wood by -5', 'Mine by -5', 'Plantation by -5']);
  SpeedButton211.Hint := SetHint(['Food Silos Team', 'Mill by 10', 'Farm by 10', 'Rice Paddy (Food) by 10']);
  SpeedButton141.Hint := SetHint(['Food Silos', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton197.Hint := SetHint(['Food Silos', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton189.Hint := SetHint(['Food Silos', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton166.Hint := SetHint(['Food Silos', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton160.Hint := SetHint(['Food Silos', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton129.Hint := SetHint(['Food Silos', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton105.Hint := SetHint(['Food Silos', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton87.Hint := SetHint(['Food Silos', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);

  SpeedButton68.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton139.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton92.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton201.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton193.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton230.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton178.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton164.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton150.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton127.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton115.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton103.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);
  SpeedButton81.Hint := SetHint(['Sustainable Agriculture', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15']);


  SpeedButton192.Hint := SetHint(['Grain Market', 'Mill by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);

  SpeedButton238.Hint := SetHint(['Refrigeration', 'Hunted Animals by 20', 'Herded Animals by 20', 'Mill by 20', 'Berry/Cherry by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);
  SpeedButton171.Hint := SetHint(['Refrigeration', 'Hunted Animals by 20', 'Herded Animals by 20', 'Mill by 20', 'Berry/Cherry by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);
  SpeedButton135.Hint := SetHint(['Refrigeration', 'Hunted Animals by 20', 'Herded Animals by 20', 'Mill by 20', 'Berry/Cherry by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);
  SpeedButton123.Hint := SetHint(['Refrigeration', 'Hunted Animals by 20', 'Herded Animals by 20', 'Mill by 20', 'Berry/Cherry by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);
  SpeedButton111.Hint := SetHint(['Refrigeration', 'Hunted Animals by 20', 'Herded Animals by 20', 'Mill by 20', 'Berry/Cherry by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);
  SpeedButton89.Hint := SetHint(['Refrigeration', 'Hunted Animals by 20', 'Herded Animals by 20', 'Mill by 20', 'Berry/Cherry by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);
  SpeedButton76.Hint := SetHint(['Refrigeration', 'Hunted Animals by 20', 'Herded Animals by 20', 'Mill by 20', 'Berry/Cherry by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);
  SpeedButton147.Hint := SetHint(['Refrigeration', 'Hunted Animals by 20', 'Herded Animals by 20', 'Mill by 20', 'Berry/Cherry by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);
  SpeedButton100.Hint := SetHint(['Refrigeration', 'Hunted Animals by 20', 'Herded Animals by 20', 'Mill by 20', 'Berry/Cherry by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);
  SpeedButton208.Hint := SetHint(['Refrigeration', 'Hunted Animals by 20', 'Herded Animals by 20', 'Mill by 20', 'Berry/Cherry by 20', 'Farm by 20', 'Rice Paddy (Food) by 20']);


  SpeedButton210.Hint := SetHint(['Chonindo Team', 'Hunted Animals by 8', 'Herded Animals by 8', 'Mill by 8', 'Berry/Cherry by 8', 'Farm by 8', 'Rice Paddy (Food) by 8', 'Wood by 8', 'Mine by 8', 'Rice Paddy (Coin) by 8', 'Plantation by 8']);
  SpeedButton210.Hint := SpeedButton210.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Fish by 8.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 8.00 %';

  SpeedButton236.Hint := SetHint(['Economic Theory', 'Hunted Animals by 10', 'Herded Animals by 10', 'Mill by 10', 'Berry/Cherry by 10', 'Farm by 10', 'Wood by 10', 'Mine by 10', 'Plantation by 10']);
  SpeedButton236.Hint := SpeedButton236.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Fish by 10.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 10.00 %';
  SpeedButton133.Hint := SetHint(['Economic Theory', 'Hunted Animals by 10', 'Herded Animals by 10', 'Mill by 10', 'Berry/Cherry by 10', 'Farm by 10', 'Wood by 10', 'Mine by 10', 'Plantation by 10']);
  SpeedButton133.Hint := SpeedButton133.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Fish by 10.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 10.00 %';
  SpeedButton121.Hint := SetHint(['Economic Theory', 'Hunted Animals by 10', 'Herded Animals by 10', 'Mill by 10', 'Berry/Cherry by 10', 'Farm by 10', 'Wood by 10', 'Mine by 10', 'Plantation by 10']);
  SpeedButton121.Hint := SpeedButton121.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Fish by 10.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 10.00 %';
  SpeedButton109.Hint := SetHint(['Economic Theory', 'Hunted Animals by 10', 'Herded Animals by 10', 'Mill by 10', 'Berry/Cherry by 10', 'Farm by 10', 'Wood by 10', 'Mine by 10', 'Plantation by 10']);
  SpeedButton109.Hint := SpeedButton109.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Fish by 10.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 10.00 %';
  SpeedButton74.Hint := SetHint(['Economic Theory', 'Hunted Animals by 10', 'Herded Animals by 10', 'Mill by 10', 'Berry/Cherry by 10', 'Farm by 10', 'Wood by 10', 'Mine by 10', 'Plantation by 10']);
  SpeedButton74.Hint := SpeedButton74.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Fish by 10.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 10.00 %';
  SpeedButton206.Hint := SetHint(['Economic Theory', 'Hunted Animals by 10', 'Herded Animals by 10', 'Mill by 10', 'Berry/Cherry by 10', 'Farm by 10', 'Wood by 10', 'Mine by 10', 'Plantation by 10']);
  SpeedButton206.Hint := SpeedButton206.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Fish by 10.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 10.00 %';

  SpeedButton268.Hint := SetHint(['French Allies', 'Hunted Animals by 5', 'Herded Animals by 5', 'Mill by 5', 'Berry/Cherry by 5', 'Farm by 5', 'Rice Paddy (Food) by 5', 'Wood by 5', 'Mine by 5', 'Rice Paddy (Coin) by 5', 'Plantation by 5']);
  SpeedButton268.Hint := SpeedButton268.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Fish by 5.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 5.00 %';

  SpeedButton269.Hint := SetHint(['French Allies', 'Hunted Animals by 5', 'Herded Animals by 5', 'Mill by 5', 'Berry/Cherry by 5', 'Farm by 5', 'Rice Paddy (Food) by 5', 'Wood by 5', 'Mine by 5', 'Rice Paddy (Coin) by 5', 'Plantation by 5']);
  SpeedButton269.Hint := SpeedButton269.Hint + #13'• Fishing Boat: Changes Gather Work Rate for Fish by 5.00 %'#13'• Fishing Boat: Changes Gather Work Rate for Whale by 5.00 %';

  SpeedButton270.Hint := SetHint(['Karni Mata', 'Hunted Animals by 10', 'Herded Animals by 10', 'Mill by 10', 'Berry/Cherry by 10', 'Farm by 10', 'Rice Paddy (Food) by 10', 'Wood by 10', 'Mine by 10', 'Rice Paddy (Coin) by 10', 'Plantation by 10']);

  SpeedButton242.Hint := SetHint2(['Guild Artisans', 'Hunted Animals by 35', 'Herded Animals by 35', 'Mill by 35', 'Berry/Cherry by 35', 'Wood by 35', 'Mine by 35', 'Plantation by 35']);
  SpeedButton217.Hint := SetHint(['Rum Distillery Team', 'Rice Paddy (Coin) by 15', 'Plantation by 15']);

  SpeedButton240.Hint := SetHint(['Rum Distillery', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton182.Hint := SetHint(['Rum Distillery', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton170.Hint := SetHint(['Rum Distillery', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton158.Hint := SetHint(['Rum Distillery', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton137.Hint := SetHint(['Rum Distillery', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton125.Hint := SetHint(['Rum Distillery', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton113.Hint := SetHint(['Rum Distillery', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton91.Hint := SetHint(['Rum Distillery', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton78.Hint := SetHint(['Rum Distillery', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);


  SpeedButton235.Hint := SetHint(['Cigar Roller', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton175.Hint := SetHint(['Cigar Roller', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton132.Hint := SetHint(['Cigar Roller', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton120.Hint := SetHint(['Cigar Roller', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton108.Hint := SetHint(['Cigar Roller', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton86.Hint := SetHint(['Cigar Roller', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton73.Hint := SetHint(['Cigar Roller', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton144.Hint := SetHint(['Cigar Roller', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton97.Hint := SetHint(['Cigar Roller', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);
  SpeedButton204.Hint := SetHint(['Cigar Roller', 'Rice Paddy (Coin) by 20', 'Plantation by 20']);


  SpeedButton239.Hint := SetHint(['Textile Mill', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton173.Hint := SetHint(['Textile Mill', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton136.Hint := SetHint(['Textile Mill', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton124.Hint := SetHint(['Textile Mill', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton112.Hint := SetHint(['Textile Mill', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton90.Hint := SetHint(['Textile Mill', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton77.Hint := SetHint(['Textile Mill', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton148.Hint := SetHint(['Textile Mill', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton101.Hint := SetHint(['Textile Mill', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);


  SpeedButton110.Hint := SetHint(['Royal Mint', 'Mine by 25', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton88.Hint := SetHint(['Royal Mint', 'Mine by 25', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton75.Hint := SetHint(['Royal Mint', 'Mine by 25', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton146.Hint := SetHint(['Royal Mint', 'Mine by 25', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton99.Hint := SetHint(['Royal Mint', 'Mine by 25', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton207.Hint := SetHint(['Royal Mint', 'Mine by 25', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton237.Hint := SetHint(['Royal Mint', 'Mine by 25', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton167.Hint := SetHint(['Royal Mint', 'Mine by 25', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton157.Hint := SetHint(['Royal Mint', 'Mine by 25', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton134.Hint := SetHint(['Royal Mint', 'Mine by 25', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);
  SpeedButton122.Hint := SetHint(['Royal Mint', 'Mine by 25', 'Rice Paddy (Coin) by 25', 'Plantation by 25']);


  SpeedButton216.Hint := SetHint(['Sawmills Team', 'Wood by 10']);

  SpeedButton79.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton66.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton131.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton84.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton199.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton191.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton180.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton228.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton176.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton159.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton163.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton149.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton117.Hint := SetHint(['Sawmills', 'Wood by 15']);
  SpeedButton98.Hint := SetHint(['Sawmills', 'Wood by 15']);

  SpeedButton214.Hint := SetHint(['Exotic Hardwoods Team', 'Wood by 15']);

  SpeedButton102.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton80.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton67.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton138.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton85.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton200.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton196.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton183.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton229.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton177.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton165.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton152.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton126.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);
  SpeedButton114.Hint := SetHint(['Exotic Hardwoods', 'Wood by 20']);


  SpeedButton188.Hint := SetHint(['Woodcrafting', 'Wood by 20']);
  SpeedButton154.Hint := SetHint(['Woodcrafting', 'Wood by 20']);

  SpeedButton145.Hint := SetHint(['Fulling Mills', 'Herded Animals by 300']);
  SpeedButton96.Hint := SetHint(['Fulling Mills', 'Herded Animals by 300']);
  SpeedButton184.Hint := SetHint(['Fulling Mills', 'Herded Animals by 300']);


  SpeedButton212.Hint := SetHint(['Furrier Team', 'Hunted Animals by 10', 'Berry/Cherry by 15']);

  SpeedButton155.Hint := SetHint(['Furrier', 'Hunted Animals by 15', 'Berry/Cherry by 20']);
  SpeedButton119.Hint := SetHint(['Furrier', 'Hunted Animals by 15', 'Berry/Cherry by 20']);
  SpeedButton107.Hint := SetHint(['Furrier', 'Hunted Animals by 15', 'Berry/Cherry by 20']);
  SpeedButton72.Hint := SetHint(['Furrier', 'Hunted Animals by 15', 'Berry/Cherry by 20']);
  SpeedButton143.Hint := SetHint(['Furrier', 'Hunted Animals by 15', 'Berry/Cherry by 20']);
  SpeedButton205.Hint := SetHint(['Furrier', 'Hunted Animals by 15', 'Berry/Cherry by 20']);
  SpeedButton194.Hint := SetHint(['Furrier', 'Hunted Animals by 15', 'Berry/Cherry by 20']);
  SpeedButton190.Hint := SetHint(['Furrier', 'Hunted Animals by 15', 'Berry/Cherry by 20']);
  SpeedButton234.Hint := SetHint(['Furrier', 'Hunted Animals by 15', 'Berry/Cherry by 20']);


  SpeedButton215.Hint := SetHint(['Spice Trade Team', 'Hunted Animals by 10', 'Berry/Cherry by 15']);

  SpeedButton153.Hint := SetHint(['Spice Trade', 'Hunted Animals by 20', 'Berry/Cherry by 20']);
  SpeedButton130.Hint := SetHint(['Spice Trade', 'Hunted Animals by 20', 'Berry/Cherry by 20']);
  SpeedButton118.Hint := SetHint(['Spice Trade', 'Hunted Animals by 20', 'Berry/Cherry by 20']);
  SpeedButton106.Hint := SetHint(['Spice Trade', 'Hunted Animals by 20', 'Berry/Cherry by 20']);
  SpeedButton71.Hint := SetHint(['Spice Trade', 'Hunted Animals by 20', 'Berry/Cherry by 20']);
  SpeedButton142.Hint := SetHint(['Spice Trade', 'Hunted Animals by 20', 'Berry/Cherry by 20']);
  SpeedButton95.Hint := SetHint(['Spice Trade', 'Hunted Animals by 20', 'Berry/Cherry by 20']);
  SpeedButton209.Hint := SetHint(['Spice Trade', 'Hunted Animals by 20', 'Berry/Cherry by 20']);
  SpeedButton187.Hint := SetHint(['Spice Trade', 'Hunted Animals by 20', 'Berry/Cherry by 20']);
  SpeedButton233.Hint := SetHint(['Spice Trade', 'Hunted Animals by 20', 'Berry/Cherry by 20']);
  SpeedButton181.Hint := SetHint(['Spice Trade', 'Hunted Animals by 20', 'Berry/Cherry by 20']);


  SpeedButton185.Hint := SetHint(['Great Hunter', 'Hunted Animals by 20', 'Berry/Cherry by 20']);
  SpeedButton213.Hint := SetHint(['Silversmith Team', 'Mine by 10']);

  SpeedButton186.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton231.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton179.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton162.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton161.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton151.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton128.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton116.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton104.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton82.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton69.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton140.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton93.Hint := SetHint(['Silversmith', 'Mine by 20']);
  SpeedButton203.Hint := SetHint(['Silversmith', 'Mine by 20']);


  SpeedButton218.Hint := SetHint(['Ironmonger Team', 'Mine by 10']);

  SpeedButton232.Hint := SetHint(['Establish Ironmonger', 'Mine by 20']);
  SpeedButton156.Hint := SetHint(['Establish Ironmonger', 'Mine by 20']);
  SpeedButton83.Hint := SetHint(['Establish Ironmonger', 'Mine by 20']);
  SpeedButton70.Hint := SetHint(['Establish Ironmonger', 'Mine by 20']);
  SpeedButton94.Hint := SetHint(['Establish Ironmonger', 'Mine by 20']);


  SpeedButton202.Hint := SetHint(['Aztec Mining', 'Mine by 40']);
  SpeedButton195.Hint := SetHint(['Chinampa', 'Mill by 10', 'Farm by 10', 'Rice Paddy (Food) by 10', 'Rice Paddy (Coin) by 10', 'Plantation by 10']);
  SpeedButton198.Hint := SetHint(['Great Chinampa', 'Mill by 15', 'Farm by 15', 'Rice Paddy (Food) by 15', 'Rice Paddy (Coin) by 15', 'Plantation by 15']);
  SpeedButton168.Hint := SetHint(['Reclaimed Land', 'Mill by 5', 'Farm by 5', 'Rice Paddy (Food) by 5', 'Rice Paddy (Coin) by 5', 'Plantation by 5']);
  SpeedButton174.Hint := SetHint(['Flooded Parcel', 'Mill by 8', 'Farm by 8', 'Rice Paddy (Food) by 8', 'Rice Paddy (Coin) by 8', 'Plantation by 8']);

  Application.HintHidePause := -1;
  Application.HintPause := 250;

  for i := 0 to Form1.ComponentCount - 1 do
  begin
    if Components[i] is TSpeedButton then
    begin
      TSpeedButton(Components[i]).ShowHint := True;
      TSpeedButton(Components[i]).Cursor := crHandPoint;
      TSpeedButton(Components[i]).Width := TSpeedButton(Components[i]).Width - 1;
      TSpeedButton(Components[i]).Height := TSpeedButton(Components[i]).Height - 1;
      if TSpeedButton(Components[i]).AllowAllUp then
    	  (Components[i] as TSpeedButton).GroupIndex := i + 1000;
      SetDownOn(Components[i])
    end;
    if Components[i] is TGroupBox then
	    (Components[i] as TGroupBox).DoubleBuffered := True;
  end;
  RG := TRateGather.Create(0);
  RAG := TRateAutoGather.Create;

  ComboBoxEx1.ItemIndex := 0;
  ComboBoxEx2.ItemIndex := 0;
  ComboBoxEx3.ItemIndex := 0;
  ComboBoxEx4.ItemIndex := 0;
  ComboBoxEx5.ItemIndex := 0;
  ComboBoxEx6.ItemIndex := 0;
  ComboBoxEx7.ItemIndex := 0;
  ComboBoxEx1.OnChange(ComboBoxEx1);
  ComboBoxEx2.OnChange(ComboBoxEx2);
  ComboBoxEx3.OnChange(ComboBoxEx3);
  ComboBoxEx4.OnChange(ComboBoxEx4);
  UpdateLabel;
  UpdateLabel2;
  UpdateLabel3;
  UpdateLabel4;
    SG := TShipGather.Create(0);
  UpdateLabel5;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  RadioGroup1.Buttons[0].ShowHint := True;
  RadioGroup1.Buttons[0].Hint := 'Level 1'#13'Pronghorn, Capybara, Deer, Giant Salamander, Caribou, Bighorn Sheep, Turkey, Rhea, Rein Deer, Guanaco, Saiga, Nilgai, Ibex, Serow, Marko Polo Sheep, Musk Deer';
  RadioGroup1.Buttons[1].ShowHint := True;
  RadioGroup1.Buttons[1].Hint := 'Level 2'#13'Bison, Elk, Tapir, Moose, Muskox, Seal';
  RadioGroup1.Buttons[2].ShowHint := True;
  RadioGroup1.Buttons[2].Hint := 'Level 3'#13'Sheep, Goat';

  RadioGroup1.Buttons[3].ShowHint := True;
  RadioGroup1.Buttons[3].Hint := 'Level 4'#13'Wild Elephant';
  RadioGroup1.Buttons[4].ShowHint := True;
  RadioGroup1.Buttons[4].Hint := 'Level 5'#13'Llama, Yak';

  RadioGroup1.Buttons[5].ShowHint := True;
  RadioGroup1.Buttons[5].Hint := 'Level 6'#13'Cow, Water Buffalo';

end;

procedure TForm1.SpeedButton100Click(Sender: TObject);
begin
  RG.SetRefrigeration(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton101Click(Sender: TObject);
begin
  RG.SetTextileMill(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton102Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton103Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton104Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton105Click(Sender: TObject);
begin
  RG.SetFoodSilos(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton106Click(Sender: TObject);
begin
  RG.SetSpiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton107Click(Sender: TObject);
begin
  RG.SetFurrierHunt(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton108Click(Sender: TObject);
begin
  RG.SetCigarRoller(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton109Click(Sender: TObject);
begin
  RG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
  RG.SetForestPeopleCeremony(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton110Click(Sender: TObject);
begin
  RG.SetRoyalMint(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton111Click(Sender: TObject);
begin
  RG.SetRefrigeration(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton112Click(Sender: TObject);
begin
  RG.SetTextileMill(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton113Click(Sender: TObject);
begin
  RG.SetRumDistillery(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton114Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton115Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton116Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton117Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton118Click(Sender: TObject);
begin
  RG.SetSpiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton119Click(Sender: TObject);
begin
  RG.SetFurrierHunt(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
  RG.SetForestSpiritCeremony(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton120Click(Sender: TObject);
begin
  RG.SetCigarRoller(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton121Click(Sender: TObject);
begin
  RG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton122Click(Sender: TObject);
begin
  RG.SetRoyalMint(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton123Click(Sender: TObject);
begin
  RG.SetRefrigeration(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton124Click(Sender: TObject);
begin
  RG.SetTextileMill(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton125Click(Sender: TObject);
begin
  RG.SetRumDistillery(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton126Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton127Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton128Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton129Click(Sender: TObject);
begin
  RG.SetFoodSilos(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
  RG.SetDeforestation(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton130Click(Sender: TObject);
begin
  RG.SetSpiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton131Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton132Click(Sender: TObject);
begin
  RG.SetCigarRoller(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton133Click(Sender: TObject);
begin
  RG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton134Click(Sender: TObject);
begin
  RG.SetRoyalMint(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton135Click(Sender: TObject);
begin
  RG.SetRefrigeration(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton136Click(Sender: TObject);
begin
  RG.SetTextileMill(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton137Click(Sender: TObject);
begin
  RG.SetRumDistillery(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton138Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton139Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
  RG.SetPlacerMines(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton140Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton141Click(Sender: TObject);
begin
  RG.SetFoodSilos(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton142Click(Sender: TObject);
begin
  RG.SetSpiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton143Click(Sender: TObject);
begin
  RG.SetFurrierHunt(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton144Click(Sender: TObject);
begin
  RG.SetCigarRoller(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton145Click(Sender: TObject);
begin
  RG.SetFullingMills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton146Click(Sender: TObject);
begin
  RG.SetRoyalMint(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton147Click(Sender: TObject);
begin
  RG.SetRefrigeration(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton148Click(Sender: TObject);
begin
  RG.SetTextileMill(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton149Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
begin
  RG.SetHuntingEagles(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton150Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton151Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton152Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton153Click(Sender: TObject);
begin
  RG.SetSpiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton154Click(Sender: TObject);
begin
  RG.SetWoodcrafting(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton155Click(Sender: TObject);
begin
  RG.SetFurrierHunt(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton156Click(Sender: TObject);
begin
  RG.SetEstablishIronmonger(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton157Click(Sender: TObject);
begin
  RG.SetRoyalMint(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton158Click(Sender: TObject);
begin
  RG.SetRumDistillery(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton159Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
begin
  RG.SetWaterWheel(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton160Click(Sender: TObject);
begin
  RG.SetFoodSilos(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton161Click(Sender: TObject);
begin
  RG.SetSilversmith2(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton162Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton163Click(Sender: TObject);
begin
  RG.SetSawmills2(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton164Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton165Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton166Click(Sender: TObject);
begin
  RG.SetFoodSilos(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton167Click(Sender: TObject);
begin
  RG.SetRoyalMint(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton168Click(Sender: TObject);
begin
  RG.SetReclaimedLand(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton169Click(Sender: TObject);
begin
  RG.SetCherryBlossomFestival(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton16Click(Sender: TObject);
begin
  RG.SetBlanketFilters(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton170Click(Sender: TObject);
begin
  RG.SetRumDistillery(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton171Click(Sender: TObject);
begin
  RG.SetRefrigeration(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton172Click(Sender: TObject);
begin
  RG.SetTerracedHillsides(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton173Click(Sender: TObject);
begin
  RG.SetTextileMill(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton174Click(Sender: TObject);
begin
  RG.SetFloodedParcel(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton175Click(Sender: TObject);
begin
  RG.SetCigarRoller(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton176Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton177Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton178Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton179Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton17Click(Sender: TObject);
begin
  RG.SetCivilServants(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton180Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton181Click(Sender: TObject);
begin
  RG.SetSpiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton182Click(Sender: TObject);
begin
  RG.SetRumDistillery(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton183Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton184Click(Sender: TObject);
begin
  RG.SetFullingMills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton185Click(Sender: TObject);
begin
  RG.SetGreatHunter(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton186Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton187Click(Sender: TObject);
begin
  RG.SetSpiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton188Click(Sender: TObject);
begin
  RG.SetWoodcrafting(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton189Click(Sender: TObject);
begin
  RG.SetFoodSilos(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton18Click(Sender: TObject);
begin
  RG.SetImperialBeureaucracy(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton190Click(Sender: TObject);
begin
  RG.SetFurrierHunt(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton191Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton192Click(Sender: TObject);
begin
  RG.SetGrainMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton193Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton194Click(Sender: TObject);
begin
  RG.SetFurrierHunt(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton195Click(Sender: TObject);
begin
  RG.SetChinampa(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton196Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton197Click(Sender: TObject);
begin
  RG.SetFoodSilos(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton198Click(Sender: TObject);
begin
  RG.SetGreatChinampa(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton199Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton19Click(Sender: TObject);
begin
  RG.SetProfessiaonalHunters(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  RG.SetHuntingDogs(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton200Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton201Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton202Click(Sender: TObject);
begin
  RG.SetAztecMining(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton203Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton204Click(Sender: TObject);
begin
  RG.SetCigarRoller(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton205Click(Sender: TObject);
begin
  RG.SetFurrierHunt(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton206Click(Sender: TObject);
begin
  RG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton207Click(Sender: TObject);
begin
  RG.SetRoyalMint(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton208Click(Sender: TObject);
begin
  RG.SetRefrigeration(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton209Click(Sender: TObject);
begin
  RG.SetSpiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton20Click(Sender: TObject);
begin
  RG.SetRegenerativeForestry(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton210Click(Sender: TObject);
begin
  RG.SetChonindoTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetChonindoTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton211Click(Sender: TObject);
begin
  RG.SetFoodSilosTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton212Click(Sender: TObject);
begin
  RG.SetFurrierHuntTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton213Click(Sender: TObject);
begin
  RG.SetSilversmithTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton214Click(Sender: TObject);
begin
  RG.SetExoticHardwoodsTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton215Click(Sender: TObject);
begin
  RG.SetSpiceTradeTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton216Click(Sender: TObject);
begin
  RG.SetSawmillsTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton217Click(Sender: TObject);
begin
  RG.SetRumDistilleryTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton218Click(Sender: TObject);
begin
  RG.SetIronmongerTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton219Click(Sender: TObject);
begin
  RG.SetFasting(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton21Click(Sender: TObject);
begin
  RG.SetTimberTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton220Click(Sender: TObject);
begin
  RG.SetZapotecFoodOfTheGods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton221Click(Sender: TObject);
begin
  RG.SetMayaCalendar(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton222Click(Sender: TObject);
begin
  RG.SetIncanMetalworking(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton223Click(Sender: TObject);
begin
  RG.SetNavajoCraftsmanship(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetNavajoCraftsmanship(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton224Click(Sender: TObject);
begin
  RG.SetPunjabiNewYear(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton225Click(Sender: TObject);
begin
  RG.SetVegetarianism(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton226Click(Sender: TObject);
begin
  RG.SetWoodClearing(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton227Click(Sender: TObject);
begin
  RG.SetKlamathWorkEthos(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton228Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton229Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton22Click(Sender: TObject);
begin
  RG.SetTropicalTimberTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton230Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton231Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton232Click(Sender: TObject);
begin
  RG.SetEstablishIronmonger(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton233Click(Sender: TObject);
begin
  RG.SetSpiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton234Click(Sender: TObject);
begin
  RG.SetFurrierHunt(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton235Click(Sender: TObject);
begin
  RG.SetCigarRoller(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton236Click(Sender: TObject);
begin
  RG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton237Click(Sender: TObject);
begin
  RG.SetRoyalMint(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton238Click(Sender: TObject);
begin
  RG.SetRefrigeration(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton239Click(Sender: TObject);
begin
  RG.SetTextileMill(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton23Click(Sender: TObject);
begin
  RG.SetFlumeAndDitching(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton240Click(Sender: TObject);
begin
  RG.SetRumDistillery(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton241Click(Sender: TObject);
begin
  RG.SetEconmediaManor(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton242Click(Sender: TObject);
begin
  RG.SetGuildArtisans(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton243Click(Sender: TObject);
begin
  RG.SetCodeNapoleon(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton244Click(Sender: TObject);
begin
  ClickOn(GroupBox1);
end;

procedure TForm1.SpeedButton245Click(Sender: TObject);
begin
  ClickOn(GroupBox5);
end;

procedure TForm1.SpeedButton246Click(Sender: TObject);
begin
  ClickOn(GroupBox4);
end;

procedure TForm1.SpeedButton247Click(Sender: TObject);
begin
  ClickOn(GroupBox3);
end;

procedure TForm1.SpeedButton248Click(Sender: TObject);
begin
  ClickOn(GroupBox2);
end;

procedure TForm1.SpeedButton249Click(Sender: TObject);
begin
  ClickOn(GroupBox6);
end;

procedure TForm1.SpeedButton24Click(Sender: TObject);
begin
  RG.SetHanamiParties(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton250Click(Sender: TObject);
begin
  ClickOn(GroupBox8);
end;

procedure TForm1.SpeedButton251Click(Sender: TObject);
begin
  ClickOn(GroupBox7);
end;

procedure TForm1.SpeedButton252Click(Sender: TObject);
begin
  RAG.SetCanneryWaterSteamPower(not (Sender as TSpeedButton).Down);
  UpdateLabel4;
end;

procedure TForm1.SpeedButton253Click(Sender: TObject);
begin
  RAG.SetTulipSpeculation(not (Sender as TSpeedButton).Down);
  UpdateLabel4;
end;

procedure TForm1.SpeedButton254Click(Sender: TObject);
begin
  RAG.SetSetToshoguShrine(not (Sender as TSpeedButton).Down);
  UpdateLabel2;
end;

procedure TForm1.SpeedButton255Click(Sender: TObject);
begin
  RAG.SetTempoReforms(not (Sender as TSpeedButton).Down);
  UpdateLabel2;
end;

procedure TForm1.SpeedButton256Click(Sender: TObject);
begin
  RAG.SetHeavenlyKami(not (Sender as TSpeedButton).Down);
  UpdateLabel2;
end;

procedure TForm1.SpeedButton257Click(Sender: TObject);
begin
  RG.SetTempleOfXolotlSupport(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton258Click(Sender: TObject);
begin
  RAG.SetColbertism(not (Sender as TSpeedButton).Down);
  UpdateLabel3;
end;

procedure TForm1.SpeedButton259Click(Sender: TObject);
begin
  RAG.SetDistributivism(not (Sender as TSpeedButton).Down);
  UpdateLabel3;
end;

procedure TForm1.SpeedButton25Click(Sender: TObject);
begin
  RG.SetWaterWheel(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton260Click(Sender: TObject);
begin
  RAG.SetForeignLogging(not (Sender as TSpeedButton).Down);
  UpdateLabel3;
end;

procedure TForm1.SpeedButton261Click(Sender: TObject);
begin
  RAG.SetCapitalism(not (Sender as TSpeedButton).Down);
  UpdateLabel3;
end;

procedure TForm1.SpeedButton262Click(Sender: TObject);
begin
  RAG.SetEarthBounty(not (Sender as TSpeedButton).Down);
  UpdateLabel3;
end;

procedure TForm1.SpeedButton263Click(Sender: TObject);
begin
  RAG.SetSumtuaryLaws(not (Sender as TSpeedButton).Down);
  UpdateLabel3;
end;

procedure TForm1.SpeedButton264Click(Sender: TObject);
begin
  RAG.SetSumtuaryLawsTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel3;
end;

procedure TForm1.SpeedButton265Click(Sender: TObject);
begin
  RAG.SetDutchAllies(not (Sender as TSpeedButton).Down);
  UpdateLabel3;
end;

procedure TForm1.SpeedButton266Click(Sender: TObject);
begin
  RAG.SetPunjabiNewYear(not (Sender as TSpeedButton).Down);
  RadioGroup1.OnClick(RadioGroup1);
end;

procedure TForm1.SpeedButton267Click(Sender: TObject);
begin
  RAG.SetFatterSheepTeam(not (Sender as TSpeedButton).Down);
  RadioGroup1.OnClick(RadioGroup1);
end;

procedure TForm1.SpeedButton268Click(Sender: TObject);
begin
  RG.SetFrenchAllies(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetConsulateFrench(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton269Click(Sender: TObject);
begin
  RG.SetFrenchAllies(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetConsulateFrench(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton26Click(Sender: TObject);
begin
  RG.SetBlanketFilters(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton270Click(Sender: TObject);
begin
  RG.SetKarniMata(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton271Click(Sender: TObject);
begin
  RAG.SetPorcelainTower(ComboBoxEx4.ItemIndex, SpeedButton271.Down);
  UpdateLabel4;
end;

procedure TForm1.SpeedButton274Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton275Click(Sender: TObject);
begin
  SG.SetFishMarket2(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton276Click(Sender: TObject);
begin
  SG.SetWhaleOil(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton277Click(Sender: TObject);
begin
  SG.SetRenderingPlant(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton278Click(Sender: TObject);
begin
  SG.SetPeaceTimeFishing(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton279Click(Sender: TObject);
begin
  SG.SetGillNets(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton27Click(Sender: TObject);
begin
  RG.SetCivilServants(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton280Click(Sender: TObject);
begin
  SG.SetLongLines(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton281Click(Sender: TObject);
begin
  SG.SetHuronFishWedding(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton282Click(Sender: TObject);
begin
  SG.SetFishMarketTeam(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton283Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton284Click(Sender: TObject);
begin
  SG.SetRenderingPlant(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton285Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton286Click(Sender: TObject);
begin
  SG.SetRenderingPlant(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton287Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton288Click(Sender: TObject);
begin
  SG.SetRenderingPlant(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton289Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton28Click(Sender: TObject);
begin
  RG.SetImperialBeureaucracy(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton290Click(Sender: TObject);
begin
  SG.SetRenderingPlant(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton291Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton292Click(Sender: TObject);
begin
  SG.SetRenderingPlant(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton293Click(Sender: TObject);
begin
  SG.SetWhaleOil(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton294Click(Sender: TObject);
begin
  SG.SetRenderingPlant(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton295Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton296Click(Sender: TObject);
begin
  SG.SetRenderingPlant(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton297Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton298Click(Sender: TObject);
begin
  SG.SetWhaleOil(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton299Click(Sender: TObject);
begin
  SG.SetRenderingPlant(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton29Click(Sender: TObject);
begin
  RG.SetYozakuraLanterns(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  RG.SetSteelTraps(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton300Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton301Click(Sender: TObject);
begin
  SG.SetRenderingPlant(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton302Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton303Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton304Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton305Click(Sender: TObject);
begin
  SG.SetRenderingPlant(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton306Click(Sender: TObject);
begin
  SG.SetFishMarket(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton30Click(Sender: TObject);
begin
  RG.SetRegenerativeForestry(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton31Click(Sender: TObject);
begin
  RG.SetTimberTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton32Click(Sender: TObject);
begin
  RG.SetTropicalTimberTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton33Click(Sender: TObject);
begin
  RG.SetFlumeAndDitching(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton34Click(Sender: TObject);
begin
  RG.SetHuntingEagles(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton35Click(Sender: TObject);
begin
  RG.SetDeforestation(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton36Click(Sender: TObject);
begin
  RG.SetBlanketFilters(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton37Click(Sender: TObject);
begin
  RG.SetCivilServants(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton38Click(Sender: TObject);
begin
  RG.SetImperialBeureaucracy(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton39Click(Sender: TObject);
begin
  RG.SetProfessiaonalHunters(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  RG.SetGangSaw(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton40Click(Sender: TObject);
begin
  RG.SetLargeScaleAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton41Click(Sender: TObject);
begin
  RG.SetTimberTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton42Click(Sender: TObject);
begin
  RG.SetTropicalTimberTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton43Click(Sender: TObject);
begin
  RG.SetFlumeAndDitching(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton44Click(Sender: TObject);
begin
  RG.SetExcessiveTaxation(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetExcessiveTaxacation(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton45Click(Sender: TObject);
begin
  RG.SetSeedDrill(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton46Click(Sender: TObject);
begin
  RG.SetArtificialFertilizer(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton47Click(Sender: TObject);
begin
  RG.SetBookkeeping(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton48Click(Sender: TObject);
begin
  RG.SetHomeSteading(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton49Click(Sender: TObject);
begin
  RG.SetRefineries(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  RG.SetLogFlume(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton50Click(Sender: TObject);
begin
  RG.SetGreatFeast(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton51Click(Sender: TObject);
begin
  RG.SetHarvestCeremony(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton52Click(Sender: TObject);
begin
  RG.SetGreenCornCeremony(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton53Click(Sender: TObject);
begin
  RG.SetLargeScaleGathering(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton54Click(Sender: TObject);
begin
  RG.SetEarthCeremony(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton55Click(Sender: TObject);
begin
  RG.SetEarthGiftCeremony(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton56Click(Sender: TObject);
begin
  RG.SetExcessiveTribute(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetExcessiveTribute(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton57Click(Sender: TObject);
begin
  RG.SetPaddyThreshing(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton58Click(Sender: TObject);
begin
  RG.SetIrrigationChannels(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton59Click(Sender: TObject);
begin
  RG.SetDikeControlledCanals(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  RG.SetCircularSaw(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton60Click(Sender: TObject);
begin
  RG.SetMechanizedRiceCultivation(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton61Click(Sender: TObject);
begin
  RG.SetRiceSurplus(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton62Click(Sender: TObject);
begin
  RG.SetRiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton63Click(Sender: TObject);
begin
  RG.SetRiceMarkets(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton64Click(Sender: TObject);
begin
  RG.SetRiceExports(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton65Click(Sender: TObject);
begin
  RG.SetCollectiveEconomy(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetCollectiveEconomy(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton66Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton67Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton68Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton69Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
  RG.SetPlacerMines(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton70Click(Sender: TObject);
begin
  RG.SetEstablishIronmonger(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton71Click(Sender: TObject);
begin
  RG.SetSpiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton72Click(Sender: TObject);
begin
  RG.SetFurrierHunt(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton73Click(Sender: TObject);
begin
  RG.SetCigarRoller(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton74Click(Sender: TObject);
begin
  RG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel;
  SG.SetEconomicTheory(not (Sender as TSpeedButton).Down);
  UpdateLabel5;
end;

procedure TForm1.SpeedButton75Click(Sender: TObject);
begin
  RG.SetRoyalMint(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton76Click(Sender: TObject);
begin
  RG.SetRefrigeration(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton77Click(Sender: TObject);
begin
  RG.SetTextileMill(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton78Click(Sender: TObject);
begin
  RG.SetRumDistillery(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton79Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
  RG.SetAmalgamation(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton80Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton81Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton82Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton83Click(Sender: TObject);
begin
  RG.SetEstablishIronmonger(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton84Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton85Click(Sender: TObject);
begin
  RG.SetExoticHardwoods(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton86Click(Sender: TObject);
begin
  RG.SetCigarRoller(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton87Click(Sender: TObject);
begin
  RG.SetFoodSilos(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton88Click(Sender: TObject);
begin
  RG.SetRoyalMint(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton89Click(Sender: TObject);
begin
  RG.SetRefrigeration(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  RG.SetHuntingDogs(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton90Click(Sender: TObject);
begin
  RG.SetTextileMill(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton91Click(Sender: TObject);
begin
  RG.SetCigarRoller(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton92Click(Sender: TObject);
begin
  RG.SetSustainableAgriculture(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton93Click(Sender: TObject);
begin
  RG.SetSilversmith(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton94Click(Sender: TObject);
begin
  RG.SetEstablishIronmonger(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton95Click(Sender: TObject);
begin
  RG.SetSpiceTrade(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton96Click(Sender: TObject);
begin
  RG.SetFullingMills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton97Click(Sender: TObject);
begin
  RG.SetCigarRoller(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton98Click(Sender: TObject);
begin
  RG.SetSawmills(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton99Click(Sender: TObject);
begin
  RG.SetRoyalMint(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
  RG.SetLumberCeremony(not (Sender as TSpeedButton).Down);
  UpdateLabel;
end;

procedure TForm1.SpinEdit10Change(Sender: TObject);
begin
  Label30.Caption := FormatFloat('#,###,###.###', Round(RG.Plantation * SpinEdit10.Value * GetSecond(DateTimePicker10.Time)));
end;

procedure TForm1.SpinEdit11Change(Sender: TObject);
begin
  Label33.Caption := FormatFloat('#,###,###.###', Round(RAG.Factory * SpinEdit11.Value * GetSecond(DateTimePicker11.Time)));
end;

procedure TForm1.SpinEdit12Change(Sender: TObject);
begin
  Label36.Caption := FormatFloat('#,###,###.###', Round(RAG.Bank * SpinEdit12.Value * GetSecond(DateTimePicker12.Time)));
end;

procedure TForm1.SpinEdit13Change(Sender: TObject);
begin
  Label39.Caption := FormatFloat('#,###,###.###', Round(RAG.ShrineFood * SpinEdit13.Value * GetSecond(DateTimePicker13.Time)));
end;

procedure TForm1.SpinEdit14Change(Sender: TObject);
begin
  Label45.Caption := FormatFloat('#,###,###.###', Round(RAG.ShrineWood * SpinEdit14.Value * GetSecond(DateTimePicker15.Time)));
end;

procedure TForm1.SpinEdit15Change(Sender: TObject);
begin
  RAG.SetShrineInc(SpinEdit15.Value, RadioGroup1.ItemIndex + 1);
  UpdateLabel2;
end;

procedure TForm1.SpinEdit16Change(Sender: TObject);
begin
  RAG.SetToshoguShrineInc(SpinEdit16.Value, RadioGroup1.ItemIndex + 1);
  UpdateLabel2;
end;

procedure TForm1.SpinEdit17Change(Sender: TObject);
begin
  Label48.Caption := FormatFloat('#,###,###.###', Round(RAG.ShrineGold * SpinEdit17.Value * GetSecond(DateTimePicker16.Time)));
end;

procedure TForm1.SpinEdit18Change(Sender: TObject);
begin
  Label69.Caption := FormatFloat('#,###,###.###', Round(RAG.Grazing.rFood * SpinEdit18.Value * GetSecond(DateTimePicker25.Time)));
end;

procedure TForm1.SpinEdit19Change(Sender: TObject);
begin
  Label70.Caption := FormatFloat('#,###,###.###', Round(RAG.Grazing.rWood * SpinEdit19.Value * GetSecond(DateTimePicker26.Time)));
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  Label21.Caption := FormatFloat('#,###,###.###', Round(RG.Huntable * SpinEdit1.Value * GetSecond(DateTimePicker1.Time)));
end;

procedure TForm1.SpinEdit1Exit(Sender: TObject);
begin
  if (Sender as TSpinEdit).Text = '' then
     (Sender as TSpinEdit).Text := '0';
end;

procedure TForm1.SpinEdit20Change(Sender: TObject);
begin
  Label73.Caption := FormatFloat('#,###,###.###', Round(SG.Fish * SpinEdit20.Value * GetSecond(DateTimePicker27.Time)));
end;

procedure TForm1.SpinEdit21Change(Sender: TObject);
begin
  Label76.Caption := FormatFloat('#,###,###.###', Round(SG.Whale * SpinEdit21.Value * GetSecond(DateTimePicker28.Time)));
end;

procedure TForm1.SpinEdit2Change(Sender: TObject);
begin
  Label22.Caption := FormatFloat('#,###,###.###', Round(RG.Herdable * SpinEdit2.Value * GetSecond(DateTimePicker2.Time)));
end;

procedure TForm1.SpinEdit3Change(Sender: TObject);
begin
  Label23.Caption := FormatFloat('#,###,###.###', Round(RG.Mill * SpinEdit3.Value * GetSecond(DateTimePicker3.Time)));
end;

procedure TForm1.SpinEdit4Change(Sender: TObject);
begin
  Label24.Caption := FormatFloat('#,###,###.###', Round(RG.BerryBush * SpinEdit4.Value * GetSecond(DateTimePicker4.Time)));
end;

procedure TForm1.SpinEdit5Change(Sender: TObject);
begin
  Label25.Caption := FormatFloat('#,###,###.###', Round(RG.Farm * SpinEdit5.Value * GetSecond(DateTimePicker5.Time)));
end;

procedure TForm1.SpinEdit6Change(Sender: TObject);
begin
  Label26.Caption := FormatFloat('#,###,###.###', Round(RG.RicePaddyFood * SpinEdit6.Value * GetSecond(DateTimePicker6.Time)));
end;

procedure TForm1.SpinEdit7Change(Sender: TObject);
begin
  Label27.Caption := FormatFloat('#,###,###.###', Round(RG.Tree * SpinEdit7.Value * GetSecond(DateTimePicker7.Time)));
end;

procedure TForm1.SpinEdit8Change(Sender: TObject);
begin
  Label28.Caption := FormatFloat('#,###,###.###', Round(RG.Mine * SpinEdit8.Value * GetSecond(DateTimePicker8.Time)));
end;

procedure TForm1.SpinEdit9Change(Sender: TObject);
begin
  Label29.Caption := FormatFloat('#,###,###.###', Round(RG.RicePaddyGold * SpinEdit9.Value * GetSecond(DateTimePicker9.Time)));
end;

end.
