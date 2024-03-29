class ProjectDetails {
  final String title;
  final String subTitle;
  final String description;
  final String videoLink;

  ProjectDetails({
    required this.title,
    required this.subTitle,
    required this.description,
    required this.videoLink,
  });
}

class Constants {
  const Constants._();

  static String header() => """  
# Arina Kharlamova
Software Engineer & Researcher


Hi! I'm Arina, 20 y.o., student of Innopolis University.
Working as Research Assistant of Faculty of Computer Science and Software Engineering in
Industrial Software Production Laboratory in R&D projects jointly with Huawei Labs and 
Russian Science Foundation. 

My research interests include aspects of software development processes, 
task analysis, data mining and empirical methods. Rendering :)

Now I’m based in Innopolis (void city). And! i have an incredible cat named Musya.

## Recent projects
""";
  static String content() => """  
## Open Source Projects and Experiments

1. [0pdd.com](https://www.0pdd.com/) Puzzle Driven Development (XDSD methodology) Github Assistant
2. [PDD gem](https://github.com/cqfn/pdd) Command line toolkit for collecting syntax-sensitive TODO markers
4. [0capa-beta](https://0capa.ru/) Theoretically Objective Measurements (TOM) of Software Development Projects Assistant
5. [BLE Reader](https://pub.dev/packages/ble_reader) plugin for peripheral mode and stream data received via Bluetooth Low Energy (BLE) connection
6. [BetterRultor.](https://rultor.pro/#/) [LOL] kinda joke realization of [Rultor original](https://www.rultor.com/)
7. [Coins](https://github.com/Doldrums/coins) Antoine Example Flutter Application with Bloc & Freezed + Dio & Retrofit for API REST.
8. [Awesome Dart web](https://github.com/Doldrums/amoriodi) Example Dart only web page meh.
9. [Quiz D Solution](https://github.com/Doldrums/d) Yandex Cup 2022 : Mobile Track task
10. [Quiz B Solution](https://github.com/Doldrums/b) Yandex Cup 2022 : Mobile Track task
11. [Quiz C Solution](https://github.com/Doldrums/c) Yandex Cup 2022 : Mobile Track task

Older: [Github](https://github.com/Doldrums/) &mdash; all other stupid stuff

## Social

1. [Github](https://github.com/Doldrums/)
2. [LinkedIn](https://www.linkedin.com/in/amoriodi/)
3. [Google Scholar](https://scholar.google.com/citations?user=-3GbddYAAAAJ)
4. [Pub (not all public nowadays tho)](https://pub.dev/publishers/amoriodi.xyz/packages/)

## Publications

1. [Automatically Prioritizing and Assigning Tasks from Code Repositories in Puzzle Driven Development](https://ieeexplore.ieee.org/document/9796201) \n in 2022 IEEE/ACM 19th International Conference on Mining Software Repositories (MSR), Pittsburgh, PA, USA, 2022 pp. 722-723.
2. [Prioritizing Tasks in Software Development: a Systematic Literature Review](https://ieee-dataport.org/documents/prioritizing-tasks-software-development-systematic-literature-review) \n IEEE Dataport; 2022. Available from : https://dx.doi.org/10.21227/kyse-2a84
3. [State-of-the-art review of taxonomies for quality assessment of intelligent software systems](https://iisec.tbdakademi.org.tr/2022/wp-content/uploads/2022/12/IISEC2022-PROGRAM_v16_22.12.2022.pdf)  \n in IISEC 2022 : 3rd International Informatics and Software Engineering Conference
4. [Taxonomy of Quality Assessment for Intelligent Software Systems: A Systematic Literature Review](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=10320363)  \n IEEE Access 11, 130491-130507 
5. [Automatically Prioritizing Tasks in Software Development](https://ieeexplore.ieee.org/abstract/document/10220100) \n IEEE 10.13039/501100003816-Huawei Technologies Company Ltd. under the Puzzle Driven Development (PDD) Project
6. [In MSR 2022 Conference Proceedings](https://www.computer.org/csdl/proceedings-article/msr/2022/930300z005/1Eo5RSksMbS)  \n  Year: 2022, Pages: v-xvii

### About this page

This page powered by [Dart only] `webdev` and inspired by Filip Hráček compile-time Dart script accessible 
[here](https://github.com/filiph/filiphnet/blob/master/tool/spanify.dart) but overwritten shortly [over there](https://github.com/Doldrums/amoriodi).


  """;

  static List<ProjectDetails> projectsList() => [
        ProjectDetails(
          title: "VTB Hack, Money Transfer Way",
          subTitle: "VTB Hack, Mobile, WatchOS",
          description:
              "Many options for familiar actions in a lightweight format. Playing with Shaders and Flutter to Native WatchOS and viseversa ommunnication",
          videoLink:
              "https://github.com/Doldrums/amoriodi/raw/master/videos/transfer.mp4",
        ),
        ProjectDetails(
          title: "Workarounds regarding Digital Human as Service SDK",
          subTitle: "AI-MATE.PRO DHAAS SDK",
          description:
              "Visit AI-MATE.PRO. Interactive digital humans are changing the way users and businesses interact with technology. DHAAS SDK made with ML and Unreal Custom Render Plugins.",
          videoLink:
              "https://github.com/Doldrums/amoriodi/raw/master/videos/dhaas.mp4",
        ),
        ProjectDetails(
          title: "VTB Hack, Smart Banking",
          subTitle: "Mobile, WatchOS, TelegramBot, Voice assistant",
          description: "Financial assistant with artificial intelligence",
          videoLink:
              "https://github.com/Doldrums/amoriodi/raw/master/videos/assistant.mp4",
        ),
        ProjectDetails(
          title: "Arc Mobile Fun Edition",
          subTitle: "Arc Mobile",
          description:
              "Experience a calmer, more personal internet in this browser designed for you in fun mobile version. Testflight only! ",
          videoLink:
              "https://github.com/Doldrums/amoriodi/raw/master/videos/browser.MP4",
        ),
        ProjectDetails(
          title: "MTS TrueTechHack, Tiflocomments for Kion Streaming Service",
          subTitle: "MTS TrueTechHack, TV App, Mobile, Website",
          description:
              "Multimedia online streaming platform with generation of Tiflocomments through multimodal frame analysis, available on all screens",
          videoLink:
              "https://github.com/Doldrums/amoriodi/raw/master/videos/kion.mp4",
        ),
      ];
}
