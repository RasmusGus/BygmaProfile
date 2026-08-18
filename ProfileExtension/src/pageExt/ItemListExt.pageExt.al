pageextension 50502 "Item List Extension" extends "Item List"
{

    layout
    {
        addafter("Gen. Prod. Posting Group")
        {
            field("Profit Item Group Code"; Rec."ERPg Profit Item Group Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the profit group for the item.';
            }
        }
    }

}