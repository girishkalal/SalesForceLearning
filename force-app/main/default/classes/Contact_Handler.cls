public class Contact_Handler {
    
    public static void countContacts(List<Contact> newlist){
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
            acc.no_of_contact__c=acc.Contacts.size();
            ls.addAll(acc.contacts);
            if(acc.Contacts.size()>5){
                acc.no_of_contact__c=0;
            }
            
        }
        if(ls.size()>5){
            delete ls;
        }
        
        update accounts;
        
        
    }
}