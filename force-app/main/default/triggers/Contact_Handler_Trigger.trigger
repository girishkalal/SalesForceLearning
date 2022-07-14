trigger Contact_Handler_Trigger on Contact(Before insert,After insert,After delete,After update,After undelete) {
    if(trigger.isAfter){
        
        if(trigger.isInsert || trigger.isUndelete || Trigger.isUpdate)
        {
            Contact_Handler.countContacts(Trigger.new);
        }
        
        if(trigger.isDelete || Trigger.isUpdate)
        {
            Contact_Handler.countDelete(Trigger.old);
        }   
        
    }
    
    if(trigger.isBefore){
        if(trigger.isInsert){
            Contact_Handler.countCheck(Trigger.new);
        }
    }
    
}