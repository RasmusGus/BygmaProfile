/// <summary>
/// Customer Salespersons
/// </summary>
page 50501 "Customer Salespersons"
{
    PageType = List;
    SourceTable = "Customer Salesperson";
    Caption = 'Customer Salespersons';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Code"; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                }

                field(Description; Rec."Profit Item Group Code")
                {
                    ApplicationArea = All;
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}