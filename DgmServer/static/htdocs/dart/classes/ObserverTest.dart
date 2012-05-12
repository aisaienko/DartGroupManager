#import('ConcreteSubject.dart');
#import('ConcreteObserver.dart');

class ObserverTest {
  void run(){
    ConcreteSubject subject = new ConcreteSubject();
    ConcreteObserver observer1 = new ConcreteObserver(subject);
    ConcreteObserver observer2 = new ConcreteObserver(subject);
    ConcreteObserver observer3 = new ConcreteObserver(subject);
    ConcreteObserver observer4 = new ConcreteObserver(subject);
    
    subject.setParameters();
    
    print('############# REMOVE SECOND OBSERVER ################');
    subject.removeObserver(observer2);
    
    subject.setParameters();
  }

}

void main(){
  var patternTest = new ObserverTest();
  patternTest.run();
}