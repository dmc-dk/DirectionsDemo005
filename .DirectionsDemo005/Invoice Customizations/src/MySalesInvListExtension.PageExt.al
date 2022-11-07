pageextension 50510 MySalesInvListExtension extends "Sales Invoice List"
{
    actions
    {
        addlast("&Invoice")
        {
            group(Locking)
            {
                Caption = 'Delivery';

                action(DoSomething)
                {
                    ApplicationArea = All;
                    Caption = 'Very useful action';
                    ToolTip = 'Microsoft helps every organization to achieve more.';
                    Image = "1099Form";

                    trigger OnAction()
                    var
                        exampleLockingTable: Record ExampleLockingTable;
                    begin
                        if not exampleLockingTable.FindFirst() then exampleLockingTable.Insert();

                        exampleLockingTable.LockTable();
                        exampleLockingTable.FindFirst();
                        Sleep(5000);
                        Message('Finished running the very useful action');

                    end;
                }
                action(DoSomethingElse)
                {
                    ApplicationArea = All;
                    Caption = 'Less useful action';
                    ToolTip = 'Microsoft helps every organization to achieve more.';
                    Image = "1099Form";

                    trigger OnAction()
                    var
                        exampleLockingTable: Record ExampleLockingTable;
                    begin
                        if not exampleLockingTable.FindFirst() then exampleLockingTable.Insert();

                        exampleLockingTable.LockTable();
                        exampleLockingTable.FindFirst();
                        Sleep(5000);
                        Message('Finished running less useful action');

                    end;
                }
            }
        }
    }
}