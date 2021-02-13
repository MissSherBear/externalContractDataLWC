@istest
private class ExternalContractControllerTest {
    @istest
    static void testBehavior() {

        account a = new account();
        a.Name = 'Banana Peels Incorporated';
        insert a;

        External_Data__c e = new External_Data__c();
        e.Account__c = a.Id;
        insert e;

        Contract_Data__c c = new Contract_Data__c();
        c.Account__c = a.Id;
        insert c;
        
        Test.startTest();
        System.assertNotEquals(null, ExternalContractController.getExternalList(a.Id));
        System.assertNotEquals(null, ExternalContractController.getContractList(a.Id));
        Test.stopTest();
        

    }
}
