public class DeleteBusContent {
    public Static void deletebs(){
        list<Bus__c> ls=[select Name,BusType__c,Capacity__c from Bus__c];
        
            delete ls;
        
       
    } 
}