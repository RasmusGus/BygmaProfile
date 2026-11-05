pageextension 50505 "SalesOrder DimAssistEdit" extends "Sales Order"
{
    layout
    {
        modify("Shortcut Dimension 1 Code")
        {
            trigger OnAssistEdit()
            begin
                OpenDimensionValues(1);
            end;
        }
        modify("Shortcut Dimension 2 Code")
        {
            trigger OnAssistEdit()
            begin
                OpenDimensionValues(2);
            end;
        }
    }

    local procedure OpenDimensionValues(ShortcutDimNo: Integer)
    var
        GLSetup: Record "General Ledger Setup";
        DimValue: Record "Dimension Value";
        DimValueList: Page "Dimension Values";
        DimCode: Code[20];
    begin
        GLSetup.Get();
        case ShortcutDimNo of
            1:
                DimCode := GLSetup."Shortcut Dimension 1 Code";
            2:
                DimCode := GLSetup."Shortcut Dimension 2 Code";
        end;

        if DimCode = '' then
            exit;

        DimValue.SetRange("Dimension Code", DimCode);
        DimValueList.SetTableView(DimValue);
        DimValueList.Editable(true);
        DimValueList.LookupMode(true);

        if DimValueList.RunModal() = Action::LookupOK then begin
            DimValueList.GetRecord(DimValue);
            case ShortcutDimNo of
                1:
                    Rec.Validate("Shortcut Dimension 1 Code", DimValue.Code);
                2:
                    Rec.Validate("Shortcut Dimension 2 Code", DimValue.Code);
            end;
            CurrPage.Update(true);
        end;
    end;
}