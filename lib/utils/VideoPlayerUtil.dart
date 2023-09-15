import 'package:video_player/video_player.dart';

class VideoPlayerUtil {
  late VideoPlayerController _controller;

  // 初始化视频播放器
  void initialize(String videoUrl) {
    _controller = VideoPlayerController.network(videoUrl);
    _controller.initialize();
  }

  // 播放视频
  void play() {
    _controller.play();
  }

  // 暂停视频
  void pause() {
    _controller.pause();
  }

  // 快进视频
  void seekForward(Duration duration) {
    _controller.seekTo(_controller.value.position + duration);
  }

  // 回退视频
  void seekBackward(Duration duration) {
    _controller.seekTo(_controller.value.position - duration);
  }

  // 获取当前视频播放位置
  Duration getCurrentPosition() {
    return _controller.value.position;
  }

  // 获取视频总时长
  Duration getVideoDuration() {
    return _controller.value.duration;
  }

  // 释放视频资源
  void dispose() {
    _controller.dispose();
  }
}
