import 'package:toktik/domain/datasources/video_posts_datasources.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDatasources videosDatasources;

  VideoPostsRepositoryImpl({required this.videosDatasources});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasources.getTrendingVideosByPage(page);
  }
}
