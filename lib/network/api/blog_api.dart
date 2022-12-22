import 'package:vassal/models/api_response_model.dart';
import 'package:vassal/network/http.dart';
import 'package:vassal/utils/constants/api.dart';

class BlogApi extends Http{

  Future<dynamic> getPosts(body) async => await getHandler(Api.BLOG_POSTS_URL, body);
}