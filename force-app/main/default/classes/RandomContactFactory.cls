public class RandomContactFactory {
    
    public static List<Contact>generateRandomContacts(Integer noOfContacts, String lastName)
    {
        List<Contact> conList = new List<Contact>();
        for (Integer i = 0; i < noOfContacts; i++)
        {
            Contact con = new Contact(FirstName = 'Test' + i, LastName = lastName);
            conList.add(con);
        }
        return conList;
    }

}