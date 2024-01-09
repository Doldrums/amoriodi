import 'dart:html';
import 'dart:math';
import 'package:markdown/markdown.dart';
import 'constants.dart';

class ItemUrlPolicy implements UriPolicy {
  RegExp regex = RegExp(r'(?:http://|https://)?.*');

  @override
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

  final OListElement projectList =
      querySelector('#projectList') as OListElement;
  final DivElement videoContainer =
      querySelector('#videoContainer') as DivElement;

  for (var project in Constants.projectsList()) {
    final LIElement listItem = LIElement();
    final HeadingElement title = HeadingElement.h4()..text = project.title;
    final ParagraphElement subTitle = ParagraphElement()
      ..text = project.description;
    listItem.children.addAll([title, subTitle]);
    listItem.onMouseOver.listen((MouseEvent event) {
      final itemPosition = min(max(listItem.getBoundingClientRect().top, 100),
          window.innerHeight ?? 400 - 400);
      videoContainer.style.top = '${itemPosition}px';
      displayVideoForProject(project, videoContainer);
      videoContainer.style.display = 'flex';
    });

    listItem.onMouseOut.listen((MouseEvent event) {
      videoContainer.style.display = 'none';
    });

    projectList.children.add(listItem);
  }

  querySelector('#output')!.setInnerHtml(markdownToHtml(Constants.content()),
      validator: htmlValidator);
}

void displayVideoForProject(ProjectDetails project, DivElement videoContainer) {
  if (project.videoLink.isNotEmpty) {
    VideoElement video = VideoElement()
      ..src = project.videoLink
      ..autoplay = true
      ..style.maxWidth = '400px'
      ..style.maxHeight = '400px'
      ..muted = true
      ..setAttribute('playsinline', 'true');
    ParagraphElement subTitle = ParagraphElement()
      ..innerText = project.subTitle;
    videoContainer.children
      ..clear()
      ..add(video)
      ..add(subTitle);
  } else {
    videoContainer.text = 'Video not available for this project';
  }
}
