public class CreateTaskFromNewContact {
    public static void createTask(list<Contact> conlist){
        list<task> taskList=new list<task>();
        
        for(Contact con:conlist){
            //string conid=con.Id;
            string accid= con.AccountId;
            Account acc= [select industry, name, id from Account where id=:accid limit 1];
            if(acc.Industry=='Banking'){
                Task tNew= new Task(
                    subject='Follow up with '+con.LastName,
                    whoId=con.Id,
                    ActivityDate =system.now().date()+2
                );
                taskList.add(tNew);
            }
        }
        
        if (!conlist.isempty())
            insert taskList;
    }
    
}