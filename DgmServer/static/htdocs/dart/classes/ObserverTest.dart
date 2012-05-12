#import('ConcreteSubject.dart');
#import('ConcreteObserver.dart');

class ObserverTest {
  void run(){
    ConcreteSubject subject = new ConcreteSubject();
    ConcreteObserver observer1 = new ConcreteObserver('example1@example.com', subject);
    ConcreteObserver observer2 = new ConcreteObserver('example2@example.com', subject);
    ConcreteObserver observer3 = new ConcreteObserver('example3@example.com', subject);
    ConcreteObserver observer4 = new ConcreteObserver('example4@example.com', subject);
    
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