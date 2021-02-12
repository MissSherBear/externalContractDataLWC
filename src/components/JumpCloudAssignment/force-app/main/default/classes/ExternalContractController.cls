public with sharing class ExternalContractController {
    @AuraEnabled(cacheable=true)
    public static List<External_Data__c> getExternalList(Id accId){
        system.debug('accId is: '+ accId);
        return [SELECT Id, Name FROM External_Data__c WHERE Account__c = :accId];
    }
    @AuraEnabled(cacheable=true)
    public static List<Contract_Data__c> getContractList(Id accId){
        system.debug('accId is: '+ accId);
        return [SELECT Id, Name, Review_Date__c FROM Contract_Data__c WHERE Account__c = :accId];
    }
}
    /* public static String getAccountRelatedRecords(Id account Id) {
        // Initializing the response string
        String response = '';
        // Making a new instance of wrapper class
                ResponseJSONWrapper wrapper = new ResponseJSONWrapper(); 
                // Getting the account list according to the account id
		List<Account> accountList = [SELECT Name FROM Account WHERE Id=:accountId];
        // Forming the account object and setting the wrapper fields
        if(accountList!=null && accountList.size()>0) {
			Account accountObj = accountList.get(0);
            wrapper.id = accountObj.Id;
            wrapper.name = accountObj.Name;
        }
                // Getting the external data list related to the account
        List<External_Data__c> externalList = [SELECT Id, Name FROM External_Data__c WHERE AccountId =:accountId];
        // Getting the contract data list related to the account
        List<Contract_Data__c> contractList = [SELECT Id, Name, Review_Date__c FROM Contract_Data__c WHERE AccountId =:accountId];
        // Setting the external data list and contract data list in wrapper
        wrapper.externalList = externalList;
        wrapper.contractList = contractList;
        // Converting the wrapper into JSON string and sending as a response 
        response = JSON.serialize(wrapper);
        return response;
    } 
    
    // Response JSON Wrapper Class
    public class ResponseJSONWrapper {
        public Id id;
        public String name;
        public List<External_Data__c> externalList;
        public List<Contract_Data__c> contractList;
    }       
 

} */
