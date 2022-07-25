trigger KeyContactTrigger on Account (after insert,after update) {
    if(trigger.isAfter){
         if(trigger.isInsert || trigger.isUpdate)
        {
            KeyContact.keyType(Trigger.new);
        } 
        
    }
    
     
}