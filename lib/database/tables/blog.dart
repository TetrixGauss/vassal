part of 'package:vassal/database/database.dart';

@DataClassName("Blog")
class BlogTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  TextColumn get description => text()();

  TextColumn get rel_path => text()();

  TextColumn get services => text()();

  BoolColumn get status => boolean().withDefault(const Constant(false))();

  TextColumn get publish_at => text()();


}
