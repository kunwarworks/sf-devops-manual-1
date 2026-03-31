public class CreateRelatedContact {
    public static void createCon1(list<Account> acclist){
        list<Contact> conlist=new list<Contact>();
        
        for(Account acc:acclist){
            Contact con =new Contact(LastName=acc.Name, AccountId=acc.Id);
            conlist.add(con);
        }
        if (conlist.isEmpty()==false)
        insert conlist;
        
    }

}