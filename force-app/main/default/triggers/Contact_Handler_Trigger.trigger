trigger Contact_Handler_Trigger on Contact(Before insert,After insert,After delete,After update) {
    if(trigger.isAfter){
        
        if(trigger.isInsert || Trigger.isUpdate)
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