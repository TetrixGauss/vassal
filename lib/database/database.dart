import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path_provider/path_provider.dart';

part "tables/user.dart";
part "tables/blog.dart";
part "tables/role.dart";

part "dao/user_dao.dart";
part "dao/blog_dao.dart";
part "dao/role_dao.dart";

part 'database.g.dart';

@UseMoor(
    tables: [UserTable, BlogTable, RoleTable],
    daos: [UserDao, BlogDao, RoleDao])
class DatabaseHelper extends _$DatabaseHelper {
  DatabaseHelper() : super(_openConnection());

  @override
  int get schemaVersion => 0;

  @override
  MigrationStrategy get migration =>
      MigrationStrategy(onUpgrade: (migrator, from, to) async {},
        beforeOpen: (details) async {
          /// UNTIL THE WEARABLES CAN BE RETRIEVED FROM SERVER
        // if (details.wasCreated) {
        //   await wearableDao.addStaticWearables();// Method that would be generated for the block
        // }
      },);

  Future<void> deleteEverything() {
    return transaction(() async {
      for (final table in allTables) {
        // if(table != wearableTable) {
          await delete(table).go();
        // }
      }
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'vassal.sqlite'));
    return VmDatabase(file);
  });
}
