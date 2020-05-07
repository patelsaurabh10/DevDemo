@isTest
public class TestRestrictContactByName {

    @isTest static void RestrictContactByName()
    {
    	Contact con = new contact(LastName= 'INVALIDNAME');
    	insert con;
    }
}