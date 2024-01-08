import 'dart:html';
import 'dart:math';
import 'package:markdown/markdown.dart';
import 'constants.dart';

class ItemUrlPolicy implements UriPolicy {
  RegExp regex = RegExp(r'(?:http://|https://)?.*');

  bool allowsUri(String uri) {
    return regex.hasMatch(uri);
  }
}

void main() async {
  final NodeValidatorBuilder htmlValidator = NodeValidatorBuilder.common()
    ..allowElement('a', attributes: ['data-target', 'data-toggle', 'href'])
    ..allowElement('button', attributes: ['data-target', 'data-toggle'])
    ..allowHtml5(uriPolicy: ItemUrlPolicy())
    ..allowNavigation(ItemUrlPolicy())
    ..allowImages(ItemUrlPolicy());

  querySelector('#header')!.setInnerHtml(markdownToHtml(Constants.header()),
      validator: htmlValidator);

  final UListElement projectList =
      querySelector('#projectList') as UListElement;
  final DivElement videoContainer =
      querySelector('#videoContainer') as DivElement;

  final List<String> projects = [
    "VTB Hack, Money Transfer Way",
    "Workarounds regarding Digital Human as Service SDK",
    "VTB Hack, Finance Assistant",
    "Arc Mobile Fun Edition",
    "MTS TrueTechHack, Tiflocomments for Kion Streaming Service",
  ];

  for (var projectName in projects) {
    final LIElement listItem = LIElement()..text = projectName;

    listItem.onMouseOver.listen((MouseEvent event) {
      final itemPosition = min(max(listItem.getBoundingClientRect().top, 100),
          window.innerHeight ?? 400 - 400);
      videoContainer.style.top = '${itemPosition}px';
      displayVideoForProject(projectName, videoContainer);
      videoContainer.style.display = 'block';
    });

    listItem.onMouseOut.listen((MouseEvent event) {
      videoContainer.style.display = 'none';
    });

    projectList.children.add(listItem);
  }

  querySelector('#output')!.setInnerHtml(markdownToHtml(Constants.content()),
      validator: htmlValidator);
}

void displayVideoForProject(String projectName, DivElement videoContainer) {
  Map<String, String> projectVideos = {
    "VTB Hack, Money Transfer":
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "Workarounds regarding Digital Human as Service SDK":
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "VTB Hack, Finance Assistant":
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "Arc Mobile Fun Edition":
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "MTS TrueTechHack, Tiflocomments for Kion Streaming Service":
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
  };

  String videoUrl = projectVideos[projectName] ?? '';

  if (videoUrl.isNotEmpty) {
    VideoElement video = VideoElement()
      ..src = videoUrl
      ..autoplay = true
      ..style.width = '100%'
      ..style.height = '100%'
      ..muted = true
      ..setAttribute('playsinline', 'true');

    videoContainer.children.clear();
    videoContainer.children.add(video);
  } else {
    videoContainer.text = 'Video not available for this project';
  }
}
