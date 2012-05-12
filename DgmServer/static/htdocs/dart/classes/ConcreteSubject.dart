#import('../interfaces/Subject.dart');
#import('../interfaces/Observer.dart');

class ConcreteSubject implements Subject{
  List<Observer> observers;
  
  // params of Subjects
  
  ConcreteSubject(){
    observers = new List();
  }
  
  void registerObserver(Observer o){
  
  }
  void removeObserver(Observer o){
  
  }
  void notifyObservers(){
  
  }

}
