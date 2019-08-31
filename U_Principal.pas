unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.GIFimg, Vcl.ExtCtrls,
  dxGDIPlusClasses, ACBrGIF;

type
  TForm1 = class(TForm)
    Image1: TImage;

    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  gif : TGifimage;
implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);

begin
gif := TGifImage.Create;
image1.Picture.Assign(gif);
Image1.Picture.LoadFromFile('anime.gif');




end;

procedure TForm1.Image1Click(Sender: TObject);

begin
//(image1.Picture.Graphic as TGifimage).Animate := true;
Showmessage('Hello world');

end;

end.
