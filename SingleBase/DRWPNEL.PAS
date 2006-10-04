{
Copyright © 1998 by Delphi 4 Developer's Guide - Xavier Pacheco and Steve Teixeira
}
unit drwpnel;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;

type
  TddgDrawPanel = class(TPanel)
  private
    { Private declarations }
    FOnPaint: TNotifyEvent;
  protected
    { Protected declarations }
    procedure Paint; override;
  public
    { Public declarations }
    property Canvas;
  published
    { Published declarations }
    property OnPaint: TNotifyEvent read FOnPaint write FOnPaint;
  end;

implementation

procedure TddgDrawPanel.Paint;
begin
  inherited;
  if Assigned(FOnPaint) then FOnPaint(self);
end;

end.
