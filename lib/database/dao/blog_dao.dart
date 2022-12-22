part of 'package:vassal/database/database.dart';


@UseDao(tables: [BlogTable])
class BlogDao extends DatabaseAccessor<DatabaseHelper> with _$BlogDaoMixin{
  BlogDao(DatabaseHelper attachedDatabase) : super(attachedDatabase);

  Future<int> storeBlog(BlogTableCompanion blog) async => await into(blogTable).insert(blog);

}