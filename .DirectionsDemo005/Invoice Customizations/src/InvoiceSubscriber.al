codeunit 50509 "Sales Invoice Subscriber"
{
    [EventSubscriber(ObjectType::Page, Page::"Sales Invoice", 'OnOpenPageEvent', '', false, false)]
    local procedure SalesInvoiceOnOpenPage()
    begin
        ProcessSalesInvoice(); // emulate processing on open page (e. g. loading additional groups etc.)
    end;

    local procedure ProcessSalesInvoice()
    var
        t: Text;
        startTime: DateTime;
    begin
        //Code to warp Time and Space
        startTime := CurrentDateTime();
        while ((CurrentDateTime() - startTime) < 7000) do
            t += '0';
    end;
}