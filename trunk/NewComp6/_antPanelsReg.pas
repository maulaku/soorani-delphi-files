{******************************************************************************}
{**                                                                          **}
{**  antPanels components set registration routines.                         **}
{**                                                                          **}
{**  Author:    KARPOLAN                                                     **}
{**  E-Mail:    karpolan@yahoo.com , karpolan@utilmind.com                   **}
{**  Home Page: http://karpolan.i.am, http://www.utilmind.com                **}
{**  Copyright © 1996-99 by KARPOLAN.                                        **}
{**  Copyright © 1999, UtilMind Solutions.                                   **}
{**                                                                          **}
{******************************************************************************}
{**  History:                                                                **}
{**                                                                          **}
{**  31 aug 1999 - Last modified... Prepared for public release.             **}
{******************************************************************************}
Unit _antPanelsReg;

{$Include antPanels.inc}

Interface

Procedure Register;

{##############################################################################}
{******************************************************************************}
{##############################################################################}
Implementation
{##############################################################################}
{******************************************************************************}
{##############################################################################}
{$R antPanels.res}
Uses
  Classes,
{$IfDef Delphi}
  antDatePanel,
{$EndIf Delphi}
  antMovablePanel,
  dxfDesigner, MDIWallp;

Procedure Register;
Begin
{** antMovablePanel unit **}
  RegisterComponents('Majid', [TantMovablePanel]);

{**  dxfDesigner unit **}

  RegisterComponents('Majid', [TdxfDesigner]);
  RegisterComponents('Majid', [TMDIWallpaper]);

{$IfDef Delphi}
{** antDatePanel unit **}
  RegisterComponents('Majid', [TantDatePanel]);
{$EndIf Delphi}
End;{Procedure Register}

END{Unit _antPanelsReg}.
