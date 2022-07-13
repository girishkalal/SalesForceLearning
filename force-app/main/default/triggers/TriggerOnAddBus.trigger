trigger TriggerOnAddBus on Bus__c (After insert,after update ) {
    if(trigger.isAfter){
        if(trigger.isInsert||trigger.isUpdate){
            list<bus__c>ls=[select Name,BusType__c,Capacity__c from bus__c];
            if(ls.size()>10){
                
                    delete ls;
                
                  
                }
            }
        }
    }