unit unDllFunction;

interface

  procedure setMainParams(var id: array of char; pcPort, pcBaud, mdmType, dateType, saveType, appendTxt, allowedFlag: byte; blkLen: integer ); stdcall external 'stdlink.dll';
  procedure setPwModemParams(speed,audio,onceLen: byte); stdcall external 'stdlink.dll';
  procedure comLink(var comBuf: array of byte; var linkStat: byte; var errNo: byte); stdcall external 'stdlink.dll';

{  Function  disp_date :pchar; stdcall external 'Fdate.dll';
  Function  Day :pchar; stdcall external 'Fdate.dll';
  Function  Mah :pchar; stdcall external 'Fdate.dll';
  Function  rdate(rtar :string) :pchar; stdcall external 'Fdate.dll';
  Function  Prevent_str(Keys:char) :char; stdcall external 'Fdate.dll';
  Function  MahAdad(mm:string):Integer; stdcall external 'Fdate.dll';
}
implementation

end.
 