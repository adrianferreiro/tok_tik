import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  //TODO: Repository, Datasource
  Future<void> loadNextPage() async {
    //simulamos una petición
    await Future.delayed(const Duration(seconds: 2));
    //recorremos el mapa de nuestro archivo local
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    //agregamos los valores a nuestra lista
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
