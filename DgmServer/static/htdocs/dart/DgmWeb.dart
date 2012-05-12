#import('dart:html');
#import("dart:json");

class DgmWeb {

  DgmWeb() {
  }

  void run() {
    document.query('#status').innerHTML = "hello";
    loadExistingPosts();
  }
  
  void loadExistingPosts() {
//load the posts
    XMLHttpRequest req = new XMLHttpRequest();//.get("127.0.0.1:3030", onSuccess);
    var url = "127.0.0.1:3030";
    req.open("GET", url); // POST to send data
    
    req.on.readyStateChange.add((Event e) {
      if (req.readyState == XMLHttpRequest.DONE &&
          (req.status == 200 || req.status == 0)) {
        onSuccess(req); // called when the POST successfully completes
      }
    });

    req.send('{"name":"value"}');
  }
  
  onSuccess(result) {
    document.query('#status').innerHTML = result.textContent;
    }
  }

  void write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML = "ser";
  }

void main() {
  new DgmWeb().run();
}
