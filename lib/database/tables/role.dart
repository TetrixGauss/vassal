part of 'package:vassal/database/database.dart';

@DataClassName("Role")
class RoleTable extends Table {

  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  TextColumn get slug => text()();

  TextColumn get description => text()();

  DateTimeColumn get created_at => dateTime()();

  DateTimeColumn get updated_at => dateTime()();
}
