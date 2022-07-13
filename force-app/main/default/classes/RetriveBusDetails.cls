public class RetriveBusDetails {
public Static void displayBus(){
        list<Bus__c> ls=new list<Bus__c>();
        Integer count=0;
        ls=[select Name,BusType__c,Capacity__c from Bus__c];
        for(Bus__c bus:ls){
        
            
            count++;
        }
        System.debug(count);
    }
}