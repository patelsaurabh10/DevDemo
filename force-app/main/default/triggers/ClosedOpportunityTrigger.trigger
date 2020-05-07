trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    
    List<Task> taskList = new List<Task>();
    
	for (Opportunity o : [SELECT Id FROM Opportunity WHERE StageName = 'Closed Won' AND Id IN :Trigger.New] ) {
        switch on Trigger.operationType {
            when AFTER_INSERT {
                taskList.add(new Task(Subject = 'Follow Up Test Task', WhatId = o.Id));
            }
            when AFTER_UPDATE {
                taskList.add(new Task(Subject = 'Follow Up Test Task', WhatId = o.Id));
            }
        }
    }
    if (taskList.size() > 0)
    {
        insert taskList;
    }    
}