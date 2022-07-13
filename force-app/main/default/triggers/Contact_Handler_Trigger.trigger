trigger Contact_Handler_Trigger on Contact(After insert,After delete,After update,After undelete) {
    if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUpdate|| trigger.isUndelete)
        {
            Contact_Handler.countContacts(Trigger.new);
        }
        if(trigger.isDelete)
        {
           // System.debug('old map '+Trigger.oldmap);
            ContactHandlerDelete.countDelete(Trigger.old);
        }   
        
    }
    
}