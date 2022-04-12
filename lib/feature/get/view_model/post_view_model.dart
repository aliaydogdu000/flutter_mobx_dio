import 'package:flutter_mobx_ex/feature/post/model/post.dart';
import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';
part 'post_view_model.g.dart';

class PostModelView = _PostModelViewBase with _$PostModelView;

abstract class _PostModelViewBase with Store {
  @observable
  UserModel? posts;

  final url = "https://reqres.in/api/users?page=2";
  @observable
  bool isLoading = false;

  @action
  Future<void> getAllPost() async {
    changeLoading();
    final response = await Dio().get(url);

    if (response.statusCode == 200) {
      posts = UserModel.fromJson(response.data);
    }
    changeLoading();
  }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }
}
