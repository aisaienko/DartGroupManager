#library('GroupEvent');
#import('../interfaces/Event.dart');

class GroupEvent implements Event{
  static int id;
  Date dateOfCreation;
  Date eventDate;
  String subject;
  String content;
  String status;
  
  GroupEvent(subject, content, eventDate){
    this.dateOfCreation = new Date.now();
    this.subject = subject;
    this.content = content;
    this.status = 'created';
  }
  
  void change(String subject, String content, Date eventDate){
    this.eventDate = eventDate;
    this.subject = subject;
    this.content = content;
    this.status = 'changed';
  }
   
  void canceled(){
    this.status = 'canceled';
  }
  void passed(){
    
  }
  
}
