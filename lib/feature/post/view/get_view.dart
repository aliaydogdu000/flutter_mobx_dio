import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../get/view_model/post_view_model.dart';

class PostView extends StatelessWidget {
  final _viewModel = PostModelView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: BuildButton(),
        appBar: BuildAppBar(),
        body: Center(child: Observer(builder: (_) {
          return ListViewBuilder();
        })));
  }

  FloatingActionButton BuildButton() {
    return FloatingActionButton(
      onPressed: () {
        _viewModel.getAllPost();
      },
    );
  }

  ListView ListViewBuilder() {
    return ListView.builder(
        itemCount: _viewModel.posts?.data?.length,
        itemBuilder: (context, index) => ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                _viewModel.posts?.data?[index].avatar ?? '',
              )),
              title: Text(_viewModel.posts?.data?[index].firstName ?? ''),
              subtitle: Text(_viewModel.posts?.data?[index].email ?? ''),
            ));
  }

  AppBar BuildAppBar() {
    return AppBar(
      leading: Observer(builder: (_) {
        return Visibility(
            visible: _viewModel.isLoading, child: CircularProgressIndicator());
      }),
      centerTitle: true,
      title: Text("Mobx Exercise"),
    );
  }
}
