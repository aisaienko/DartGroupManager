#library('ConcreteObserver');

#import('../interfaces/Subject.dart');
#import('../interfaces/Observer.dart');
#import('../interfaces/SubscribeEvent.dart');
class ConcreteObserver implements Observer, SubscribeEvent{
  Subject _subject;
  String _email;
  
  // params of Subjects
  
  ConcreteObserver(String email, Subject subject){
    this._email = email;
    this._subject = subject;
    this._subject.registerObserver(this);
    
  }
  
  get email(){
    return this._email;
  }
  
  void subscribe(){
    print("Subscribers # $_email");
  }
  
  void update(){
    subscribe();
  }
}
