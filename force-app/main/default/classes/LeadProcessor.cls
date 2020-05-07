global class LeadProcessor implements Database.Batchable<sObject>, Database.stateful {
    global Integer recordsProcessed = 0;
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('Select Id, LeadSource from Lead');
    }
    
    global void execute(Database.BatchableContext bc, List<Lead> scope)
    {           
        for (Lead l : scope)
        {
            l.LeadSource = 'Dreamforce';
        }
        if (scope.size() > 0)
        {
            update scope;
        }
        
    }
    
    global void finish(Database.BatchableContext bc)
    {
    	System.debug(recordsProcessed + ' records processed. Shazam!');
        AsyncApexJob job = [SELECT Id, Status, NumberOfErrors, 
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :bc.getJobId()];
        // call some utility to send email
        //EmailUtils.sendMessage(job, recordsProcessed);
    }

}