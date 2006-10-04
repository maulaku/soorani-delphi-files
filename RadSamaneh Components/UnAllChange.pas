unit UnAllChange;

interface


Uses
   Messages,Graphics,Windows;

Const
 Empty = Wm_User+100;
 Full = Wm_User+101;
 None = Wm_User+102;
 SelectiveColor = $00F4E1EF;
 RequiredColor = clInfoBk;
 NonRequiredColor = clWhite;
 DisplayColor = $00fdd6bd;

Type
  TButtonType = (btOk,btCancel,btNone);
 
 procedure NextControl(Handle : HWND);


implementation

procedure NextControl(Handle : HWND);
begin
 SendMessage(Handle,Wm_NextDlgCtl,0,0);
end;


end.




