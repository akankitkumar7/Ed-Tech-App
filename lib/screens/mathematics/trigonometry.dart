import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrigonometryPage extends StatefulWidget{
  const TrigonometryPage({super.key});

  @override
  State<TrigonometryPage> createState() => _TrigonometryPageState();
}

class _TrigonometryPageState extends State<TrigonometryPage> {
  final videoURL = "https://www.youtube.com/watch?v=vhgo2Gawt_4";

  final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: "a38j-H49Sms",
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    )
  );


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        iconTheme: const IconThemeData(),
        title: const Text("Maths",style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                isExpanded: true,
                colors: const ProgressBarColors(
                  playedColor: Colors.red,
                  handleColor: Colors.white,
                ),
              ),
             const PlaybackSpeedButton(),
          ]
          ),
        ],
      ),

    );
  }
}