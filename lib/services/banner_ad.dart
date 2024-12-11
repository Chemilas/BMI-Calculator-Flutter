import 'dart:developer';

import 'package:bmier/data/ad_data.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key});

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {

  late BannerAd _bannerAd; // Initialize BannerAd

  bool _isAdLoaded = false; // isAdLoading Finished

  // Load Banner Ad :
  void _loadBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: AdData.adUnitId,  // Replace with your Ad Unit ID
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          log('Ad failed to load: $error');
        },
      ),
    )..load();
  }

  @override
  void initState() {
    super.initState();
    _loadBannerAd();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isAdLoaded
        ? SizedBox(
      height: _bannerAd.size.height.toDouble(),
      width: _bannerAd.size.width.toDouble(),
      child: AdWidget(ad: _bannerAd),
    )
        : const SizedBox.shrink();
  }
}
