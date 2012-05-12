#import('../lib/sqljocky/lib/sqljocky.dart');
//#import('dart:io');

class DataBase{
    String host = 'mysql303.1gb.ua';
    int port = 3306;
    String login = 'gbua_dgm';
    String dbName = 'gbua_dgm';
    String password = '88d67e4fb678';

    DataBase(){
        Connection connection = new MySqlConnection();
        //connection.connect(this.host, this.port, this.login, this.password, this.dbName);
    }

   /* String _tquery(String sqlQuery) {

    }*/
}

void main() {
  print('23');
  DataBase db = new DataBase();
  print('vdf');
}