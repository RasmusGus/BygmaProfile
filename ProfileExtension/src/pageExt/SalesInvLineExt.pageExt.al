
/// <summary>
/// Extending Sales Invoice Line
/// </summary>
pageextension 50504 "Sales Invoice Line Extension" extends "Posted Sales Invoice Subform"
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