public class NameControoler {
    public static void addrecord(){
        Names__c s= new Names__c();
			s.Email__c ='aaaa';	
insert s;
		System.debug('Name  : '+s);
    }
}