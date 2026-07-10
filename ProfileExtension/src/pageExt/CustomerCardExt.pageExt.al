/// <summary>
/// Extending Customer Card
/// </summary>
pageextension 50500 "Customer Card Extension" extends "Customer Card"
{

    actions
    {
        addlast(processing)
        {
            action(CustomerSalesperson)
            {
                Caption = 'Customer Salesperson';
                RunObject = page "Customer Salespersons";
                RunPageLink = "Customer No." = field("No.");
                ApplicationArea = All;
                Image = Link;
                Promoted = true;
                PromotedCategory = Process;
            }
        }
    }

}