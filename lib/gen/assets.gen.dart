/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/amazon_icon.png
  AssetGenImage get amazonIcon =>
      const AssetGenImage('assets/icons/amazon_icon.png');

  /// File path: assets/icons/apple_icon.png
  AssetGenImage get appleIcon =>
      const AssetGenImage('assets/icons/apple_icon.png');

  /// File path: assets/icons/applied_jobs_icon.png
  AssetGenImage get appliedJobsIcon =>
      const AssetGenImage('assets/icons/applied_jobs_icon.png');

  /// File path: assets/icons/arrow_down.png
  AssetGenImage get arrowDown =>
      const AssetGenImage('assets/icons/arrow_down.png');

  /// File path: assets/icons/certification_icon.png
  AssetGenImage get certificationIcon =>
      const AssetGenImage('assets/icons/certification_icon.png');

  /// File path: assets/icons/event_coloured.png
  AssetGenImage get eventColoured =>
      const AssetGenImage('assets/icons/event_coloured.png');

  /// File path: assets/icons/event_outline.png
  AssetGenImage get eventOutline =>
      const AssetGenImage('assets/icons/event_outline.png');

  /// File path: assets/icons/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/icons/facebook.png');

  /// File path: assets/icons/google_icon.png
  AssetGenImage get googleIcon =>
      const AssetGenImage('assets/icons/google_icon.png');

  /// File path: assets/icons/home_coloured.png
  AssetGenImage get homeColoured =>
      const AssetGenImage('assets/icons/home_coloured.png');

  /// File path: assets/icons/home_outline.png
  AssetGenImage get homeOutline =>
      const AssetGenImage('assets/icons/home_outline.png');

  /// File path: assets/icons/job_coloured.png
  AssetGenImage get jobColoured =>
      const AssetGenImage('assets/icons/job_coloured.png');

  /// File path: assets/icons/job_outline.png
  AssetGenImage get jobOutline =>
      const AssetGenImage('assets/icons/job_outline.png');

  /// File path: assets/icons/microsoft.png
  AssetGenImage get microsoft =>
      const AssetGenImage('assets/icons/microsoft.png');

  /// File path: assets/icons/profile_coloured.png
  AssetGenImage get profileColoured =>
      const AssetGenImage('assets/icons/profile_coloured.png');

  /// File path: assets/icons/profile_icon.png
  AssetGenImage get profileIcon =>
      const AssetGenImage('assets/icons/profile_icon.png');

  /// File path: assets/icons/profile_outline.png
  AssetGenImage get profileOutline =>
      const AssetGenImage('assets/icons/profile_outline.png');

  /// File path: assets/icons/qualification_icon.png
  AssetGenImage get qualificationIcon =>
      const AssetGenImage('assets/icons/qualification_icon.png');

  /// File path: assets/icons/recent_icon.png
  AssetGenImage get recentIcon =>
      const AssetGenImage('assets/icons/recent_icon.png');

  /// File path: assets/icons/resume_icon.png
  AssetGenImage get resumeIcon =>
      const AssetGenImage('assets/icons/resume_icon.png');

  /// File path: assets/icons/settings_icon.png
  AssetGenImage get settingsIcon =>
      const AssetGenImage('assets/icons/settings_icon.png');

  /// File path: assets/icons/skills_icon.png
  AssetGenImage get skillsIcon =>
      const AssetGenImage('assets/icons/skills_icon.png');

  /// File path: assets/icons/twitter.png
  AssetGenImage get twitter => const AssetGenImage('assets/icons/twitter.png');

  /// File path: assets/icons/uber_icon.png
  AssetGenImage get uberIcon =>
      const AssetGenImage('assets/icons/uber_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        amazonIcon,
        appleIcon,
        appliedJobsIcon,
        arrowDown,
        certificationIcon,
        eventColoured,
        eventOutline,
        facebook,
        googleIcon,
        homeColoured,
        homeOutline,
        jobColoured,
        jobOutline,
        microsoft,
        profileColoured,
        profileIcon,
        profileOutline,
        qualificationIcon,
        recentIcon,
        resumeIcon,
        settingsIcon,
        skillsIcon,
        twitter,
        uberIcon
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Basic_Resume.docx.pdf
  String get basicResumeDocx => 'assets/images/Basic_Resume.docx.pdf';

  /// File path: assets/images/Logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/Logo.png');

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/cert.pdf
  String get cert => 'assets/images/cert.pdf';

  /// File path: assets/images/onboard_first.png
  AssetGenImage get onboardFirst =>
      const AssetGenImage('assets/images/onboard_first.png');

  /// File path: assets/images/onboard_four.png
  AssetGenImage get onboardFour =>
      const AssetGenImage('assets/images/onboard_four.png');

  /// File path: assets/images/onboard_second.png
  AssetGenImage get onboardSecond =>
      const AssetGenImage('assets/images/onboard_second.png');

  /// File path: assets/images/onboard_third.png
  AssetGenImage get onboardThird =>
      const AssetGenImage('assets/images/onboard_third.png');

  /// List of all assets
  List<dynamic> get values => [
        basicResumeDocx,
        logo,
        background,
        cert,
        onboardFirst,
        onboardFour,
        onboardSecond,
        onboardThird
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
