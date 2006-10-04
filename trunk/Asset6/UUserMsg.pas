unit UUserMsg;

interface
uses
  Define,windows;

const


  //---------------------------------------------------------------------------
  // To cenralize the chld forms

  Rf_MainForm_ClientHeight  = 478 ;
  Rf_MainForm_ClientWidth   = 797 ;
  //---------------------------------------------------------------------------
  // Public Short Cut Key that  is used
  // in Form to Insert,Delete,Update

  Rf_Pub_ShCutKey_InsertRec      = '+';
  Rf_Pub_ShCutKey_EditRec        = '*';//'9';
  Rf_Pub_ShCutKey_DeleteRec      = '-';

  //----------------------------------------------------------------------------
  // Begin Public String Messages

  SM_Pub_Error                                   = '���';

  SM_Pub_RetryMode                               = '��� ����';
  SM_Pub_RetryMsg                                = '������ ���� ��� ����� ��� ����� ������ ������ ����.';

  SM_Pub_InsertMode                              = '��� ����� ����';
  SM_Pub_UpdateMode                              = '����� ����� ����';
  SM_Pub_DeleteMode                              = '��� ����� ����';

  // Please use PDate.GetEmptyDateStr8
  // SM_Pub_Empty_Date_Format                       = '  /  /  ';

  SM_fmLonTyp_DeleteErrorRelatedRow              ='���� ��� ������ ������� ��� ����� ���.';
  SM_fmLontyp_ConfirmDelRec                      ='��� ���� �� ��� ��� ����� �� �����.';

  SM_fmLonRqS_Date_Error                         = '����� ����� ����� ����.';
  SM_Pub_Public_Incorrect_Date_Format            = '����� ����� ����� ����.';
  SM_Pub_Public_Incorrect_Date_Interval          = '���� ������ ����� ����.';
  SM_Pub_Public_Start_Date_Not_Specified         = '���� ������ ���� ������ �� ����� ������.';



  SM_Pub_DeleteErrorExistRelatedRecord           = '���� ��� ������ �� ����� ��� ����� ���.';
//----------------------------------------------------------------------------
  SM_Pub_Confirm_Delete_Good = ' ��� ���� �� ��� ��� ��� ���� �� ����� �';
//----------------------------------------------------------------------------
  SM_Itemverify_Morethan_request='����� ����� �� ����� ������� �������� ����� �� ����';
  SM_Itemverify_Morethan_Leave='����� ����� �� ����� ������ ���� ����� ���';
  SM_Itemverify_Recieve_more_cfm='����� ������ �� ����� ����� ��� ����� ���';
  SM_Itemverify_Request_more_Exist='����� �������� �� ����� ������ ����� ��� .';
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
  SM_fmReqCfm_Verify='������� ����� ��� �� ��� ���� ����� ���';
  SM_fmReqCfm_nonVerify='������� �� ����� ��� �� ��� ���� ����� ���';
  SM_fmReqCfm_ConfirmDelRec ='��� ���� �� ��� ��� ������� �� ����Ͽ';
  SM_fmLonRqS_RepaySDate_Less_ReqDate ='����� ����� ����� �� ����� ����� �� ���� .';
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
   SM_fmReqCfm_verify_cfm ='������� ����� ���� ���� ����� ����';
   SM_fmReqCfm_noncfm ='������� ����� ��� ���� ����� ����';
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
    SM_fmReqCfm_Req='������� ���� ����� ��� ����';
    SM_fmReqCfm_ReqDel='������� ���� ��� ��� ����';
    SM_fmReqCfm_ItemDel='���� ���� ��� ��� ����';
    SM_fmItmReq_Req_New='������� ������� ���� ��� ���� ����� ��� ������';
    SM_fmResid_DeleteOnly='��� ������� ����� ��� ���� ��� ��� �� ����';
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
   SM_fmReqver_Values='������ ����� ��� � ������ ���� ���� ���� ������� �������� ����� ���� ���';
   SM_fmReqver_All='����� ������� ����� ����� ��� ���� ����';
   SM_fmReqver_Titles='����� ������� ����';
//----------------------------------------------------------------------------
  SM_fmReqCfm_Item='���� ������� ���� ��� ������ ����� ��� ���� �� ����� ���';
//----------------------------------------------------------------------------
  SM_fmDelGoods_ConfirmDelCurRec='��� ���� �� ��� ����� ���� ����Ͽ';
//----------------------------------------------------------------------------
  SM_fmSpec_NoRecordTitle='�������';
  SM_fmSpec_NoRecord='������ �� ��� ������ ���� ���';
//----------------------------------------------------------------------------
  SM_Ebtal='����� ����';
  SM_EbtalText='��� ���� �� ����� ����� �� ����� �';
//----------------------------------------------------------------------------
  SM_fmVisit_FailVisit = '��� ���� �� ����� ��� ����� ������ �� �����.';
  SM_fmVisit_Only_Register = '���� ��������� ����� ��� ���� ����� �� �����.';
//----------------------------------------------------------------------------
  SM_fmAccComiss_Only_Register = '���� ���� ���� ��� ����� ��� ���� ����� �� �����.';
  SM_fmAccComiss_Confirm_Only_Register = '���� ���� ���� ��� ����� ��� ���� ������ �� �����.';
  SM_fmAccComiss_FailCom = '��� ���� �� ����� ��� ����� ������ �� �����.';

  SM_fmAccComissCfm_Confirm_Confirm ='��� �������� �� ����� �� ���Ͽ';
  SM_fmAccComissCfm_Confirm_Not_Confirm ='���� ����� ��� �� ����� ��� �������� �� ����Ͽ';
  SM_fmAccComissCfm_Confirm_Less_CreateDate ='����� ����� ����� �� ����� ����� �� ���� .';

  SM_fmAccComissApp_Confirm_Approve ='���� ����� ��� ����� ��� �������� �� ����Ͽ';
  SM_fmAccComissApp_Confirm_Not_Approve ='���� ����� ��� �� ����� ��� �������� �� ����Ͽ';

  SM_fmAccComissApp_Approve_Less_CreateDate ='����� ����� �� ����� ����� ����� �� ����.';
  SM_fmAccComissApp_Approve_Less_ConfirmDate ='����� ����� �� ����� ����� ����� �� ����.';
//----------------------------------------------------------------------------
   SM_Not_Valid_domain ='������ ���� ��� ����� ��� ����.';
// To Get The Left and Top of
// a form by Height = h , Width = w
// to be in cntr of MainForm

procedure GetRect(const w:integer;const h:integer;var L:integer;var T:integer);

implementation
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
procedure GetRect(const w:integer;const h:integer;var L:integer;var T:integer);
var
  k:integer;
begin
  //
  k := (UUserMsg.Rf_MainForm_ClientWidth - w) Div 2;

  L := k;

  k := (UUserMsg.Rf_MainForm_ClientHeight - h) Div 2;

  T := k;

end;  // procedure GetRect
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
end.  // unit UUserMsg;


