permissionset 50500 "All"
{
    Access = Internal;
    Assignable = true;
    Caption = 'All permissions', Locked = true;

    Permissions =
         codeunit EventSubscribers = X,
         page "Customer Salespersons" = X,
         page "Profit Item Groups" = X,
         table "Customer Salesperson" = X,
         table "Profit Item Group" = X,
         tabledata "Customer Salesperson" = RIMD,
         tabledata "Profit Item Group" = RIMD;
}