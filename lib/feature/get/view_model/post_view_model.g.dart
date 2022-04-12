// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostModelView on _PostModelViewBase, Store {
  final _$postsAtom = Atom(name: '_PostModelViewBase.posts');

  @override
  UserModel? get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(UserModel? value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_PostModelViewBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$getAllPostAsyncAction = AsyncAction('_PostModelViewBase.getAllPost');

  @override
  Future<void> getAllPost() {
    return _$getAllPostAsyncAction.run(() => super.getAllPost());
  }

  final _$_PostModelViewBaseActionController =
      ActionController(name: '_PostModelViewBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_PostModelViewBaseActionController.startAction(
        name: '_PostModelViewBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_PostModelViewBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
posts: ${posts},
isLoading: ${isLoading}
    ''';
  }
}
