query 50530 "Top 10 Customers"
{
    QueryType = API;
    APIPublisher = 'DemoAPIPublisher';
    APIGroup = 'app1';
    APIVersion = 'v1.0';
    EntityName = 'Top5Customers';
    EntitySetName = 'Top5Customers';
    TopNumberOfRows = 10;
    QueryCategory = 'Customer List';
    Caption = 'Top 10 Customers';
    OrderBy = descending(Total_Sales_Amount);

    elements
    {
        dataitem(Customer; Customer)
        {
            column(No; "No.")
            {
                Caption = 'No', Locked = true;
            }
            column(Name; Name)
            {
                Caption = 'Name', Locked = true;
            }
            column(Email; "E-Mail")
            {
                Caption = 'Email', Locked = true;
            }
            dataitem(Cust_Ledger_Entry; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = Customer."No.";
                SqlJoinType = LeftOuterJoin;
                DataItemTableFilter = "Document Type" = FILTER(Invoice | "Credit Memo");
                column(Total_Sales_Amount; "Sales (LCY)")
                {
                    Caption = 'Total_Sales_Amount', Locked = true;
                    Method = Sum;
                }
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}