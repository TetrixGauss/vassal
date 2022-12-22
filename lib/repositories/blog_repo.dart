
import 'dart:convert';
import 'dart:developer';

import 'package:moor/moor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vassal/database/database.dart';
import 'package:vassal/network/api/blog_api.dart';
import 'package:vassal/models/blog_model.dart' as model;

class BlogRepository {
  final BlogDao _blogDao;
  final BlogApi _blogApi;


  BlogRepository({required BlogDao blogDao, required BlogApi blogApi})
      : _blogDao = blogDao,
        _blogApi = blogApi;

  Future<int> getPosts() async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    String token = await _sp.getString("bearer") ?? "";
    Map<String, dynamic> body = {};
    body["Authorization "] = "Bearer $token";

    Map<String, dynamic> response = await _blogApi.getPosts(body);
    if (response["message"] == "success") {
      response['data'].forEach((v) async {
        var post = BlogTableCompanion(
            title : Value(v["title"] ?? ""),
            description : Value(v["description"] ?? ""),
            rel_path : Value(v["rel_path"] ?? ""),
            publish_at : Value(v["publish_at"] ?? ""),
            // created_at : Value(v["created_at"] ?? DateTime.now()),
            // updated_at : Value(v["updated_at"] ?? DateTime.now())
        );
        await _blogDao.storeBlog(post);
      });
      return 1;
    }
    return -1;
  }

  getBlogs() async {
    SharedPreferences _sp = await SharedPreferences.getInstance();
    String token = _sp.getString("bearer") ?? "";
    Map<String, String> body = {};
    body["Authorization"] = "Bearer $token";
    log(body["Authorization"].toString());
    List<model.Blog> blogList = [];
    Map<String, dynamic> response = await _blogApi.getPosts(body);
    if (response["message"] == "success") {
      response['data'].forEach((v) async {
        // v["publish_at"] = DateTime.parse(v["publish_at"]);
        v["services"] = jsonEncode(v["services"]);
        blogList.add(model.Blog.fromJson(v));
        // await _blogDao.storeBlog(post);
      });
      return blogList;
    }
    return [];
  }

}