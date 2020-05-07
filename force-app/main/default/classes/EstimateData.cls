public class EstimateData {
	
    @AuraEnabled
    public static list<Shail_Estimate__c> getEstimateData(){
        return [select Id,Name,Status__c,Estimate_Name__c,Business__c,CreatedDate,LastModifiedDate,LastModifiedBy.Name,CreatedBy.Name from Shail_Estimate__c where CreatedDate = LAST_N_DAYS:365 AND CreatedBy.Name=:UserInfo.getUserName() And (Status__c='Draft' or Status__c='Processing')];
    }
    
    @AuraEnabled
    public static Shail_Estimate__c getEstimateCardData(Id Identifier){
        return [select Id,Name,Status__c,Estimate_Name__c,Business__c,CreatedDate,LastModifiedDate,LastModifiedBy.Name,CreatedBy.Name from Shail_Estimate__c where Id=:Identifier];
    }
}