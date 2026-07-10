/// <summary>
/// Table to map the relation between Customers salespersons and the Profit Item Groups
/// </summary>
table 50501 "Customer Salesperson"
{
    Caption = 'Profit Item Group';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer."No.";
            DataClassification = CustomerContent;
        }
        field(2; "Profit Item Group Code"; Code[10])
        {
            Caption = 'Profit Item Group Code';
            TableRelation = "Profit Item Group".Code;
            DataClassification = CustomerContent;
        }
        field(3; "Salesperson Code"; Code[20])
        {
            Caption = 'Salesperson Code';
            TableRelation = "Salesperson/Purchaser".Code;
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Customer No.", "Profit Item Group Code")
        {
            Clustered = true;
        }
    }

}