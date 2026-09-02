/// <summary>
/// Customer Salespersons
/// </summary>
page 50502 "Customer Salesperson List"
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
                    Caption = 'Customer No.';
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    Caption = 'Customer Name';
                    ApplicationArea = All;
                    Editable = false;
                    DrillDown = true;
                }
                field("Customer Address"; Rec."Customer Address")
                {
                    Caption = 'Customer Address';
                    ApplicationArea = All;
                    Editable = false;
                    DrillDown = false;
                }
                field("Customer Post Code"; Rec."Customer Post Code")
                {
                    Caption = 'Customer Post Code';
                    ApplicationArea = All;
                    Editable = false;
                    DrillDown = false;
                }
                field("Customer City"; Rec."Customer City")
                {
                    Caption = 'Customer City';
                    ApplicationArea = All;
                    Editable = false;
                    DrillDown = false;
                }
                field("Customer Country/Region Code"; Rec."Customer Country/Region Code")
                {
                    Caption = 'Customer Country/Region Code';
                    ApplicationArea = All;
                    Editable = false;
                    DrillDown = false;
                    Visible = false;
                }
                field(Description; Rec."Profit Item Group Code")
                {
                    Caption = 'Profit Item Group Code';
                    ApplicationArea = All;
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    Caption = 'Salesperson Code';
                    ApplicationArea = All;
                }
            }
        }
    }
}