public class KeyContact {
    public static void keyType(List<Account> accountList){   
        list <Account> acc=[SELECT id, name, recordType.Name
                            FROM Account
                            WHERE Account.Id in : accountList];
        List<keyContact__c>keyCreate=new list<keyContact__c>();   
        for(Account ac:acc){
            if(ac.recordType.Name=='Prospect_Company'){
                keyCreate.add(new keyContact__c(AccountId__c=ac.id,Type__c='Prospect',name=ac.Name,FirstName__c=ac.Name)); 
                
            }
            else if(ac.recordType.Name=='Ignite_Company'){
                keyCreate.add(new keyContact__c(Type__c='Ignite',name=ac.Name,FirstName__c=ac.Name,AccountId__c=ac.id));  
                
            }
            else if(ac.recordType.Name=='Sales'){
                keyCreate.add(new keyContact__c(Type__c='Sales',name=ac.Name,FirstName__c=ac.Name,AccountId__c=ac.id));  
                
            }
            
        }
        
        INSERT keyCreate;
        
    }    
}