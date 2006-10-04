unit OldComponent;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs
  ,Grids;

type
  TOldComponent = class(TComponent)
  private
    FActive : Boolean ;
    PActiveFormChange : procedure (Sender: TObject) of object;
    procedure ActiveFormChange(Sender: TObject);
    { Private declarations }
  protected
    MessageForm:TForm;
    StringGrid:TStringGrid;
    InsertRow:Integer;
    { Protected declarations }
  public
    procedure ShowMeMessage(FormName,FieldName,Text:String);
    procedure ShowMessage2(Text:String);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Public declarations }
  published
   Property Active : Boolean Read FActive write FActive;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('XP', [TOldComponent]);
end;

{ TOldComponent }

constructor TOldComponent.Create(AOwner: TComponent);
begin
  inherited;
  if(Not(csDesigning in ComponentState)) then
  begin
    PActiveFormChange:=Screen.OnActiveFormChange;
    Screen.OnActiveFormChange:=ActiveFormChange
  end;
end;

procedure TOldComponent.ActiveFormChange(Sender: TObject);
var
 i:integer;
 FForm:TForm;
begin
  if(Not(csDesigning in ComponentState)) then
  begin
    FForm:=Screen.ActiveForm;
    if(FForm=nil) then Exit;
    if(FActive) then
    begin
       for i:=0 to FForm.ComponentCount-1 do
       begin
         if(
           (FForm.Components[i].ClassName='TComboBox') or
           (FForm.Components[i].ClassName='TEdit') or
           (FForm.Components[i].ClassName='TButton')  or
           (FForm.Components[i].ClassName='TMaskEdit')
           )then
         begin
                 ShowMeMessage(FForm.Name,FForm.Components[i].Name,
                               'In Form '+FForm.Caption+' Please Replace With TRql'+
                               Copy(FForm.Components[i].ClassName,2, Length(FForm.Components[i].ClassName)));
         end;
       end;
    end;
    if(Assigned(PActiveFormChange))then
          PActiveFormChange(Sender);
  end;
end;

procedure TOldComponent.ShowMeMessage(FormName,FieldName,Text: String);
begin
  if(Not(csDesigning in ComponentState)) then
  begin
    if(MessageForm=nil) then
    begin
      MessageForm:=TForm.Create(Application);
      MessageForm.width:=Screen.Height;
      MessageForm.BorderIcons:=[];
      MessageForm.Show;
      StringGrid:=TStringGrid.Create(MessageForm);
      StringGrid.Parent := MessageForm ;
      StringGrid.Align := alClient;
      StringGrid.FixedCols:=0;
      StringGrid.FixedRows:=1;
      StringGrid.ColCount := 3 ;
      StringGrid.ColWidths[0]:=40;
      StringGrid.ColWidths[1]:=40;
      StringGrid.Options := [goColSizing,goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColMoving];
      StringGrid.RowCount := 2 ;
      InsertRow:=1;
    end;
    if(StringGrid<>nil) then
    begin
      StringGrid.ColWidths[2]:=MessageForm.Canvas.TextWidth(Text);
      StringGrid.Cells[0,InsertRow]:=FormName;
      StringGrid.Cells[1,InsertRow]:=FieldName;
      StringGrid.Cells[2,InsertRow]:=Text;
      Inc(InsertRow);
      StringGrid.RowCount := InsertRow+1 ;
    end;
  end;
end;

procedure TOldComponent.ShowMessage2(Text: String);
begin

end;

destructor TOldComponent.Destroy;
begin
  Screen.OnActiveFormChange:=PActiveFormChange;
  inherited;
end;

end.
