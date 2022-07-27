public class Contact_before {
    public static void countCheck(List<Contact> newlist){
        Set<id> setId=new Set<id>();
        if(newlist!=null){
            for(Contact c:newlist)
            {
                setId.add(c.accountId);
            }
        }
        list<Account>accounts=[select Id ,no_of_contact__c,(select Id from Contacts)from Account where Id in :setId];
        list<Contact> ls=new List<Contact>();
        for(Account acc:accounts){
            if( acc.no_of_contact__c==5){
            ls.addAll(acc.contacts);
            }
        }
        delete ls;
        
    }
}