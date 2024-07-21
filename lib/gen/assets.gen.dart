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

  /// File path: assets/icons/Capture5.PNG
  AssetGenImage get capture5 =>
      const AssetGenImage('assets/icons/Capture5.PNG');

  /// File path: assets/icons/apple icon.png
  AssetGenImage get appleIcon =>
      const AssetGenImage('assets/icons/apple icon.png');

  /// File path: assets/icons/dress.svg
  String get dress => 'assets/icons/dress.svg';

  /// File path: assets/icons/facebook icon.png
  AssetGenImage get facebookIcon =>
      const AssetGenImage('assets/icons/facebook icon.png');

  /// File path: assets/icons/facebook logo.svg
  String get facebookLogo => 'assets/icons/facebook logo.svg';

  /// File path: assets/icons/google icon.png
  AssetGenImage get googleIconPng =>
      const AssetGenImage('assets/icons/google icon.png');

  /// File path: assets/icons/google icon.svg
  String get googleIconSvg => 'assets/icons/google icon.svg';

  /// File path: assets/icons/jackets.svg
  String get jackets => 'assets/icons/jackets.svg';

  /// File path: assets/icons/on_boarding1.svg
  String get onBoarding1 => 'assets/icons/on_boarding1.svg';

  /// File path: assets/icons/on_boarding2.svg
  String get onBoarding2 => 'assets/icons/on_boarding2.svg';

  /// File path: assets/icons/on_boarding3.png
  AssetGenImage get onBoarding3 =>
      const AssetGenImage('assets/icons/on_boarding3.png');

  /// File path: assets/icons/on_boarding4.png
  AssetGenImage get onBoarding4 =>
      const AssetGenImage('assets/icons/on_boarding4.png');

  /// File path: assets/icons/pant.svg
  String get pant => 'assets/icons/pant.svg';

  /// File path: assets/icons/shirt.png
  AssetGenImage get shirtPng => const AssetGenImage('assets/icons/shirt.png');

  /// File path: assets/icons/shirt.svg
  String get shirtSvg => 'assets/icons/shirt.svg';

  /// File path: assets/icons/splash1.svg
  String get splash1 => 'assets/icons/splash1.svg';

  /// File path: assets/icons/splash2.svg
  String get splash2 => 'assets/icons/splash2.svg';

  /// File path: assets/icons/splash_view.jpg
  AssetGenImage get splashView =>
      const AssetGenImage('assets/icons/splash_view.jpg');

  /// List of all assets
  List<dynamic> get values => [
        capture5,
        appleIcon,
        dress,
        facebookIcon,
        facebookLogo,
        googleIconPng,
        googleIconSvg,
        jackets,
        onBoarding1,
        onBoarding2,
        onBoarding3,
        onBoarding4,
        pant,
        shirtPng,
        shirtSvg,
        splash1,
        splash2,
        splashView
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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
