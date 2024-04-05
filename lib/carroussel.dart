import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'carroussel_item.dart';

class Carroussel extends StatelessWidget {
  const Carroussel({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        "company": "4 Farm - Precision Agriculture",
        "image":
            "https://play-lh.googleusercontent.com/yiyOfTPITVQe3SlJSfux3i7FeP8Q7AZlvnbmkVaApcARSSE_pDtl7M_dtzjuXqbeidWZ=w240-h480-rw"
      },
      {
        "company": "Bring!",
        "image":
            "https://play-lh.googleusercontent.com/r5a8Ql7Nu5khKsKHrNo7uNy_e0Nf_ZpCLKqF4VGN9ohkuMzyz5PQ78dSUv3ZBZpR2mc=s48-rw"
      },
      {
        "company": "Facctio",
        "image":
            "https://play-lh.googleusercontent.com/hRMhJFkVBeI7j6hgmz6qt5TuRJ-IIGyVXNi9nTBsa2mhYKfBaQdvwEW9o-Hu87M_0g=s48-rw"
      },
      {
        "company": "Ferreira Costa",
        "image":
            "https://play-lh.googleusercontent.com/xI3Y9WezmckF4YAb5CB62ll6hdU-XIjtH4kj5LTQIMNKK1OlR3AWf0UCyWnbTRGCRg=w240-h480-rw"
      },
      {
        "company": "Grattium",
        "image":
            "https://play-lh.googleusercontent.com/dSaGMBRFBw89tlvJfwr0XxcDRiY9Dm89sPTE4pn_ix1npHr71t535_gjqv_dofUqfw=w240-h480-rw"
      },
      {
        "company": "Influenster",
        "image":
            "https://play-lh.googleusercontent.com/zFLHV1v-M22mEpzjx5UQUTCAyQXdv-KU7J02KeYhArHyHLmh2dH47ZDG6EJthp2dloU=s48-rw"
      },
      {
        "company": "Mobly",
        "image":
            "https://play-lh.googleusercontent.com/4wnIz124Ij8fDZo5hiApDWdB_LraGgD7m31_yqjEcPvy8Qyv5egdKabmddyhYzR6QfE=s48-rw"
      },
      {
        "company": "Posthaus",
        "image":
            "https://play-lh.googleusercontent.com/PQIL7FODq5VgBB3BcXJLjQuQk3c4hiKVIMumi8LNMdTUb27bfyRHl07-l8fHyJReY10=w240-h480-rw"
      },
      {
        "company": "Recipe Keeper",
        "image":
            "https://play-lh.googleusercontent.com/Ie88X5s51HN8-vfuNv_LYfamon6JAvFnxfbIrxXrI0LRd9vpnEQWAq5Pz83bEJU4Sfc=w240-h480-rw"
      },
      {
        "company": "Scannium",
        "image":
            "https://play-lh.googleusercontent.com/hY6VAr75mq1N8CAL_uImdbGBVFD-sO5ALMtVVoFeiv0mEFPuEfUfmJsUE8URQpi34g=s48-rw"
      },
      {
        "company": "Valia Previdência",
        "image":
            "https://play-lh.googleusercontent.com/QR-jKqQjrBADoV8uevPFxykH5BIXop888jH8YNz1arZnsbv9_h4FMQ2H7_kRGqVGpgg=w240-h480-rw"
      },
    ];
    final List<CarrousselModel> carrouselItems =
        items.map((e) => CarrousselModel.fromMap(e)).toList();
    return CarouselSlider(
      options: CarouselOptions(
        height: 150.0,
        autoPlay: true,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        aspectRatio: 2.0,
        viewportFraction: 0.15,
        enlargeCenterPage: false,
      ),
      items: carrouselItems.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return CarrousellItem(items: i);
          },
        );
      }).toList(),
    );
  }
}
