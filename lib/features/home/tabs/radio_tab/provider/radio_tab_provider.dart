import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class RadioTabProvider extends ChangeNotifier {
  int currectIndex = 0;

  final AudioPlayer audioPlayer = AudioPlayer();
  Map<int, bool> isPlayingMap = {};
  Map<int, bool> isMuteMap = {};

  Future<void> playAudio(String url, int index) async {
    isPlayingMap = {index: true};
    await audioPlayer.play(UrlSource(url));
    notifyListeners();
  }

  Future<void> puaseAudio(int index) async {
    isPlayingMap[index] = false;
    await audioPlayer.pause();
    notifyListeners();
  }

  bool isPlaying(int index) {
    return isPlayingMap[index] ?? false;
  }

  Future<void> toggleMute(int index) async {
    bool currentMuteState = isMuteMap[index] ?? false;
    isMuteMap[index] = !currentMuteState;
    await audioPlayer.setVolume(currentMuteState ? 1.0 : 0.0);
    notifyListeners();
  }

  bool isMute(int index) {
    return isMuteMap[index] ?? false;
  }

  void changeTab(int index) {
    currectIndex = index;
    notifyListeners();
  }
}
