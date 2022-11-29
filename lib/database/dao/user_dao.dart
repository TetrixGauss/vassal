part of 'package:vassal/database/database.dart';


@UseDao(tables: [UserTable])
class UserDao extends DatabaseAccessor<DatabaseHelper> with _$UserDaoMixin{
  UserDao(DatabaseHelper attachedDatabase) : super(attachedDatabase);


  Future<int> getCount() async{
    var expression  = userTable.id.count(distinct: false);
    final query = selectOnly(userTable)..addColumns([expression]);
    var result = query.map((row)=>row.read(expression)).getSingle();
    return result;
  }

  Future<int> storeUser(UserTableCompanion user) async => await into(userTable).insert(user);

  Future<void> get deleteAllEntries async => await delete(userTable).go();

  Future<User> get findUser async => await (select(userTable)..limit(1,offset: 0)).getSingle();

  Future updateUser(newUser) async => await update(userTable).replace(newUser);

  Stream<List<User>> getdUserStream()  =>  (select(userTable)..limit(1,offset: 0)).watch();

  Future<List<User>> getUsers() async {
    List<User> list = await (select(userTable)..limit(1,offset: 0)).get();
    return list;
  }
}


