#library('ConcreteObserver');

#import('../interfaces/Subject.dart');
#import('../interfaces/Observer.dart');
#import('../interfaces/SubscribeEvent.dart');
class ConcreteObserver implements Observer, SubscribeEvent{
  Subject _subject;
  
  // params of Subjects
  
  ConcreteObserver(Subject subject){
    this._subject = subject;
    this._subject.registerObserver(this);
  }
  
  void subscribe(){
    print("Subscribers #");
  }
  
  void update(){
    subscribe();
  }
}
