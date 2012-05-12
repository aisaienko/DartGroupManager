#library('ConcreteSubject');

#import('../interfaces/Subject.dart');
#import('../interfaces/Observer.dart');
#import('../interfaces/Event.dart');

class ConcreteSubject implements Subject{
  List<Observer> observers;
  List<Event> events;
  // params of Subjects
  
  ConcreteSubject(){
    observers = new List();
  }
  
  void registerObserver(Observer o){
    observers.add(o);
  }
  
  void removeObserver(Observer o){
    for (var x = 0; x < observers.length; x++) {
      if(observers[x] === o){
        observers.removeRange(x, 1);
        break;
      }
    }
  }
  
  void notifyObservers(){
    for (var x = 0; x < observers.length; x++) {
      Observer observer = observers[x];
      observer.update();
    }
  }
  
  void setChanged(){
    notifyObservers();
  }
  
  void setParameters(){
    //change future parameters for subject
    setChanged();
  }
}
