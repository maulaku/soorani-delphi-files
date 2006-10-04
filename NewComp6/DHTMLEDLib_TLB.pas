unit DHTMLEDLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : $Revision:   1.130.1.0.1.0.1.6  $
// File generated on 2003/12/30 11:25:54 Þ.Ù from Type Library described below.

// ************************************************************************  //
// Type Lib: E:\Program Files\Common Files\Microsoft Shared\Triedit\dhtmled.ocx (1)
// LIBID: {683364A1-B37D-11D1-ADC5-006008A5848C}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (E:\WINDOWS\System32\STDOLE2.TLB)
//   (2) v4.0 MSHTML, (E:\WINDOWS\System32\MSHTML.TLB)
//   (3) v4.0 StdVCL, (E:\WINDOWS\System32\stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
interface

uses Windows, ActiveX, Classes, Graphics, MSHTML_TLB, OleCtrls, OleServer, StdVCL, 
Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  DHTMLEDLibMajorVersion = 1;
  DHTMLEDLibMinorVersion = 0;

  LIBID_DHTMLEDLib: TGUID = '{683364A1-B37D-11D1-ADC5-006008A5848C}';

  IID_IDEGetBlockFmtNamesParam: TGUID = '{8D91090D-B955-11D1-ADC5-006008A5848C}';
  IID_IDHTMLSafe: TGUID = '{CE04B590-2B1F-11D2-8D1E-00A0C959BC0A}';
  IID_IDHTMLEdit: TGUID = '{CE04B591-2B1F-11D2-8D1E-00A0C959BC0A}';
  IID_IDEInsertTableParam: TGUID = '{47B0DFC6-B7A3-11D1-ADC5-006008A5848C}';
  DIID__DHTMLSafeEvents: TGUID = '{D1FC78E8-B380-11D1-ADC5-006008A5848C}';
  DIID__DHTMLEditEvents: TGUID = '{588D5040-CF28-11D1-8CD3-00A0C959BC0A}';
  CLASS_DHTMLEdit: TGUID = '{2D360200-FFF5-11D1-8D03-00A0C959BC0A}';
  CLASS_DHTMLSafe: TGUID = '{2D360201-FFF5-11D1-8D03-00A0C959BC0A}';
  CLASS_DEInsertTableParam: TGUID = '{47B0DFC7-B7A3-11D1-ADC5-006008A5848C}';
  CLASS_DEGetBlockFmtNamesParam: TGUID = '{8D91090E-B955-11D1-ADC5-006008A5848C}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum DHTMLEDITCMDID
type
  DHTMLEDITCMDID = TOleEnum;
const
  DECMD_BOLD = $00001388;
  DECMD_COPY = $0000138A;
  DECMD_CUT = $0000138B;
  DECMD_DELETE = $0000138C;
  DECMD_DELETECELLS = $0000138D;
  DECMD_DELETECOLS = $0000138E;
  DECMD_DELETEROWS = $0000138F;
  DECMD_FINDTEXT = $00001390;
  DECMD_FONT = $00001391;
  DECMD_GETBACKCOLOR = $00001392;
  DECMD_GETBLOCKFMT = $00001393;
  DECMD_GETBLOCKFMTNAMES = $00001394;
  DECMD_GETFONTNAME = $00001395;
  DECMD_GETFONTSIZE = $00001396;
  DECMD_GETFORECOLOR = $00001397;
  DECMD_HYPERLINK = $00001398;
  DECMD_IMAGE = $00001399;
  DECMD_INDENT = $0000139A;
  DECMD_INSERTCELL = $0000139B;
  DECMD_INSERTCOL = $0000139C;
  DECMD_INSERTROW = $0000139D;
  DECMD_INSERTTABLE = $0000139E;
  DECMD_ITALIC = $0000139F;
  DECMD_JUSTIFYCENTER = $000013A0;
  DECMD_JUSTIFYLEFT = $000013A1;
  DECMD_JUSTIFYRIGHT = $000013A2;
  DECMD_LOCK_ELEMENT = $000013A3;
  DECMD_MAKE_ABSOLUTE = $000013A4;
  DECMD_MERGECELLS = $000013A5;
  DECMD_ORDERLIST = $000013A6;
  DECMD_OUTDENT = $000013A7;
  DECMD_PASTE = $000013A8;
  DECMD_REDO = $000013A9;
  DECMD_REMOVEFORMAT = $000013AA;
  DECMD_SELECTALL = $000013AB;
  DECMD_SEND_BACKWARD = $000013AC;
  DECMD_BRING_FORWARD = $000013AD;
  DECMD_SEND_BELOW_TEXT = $000013AE;
  DECMD_BRING_ABOVE_TEXT = $000013AF;
  DECMD_SEND_TO_BACK = $000013B0;
  DECMD_BRING_TO_FRONT = $000013B1;
  DECMD_SETBACKCOLOR = $000013B2;
  DECMD_SETBLOCKFMT = $000013B3;
  DECMD_SETFONTNAME = $000013B4;
  DECMD_SETFONTSIZE = $000013B5;
  DECMD_SETFORECOLOR = $000013B6;
  DECMD_SPLITCELL = $000013B7;
  DECMD_UNDERLINE = $000013B8;
  DECMD_UNDO = $000013B9;
  DECMD_UNLINK = $000013BA;
  DECMD_UNORDERLIST = $000013BB;
  DECMD_PROPERTIES = $000013BC;

// Constants for enum DHTMLEDITCMDF
type
  DHTMLEDITCMDF = TOleEnum;
const
  DECMDF_NOTSUPPORTED = $00000000;
  DECMDF_DISABLED = $00000001;
  DECMDF_ENABLED = $00000003;
  DECMDF_LATCHED = $00000007;
  DECMDF_NINCHED = $0000000B;

// Constants for enum DHTMLEDITAPPEARANCE
type
  DHTMLEDITAPPEARANCE = TOleEnum;
const
  DEAPPEARANCE_FLAT = $00000000;
  DEAPPEARANCE_3D = $00000001;

// Constants for enum OLECMDEXECOPT
type
  OLECMDEXECOPT = TOleEnum;
const
  OLECMDEXECOPT_DODEFAULT = $00000000;
  OLECMDEXECOPT_PROMPTUSER = $00000001;
  OLECMDEXECOPT_DONTPROMPTUSER = $00000002;
  OLECMDEXECOPT_SHOWHELP = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IDEGetBlockFmtNamesParam = interface;
  IDEGetBlockFmtNamesParamDisp = dispinterface;
  IDHTMLSafe = interface;
  IDHTMLSafeDisp = dispinterface;
  IDHTMLEdit = interface;
  IDHTMLEditDisp = dispinterface;
  IDEInsertTableParam = interface;
  IDEInsertTableParamDisp = dispinterface;
  _DHTMLSafeEvents = dispinterface;
  _DHTMLEditEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  DHTMLEdit = IDHTMLEdit;
  DHTMLSafe = IDHTMLSafe;
  DEInsertTableParam = IDEInsertTableParam;
  DEGetBlockFmtNamesParam = IDEGetBlockFmtNamesParam;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: IDEGetBlockFmtNamesParam
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8D91090D-B955-11D1-ADC5-006008A5848C}
// *********************************************************************//
  IDEGetBlockFmtNamesParam = interface(IDispatch)
    ['{8D91090D-B955-11D1-ADC5-006008A5848C}']
    function Get_Names: OleVariant; safecall;
    procedure Set_Names(var pVal: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDEGetBlockFmtNamesParamDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8D91090D-B955-11D1-ADC5-006008A5848C}
// *********************************************************************//
  IDEGetBlockFmtNamesParamDisp = dispinterface
    ['{8D91090D-B955-11D1-ADC5-006008A5848C}']
    function Names: OleVariant; dispid 1;
  end;

// *********************************************************************//
// Interface: IDHTMLSafe
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CE04B590-2B1F-11D2-8D1E-00A0C959BC0A}
// *********************************************************************//
  IDHTMLSafe = interface(IDispatch)
    ['{CE04B590-2B1F-11D2-8D1E-00A0C959BC0A}']
    function ExecCommand(cmdID: DHTMLEDITCMDID; cmdexecopt: OLECMDEXECOPT; var pInVar: OleVariant): OleVariant; safecall;
    function QueryStatus(cmdID: DHTMLEDITCMDID): DHTMLEDITCMDF; safecall;
    procedure SetContextMenu(var menuStrings: OleVariant; var menuStates: OleVariant); safecall;
    procedure NewDocument; safecall;
    procedure LoadURL(const url: WideString); safecall;
    function FilterSourceCode(const sourceCodeIn: WideString): WideString; safecall;
    procedure Refresh; safecall;
    function Get_DOM: IHTMLDocument2; safecall;
    function Get_DocumentHTML: WideString; safecall;
    procedure Set_DocumentHTML(const docHTML: WideString); safecall;
    function Get_ActivateApplets: WordBool; safecall;
    procedure Set_ActivateApplets(pVal: WordBool); safecall;
    function Get_ActivateActiveXControls: WordBool; safecall;
    procedure Set_ActivateActiveXControls(pVal: WordBool); safecall;
    function Get_ActivateDTCs: WordBool; safecall;
    procedure Set_ActivateDTCs(pVal: WordBool); safecall;
    function Get_ShowDetails: WordBool; safecall;
    procedure Set_ShowDetails(pVal: WordBool); safecall;
    function Get_ShowBorders: WordBool; safecall;
    procedure Set_ShowBorders(pVal: WordBool); safecall;
    function Get_Appearance: DHTMLEDITAPPEARANCE; safecall;
    procedure Set_Appearance(pVal: DHTMLEDITAPPEARANCE); safecall;
    function Get_Scrollbars: WordBool; safecall;
    procedure Set_Scrollbars(pVal: WordBool); safecall;
    function Get_ScrollbarAppearance: DHTMLEDITAPPEARANCE; safecall;
    procedure Set_ScrollbarAppearance(pVal: DHTMLEDITAPPEARANCE); safecall;
    function Get_SourceCodePreservation: WordBool; safecall;
    procedure Set_SourceCodePreservation(pVal: WordBool); safecall;
    function Get_AbsoluteDropMode: WordBool; safecall;
    procedure Set_AbsoluteDropMode(pVal: WordBool); safecall;
    function Get_SnapToGridX: Integer; safecall;
    procedure Set_SnapToGridX(pVal: Integer); safecall;
    function Get_SnapToGridY: Integer; safecall;
    procedure Set_SnapToGridY(pVal: Integer); safecall;
    function Get_SnapToGrid: WordBool; safecall;
    procedure Set_SnapToGrid(pVal: WordBool); safecall;
    function Get_IsDirty: WordBool; safecall;
    function Get_CurrentDocumentPath: WideString; safecall;
    function Get_BaseURL: WideString; safecall;
    procedure Set_BaseURL(const BaseURL: WideString); safecall;
    function Get_DocumentTitle: WideString; safecall;
    function Get_UseDivOnCarriageReturn: WordBool; safecall;
    procedure Set_UseDivOnCarriageReturn(pVal: WordBool); safecall;
    function Get_Busy: WordBool; safecall;
    property DOM: IHTMLDocument2 read Get_DOM;
    property DocumentHTML: WideString read Get_DocumentHTML write Set_DocumentHTML;
    property ActivateApplets: WordBool read Get_ActivateApplets write Set_ActivateApplets;
    property ActivateActiveXControls: WordBool read Get_ActivateActiveXControls write Set_ActivateActiveXControls;
    property ActivateDTCs: WordBool read Get_ActivateDTCs write Set_ActivateDTCs;
    property ShowDetails: WordBool read Get_ShowDetails write Set_ShowDetails;
    property ShowBorders: WordBool read Get_ShowBorders write Set_ShowBorders;
    property Appearance: DHTMLEDITAPPEARANCE read Get_Appearance write Set_Appearance;
    property Scrollbars: WordBool read Get_Scrollbars write Set_Scrollbars;
    property ScrollbarAppearance: DHTMLEDITAPPEARANCE read Get_ScrollbarAppearance write Set_ScrollbarAppearance;
    property SourceCodePreservation: WordBool read Get_SourceCodePreservation write Set_SourceCodePreservation;
    property AbsoluteDropMode: WordBool read Get_AbsoluteDropMode write Set_AbsoluteDropMode;
    property SnapToGridX: Integer read Get_SnapToGridX write Set_SnapToGridX;
    property SnapToGridY: Integer read Get_SnapToGridY write Set_SnapToGridY;
    property SnapToGrid: WordBool read Get_SnapToGrid write Set_SnapToGrid;
    property IsDirty: WordBool read Get_IsDirty;
    property CurrentDocumentPath: WideString read Get_CurrentDocumentPath;
    property BaseURL: WideString read Get_BaseURL write Set_BaseURL;
    property DocumentTitle: WideString read Get_DocumentTitle;
    property UseDivOnCarriageReturn: WordBool read Get_UseDivOnCarriageReturn write Set_UseDivOnCarriageReturn;
    property Busy: WordBool read Get_Busy;
  end;

// *********************************************************************//
// DispIntf:  IDHTMLSafeDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CE04B590-2B1F-11D2-8D1E-00A0C959BC0A}
// *********************************************************************//
  IDHTMLSafeDisp = dispinterface
    ['{CE04B590-2B1F-11D2-8D1E-00A0C959BC0A}']
    function ExecCommand(cmdID: DHTMLEDITCMDID; cmdexecopt: OLECMDEXECOPT; var pInVar: OleVariant): OleVariant; dispid 2;
    function QueryStatus(cmdID: DHTMLEDITCMDID): DHTMLEDITCMDF; dispid 3;
    procedure SetContextMenu(var menuStrings: OleVariant; var menuStates: OleVariant); dispid 5;
    procedure NewDocument; dispid 27;
    procedure LoadURL(const url: WideString); dispid 29;
    function FilterSourceCode(const sourceCodeIn: WideString): WideString; dispid 31;
    procedure Refresh; dispid 32;
    property DOM: IHTMLDocument2 readonly dispid 6;
    property DocumentHTML: WideString dispid 17;
    property ActivateApplets: WordBool dispid 7;
    property ActivateActiveXControls: WordBool dispid 8;
    property ActivateDTCs: WordBool dispid 9;
    property ShowDetails: WordBool dispid 11;
    property ShowBorders: WordBool dispid 12;
    property Appearance: DHTMLEDITAPPEARANCE dispid 13;
    property Scrollbars: WordBool dispid 14;
    property ScrollbarAppearance: DHTMLEDITAPPEARANCE dispid 15;
    property SourceCodePreservation: WordBool dispid 16;
    property AbsoluteDropMode: WordBool dispid 18;
    property SnapToGridX: Integer dispid 19;
    property SnapToGridY: Integer dispid 20;
    property SnapToGrid: WordBool dispid 21;
    property IsDirty: WordBool readonly dispid 22;
    property CurrentDocumentPath: WideString readonly dispid 23;
    property BaseURL: WideString dispid 24;
    property DocumentTitle: WideString readonly dispid 25;
    property UseDivOnCarriageReturn: WordBool dispid 30;
    property Busy: WordBool readonly dispid 33;
  end;

// *********************************************************************//
// Interface: IDHTMLEdit
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CE04B591-2B1F-11D2-8D1E-00A0C959BC0A}
// *********************************************************************//
  IDHTMLEdit = interface(IDHTMLSafe)
    ['{CE04B591-2B1F-11D2-8D1E-00A0C959BC0A}']
    procedure LoadDocument(var pathIn: OleVariant; var promptUser: OleVariant); safecall;
    procedure SaveDocument(var pathIn: OleVariant; var promptUser: OleVariant); safecall;
    procedure PrintDocument(var withUI: OleVariant); safecall;
    function Get_BrowseMode: WordBool; safecall;
    procedure Set_BrowseMode(pVal: WordBool); safecall;
    property BrowseMode: WordBool read Get_BrowseMode write Set_BrowseMode;
  end;

// *********************************************************************//
// DispIntf:  IDHTMLEditDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CE04B591-2B1F-11D2-8D1E-00A0C959BC0A}
// *********************************************************************//
  IDHTMLEditDisp = dispinterface
    ['{CE04B591-2B1F-11D2-8D1E-00A0C959BC0A}']
    procedure LoadDocument(var pathIn: OleVariant; var promptUser: OleVariant); dispid 1;
    procedure SaveDocument(var pathIn: OleVariant; var promptUser: OleVariant); dispid 4;
    procedure PrintDocument(var withUI: OleVariant); dispid 28;
    property BrowseMode: WordBool dispid 26;
    function ExecCommand(cmdID: DHTMLEDITCMDID; cmdexecopt: OLECMDEXECOPT; var pInVar: OleVariant): OleVariant; dispid 2;
    function QueryStatus(cmdID: DHTMLEDITCMDID): DHTMLEDITCMDF; dispid 3;
    procedure SetContextMenu(var menuStrings: OleVariant; var menuStates: OleVariant); dispid 5;
    procedure NewDocument; dispid 27;
    procedure LoadURL(const url: WideString); dispid 29;
    function FilterSourceCode(const sourceCodeIn: WideString): WideString; dispid 31;
    procedure Refresh; dispid 32;
    property DOM: IHTMLDocument2 readonly dispid 6;
    property DocumentHTML: WideString dispid 17;
    property ActivateApplets: WordBool dispid 7;
    property ActivateActiveXControls: WordBool dispid 8;
    property ActivateDTCs: WordBool dispid 9;
    property ShowDetails: WordBool dispid 11;
    property ShowBorders: WordBool dispid 12;
    property Appearance: DHTMLEDITAPPEARANCE dispid 13;
    property Scrollbars: WordBool dispid 14;
    property ScrollbarAppearance: DHTMLEDITAPPEARANCE dispid 15;
    property SourceCodePreservation: WordBool dispid 16;
    property AbsoluteDropMode: WordBool dispid 18;
    property SnapToGridX: Integer dispid 19;
    property SnapToGridY: Integer dispid 20;
    property SnapToGrid: WordBool dispid 21;
    property IsDirty: WordBool readonly dispid 22;
    property CurrentDocumentPath: WideString readonly dispid 23;
    property BaseURL: WideString dispid 24;
    property DocumentTitle: WideString readonly dispid 25;
    property UseDivOnCarriageReturn: WordBool dispid 30;
    property Busy: WordBool readonly dispid 33;
  end;

// *********************************************************************//
// Interface: IDEInsertTableParam
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {47B0DFC6-B7A3-11D1-ADC5-006008A5848C}
// *********************************************************************//
  IDEInsertTableParam = interface(IDispatch)
    ['{47B0DFC6-B7A3-11D1-ADC5-006008A5848C}']
    function Get_NumRows: Integer; safecall;
    procedure Set_NumRows(pVal: Integer); safecall;
    function Get_NumCols: Integer; safecall;
    procedure Set_NumCols(pVal: Integer); safecall;
    function Get_TableAttrs: WideString; safecall;
    procedure Set_TableAttrs(const pVal: WideString); safecall;
    function Get_CellAttrs: WideString; safecall;
    procedure Set_CellAttrs(const pVal: WideString); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const pVal: WideString); safecall;
    property NumRows: Integer read Get_NumRows write Set_NumRows;
    property NumCols: Integer read Get_NumCols write Set_NumCols;
    property TableAttrs: WideString read Get_TableAttrs write Set_TableAttrs;
    property CellAttrs: WideString read Get_CellAttrs write Set_CellAttrs;
    property Caption: WideString read Get_Caption write Set_Caption;
  end;

// *********************************************************************//
// DispIntf:  IDEInsertTableParamDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {47B0DFC6-B7A3-11D1-ADC5-006008A5848C}
// *********************************************************************//
  IDEInsertTableParamDisp = dispinterface
    ['{47B0DFC6-B7A3-11D1-ADC5-006008A5848C}']
    property NumRows: Integer dispid 1;
    property NumCols: Integer dispid 2;
    property TableAttrs: WideString dispid 3;
    property CellAttrs: WideString dispid 4;
    property Caption: WideString dispid 5;
  end;

// *********************************************************************//
// DispIntf:  _DHTMLSafeEvents
// Flags:     (4096) Dispatchable
// GUID:      {D1FC78E8-B380-11D1-ADC5-006008A5848C}
// *********************************************************************//
  _DHTMLSafeEvents = dispinterface
    ['{D1FC78E8-B380-11D1-ADC5-006008A5848C}']
    procedure DocumentComplete; dispid 1;
    procedure DisplayChanged; dispid 2;
    procedure ShowContextMenu(xPos: Integer; yPos: Integer); dispid 3;
    procedure ContextMenuAction(itemIndex: Integer); dispid 4;
    procedure onmousedown; dispid 5;
    procedure onmousemove; dispid 6;
    procedure onmouseup; dispid 7;
    procedure onmouseout; dispid 8;
    procedure onmouseover; dispid 9;
    procedure onclick; dispid 10;
    procedure ondblclick; dispid 11;
    procedure onkeydown; dispid 12;
    procedure onkeypress; dispid 13;
    procedure onkeyup; dispid 14;
    procedure onblur; dispid 15;
    procedure onreadystatechange; dispid 16;
  end;

// *********************************************************************//
// DispIntf:  _DHTMLEditEvents
// Flags:     (4096) Dispatchable
// GUID:      {588D5040-CF28-11D1-8CD3-00A0C959BC0A}
// *********************************************************************//
  _DHTMLEditEvents = dispinterface
    ['{588D5040-CF28-11D1-8CD3-00A0C959BC0A}']
    procedure DocumentComplete; dispid 1;
    procedure DisplayChanged; dispid 2;
    procedure ShowContextMenu(xPos: Integer; yPos: Integer); dispid 3;
    procedure ContextMenuAction(itemIndex: Integer); dispid 4;
    procedure onmousedown; dispid 5;
    procedure onmousemove; dispid 6;
    procedure onmouseup; dispid 7;
    procedure onmouseout; dispid 8;
    procedure onmouseover; dispid 9;
    procedure onclick; dispid 10;
    procedure ondblclick; dispid 11;
    procedure onkeydown; dispid 12;
    procedure onkeypress; dispid 13;
    procedure onkeyup; dispid 14;
    procedure onblur; dispid 15;
    procedure onreadystatechange; dispid 16;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TDHTMLEdit
// Help String      : DHTML Edit Control for IE5
// Default Interface: IDHTMLEdit
// Def. Intf. DISP? : No
// Event   Interface: _DHTMLEditEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TDHTMLEditShowContextMenu = procedure(Sender: TObject; xPos: Integer; yPos: Integer) of object;
  TDHTMLEditContextMenuAction = procedure(Sender: TObject; itemIndex: Integer) of object;

  TDHTMLEdit = class(TOleControl)
  private
    FOnDocumentComplete: TNotifyEvent;
    FOnDisplayChanged: TNotifyEvent;
    FOnShowContextMenu: TDHTMLEditShowContextMenu;
    FOnContextMenuAction: TDHTMLEditContextMenuAction;
    FOnonmousedown: TNotifyEvent;
    FOnonmousemove: TNotifyEvent;
    FOnonmouseup: TNotifyEvent;
    FOnonmouseout: TNotifyEvent;
    FOnonmouseover: TNotifyEvent;
    FOnonclick: TNotifyEvent;
    FOnondblclick: TNotifyEvent;
    FOnonkeydown: TNotifyEvent;
    FOnonkeypress: TNotifyEvent;
    FOnonkeyup: TNotifyEvent;
    FOnonblur: TNotifyEvent;
    FOnonreadystatechange: TNotifyEvent;
    FIntf: IDHTMLEdit;
    function  GetControlInterface: IDHTMLEdit;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_DOM: IHTMLDocument2;
  public
    function ExecCommand(cmdID: DHTMLEDITCMDID; cmdexecopt: OLECMDEXECOPT): OleVariant; overload;
    function ExecCommand(cmdID: DHTMLEDITCMDID; cmdexecopt: OLECMDEXECOPT; var pInVar: OleVariant): OleVariant; overload;
    function QueryStatus(cmdID: DHTMLEDITCMDID): DHTMLEDITCMDF;
    procedure SetContextMenu(var menuStrings: OleVariant; var menuStates: OleVariant);
    procedure NewDocument;
    procedure LoadURL(const url: WideString);
    function FilterSourceCode(const sourceCodeIn: WideString): WideString;
    procedure Refresh;
    procedure LoadDocument(var pathIn: OleVariant); overload;
    procedure LoadDocument(var pathIn: OleVariant; var promptUser: OleVariant); overload;
    procedure SaveDocument(var pathIn: OleVariant); overload;
    procedure SaveDocument(var pathIn: OleVariant; var promptUser: OleVariant); overload;
    procedure PrintDocument; overload;
    procedure PrintDocument(var withUI: OleVariant); overload;
    property  ControlInterface: IDHTMLEdit read GetControlInterface;
    property  DefaultInterface: IDHTMLEdit read GetControlInterface;
    property DOM: IHTMLDocument2 read Get_DOM;
    property IsDirty: WordBool index 22 read GetWordBoolProp;
    property CurrentDocumentPath: WideString index 23 read GetWideStringProp;
    property DocumentTitle: WideString index 25 read GetWideStringProp;
    property Busy: WordBool index 33 read GetWordBoolProp;
  published
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property DocumentHTML: WideString index 17 read GetWideStringProp write SetWideStringProp stored False;
    property ActivateApplets: WordBool index 7 read GetWordBoolProp write SetWordBoolProp stored False;
    property ActivateActiveXControls: WordBool index 8 read GetWordBoolProp write SetWordBoolProp stored False;
    property ActivateDTCs: WordBool index 9 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowDetails: WordBool index 11 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowBorders: WordBool index 12 read GetWordBoolProp write SetWordBoolProp stored False;
    property Appearance: TOleEnum index 13 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Scrollbars: WordBool index 14 read GetWordBoolProp write SetWordBoolProp stored False;
    property ScrollbarAppearance: TOleEnum index 15 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property SourceCodePreservation: WordBool index 16 read GetWordBoolProp write SetWordBoolProp stored False;
    property AbsoluteDropMode: WordBool index 18 read GetWordBoolProp write SetWordBoolProp stored False;
    property SnapToGridX: Integer index 19 read GetIntegerProp write SetIntegerProp stored False;
    property SnapToGridY: Integer index 20 read GetIntegerProp write SetIntegerProp stored False;
    property SnapToGrid: WordBool index 21 read GetWordBoolProp write SetWordBoolProp stored False;
    property BaseURL: WideString index 24 read GetWideStringProp write SetWideStringProp stored False;
    property UseDivOnCarriageReturn: WordBool index 30 read GetWordBoolProp write SetWordBoolProp stored False;
    property BrowseMode: WordBool index 26 read GetWordBoolProp write SetWordBoolProp stored False;
    property OnDocumentComplete: TNotifyEvent read FOnDocumentComplete write FOnDocumentComplete;
    property OnDisplayChanged: TNotifyEvent read FOnDisplayChanged write FOnDisplayChanged;
    property OnShowContextMenu: TDHTMLEditShowContextMenu read FOnShowContextMenu write FOnShowContextMenu;
    property OnContextMenuAction: TDHTMLEditContextMenuAction read FOnContextMenuAction write FOnContextMenuAction;
    property Ononmousedown: TNotifyEvent read FOnonmousedown write FOnonmousedown;
    property Ononmousemove: TNotifyEvent read FOnonmousemove write FOnonmousemove;
    property Ononmouseup: TNotifyEvent read FOnonmouseup write FOnonmouseup;
    property Ononmouseout: TNotifyEvent read FOnonmouseout write FOnonmouseout;
    property Ononmouseover: TNotifyEvent read FOnonmouseover write FOnonmouseover;
    property Ononclick: TNotifyEvent read FOnonclick write FOnonclick;
    property Onondblclick: TNotifyEvent read FOnondblclick write FOnondblclick;
    property Ononkeydown: TNotifyEvent read FOnonkeydown write FOnonkeydown;
    property Ononkeypress: TNotifyEvent read FOnonkeypress write FOnonkeypress;
    property Ononkeyup: TNotifyEvent read FOnonkeyup write FOnonkeyup;
    property Ononblur: TNotifyEvent read FOnonblur write FOnonblur;
    property Ononreadystatechange: TNotifyEvent read FOnonreadystatechange write FOnonreadystatechange;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TDHTMLSafe
// Help String      : DHTML Safe for Scripting Control for IE5
// Default Interface: IDHTMLSafe
// Def. Intf. DISP? : No
// Event   Interface: _DHTMLSafeEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TDHTMLSafeShowContextMenu = procedure(Sender: TObject; xPos: Integer; yPos: Integer) of object;
  TDHTMLSafeContextMenuAction = procedure(Sender: TObject; itemIndex: Integer) of object;

  TDHTMLSafe = class(TOleControl)
  private
    FOnDocumentComplete: TNotifyEvent;
    FOnDisplayChanged: TNotifyEvent;
    FOnShowContextMenu: TDHTMLSafeShowContextMenu;
    FOnContextMenuAction: TDHTMLSafeContextMenuAction;
    FOnonmousedown: TNotifyEvent;
    FOnonmousemove: TNotifyEvent;
    FOnonmouseup: TNotifyEvent;
    FOnonmouseout: TNotifyEvent;
    FOnonmouseover: TNotifyEvent;
    FOnonclick: TNotifyEvent;
    FOnondblclick: TNotifyEvent;
    FOnonkeydown: TNotifyEvent;
    FOnonkeypress: TNotifyEvent;
    FOnonkeyup: TNotifyEvent;
    FOnonblur: TNotifyEvent;
    FOnonreadystatechange: TNotifyEvent;
    FIntf: IDHTMLSafe;
    function  GetControlInterface: IDHTMLSafe;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
    function Get_DOM: IHTMLDocument2;
  public
    function ExecCommand(cmdID: DHTMLEDITCMDID; cmdexecopt: OLECMDEXECOPT): OleVariant; overload;
    function ExecCommand(cmdID: DHTMLEDITCMDID; cmdexecopt: OLECMDEXECOPT; var pInVar: OleVariant): OleVariant; overload;
    function QueryStatus(cmdID: DHTMLEDITCMDID): DHTMLEDITCMDF;
    procedure SetContextMenu(var menuStrings: OleVariant; var menuStates: OleVariant);
    procedure NewDocument;
    procedure LoadURL(const url: WideString);
    function FilterSourceCode(const sourceCodeIn: WideString): WideString;
    procedure Refresh;
    property  ControlInterface: IDHTMLSafe read GetControlInterface;
    property  DefaultInterface: IDHTMLSafe read GetControlInterface;
    property DOM: IHTMLDocument2 read Get_DOM;
    property IsDirty: WordBool index 22 read GetWordBoolProp;
    property CurrentDocumentPath: WideString index 23 read GetWideStringProp;
    property DocumentTitle: WideString index 25 read GetWideStringProp;
    property Busy: WordBool index 33 read GetWordBoolProp;
  published
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property DocumentHTML: WideString index 17 read GetWideStringProp write SetWideStringProp stored False;
    property ActivateApplets: WordBool index 7 read GetWordBoolProp write SetWordBoolProp stored False;
    property ActivateActiveXControls: WordBool index 8 read GetWordBoolProp write SetWordBoolProp stored False;
    property ActivateDTCs: WordBool index 9 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowDetails: WordBool index 11 read GetWordBoolProp write SetWordBoolProp stored False;
    property ShowBorders: WordBool index 12 read GetWordBoolProp write SetWordBoolProp stored False;
    property Appearance: TOleEnum index 13 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property Scrollbars: WordBool index 14 read GetWordBoolProp write SetWordBoolProp stored False;
    property ScrollbarAppearance: TOleEnum index 15 read GetTOleEnumProp write SetTOleEnumProp stored False;
    property SourceCodePreservation: WordBool index 16 read GetWordBoolProp write SetWordBoolProp stored False;
    property AbsoluteDropMode: WordBool index 18 read GetWordBoolProp write SetWordBoolProp stored False;
    property SnapToGridX: Integer index 19 read GetIntegerProp write SetIntegerProp stored False;
    property SnapToGridY: Integer index 20 read GetIntegerProp write SetIntegerProp stored False;
    property SnapToGrid: WordBool index 21 read GetWordBoolProp write SetWordBoolProp stored False;
    property BaseURL: WideString index 24 read GetWideStringProp write SetWideStringProp stored False;
    property UseDivOnCarriageReturn: WordBool index 30 read GetWordBoolProp write SetWordBoolProp stored False;
    property OnDocumentComplete: TNotifyEvent read FOnDocumentComplete write FOnDocumentComplete;
    property OnDisplayChanged: TNotifyEvent read FOnDisplayChanged write FOnDisplayChanged;
    property OnShowContextMenu: TDHTMLSafeShowContextMenu read FOnShowContextMenu write FOnShowContextMenu;
    property OnContextMenuAction: TDHTMLSafeContextMenuAction read FOnContextMenuAction write FOnContextMenuAction;
    property Ononmousedown: TNotifyEvent read FOnonmousedown write FOnonmousedown;
    property Ononmousemove: TNotifyEvent read FOnonmousemove write FOnonmousemove;
    property Ononmouseup: TNotifyEvent read FOnonmouseup write FOnonmouseup;
    property Ononmouseout: TNotifyEvent read FOnonmouseout write FOnonmouseout;
    property Ononmouseover: TNotifyEvent read FOnonmouseover write FOnonmouseover;
    property Ononclick: TNotifyEvent read FOnonclick write FOnonclick;
    property Onondblclick: TNotifyEvent read FOnondblclick write FOnondblclick;
    property Ononkeydown: TNotifyEvent read FOnonkeydown write FOnonkeydown;
    property Ononkeypress: TNotifyEvent read FOnonkeypress write FOnonkeypress;
    property Ononkeyup: TNotifyEvent read FOnonkeyup write FOnonkeyup;
    property Ononblur: TNotifyEvent read FOnonblur write FOnonblur;
    property Ononreadystatechange: TNotifyEvent read FOnonreadystatechange write FOnonreadystatechange;
  end;

// *********************************************************************//
// The Class CoDEInsertTableParam provides a Create and CreateRemote method to          
// create instances of the default interface IDEInsertTableParam exposed by              
// the CoClass DEInsertTableParam. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDEInsertTableParam = class
    class function Create: IDEInsertTableParam;
    class function CreateRemote(const MachineName: string): IDEInsertTableParam;
  end;

// *********************************************************************//
// The Class CoDEGetBlockFmtNamesParam provides a Create and CreateRemote method to          
// create instances of the default interface IDEGetBlockFmtNamesParam exposed by              
// the CoClass DEGetBlockFmtNamesParam. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDEGetBlockFmtNamesParam = class
    class function Create: IDEGetBlockFmtNamesParam;
    class function CreateRemote(const MachineName: string): IDEGetBlockFmtNamesParam;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

implementation

uses ComObj;

procedure TDHTMLEdit.InitControlData;
const
  CEventDispIDs: array [0..15] of DWORD = (
    $00000001, $00000002, $00000003, $00000004, $00000005, $00000006,
    $00000007, $00000008, $00000009, $0000000A, $0000000B, $0000000C,
    $0000000D, $0000000E, $0000000F, $00000010);
  CControlData: TControlData2 = (
    ClassID: '{2D360200-FFF5-11D1-8D03-00A0C959BC0A}';
    EventIID: '{588D5040-CF28-11D1-8CD3-00A0C959BC0A}';
    EventCount: 16;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil (*HR:$80004002*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnDocumentComplete) - Cardinal(Self);
end;

procedure TDHTMLEdit.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IDHTMLEdit;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TDHTMLEdit.GetControlInterface: IDHTMLEdit;
begin
  CreateControl;
  Result := FIntf;
end;

function TDHTMLEdit.Get_DOM: IHTMLDocument2;
begin
    Result := DefaultInterface.DOM;
end;

function TDHTMLEdit.ExecCommand(cmdID: DHTMLEDITCMDID; cmdexecopt: OLECMDEXECOPT): OleVariant;
begin
  Result := DefaultInterface.ExecCommand(cmdID, cmdexecopt, EmptyParam);
end;

function TDHTMLEdit.ExecCommand(cmdID: DHTMLEDITCMDID; cmdexecopt: OLECMDEXECOPT; 
                                var pInVar: OleVariant): OleVariant;
begin
  Result := DefaultInterface.ExecCommand(cmdID, cmdexecopt, pInVar);
end;

function TDHTMLEdit.QueryStatus(cmdID: DHTMLEDITCMDID): DHTMLEDITCMDF;
begin
  Result := DefaultInterface.QueryStatus(cmdID);
end;

procedure TDHTMLEdit.SetContextMenu(var menuStrings: OleVariant; var menuStates: OleVariant);
begin
  DefaultInterface.SetContextMenu(menuStrings, menuStates);
end;

procedure TDHTMLEdit.NewDocument;
begin
  DefaultInterface.NewDocument;
end;

procedure TDHTMLEdit.LoadURL(const url: WideString);
begin
  DefaultInterface.LoadURL(url);
end;

function TDHTMLEdit.FilterSourceCode(const sourceCodeIn: WideString): WideString;
begin
  Result := DefaultInterface.FilterSourceCode(sourceCodeIn);
end;

procedure TDHTMLEdit.Refresh;
begin
  DefaultInterface.Refresh;
end;

procedure TDHTMLEdit.LoadDocument(var pathIn: OleVariant);
begin
  DefaultInterface.LoadDocument(pathIn, EmptyParam);
end;

procedure TDHTMLEdit.LoadDocument(var pathIn: OleVariant; var promptUser: OleVariant);
begin
  DefaultInterface.LoadDocument(pathIn, promptUser);
end;

procedure TDHTMLEdit.SaveDocument(var pathIn: OleVariant);
begin
  DefaultInterface.SaveDocument(pathIn, EmptyParam);
end;

procedure TDHTMLEdit.SaveDocument(var pathIn: OleVariant; var promptUser: OleVariant);
begin
  DefaultInterface.SaveDocument(pathIn, promptUser);
end;

procedure TDHTMLEdit.PrintDocument;
begin
  DefaultInterface.PrintDocument(EmptyParam);
end;

procedure TDHTMLEdit.PrintDocument(var withUI: OleVariant);
begin
  DefaultInterface.PrintDocument(withUI);
end;

procedure TDHTMLSafe.InitControlData;
const
  CEventDispIDs: array [0..15] of DWORD = (
    $00000001, $00000002, $00000003, $00000004, $00000005, $00000006,
    $00000007, $00000008, $00000009, $0000000A, $0000000B, $0000000C,
    $0000000D, $0000000E, $0000000F, $00000010);
  CControlData: TControlData2 = (
    ClassID: '{2D360201-FFF5-11D1-8D03-00A0C959BC0A}';
    EventIID: '{D1FC78E8-B380-11D1-ADC5-006008A5848C}';
    EventCount: 16;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil (*HR:$80004002*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnDocumentComplete) - Cardinal(Self);
end;

procedure TDHTMLSafe.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IDHTMLSafe;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TDHTMLSafe.GetControlInterface: IDHTMLSafe;
begin
  CreateControl;
  Result := FIntf;
end;

function TDHTMLSafe.Get_DOM: IHTMLDocument2;
begin
    Result := DefaultInterface.DOM;
end;

function TDHTMLSafe.ExecCommand(cmdID: DHTMLEDITCMDID; cmdexecopt: OLECMDEXECOPT): OleVariant;
begin
  Result := DefaultInterface.ExecCommand(cmdID, cmdexecopt, EmptyParam);
end;

function TDHTMLSafe.ExecCommand(cmdID: DHTMLEDITCMDID; cmdexecopt: OLECMDEXECOPT; 
                                var pInVar: OleVariant): OleVariant;
begin
  Result := DefaultInterface.ExecCommand(cmdID, cmdexecopt, pInVar);
end;

function TDHTMLSafe.QueryStatus(cmdID: DHTMLEDITCMDID): DHTMLEDITCMDF;
begin
  Result := DefaultInterface.QueryStatus(cmdID);
end;

procedure TDHTMLSafe.SetContextMenu(var menuStrings: OleVariant; var menuStates: OleVariant);
begin
  DefaultInterface.SetContextMenu(menuStrings, menuStates);
end;

procedure TDHTMLSafe.NewDocument;
begin
  DefaultInterface.NewDocument;
end;

procedure TDHTMLSafe.LoadURL(const url: WideString);
begin
  DefaultInterface.LoadURL(url);
end;

function TDHTMLSafe.FilterSourceCode(const sourceCodeIn: WideString): WideString;
begin
  Result := DefaultInterface.FilterSourceCode(sourceCodeIn);
end;

procedure TDHTMLSafe.Refresh;
begin
  DefaultInterface.Refresh;
end;

class function CoDEInsertTableParam.Create: IDEInsertTableParam;
begin
  Result := CreateComObject(CLASS_DEInsertTableParam) as IDEInsertTableParam;
end;

class function CoDEInsertTableParam.CreateRemote(const MachineName: string): IDEInsertTableParam;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DEInsertTableParam) as IDEInsertTableParam;
end;

class function CoDEGetBlockFmtNamesParam.Create: IDEGetBlockFmtNamesParam;
begin
  Result := CreateComObject(CLASS_DEGetBlockFmtNamesParam) as IDEGetBlockFmtNamesParam;
end;

class function CoDEGetBlockFmtNamesParam.CreateRemote(const MachineName: string): IDEGetBlockFmtNamesParam;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DEGetBlockFmtNamesParam) as IDEGetBlockFmtNamesParam;
end;

procedure Register;
begin
  RegisterComponents('ActiveX',[TDHTMLEdit, TDHTMLSafe]);
end;

end.
