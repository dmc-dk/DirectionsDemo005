table 50520 ExampleLockingTable
{
    fields
    {
        field(1; Id; Integer)
        {
            AutoIncrement = true;
        }
    }

    keys
    {
        key(Key1; Id)
        {
            Clustered = true;
        }
    }
}