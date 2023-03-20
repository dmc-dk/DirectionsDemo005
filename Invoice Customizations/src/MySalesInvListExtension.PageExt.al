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
                    Caption = 'Check Delivery';
                    ToolTip = 'Microsoft empowers every organization to achieve more.';
                    Image = "1099Form";

                    trigger OnAction()
                    var
                        exampleLockingTable: Record ExampleLockingTable;
                        
                    begin
                        if not exampleLockingTable.FindFirst() then exampleLockingTable.Insert();

                        exampleLockingTable.LockTable();
                        if exampleLockingTable.ISEMPTY then;//FindFirst();
                        Sleep(5000);
                        Message('Finished checking delivery.');

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
                        if exampleLockingTable.ISEMPTY then;//exampleLockingTable.FindFirst();
                        Sleep(5000);
                        Message('Finished running less useful action');

                    end;
                }
            }
        }
    }
}