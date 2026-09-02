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
        field(4; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            FieldClass = FlowField;
            CalcFormula = Lookup(Customer.Name WHERE("No." = field("Customer No.")));
        }
        field(5; "Customer Address"; Text[100])
        {
            Caption = 'Customer Address';
            FieldClass = FlowField;
            CalcFormula = Lookup(Customer.Address WHERE("No." = field("Customer No.")));
        }
        field(6; "Customer City"; Text[100])
        {
            Caption = 'Customer City';
            FieldClass = FlowField;
            CalcFormula = Lookup(Customer.City WHERE("No." = field("Customer No.")));
        }
        field(7; "Customer Post Code"; Text[20])
        {
            Caption = 'Customer Post Code';
            FieldClass = FlowField;
            CalcFormula = Lookup(Customer."Post Code" WHERE("No." = field("Customer No.")));
        }
        field(8; "Customer Country/Region Code"; Text[20])
        {
            Caption = 'Customer Country Code';
            FieldClass = FlowField;
            CalcFormula = Lookup(Customer."Country/Region Code" WHERE("No." = field("Customer No.")));
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