#import('dart:html');
#import('dart:json');
#import("dart:io");
class registrationForm {

  registrationForm() {
  }

  
}
class User
{ 
  var FirstName, LastName, password, email;
  
  
  User(FirstName, LastName, password, email)
  {
    this.FirstName = FirstName;
    this.LastName = LastName;
    this.password = password;
    this.email = email;
  }
}

void main() {
  
    var button = document.$dom_getElementById('add');
    button.on.click.add((event){
      var fName = document.$dom_getElementById("FirstName");
      var lName = document.$dom_getElementById("LastName");
      var pass = document.$dom_getElementById("password");
      var email = document.$dom_getElementById("email"); 
      /*var user = {
      'FirstName':fName.value,
      'LastName':lName.value,
      'password':pass.value,
      'email':email.value
      };*/
      var user = new User(fName.value, lName.value, pass.value, email.value);
      
     var xhr = new XMLHttpRequest();
     xhr.open("POST", "test.json");
     xhr.send("test");
      
    });
  
  
}
