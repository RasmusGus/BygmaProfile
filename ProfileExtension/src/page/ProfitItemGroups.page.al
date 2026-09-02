/// <summary>
/// Profit Item Groups
/// </summary>
page 50500 "Profit Item Groups"
{


    PageType = List;
    SourceTable = "Profit Item Group";
    Caption = 'Profit Item Groups';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                }

                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            group("Customer Salesperson List")
            {
                Caption = 'Customer Salesperson List';

                action("Customer Salespersons")
                {
                    Caption = 'Customer Salesperson List';
                    ApplicationArea = All;
                    Image = CustomerList;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    RunObject = Page "Customer Salesperson List";
                }
            }
        }
    }

}