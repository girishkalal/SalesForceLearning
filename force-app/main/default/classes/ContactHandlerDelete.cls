public class ContactHandlerDelete 
{
    public static void countDelete(List<Contact> newlist)
    { 
        List<Account> UpdateAccountList=new List<Account>();
        set<id>sid=new set<id>();
        if(newlist!=null){
            for(Contact con:newlist){
                sid.add(con.accountID);
            }
        }
      //  System.debug('NEw List items '+newlist);
        list<Account>accounts= [SELECT Id,Name,no_of_contact__c,(Select Id from Contacts) from Account where Id IN: sid];
        for(Account obj:accounts){
            
            // System.debug('size  of contect '+obj.Contacts.size());
            obj.no_of_contact__c=obj.Contacts.size();
            
            UpdateAccountList.add(obj);
        }
       // System.debug('Account list item '+UpdateAccountList);
        UPDATE UpdateAccountList; 
        
    }
}