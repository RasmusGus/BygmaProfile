/// <summary>
/// Management of Event Subscribers
/// </summary>
codeunit 50500 EventSubscribers
{

    // [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'No.', false, false)]
    // local procedure SalesLine_OnAfterValidate_No(var Rec: Record "Sales Line"; var xRec: Record "Sales Line"; CurrFieldNo: Integer)
    // var
    //     Item: Record Item;
    //     CustomerSalesperson: Record "Customer Salesperson";
    // begin
    //     if Rec.Type <> Rec.Type::Item then
    //         exit;
    //     if (Rec."No." <> '') and (Rec."No." <> xRec."No.") then begin
    //         Item.Get(Rec."No.");
    //         if Item."ERPg Profit Item Group Code" <> '' then begin
    //             if CustomerSalesperson.Get(Rec."Bill-to Customer No.", Item."ERPg Profit Item Group Code") then
    //                 Rec.Validate("ERPg Salesperson Code", CustomerSalesperson."Salesperson Code");
    //         end;
    //     end;
    // end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeInsertValueEntry', '', false, false)]
    local procedure OnBeforeInsertValueEntry(var ValueEntry: Record "Value Entry"; ItemJournalLine: Record "Item Journal Line"; var ItemLedgerEntry: Record "Item Ledger Entry")
    var
        Item: Record Item;
        CustomerSalesperson: Record "Customer Salesperson";
    begin
        Item.Get(ValueEntry."Item No.");
        if Item."ERPg Profit Item Group Code" <> '' then begin
            if (ValueEntry."Source Type" = ValueEntry."Source Type"::Customer) and (ValueEntry."Source No." <> '') then begin
                if CustomerSalesperson.Get(ValueEntry."Source No.", Item."ERPg Profit Item Group Code") then
                    ValueEntry."Salespers./Purch. Code" := CustomerSalesperson."Salesperson Code";
            end;
        end;
    end;
}