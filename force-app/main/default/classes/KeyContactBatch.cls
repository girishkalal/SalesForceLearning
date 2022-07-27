Global class KeyContactBatch Implements Database.Batchable<Sobject>{
    global Database.QueryLocator Start(Database.BatchableContext Db){
        List<String> recordTypeList=new list<String>{'Prospect','Ignite','Sales'};
            Return Database.getQueryLocator([select ID,name,type__c,email__c,Notification__c from KeyContact__c WHERE type__c IN :recordTypeList AND Notification__c=false]); 
    }
    global void execute(Database.BatchableContext Db,List<KeyContact__c> KeyContactList){
        list<string>toAddress=new list<string>();
        for(keyContact__c kc:KeyContactList){
            kc.Notification__c=true;
            toAddress.add(kc.Email__c);
        }
        update KeyContactList;
        Messaging.SingleEmailMessage mail= new Messaging.SingleEmailMessage();
        mail.setToAddresses(toAddress);
        mail.setSubject(' your Account checked ');
        mail.setPlainTextBody('this is regarding your Account of KeyContact created and checked');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail}); 
    }
    Global void finish(Database.BatchableContext Db){
        
        
    }
}