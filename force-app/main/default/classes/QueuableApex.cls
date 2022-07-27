public class QueuableApex implements Queueable{
    public void execute(QueueableContext qt){
       // List<Account> AccountsList=[select id,name from Account where];
        List<Contact> ConList=[select id ,name from contact where Account.Id=null];     
        system.debug('   '+ConList);
    }
}