/// <summary>
/// Addition to Item
/// </summary>
tableextension 50500 "Item Extension" extends Item
{
    fields
    {
        field(50500; "ERPg Profit Item Group Code"; Code[10])
        {
            Caption = 'Profit Item Group Code';
            DataClassification = CustomerContent;
            TableRelation = "Profit Item Group".Code;
        }
    }
}