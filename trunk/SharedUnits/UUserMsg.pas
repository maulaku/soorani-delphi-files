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

  SM_Pub_Error                                   = 'ÎØÇ';

  SM_Pub_RetryMode                               = 'ÓÚí ãÌÏÏ';
  SM_Pub_RetryMsg                                = 'ÚãáíÇÊ ãæÑÏ äÙÑ ÇäÌÇã äÔÏ ¡áØİÇ ÏæÈÇÑå ÇãÊÍÇä ßäíÏ.';

  SM_Pub_InsertMode                              = 'ÏÑÌ ÑßæÑÏ ÌÏíÏ';
  SM_Pub_UpdateMode                              = 'ÇÕáÇÍ ÑßæÑÏ ÌÇÑí';
  SM_Pub_DeleteMode                              = 'ÍĞİ ÑßæÑÏ ÌÇÑí';

  // Please use PDate.GetEmptyDateStr8
  // SM_Pub_Empty_Date_Format                       = '  /  /  ';

  SM_fmLonTyp_DeleteErrorRelatedRow              ='ÏÇÏå åÇí æÇÈÓÊå ÏÑÌÏÇæá ÏíÑ ãæÌæÏ ÇÓÊ.';
  SM_fmLontyp_ConfirmDelRec                      ='ÂíÇ ãÇíá Èå ÍĞİ Çíä ÑßæÑÏ ãí ÈÇÔíÏ.';

  SM_fmLonRqS_Date_Error                         = 'ÊÇÑíÎ æÑæÏí ãÚÊÈÑ äíÓÊ.';
  SM_Pub_Public_Incorrect_Date_Format            = 'ÊÇÑíÎ æÑæÏí ãÚÊÈÑ äíÓÊ.';
  SM_Pub_Public_Incorrect_Date_Interval          = 'ÈÇÒå ÊÇÑíÎí ãÚÊÈÑ äíÓÊ.';
  SM_Pub_Public_Start_Date_Not_Specified         = 'áØİÇ ÇÈÊÏÇí ÈÇÒå ÊÇÑíÎí ÑÇ ÊÚííä äãÇííÏ.';



  SM_Pub_DeleteErrorExistRelatedRecord           = 'ÏÇÏå åÇí æÇÈÓÊå ÏÑ ÌÏÇæá ÏíÑ ãæÌæÏ ÇÓÊ.';
//----------------------------------------------------------------------------
  SM_Pub_Confirm_Delete_Good = ' ÂíÇ ãÇíá Èå ÍĞİ Çíä Şáã ßÇáÇ ãí ÈÇÔíÏ ¿';
//----------------------------------------------------------------------------
  SM_Itemverify_Morethan_request='ãŞÏÇÑ æÑæÏí ÇÒ ÊÚÏÇÏ ßÇáÇåÇí ÏÑÎæÇÓÊí ÈíÔÊÑ ãí ÈÇÔÏ';
  SM_Itemverify_Morethan_Leave='ãŞÏÇÑ æÑæÏí ÇÒ ãŞÏÇÑ ÊÍæíáí İÚáí ÈíÔÊÑ ÇÓÊ';
  SM_Itemverify_Recieve_more_cfm='ãŞÏÇÑ ÊÍæíáí ÇÒ ãŞÏÇÑ ÊÇííÏ ÔÏå ÈíÔÊÑ ÇÓÊ';
  SM_Itemverify_Request_more_Exist='ãŞÏÇÑ ÏÑÎæÇÓÊí ÇÒ ãŞÏÇÑ ãæÌæÏí ÈíÔÊÑ ÇÓÊ .';
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
  SM_fmReqCfm_Verify='ÏÑÎæÇÓÊ ÈÑÑÓí ÔÏå ÑÇ äãí ÊæÇä ÇÕáÇÍ ßÑÏ';
  SM_fmReqCfm_nonVerify='ÏÑÎæÇÓÊ ÑÏ ÈÑÑÓí ÔÏå ÑÇ äãí ÊæÇä ÇÕáÇÍ ßÑÏ';
  SM_fmReqCfm_ConfirmDelRec ='ÂíÇ ãÇíá Èå ÍĞİ Çíä ÏÑÎæÇÓÊ ãí ÈÇÔíÏ¿';
  SM_fmLonRqS_RepaySDate_Less_ReqDate ='ÊÇÑíÎ ÊÇííÏ ßæßÊÑ ÇÒ ÊÇÑíÎ ÊäÙíã ãí ÈÇÔÏ .';
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
   SM_fmReqCfm_verify_cfm ='ÏÑÎæÇÓÊ ÊÇííÏ äÔÏå ŞÇÈá ÈÑÑÓí äíÓÊ';
   SM_fmReqCfm_noncfm ='ÏÑÎæÇÓÊ ÊäÙíã ÔÏå ŞÇÈá ÈÑÑÓí äíÓÊ';
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
    SM_fmReqCfm_Req='ÏÑÎæÇÓÊ ŞÇÈá ÇÕáÇÍ äãí ÈÇÔÏ';
    SM_fmReqCfm_ReqDel='ÏÑÎæÇÓÊ ŞÇÈá ÍĞİ äãí ÈÇÔÏ';
    SM_fmReqCfm_ItemDel='ßÇáÇ ŞÇÈá ÍĞİ äãí ÈÇÔÏ';
    SM_fmItmReq_Req_New='ßÇáÇåÇí ÏÑÎæÇÓÊ ãæÑÏ äÙÑ ŞÇÈá ÇÖÇİå ÔÏä äíÓÊäÏ';
    SM_fmResid_DeleteOnly='İŞØ ÏÑÎæÇÓÊ ÊäÙíã ÔÏå ŞÇÈá ÍĞİ ÔÏä ãí ÈÇÔÏ';
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------
   SM_fmReqver_Values='ãŞÇÏíÑ ÊÇííÏ ÔÏå æ ÊÍæíáí İÚáí ÈÑÇí ÊãÇã ßÇáÇåÇí ÏÑÎæÇÓÊí ÊÚííä äÔÏå ÇäÏ';
   SM_fmReqver_All='æÖÚíÊ ÏÑÎæÇÓÊ ÈÕæÑÊ ÈÑÑÓí ÔÏå ŞÑÇÑ ÑİÊ';
   SM_fmReqver_Titles='ÈÑÑÓí ÏÑÎæÇÓÊ ßÇáÇ';
//----------------------------------------------------------------------------
  SM_fmReqCfm_Item='ÈÑÇí ÏÑÎæÇÓÊ ãæÑÏ äÙÑ ßÇáÇíí ãæÌæÏ äãí ÈÇÔÏ ÊÇ ÊÇííÏ ÔæÏ';
//----------------------------------------------------------------------------
  SM_fmDelGoods_ConfirmDelCurRec='ÂíÇ ãÇíá Èå ÍĞİ ÑßæÑÏ ÌÇÑí åÓÊíÏ¿';
//----------------------------------------------------------------------------
  SM_fmSpec_NoRecordTitle='ÒÇÑÔÇÊ';
  SM_fmSpec_NoRecord='ÑßæÑÏí ÈÇ Çíä ãÔÎÕÇÊ íÇİÊ äÔÏ';
//----------------------------------------------------------------------------
  SM_Ebtal='ÍæÇáå ßÇáÇ';
  SM_EbtalText='ÂíÇ ãÇíá Èå ÇÈØÇá ÍæÇáå ãí ÈÇÔíÏ ¿';
//----------------------------------------------------------------------------
  SM_fmVisit_FailVisit = 'ÂíÇ ãÇíá Èå ÇÈØÇá Çíä ÔãÇÑå ÈÇÒÏíÏ ãí ÈÇÔíÏ.';
  SM_fmVisit_Only_Register = 'ÊäåÇ ÈÇÒÏíÏåÇí ÊäÙíã ÔÏå ŞÇÈá ÊÛííÑ ãí ÈÇÔäÏ.';
//----------------------------------------------------------------------------
  SM_fmAccComiss_Only_Register = 'ÊäåÇ ÕæÑÊ ÌáÓå åÇí ÊäÙíã ÔÏå ŞÇÈá ÊÛííÑ ãí ÈÇÔäÏ.';
  SM_fmAccComiss_Confirm_Only_Register = 'ÊäåÇ ÕæÑÊ ÌáÓå åÇí ÊäÙíã ÔÏå ŞÇÈá ÊÜÇííÏ ãí ÈÇÔäÏ.';
  SM_fmAccComiss_FailCom = 'ÂíÇ ãÇíá Èå ÇÈØÇá Çíä ÔãÇÑå ÈÇÒÏíÏ ãí ÈÇÔíÏ.';

  SM_fmAccComissCfm_Confirm_Confirm ='ÂíÇ ÕæÑÊÌáÓå ÑÇ ÊÇííÏ ãí ßäíÏ¿';
  SM_fmAccComissCfm_Confirm_Not_Confirm ='ÂíÜÇ æÇŞÚÇ ŞÕÏ ÑÏ ÊÇííÏ Çíä ÕæÑÊÌáÓå ÑÇ ÏÇÑíÏ¿';
  SM_fmAccComissCfm_Confirm_Less_CreateDate ='ÊÇÑíÎ ÊÇííÏ ßæßÊÑ ÇÒ ÊÇÑíÎ ÊäÙíã ãí ÈÇÔÏ .';

  SM_fmAccComissApp_Confirm_Approve ='ÂíÜÇ æÇŞÚÇ ŞÕÏ ÊÕæíÈ Çíä ÕæÑÊÌáÓå ÑÇ ÏÇÑíÏ¿';
  SM_fmAccComissApp_Confirm_Not_Approve ='ÂíÜÇ æÇŞÚÇ ŞÕÏ ÑÏ äåÇíí Çíä ÕæÑÊÌáÓå ÑÇ ÏÇÑíÏ¿';

  SM_fmAccComissApp_Approve_Less_CreateDate ='ÊÇÑíÎ ÈÑÑÓí ÇÒ ÊÇÑíÎ ÊäÙíã ßæßÊÑ ãí ÈÇÔÏ.';
  SM_fmAccComissApp_Approve_Less_ConfirmDate ='ÊÇÑíÎ ÈÑÑÓí ÇÒ ÊÇÑíÎ ÊÇííÏ ßæßÊÑ ãí ÈÇÔÏ.';
//----------------------------------------------------------------------------
   SM_Not_Valid_domain ='ãÍÏæÏå ÏÇÏå ÔÏå æÇŞÚí äãí ÈÇÔÏ.';
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


