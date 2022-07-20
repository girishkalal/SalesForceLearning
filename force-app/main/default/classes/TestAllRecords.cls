@isTest
private class TestAllRecords { 
    @isTest
    static void testToAllTriggers(){
        //created an Account Object named as an test and Insrted
        Account objAcc= new Account();
        objAcc.Name='test';
        INSERT objAcc;
        
        
        //creating an Contact  Object and adding an each contact by itterating for loop
        List<contact> conList=new List<Contact>();
        for(Integer i=1;i<12;i++){
            conList.add(new Contact(LastName='asdf'+i , AccountId=objAcc.id));
        }
        INSERT conList;
        //creating an Contact List  to deleting an Particular Cantact from an account
        List<contact> deleteConatct=[select id from contact where Id=:objAcc.Id And Lastname='asdf11'];
        delete deleteConatct;
        //creating contact List to count the remaining contact 
        List<contact> Remaingcontacts=[select id from contact where Id=:objAcc.Id];
        system.assertEquals(2,Remaingcontacts.size());
    }
}