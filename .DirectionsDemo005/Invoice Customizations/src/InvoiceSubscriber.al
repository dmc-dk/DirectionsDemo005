codeunit 50509 "Sales Invoice Subscriber"
{
    [EventSubscriber(ObjectType::Page, Page::"Sales Invoice", 'OnOpenPageEvent', '', false, false)]
    local procedure SalesInvoiceOnOpenPage()
    begin
        ProcessSalesInvoice(); // emulate processing on open page (e. g. loading additional groups etc.)
    end;

    local procedure ProcessSalesInvoice()
    begin
        Sleep(5000);
        //ToDo: remove to improve performance
    end;
}