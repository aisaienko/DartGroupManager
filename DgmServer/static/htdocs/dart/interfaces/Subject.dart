#library('Subject');

#import('Observer.dart');

interface Subject {
  void registerObserver(Observer o);
  void removeObserver(Observer o);
  void notifyObservers();
}
