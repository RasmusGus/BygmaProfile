
/// <summary>
/// Extending Sales Line
/// </summary>
pageextension 50503 "Sales Line Extension" extends "Sales Order Subform"
{
    layout
    {
        addafter(Description)
        {
            field("ERPg Salesperson Code"; Rec."ERPg Salesperson Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the salesperson for the line.';
                Editable = false;
            }
        }
    }

}