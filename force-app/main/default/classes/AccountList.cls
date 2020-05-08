public class AccountList {

    public AccountList()
    {           
        List<Account> acc = new List<Account>();
        for (Account a : [select Id, Name from Account]){
            //acc = a.Name;
        }
        system.debug('sdfa'+ acc);
        system.debug('test');
        system.debug('new committ');
    }
}