codeunit 50509 "Sales Invoice Subscriber"
{
    [EventSubscriber(ObjectType::Page, Page::"Sales Invoice", 'OnOpenPageEvent', '', false, false)]
    local procedure SalesInvoiceOnOpenPage()
    begin
        ProcessSalesInvoice();
    end;

    local procedure ProcessSalesInvoice()
    var
        t: Text;
        startTime: DateTime;
    begin
        //Code to Warp Time and Space
        /*         startTime := CurrentDateTime();
                while ((CurrentDateTime() - startTime) < 7000) do
                    t += '0'; */
    end;
}