import 'package:mysql1/mysql1.dart';
import 'package:mysql_ornek/mysql_ornek.dart' as mysql_ornek;

void main(List<String> arguments) async {
  var settings = ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '12345',
    db: 'dart_egitim',
  );

  var conn = await MySqlConnection.connect(settings);
  print("kapandı");
}
