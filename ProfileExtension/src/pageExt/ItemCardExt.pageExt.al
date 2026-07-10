pageextension 50501 "Item Card Extension" extends "Item Card"
{

    layout
    {
        addlast(Item)
        {
            field("Profit Item Group Code"; Rec."ERPg Profit Item Group Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the profit group for the item.';
            }
        }
    }

}