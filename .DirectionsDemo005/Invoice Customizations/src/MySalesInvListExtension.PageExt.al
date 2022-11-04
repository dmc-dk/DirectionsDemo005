pageextension 50510 MySalesInvListExtension extends "Sales Invoice List"
{
    actions
    {
        addlast("&Invoice")
        {
            group(Locking)
            {
                Caption = 'Database locks';

                action(DoSomething)
                {
                    ApplicationArea = All;
                    Caption = 'Execute';

                    trigger OnAction()
                    var
                        exampleLockingTable: Record ExampleLockingTable;
                    begin
                        if not exampleLockingTable.FindFirst() then exampleLockingTable.Insert();

                        exampleLockingTable.LockTable();
                        exampleLockingTable.FindFirst();
                        Sleep(90000);
                        Message('Finished the action that locked the table for 35 seconds');

                    end;
                }
                action(DoSomethingElse)
                {
                    ApplicationArea = All;
                    Caption = 'Access Example Table';

                    trigger OnAction()
                    var
                        exampleLockingTable: Record ExampleLockingTable;
                    begin
                        if not exampleLockingTable.FindFirst() then exampleLockingTable.Insert();

                        exampleLockingTable.LockTable();
                        exampleLockingTable.FindFirst();
                        Sleep(1000);
                        Message('Finished the action that locked the table for 35 seconds');

                    end;
                }
            }
        }
    }
}