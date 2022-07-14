public class Contact_Handler {
    public static list<Account> count(list<Contact> newlist)
    {
        Set<id> setId=new Set<id>();
        if(newlist!=null){
            for(Contact c:newlist)
            {
                setId.add(c.accountId);
            }
        }
        list<Account>accounts=[select Id ,no_of_contact__c,(select Id from Contacts)from Account where Id in :setId]; 
        return accounts;
    }
    
    //inserting the record and updating the record
    public static void countContacts(List<Contact> newlist){
        list<Account> accounts=count(newlist);
        list<Contact> ls=new List<Contact>();
        for(Account acc:accounts){
            acc.no_of_contact__c=acc.Contacts.size();
            ls.addAll(acc.contacts);
            
        }
        update accounts;
    }
    
    //deleting the record
    
    public static void countDelete(List<Contact> newlist)
    { 
        list<Account> accounts=count(newlist);
        List<Account> UpdateAccountList=new List<Account>();
        for(Account obj:accounts){
            obj.no_of_contact__c=obj.Contacts.size();
            UpdateAccountList.add(obj);
        }
        UPDATE UpdateAccountList; 
        
    }
    
    //before insert we checking the record
    
    public static void countCheck(List<Contact> newlist){
        list<Account> accounts=count(newlist);
        list<Contact> ls=new List<Contact>();
        for(Account acc:accounts){
            if( acc.no_of_contact__c>=3){
                ls.addAll(acc.contacts);
            }
        }
        delete ls;
        
    }
    
    
    
}