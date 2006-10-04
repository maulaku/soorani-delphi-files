unit UFmShMsg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RadForms;

type
  //-------------------------------------------------
  TFmShowMessage = class(TRadForm)
    PnlMain: TPanel;
    BitBtOK: TBitBtn;
    BitBtCancel: TBitBtn;
    LblMsg: TLabel;
    LblTitle: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;  // TFmShowMessage = class(TRadForm)
  //-------------------------------------------------
  // Free Procedure
  //---------------------------------------------------------
  function ShowMsgForm
             (
              const Form        :TCustomForm;
              const CaptionStr  :string;
              const TitleStr    :string;
              const MsgStr      :string;
              const VisOk       :boolean;
              const VisCancel   :boolean
             ):integer;
  //---------------------------------------------------------
  //function CreateMessageForm(var NewFm :TFmShowMessage):Boolean;
  //---------------------------------------------------------
{
// we do not use any permanent
// variable in this module
// because every module
// Create this form and delete
var
  FmShowMessage: TFmShowMessage;
}

implementation

{$R *.DFM}
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
function ShowMsgForm
           (
            const Form        :TCustomForm;
            const CaptionStr  :string;
            const TitleStr    :string;
            const MsgStr      :string;
            const VisOk       :boolean;
            const VisCancel   :boolean
           ):integer;
var
   FmMsg: TFmShowMessage;
   TitleSize : integer;
begin
   ShowMsgForm := mrCancel;
   try
     if Form <> nil then
     begin
       // place your code hear
     end;  // if Form1<> nil then

     FmMsg := TFmShowMessage.Create(nil);

     FmMsg.Caption          := CaptionStr;
     FmMsg.LblTitle.Caption := TitleStr;
     FmMsg.LblMsg.Caption   := MsgStr;
// Length
     TitleSize := Length(TitleStr);
     if TitleSize < Length(MsgStr) then TitleSize := Length(MsgStr);
     FmMsg.Width := 8*TitleSize+50;
//
     FmMsg.ActiveControl := nil;
     FmMsg.LblTitle.Left := 50;
     FmMsg.LblMsg.Left   := 50;

     if  Length(MsgStr)=0 then FmMsg.LblTitle.Top := 20;

     FmMsg.BitBtOK.Visible := VisOK;
     FmMsg.BitBtCancel.Visible := VisCancel;

     if (VisOk or VisCancel)<> true then
       FmMsg.BitBtOK.Visible := True;

     //FmMsg.Position := poMainFormCenter;
     FmMsg.Position := poMainFormCenter;

     ShowMsgForm := FmMsg.ShowModal;

   finally
      FmMsg.Free;
   end;; // finally

end;  // function ShowMsgForm
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure testUnit;
var
   str1,str2,str3:string;
begin
   str1 :='111';
   str2 :='222';
   str3 :='333';

   ShowMsgForm(nil,str1,str2,str3,true,true);
   ShowMsgForm(nil,str1,str2,str3,true,False);
   ShowMsgForm(nil,str1,str2,str3,False,true);
   ShowMsgForm(nil,str1,str2,str3,False,False);

end;
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
procedure TFmShowMessage.FormKeyPress(Sender: TObject; var Key: Char);
const CodeEsc = #27;
begin
  if Key <> CodeEsc then
    exit;

   Self.ModalResult := mrCancel;
   
end;  // procedure TFmShowMessage.FormKeyPress
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
begin
   //testUnit;

end.  // unit UFmShMes;
