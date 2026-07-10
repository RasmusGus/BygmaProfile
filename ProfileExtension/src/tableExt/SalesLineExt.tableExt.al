/// <summary>
/// Addition to Sales Line
/// </summary>
tableextension 50501 "Sales Line Extension" extends "Sales Line"
{
    fields
    {
        field(50500; "ERPg Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            DataClassification = CustomerContent;
            TableRelation = "Salesperson/Purchaser".Code;
        }
    }
}