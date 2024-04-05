import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import 'carroussel_item.dart';

class Carroussel extends StatelessWidget {
  const Carroussel({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        "company": "4 Farm - Precision Agriculture",
        "over": false,
        "link":
            "https://play.google.com/store/apps/details?id=me.ffarm&hl=en_AU",
        "image":
            "https://play-lh.googleusercontent.com/yiyOfTPITVQe3SlJSfux3i7FeP8Q7AZlvnbmkVaApcARSSE_pDtl7M_dtzjuXqbeidWZ=w240-h480-rw"
      },
      {
        "company": "Bring!",
        "over": false,
        "link":
            "https://play.google.com/store/apps/details?id=ch.publisheria.bring&hl=fr",
        "image":
            "https://play-lh.googleusercontent.com/r5a8Ql7Nu5khKsKHrNo7uNy_e0Nf_ZpCLKqF4VGN9ohkuMzyz5PQ78dSUv3ZBZpR2mc=s48-rw"
      },
      {
        "company": "Facctio",
        "over": false,
        "link":
            "https://play.google.com/store/apps/details?id=com.br.facctio.facctio&hl=en",
        "image":
            "https://play-lh.googleusercontent.com/hRMhJFkVBeI7j6hgmz6qt5TuRJ-IIGyVXNi9nTBsa2mhYKfBaQdvwEW9o-Hu87M_0g=s48-rw"
      },
      {
        "company": "Ferreira Costa",
        "over": false,
        "link":
            "https://play.google.com/store/apps/details?id=com.appfc&hl=en_US&gl=US",
        "image":
            "https://play-lh.googleusercontent.com/xI3Y9WezmckF4YAb5CB62ll6hdU-XIjtH4kj5LTQIMNKK1OlR3AWf0UCyWnbTRGCRg=w240-h480-rw"
      },
      {
        "company": "Grattium",
        "over": false,
        "link":
            "https://play.google.com/store/apps/details?id=com.br.grattium.grattium&hl=en_GB",
        "image":
            "https://play-lh.googleusercontent.com/dSaGMBRFBw89tlvJfwr0XxcDRiY9Dm89sPTE4pn_ix1npHr71t535_gjqv_dofUqfw=w240-h480-rw"
      },
      {
        "company": "Influenster",
        "over": false,
        "link":
            "https://play.google.com/store/apps/details?id=com.influenster&hl=en",
        "image":
            "https://play-lh.googleusercontent.com/zFLHV1v-M22mEpzjx5UQUTCAyQXdv-KU7J02KeYhArHyHLmh2dH47ZDG6EJthp2dloU=s48-rw"
      },
      {
        "company": "Mobly",
        "over": false,
        "link": "https://play.google.com/store/apps/details?id=com.mobly&hl=es",
        "image":
            "https://play-lh.googleusercontent.com/4wnIz124Ij8fDZo5hiApDWdB_LraGgD7m31_yqjEcPvy8Qyv5egdKabmddyhYzR6QfE=s48-rw"
      },
      {
        "company": "Posthaus",
        "over": false,
        "link":
            "https://play.google.com/store/apps/details?id=br.com.supero.posthaus.site&hl=en_US&gl=US",
        "image":
            "https://play-lh.googleusercontent.com/PQIL7FODq5VgBB3BcXJLjQuQk3c4hiKVIMumi8LNMdTUb27bfyRHl07-l8fHyJReY10=w240-h480-rw"
      },
      {
        "company": "Recipe Keeper",
        "over": false,
        "link":
            "https://play.google.com/store/apps/details?id=com.tudorspan.recipekeeper&hl=en",
        "image":
            "https://play-lh.googleusercontent.com/Ie88X5s51HN8-vfuNv_LYfamon6JAvFnxfbIrxXrI0LRd9vpnEQWAq5Pz83bEJU4Sfc=w240-h480-rw"
      },
      {
        "company": "Scannium",
        "over": false,
        "link":
            "https://play.google.com/store/apps/details?id=com.br.scannium.scannium&hl=en",
        "image":
            "https://play-lh.googleusercontent.com/hY6VAr75mq1N8CAL_uImdbGBVFD-sO5ALMtVVoFeiv0mEFPuEfUfmJsUE8URQpi34g=s48-rw"
      },
      {
        "company": "Valia Previdência",
        "over": false,
        "link":
            "https://play.google.com/store/apps/details?id=com.valia.app&hl=en",
        "image":
            "https://play-lh.googleusercontent.com/QR-jKqQjrBADoV8uevPFxykH5BIXop888jH8YNz1arZnsbv9_h4FMQ2H7_kRGqVGpgg=w240-h480-rw"
      },
    ];
    final List<CarrousselModel> carrouselItems =
        items.map((e) => CarrousselModel.fromMap(e)).toList();
    Future<void> _launchUrl(String url) async {
      final Uri _url = Uri.parse(url);
      if (await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        autoPlay: true,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        aspectRatio: 2.0,
        viewportFraction: Responsive.isDesktop(context) ? 0.15 : 0.45,
        enlargeCenterPage: false,
      ),
      items: carrouselItems.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return CarrousellItem(
              items: i,
              onTap: () => _launchUrl(i.link),
              over: i.over,
            );
          },
        );
      }).toList(),
    );
  }
}
