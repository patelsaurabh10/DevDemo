trigger AccountAddressTrigger on Account (before insert) {
    for(Account a : Trigger.New){
        if (a.Match_Billing_Address__c == true && a.BillingPostalCode != Null)
        {
            a.ShippingPostalCode = a.BillingPostalCode;
        }        
    }
}