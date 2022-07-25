global class AccountBatch implements Database.Batchable<sObject>{
    
    
     global Database.QueryLocator Start(Database.BatchableContext bw) {
         
        return Database.getQueryLocator([Select Website from Account]);
     }
     global void execute(Database.BatchableContext bw,List<Account> lList){
        for(Account l:lList){
            if(l.Website== null){
                l.Website='https://www.salesforce.com/in/?ir=1';
            }
        }
        UPDATE lList;

     }
     global void finish(Database.BatchableContext bw){
            Messaging.SingleEmailMessage mail= new Messaging.SingleEmailMessage();
            String [] toAddress= new String[]{'girish.mirjkar@gmail.com','logeshkumar.v98@gmail.com'}; 
            mail.setToAddresses(toAddress) ;
            mail.setSubject('batch job is completed');
            mail.setPlainTextBody('the job is started and completed successfully');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
     }
   
}