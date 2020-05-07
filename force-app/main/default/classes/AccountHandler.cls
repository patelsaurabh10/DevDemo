public class AccountHandler {
    
    public static Account insertNewAccount(String sName)
    {
        Account acc= new Account();
        acc.Name = sName;
        try
        {
            insert acc;
            return acc;
        }
        catch(Exception e)
        {
            return null;
        }
    }
}