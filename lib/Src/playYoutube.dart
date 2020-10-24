import 'package:ext_video_player/ext_video_player.dart';
import 'package:flutter/material.dart';
import 'package:goals_dash/Src/style.dart';

class YoutubeVideo extends StatefulWidget {
  final String youtubeLink;
  final String whosPlaying;

  const YoutubeVideo({Key key, this.youtubeLink, this.whosPlaying})
      : super(key: key);
  @override
  YoutubeVideoState createState() =>
      YoutubeVideoState(youtubeLink, whosPlaying);
}

class YoutubeVideoState extends State<YoutubeVideo> {
  final String _youtubeLink;
  final String _whosPlaying;

  VideoPlayerController _controller;

  YoutubeVideoState(this._youtubeLink, this._whosPlaying);

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      _youtubeLink,

      // 'https://www.youtube.com/watch?v=YFCSODyFxbE',   https://youtu.be/rtWFqYN1fwc
    );
    print(_youtubeLink);
    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardbg,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(padding: const EdgeInsets.only(top: 60.0)),
            Text(
              _whosPlaying,
              style: scores,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    VideoPlayer(_controller),
                    ClosedCaption(text: _controller.value.caption.text),
                    _PlayPauseOverlay(controller: _controller),
                    VideoProgressIndicator(
                      _controller,
                      allowScrubbing: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayPauseOverlay extends StatelessWidget {
  const _PlayPauseOverlay({Key key, this.controller}) : super(key: key);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: Duration(milliseconds: 50),
          reverseDuration: Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
      ],
    );
  }
}
