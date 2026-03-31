public class UpdateTaskSubject {
    Public static void updateTask(list<Task> taskList){
        for(task tsk:taskList){
            System.debug('The old subject to current task is: '+tsk.Subject);
            
            if(!tsk.Subject.endsWith('Completed')&&tsk.Status=='Completed'){
                if(!tsk.Subject.endsWith('Needs attention'))
                    tsk.Subject=tsk.Subject+ ' is Completed';
                else{
                    Integer l1=tsk.subject.length();
                    tsk.Subject=tsk.Subject.left(l1-16);
                    tsk.Subject=tsk.Subject+ ' is Completed';
                }
            }
            else if(tsk.Status!='Completed'){
                if(tsk.Subject.endsWith(' Completed')){
                    Integer l1=tsk.subject.length();
                    tsk.Subject=tsk.Subject.left(l1-13);
                    tsk.Subject=tsk.Subject+ ' Needs attention';
                }
                else if(tsk.Subject.endsWith(' Needs attention')){
                    
                }
                else
                    tsk.Subject=tsk.Subject+ ' Needs attention';
            }
            
            
            System.debug('The new subject to current task is: '+tsk.Subject);
        } //end of loop
        //update taskList;
    }    
}