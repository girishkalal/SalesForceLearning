public class Contact_Handler {
    public static List<Account> Count(List<Contact>newlist)
    {
        //set is created for store the uniqe value from newlist
        Set<Id> setId=new Set<Id>();
        if(!newlist.isEmpty()){
            for(Contact c:newlist)
            {
                setId.add(c.AccountId);
            }
        }
        List<Account>accounts=[SELECT Id ,no_of_contact__c,(SELECT Id FROM Contacts)FROM Account WHERE Id in :setId]; 
        RETURN accounts;
    }
    
    //inserting the record and updating the record
    public static void countContacts(List<Contact> newlist){
        List<Account> accounts=count(newlist);
        List<Contact> ls=new List<Contact>();
        for(Account acc:accounts){
            acc.no_of_contact__c=acc.Contacts.size();
            ls.addAll(acc.contacts);
            
        }
        UPDATE accounts;
    }
    
    //deleting the record
    
    public static void countDelete(List<Contact> newlist)
    { 
        List<Account> accounts=count(newlist);
        List<Account> UpdateAccountList=new List<Account>();
        for(Account obj:accounts){
            obj.no_of_contact__c=obj.Contacts.size();
            UpdateAccountList.add(obj);
        }
        UPDATE UpdateAccountList;  
    }
    
    //before insert we checking the record
    
    public static void countCheck(List<Contact> newlist){
        List<Account> accounts=count(newlist);
        List<Contact> ls=new List<Contact>();
        for(Account acc:accounts){
            if( acc.no_of_contact__c>=3){
                ls.addAll(acc.contacts);
            }
        }
        DELETE ls;   
    }
}