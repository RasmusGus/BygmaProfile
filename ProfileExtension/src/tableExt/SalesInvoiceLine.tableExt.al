/// <summary>
/// Addition to Sales Invoice Line
/// </summary>
tableextension 50502 "Sales Invoice Line Extension" extends "Sales Invoice Line"
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