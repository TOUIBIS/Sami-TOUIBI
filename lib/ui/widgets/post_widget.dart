import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_technique/helper.dart';
import 'package:test_technique/models/post.dart';
import 'package:video_player/video_player.dart';

class PostWidget extends StatefulWidget {
  final Post post;
  const PostWidget({Key? key, required this.post,}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
                          radius: 30,
                        ),
                        SizedBox(width: 10.w,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.post.personName,style: personNamePostStyle,),
                            Row(
                              children: [
                                Icon(Icons.public),
                                SizedBox(width: 5.w,),
                                Text(DateTime.now().difference(widget.post.postDate).inDays.toString()+" Days ago"),
                              ],
                            ),

                          ],
                        )
                      ],
                    ),
                    Text(widget.post.postdesc,style: descPostStyle,),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
                      child: Center(
                        child: _controller.value.isInitialized
                            ? AspectRatio(
                              aspectRatio: _controller.value.aspectRatio,
                              child: VideoPlayer(_controller),
                        )
                            : Container(),
                      ),
                    ),
                    Text(widget.post.postname,style: personNamePostStyle,),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/Like.svg',
                        ),
                        SizedBox(width: 10.w,),
                        SvgPicture.asset(
                          'assets/Comment.svg',
                        ),
                        SizedBox(width: 10.w,),
                        SvgPicture.asset(
                          'assets/share.svg',
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
