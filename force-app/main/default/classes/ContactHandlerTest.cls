@isTest
public class ContactHandlerTest {
    @isTest
    static void testToAllTriggers(){
        //created an Account Object named as an test
        Account objAcc= new Account();
        objAcc.Name='test';
        INSERT objAcc;
        
        //creating an Contact Object and inserting 
        Contact objCon1=new Contact();
        objCon1.LastName='sdfghjk';
        objCon1.AccountId=objAcc.Id;
        INSERT objCon1;
        
        
        Contact objCon2=new Contact();
        objCon2.LastName='sdfghjk';
        objCon2.AccountId=objAcc.Id;
        INSERT objCon2;
        
        
        Contact objCon3=new Contact();
        objCon3.LastName='sdfghjk';
        objCon3.AccountId=objAcc.Id;
        INSERT objCon3;
        
        Contact objCon4=new Contact();
        objCon4.LastName='sdfghjk';
        objCon4.AccountId=objAcc.Id;
        INSERT objCon4;
        
        Contact objCon5=new Contact();
        objCon5.LastName='sdfghjk';
        objCon5.AccountId=objAcc.Id;
        INSERT objCon5;
        
        Contact objCon6=new Contact();
        objCon6.LastName='sdfghjk';
        objCon6.AccountId=objAcc.Id;
        INSERT objCon6;
        
        
        Contact objCon7=new Contact();
        objCon7.LastName='sdfghjk';
        objCon7.AccountId=objAcc.Id;
        INSERT objCon7;
        
        Contact objCon8=new Contact();
        objCon8.LastName='sdfghjk';
        objCon8.AccountId=objAcc.Id;
        INSERT objCon8;
        
        Contact objCon10=new Contact();
        objCon10.LastName='sdfghjk';
        objCon10.AccountId=objAcc.Id;
        INSERT objCon10;
        
        Contact objCon11=new Contact();
        objCon11.LastName='sdfghjk';
        objCon11.AccountId=objAcc.Id;
        INSERT objCon11;
        
        Contact objCon9=new Contact();
        objCon9.LastName='sdfghjk1';
        objCon9.AccountId=objAcc.Id;
        INSERT objCon9;
        
        //creating an Contact List  to deleting an Particular Cantact from an account
        List<contact> deleteConatct=[SELECT id FROM contact WHERE AccountId=:objAcc.Id AND Lastname='sdfghjk1'];
        DELETE deleteConatct;
        
        
        //creating contact List to count the remaining contact 
        List<contact> contacts=[SELECT id FROM contact WHERE AccountId=:objAcc.Id];
        System.assertEquals(1,contacts.size());
    }
}