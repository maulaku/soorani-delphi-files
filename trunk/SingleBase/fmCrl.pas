unit fmCrl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons,iniFiles,filectrl,fmMfrm, ExtCtrls, Db,
  DBTables, Grids, DBGrids, DBCtrls,Define;

type
  TCrl = class(TForm)
    pcConf: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    edPassG: TEdit;
    Label5: TLabel;
    edPassN: TEdit;
    Label6: TLabel;
    edPassV: TEdit;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton8: TSpeedButton;
    OpenDialog1: TOpenDialog;
    rgb: TRadioGroup;
    quTstPass: TQuery;
    quUpdatePass: TQuery;
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    dbsal: TDBLookupComboBox;
    Label1: TLabel;
    cbMah: TComboBox;
    Label2: TLabel;
    procedure BitBtn4Click(Sender: TObject);
    procedure edPassNExit(Sender: TObject);
    procedure edPassVExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Crl: TCrl;

implementation

uses DabDmdle, fmListF, fmRes;

{$R *.DFM}

procedure TCrl.BitBtn4Click(Sender: TObject);
var GenFile  :TiniFile;
begin
  if pcConf.ActivePage=TabSheet4 then
   begin
     if (edPassg.text<>'') and (edPassN.text<>'') and (edPassV.text<>'') then
        begin
          quTstPass.Close;
          quTstPass.params[0].value:=edPassg.text;
          quTstPass.params[1].value:=DabData.LetCd;
          quTstPass.Open;
          if quTstPass.FieldByName('Cntr').asinteger>0 then
            begin
              quUpdatePass.Params[0].value:=edPassV.text;
              quUpdatePass.Params[1].value:=DabData.LetCd;
              quUpdatePass.ExecSql;
            end
          else
           showmessage2('ﬂ·„Â ⁄»Ê— ﬁ»·Ì ’ÕÌÕ ‰Ì” ') ;
        end;
   end;
  GenFile:=TiniFile.Create('Users.ini');
  GenFile.WriteInteger('RUN','RUNID',rgb.itemindex);
  GenFile.WriteInteger('Sal','CurrentSal',strtoint(dbSal.text));
  GenFile.WriteInteger('Mah','CurrentMah',cbMah.itemindex);
  DabData.SalVar:=strtoint(dbSal.text);
  DabData.MahVar:=cbMah.itemindex;
  GenFile.free;
  close;
end;

procedure TCrl.edPassNExit(Sender: TObject);
begin
if (edPassN.text<>'') and (edPassV.text<>'') then
  if (edPassN.text<>edPassV.text) then
    begin
      showmessage2('ﬂ·„Â ⁄»Ê— ÃœÌœ —« œÊ»«—Â »“‰Ìœ');
      edPassN.text:='';
      edPassG.text:='';
    end;
end;

procedure TCrl.edPassVExit(Sender: TObject);
begin
if (edPassN.text<>'') and (edPassV.text<>'') then
  if (edPassN.text<>edPassV.text) then
    begin
      showmessage2('ﬂ·„Â ⁄»Ê— ÃœÌœ —« œÊ»«—Â »“‰Ìœ');
      edPassN.text:='';
      edPassG.text:='';
    end;

    end;

procedure TCrl.Button1Click(Sender: TObject);
begin
  Res:=TRes.Create(Application);
  Res.mde:=1;
  Res.cbList.itemindex:=-1;
  Res.dblUser.keyvalue:=-1;
  Res.cbAss.itemindex:=-1;
  Res.showmodal;
  Res.Free;
end;

procedure TCrl.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

end.
