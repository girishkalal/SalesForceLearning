public class AddBus {
    public Static void display(){
        list<Bus__c> b=new list<Bus__c>();
        
        for(Integer i=1;i<=5;i++){
            
            bus__c b1=new bus__c();
            b1.Name ='Test'+i;
    b1.BusType__c ='wert'+i;
    b1.Capacity__c = 4+i;
            b.add(b1);
      if(b.size()<10){      
		insert b1;
        }
            else{
                delete b;
                break;
            }
        }


     //   list<Bus__c> ls=new list<Bus__c>();
     //   ls=[select Name,BusType__c,Capacity__c from Bus__c];
      //  for(Bus__c bus:ls){
        
//            System.debug(bus);
      //  }
        
}
    }