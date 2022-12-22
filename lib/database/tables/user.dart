part of 'package:vassal/database/database.dart';

@DataClassName("User")
class UserTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  IntColumn get roleId => integer()();

  TextColumn get email => text()();

  TextColumn get phone => text()();

  TextColumn get coupon => text()();

  TextColumn get points => text()();

  DateTimeColumn get email_verified_at => dateTime()();

  // TextColumn get password => text()();

  TextColumn get remember_token => text()();

  DateTimeColumn get created_at => dateTime()();

  DateTimeColumn get updated_at => dateTime()();
}
