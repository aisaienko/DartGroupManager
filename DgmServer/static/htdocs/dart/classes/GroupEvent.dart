#library('GroupEvent');
#import('../interfaces/Event.dart');

class GroupEvent implements Event{
  Date dateOfCreation;
  Date eventDate;
  String subject;
  String content;
  
  GroupEvent(subject, content, eventDate){
    this.dateOfCreation = new Date.now();
    this.subject = subject;
    this.content = content;
  }
  
  void changed(){
    
  }
   
  void canceled(){
    
  }
  void passed(){
    
  }
  
}
