{*******************************************************}
{                                                       }
{       Rad Delphi Visual Component Library             }
{                                                       }
{       Copyright (c) 20001 Inprise Corporation         }
{                                                       }
{       Majid Surany Email soorani@gawab.com          }
{                                                       }
{*******************************************************}
unit fmSetBillUserName;

interface

{$P+,S-,W-,R-,T-,H+,X+}
{$C PRELOAD}


uses
  Messages, Windows, SysUtils, Classes, Graphics, Menus, Controls, Imm,
  ActnList, MultiMon, Forms,  SetForm, SmoothShow,Dialogs, StdCtrls  ,
  ExtCtrls, Grids, DBGrids, RSQLComboBox ,Define, XPMenu, Db, ADODB,Variants,
  RSqlButton, Mask, RSqlMaskEdit, DBCtrls, RSqllookup, RSqlEdit,RadForms;

type

  TSetBillUserName = class(TRadForm)
    PaDetailOper: TPanel;
    edGoods: TRSqlEdit;
    dblCostUser: TRSqlDbLookup;
    dblEmpUser: TRSqlDbLookup;
    meGetDate: TRSqlMaskEdit;
    paOkCancel: TPanel;
    btCancel: TRSqlButton;
    btOK: TRSqlButton;
    edDescr: TRSqlEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dblUnit: TRSqlDbLookup;
    dblLocUser: TRSqlDbLookup;
    spUpdateGoodsUser: TADOStoredProc;
    Label9: TLabel;
    dblOrg: TRSqlDbLookup;
    edBill: TRSqlEdit;
    Label10: TLabel;
    Label3: TLabel;
    edItemName: TRSqlEdit;
    quInsert: TADOQuery;
    quUpdate: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure dblCostUserClick(Sender: TObject);
    procedure dblLocUserClick(Sender: TObject);
    procedure dblEmpUserClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure dblOrgCloseUp(Sender: TObject);
    procedure dblUnitClick(Sender: TObject);
    public
     InsertMode:Boolean;//true for insert and false for update
     Bill_Type:Integer;
  end;

var
  SetBillUserName: TSetBillUserName;

implementation

uses DabDmdle, fmMfrm;

{$R *.DFM}

procedure TSetBillUserName.FormShow(Sender: TObject);
begin
  if Not(DabData.quGoodsUser.Active) then
  begin
    DabData.quGoodsUser.Parameters[0].Value:=edGoods.Text;
    DabData.quGoodsUser.Parameters[1].Value:=edBill.Text;
    DabData.quGoodsUser.Parameters[2].Value:=spUpdateGoodsUser.Parameters[4].Value;
    DabData.quGoodsUser.Open;
  end;
   if DabData.quGoodsUser.RecordCount>0 then
   begin
      SetBillUserName.InsertMode:=False;//Show This is For Upfate
      SetBillUserName.dblOrg.KeyValue:=DabData.quGoodsUserOrg_Code.Value;
      SetBillUserName.dblUnit.KeyValue:=DabData.quGoodsUserUnit_Code.Value;
      SetBillUserName.dblCostUser.KeyValue:=DabData.quGoodsUserCost_Code.Value;
      SetBillUserName.dblCostUserClick(nil);
      SetBillUserName.dblLocUser.KeyValue:=DabData.quGoodsUserLoc_Code.Value;
      SetBillUserName.dblEmpUser.KeyValue:=DabData.quGoodsUserUser_emp_no.Value;
      SetBillUserName.meGetDate.Text:=DabData.quGoodsUserGet_Date.Value;
      SetBillUserName.edDescr.Text:=DabData.quGoodsUserDescr_1.Value;
   end
   else
      SetBillUserName.InsertMode:=True;//Show This is For Upfate
 DabData.quOrg.Close;
 DabData.quOrg.Open;
 if ((dblOrg.KeyValue=-1) or (dblOrg.KeyValue=null)) then
    dblOrg.KeyValue:=OrganizCode;
 DabData.quEmp.Close;
 DabData.quEmp.Open;
 DabData.quOrgUnit.Close;
 DabData.quOrgUnit.Parameters[0].Value:=OrganizCode;
 DabData.quOrgUnit.Open;
 dblUnit.KeyValue:=3;
 DabData.quCostCenter.Close;
 DabData.quCostCenter.Parameters[0].value:=OrganizCode;
 DabData.quCostCenter.Parameters[1].value:=3;
 DabData.quCostCenter.Open;
 DabData.quDeployLoc.Close;
 DabData.quDeployLoc.Open;
end;

procedure TSetBillUserName.btOKClick(Sender: TObject);
begin

 if InsertMode then
 begin
   quInsert.Parameters.ParamByName('Bill_No').Value:=edBill.Text;
   quInsert.Parameters.ParamByName('Bill_Type').Value:=Bill_Type;
   quInsert.Parameters.ParamByName('Goods_Code').Value:=edGoods.Text;
   quInsert.Parameters.ParamByName('User_Emp_no').Value:=dblEmpUser.KeyValue;
   quInsert.Parameters.ParamByName('Org_code').Value:=dblOrg.KeyValue;
   quInsert.Parameters.ParamByName('Unit_code').Value:=dblUnit.KeyValue;
   quInsert.Parameters.ParamByName('Cost_code').Value:=dblCostUser.KeyValue;
   quInsert.Parameters.ParamByName('Loc_code').Value:=dblLocUser.KeyValue;
   if meGetDate.Text<>meGetDate.EditMask then
      quInsert.Parameters.ParamByName('Get_Date').Value:=meGetDate.Text;
   quInsert.Parameters.ParamByName('Descr').Value:=edDescr.Text;
   DabData.ADOC.BeginTrans;
   try
    quInsert.ExecSQL;
   except
     DabData.ADOC.RollbackTrans;
     DabData.ShowPopupMessage('⁄„· »« „Ê›ﬁÌ  «‰Ã«„ ‰‘œ ');
     Raise;
   end;
   DabData.ADOC.CommitTrans;
 end
 else
 begin
   quUpdate.Parameters.ParamByName('Bill_No').Value:=edBill.Text;
   quUpdate.Parameters.ParamByName('Bill_Type').Value:=Bill_Type;
   quUpdate.Parameters.ParamByName('Goods_Code').Value:=edGoods.Text;
   quUpdate.Parameters.ParamByName('User_Emp_no').Value:=dblEmpUser.KeyValue;
   quUpdate.Parameters.ParamByName('Org_code').Value:=dblOrg.KeyValue;
   quUpdate.Parameters.ParamByName('Unit_code').Value:=dblUnit.KeyValue;
   quUpdate.Parameters.ParamByName('Cost_code').Value:=dblCostUser.KeyValue;
   quUpdate.Parameters.ParamByName('Loc_code').Value:=dblLocUser.KeyValue;
   quUpdate.Parameters.ParamByName('Get_Date').Value:=meGetDate.Text;
   quUpdate.Parameters.ParamByName('Descr').Value:=edDescr.Text;
   DabData.ADOC.BeginTrans;
   try
    quUpdate.ExecSQL;
   except
     DabData.ShowPopupMessage('⁄„· »« „Ê›ﬁÌ  «‰Ã«„ ‰‘œ ');
     DabData.ADOC.RollbackTrans;
   end;
   DabData.ADOC.CommitTrans;
 end;
 Close;
end;

procedure TSetBillUserName.dblCostUserClick(Sender: TObject);
begin
  inherited;
 DabData.quDeployLoc.Close;
 DabData.quDeployLoc.Parameters[0].Value:=OrganizCode;
 DabData.quDeployLoc.Parameters[1].Value:=dblCostUser.KeyValue;
 DabData.quDeployLoc.Open;
end;

procedure TSetBillUserName.dblLocUserClick(Sender: TObject);
begin
  dblEmpUser.KeyValue:=DabData.quDeployLocemp_no.Value;
end;

procedure TSetBillUserName.dblEmpUserClick(Sender: TObject);
begin
 DabData.quGetValues.Close;
 DabData.quGetValues.Parameters[0].Value:=dblEmpUser.KeyValue;
 DabData.quGetValues.Open;
 dblUnit.KeyValue:=DabData.quGetValuesUt_Mast_Code.Value;
 dblCostUser.KeyValue:=DabData.quGetValuesUnit_Code.Value;
 dblCostUserClick(nil);
 dblLocUser.KeyValue:=DabData.QuGetValuesLoc_Code.Value;
end;

procedure TSetBillUserName.btCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TSetBillUserName.dblOrgCloseUp(Sender: TObject);
begin
  inherited;
  DabData.quOrgUnit.Close;
  DabData.quOrgUnit.Parameters[0].Value:=dblOrg.KeyValue;
  DabData.quOrgUnit.Open;
end;

procedure TSetBillUserName.dblUnitClick(Sender: TObject);
begin
  inherited;
 DabData.quCostCenter.Close;
 DabData.quCostCenter.Parameters[0].value:=dblOrg.KeyValue;
 DabData.quCostCenter.Parameters[1].value:=dblUnit.KeyValue;
 DabData.quCostCenter.Open;
end;

end.
