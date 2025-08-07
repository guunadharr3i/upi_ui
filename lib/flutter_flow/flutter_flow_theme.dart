// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) {
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color primaryButtonFillColor;
  late Color primaryBorderColor;
  late Color secondaryButtonFillColor;
  late Color primaryPageBGColor;
  late Color primaryNavBarFillColor;
  late Color secondaryNavBarFillColor;
  late Color primaryTextFieldFillColor;
  late Color primaryContainerBgColor;
  late Color primaryButtonTextColor;
  late Color tradeHighlightColor;
  late Color bGimageContainer;
  late Color bGSecondaryColor;
  late Color secondaryTextColor;
  late Color primarySuccessCheckbox;
  late Color primaryTextBoxColor;
  late Color primaryTextFieldBgColor;
  late Color cTAViewColor;
  late Color titleRichTextcolour;
  late Color textfildHinttxtColor;
  late Color secondarySearchbarBgColor;
  late Color secondaryButtonBgColor;
  late Color secondaryTextColorV2;
  late Color searchbarBorderColor2;
  late Color searchbarBorderColor1;
  late Color primarySearchfieldBgColor;
  late Color primaryButtonBgColor;
  late Color primaryTextColor;
  late Color primaryBackgroundColor;
  late Color hintTxtColor;
  late Color dropdownBorderColor;
  late Color containerTextColor;
  late Color containerBackgroundColor;
  late Color checkboxTextColor;
  late Color buttonBorderColor;
  late Color appbarBackgroundColor;
  late Color tradeBlueText;
  late Color tradeBlackText;
  late Color tradeGrayText;
  late Color tradeBGColor;
  late Color tradeBorderColor;
  late Color dataTableHeader;
  late Color dataTableAlt1;
  late Color dataTableAlt2;
  late Color buttonTextColor;
  late Color textfieldBorderColor;
  late Color dropdownSearchBorderColo;
  late Color dropdownSearchBorderColor;
  late Color textfieldHinttextColor;
  late Color tEPrimaryfontcolor;
  late Color tESecondaryFont;
  late Color tEFontSub;
  late Color tENotificationFont;
  late Color tEimanFont;
  late Color tECardColor;
  late Color headingColor;
  late Color bgColor1;
  late Color bgColor2;
  late Color customColor1;
  late Color bgColor3;
  late Color tableText1;
  late Color tableText2;
  late Color tableHeaderColor;
  late Color tableRowColor;
  late Color bgColor4;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  bool get displayLargeIsCustom => typography.displayLargeIsCustom;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  bool get displayMediumIsCustom => typography.displayMediumIsCustom;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  bool get displaySmallIsCustom => typography.displaySmallIsCustom;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  bool get headlineLargeIsCustom => typography.headlineLargeIsCustom;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  bool get headlineMediumIsCustom => typography.headlineMediumIsCustom;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  bool get headlineSmallIsCustom => typography.headlineSmallIsCustom;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  bool get titleLargeIsCustom => typography.titleLargeIsCustom;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  bool get titleMediumIsCustom => typography.titleMediumIsCustom;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  bool get titleSmallIsCustom => typography.titleSmallIsCustom;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  bool get labelLargeIsCustom => typography.labelLargeIsCustom;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  bool get labelMediumIsCustom => typography.labelMediumIsCustom;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  bool get labelSmallIsCustom => typography.labelSmallIsCustom;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  bool get bodyLargeIsCustom => typography.bodyLargeIsCustom;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  bool get bodyMediumIsCustom => typography.bodyMediumIsCustom;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  bool get bodySmallIsCustom => typography.bodySmallIsCustom;
  TextStyle get bodySmall => typography.bodySmall;
  String get customTextStyle1Family => typography.customTextStyle1Family;
  TextStyle get customTextStyle1 => typography.customTextStyle1;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFE77817);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color primaryButtonFillColor = const Color(0xFFE77817);
  late Color primaryBorderColor = const Color(0xFF718999);
  late Color secondaryButtonFillColor = const Color(0xFFFFB571);
  late Color primaryPageBGColor = const Color(0xFFFFF1D7);
  late Color primaryNavBarFillColor = const Color(0xFFF58E21);
  late Color secondaryNavBarFillColor = const Color(0xFFEF6812);
  late Color primaryTextFieldFillColor = const Color(0xFFEFEFEF);
  late Color primaryContainerBgColor = const Color(0xFFFFFFFF);
  late Color primaryButtonTextColor = const Color(0xFFFFFFFF);
  late Color tradeHighlightColor = const Color(0xFFF78220);
  late Color bGimageContainer = const Color(0xFF80418E);
  late Color bGSecondaryColor = const Color(0xFFFFB571);
  late Color secondaryTextColor = const Color(0xFF894302);
  late Color primarySuccessCheckbox = const Color(0xDD20FF09);
  late Color primaryTextBoxColor = const Color(0x7CD6D4D4);
  late Color primaryTextFieldBgColor = const Color(0xFFD4D4D4);
  late Color cTAViewColor = const Color(0xFF337AB7);
  late Color titleRichTextcolour = const Color(0xFF14181B);
  late Color textfildHinttxtColor = const Color(0xFF6C6C6C);
  late Color secondarySearchbarBgColor = const Color(0xFFFDF1DD);
  late Color secondaryButtonBgColor = const Color(0xFFE77817);
  late Color secondaryTextColorV2 = const Color(0xFF222222);
  late Color searchbarBorderColor2 = const Color(0xFF718999);
  late Color searchbarBorderColor1 = const Color(0xFF9FABAD);
  late Color primarySearchfieldBgColor = const Color(0xFFFEEED3);
  late Color primaryButtonBgColor = const Color(0xFFFFFFFF);
  late Color primaryTextColor = const Color(0xFF000000);
  late Color primaryBackgroundColor = const Color(0xFFFCEBD6);
  late Color hintTxtColor = const Color(0xFF333333);
  late Color dropdownBorderColor = const Color(0xFFFFFFFF);
  late Color containerTextColor = const Color(0xFF894302);
  late Color containerBackgroundColor = const Color(0xFFFFB571);
  late Color checkboxTextColor = const Color(0xFF707070);
  late Color buttonBorderColor = const Color(0xFFE77817);
  late Color appbarBackgroundColor = const Color(0xFFE77817);
  late Color tradeBlueText = const Color(0xFF0A3D6C);
  late Color tradeBlackText = const Color(0xFF333333);
  late Color tradeGrayText = const Color(0xFFD3DDE6);
  late Color tradeBGColor = const Color(0xFAFAFAFA);
  late Color tradeBorderColor = const Color(0xFFE5E5E5);
  late Color dataTableHeader = const Color(0x50E77817);
  late Color dataTableAlt1 = const Color(0x13E77817);
  late Color dataTableAlt2 = const Color(0xFFFFFFFF);
  late Color buttonTextColor = const Color(0xFF2E2D2D);
  late Color textfieldBorderColor = const Color(0x00000000);
  late Color dropdownSearchBorderColo = const Color(0xFF000000);
  late Color dropdownSearchBorderColor = const Color(0xFF000000);
  late Color textfieldHinttextColor = const Color(0xFF27373E);
  late Color tEPrimaryfontcolor = const Color(0xFF3D3D3D);
  late Color tESecondaryFont = const Color(0xFF8B8B8B);
  late Color tEFontSub = const Color(0xFF484848);
  late Color tENotificationFont = const Color(0xFF1F1F1F);
  late Color tEimanFont = const Color(0xFFAD1E23);
  late Color tECardColor = const Color(0xFF777777);
  late Color headingColor = const Color(0xFFF06321);
  late Color bgColor1 = const Color(0xFFD4F8D3);
  late Color bgColor2 = const Color(0xFFFBE7E9);
  late Color customColor1 = const Color(0xFF722A42);
  late Color bgColor3 = const Color(0xFFFFE3CA);
  late Color tableText1 = const Color(0xFF089D08);
  late Color tableText2 = const Color(0xFFAE282E);
  late Color tableHeaderColor = const Color(0xFFFCFCFC);
  late Color tableRowColor = const Color(0xFFFFF2E7);
  late Color bgColor4 = const Color(0xE9F0D4B6);
}

abstract class Typography {
  String get displayLargeFamily;
  bool get displayLargeIsCustom;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  bool get displayMediumIsCustom;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  bool get displaySmallIsCustom;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  bool get headlineLargeIsCustom;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  bool get headlineMediumIsCustom;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  bool get headlineSmallIsCustom;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  bool get titleLargeIsCustom;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  bool get titleMediumIsCustom;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  bool get titleSmallIsCustom;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  bool get labelLargeIsCustom;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  bool get labelMediumIsCustom;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  bool get labelSmallIsCustom;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  bool get bodyLargeIsCustom;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  bool get bodyMediumIsCustom;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  bool get bodySmallIsCustom;
  TextStyle get bodySmall;
  String get customTextStyle1Family;
  TextStyle get customTextStyle1;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Mulish';
  bool get displayLargeIsCustom => true;
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Mulish';
  bool get displayMediumIsCustom => true;
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Mulish';
  bool get displaySmallIsCustom => true;
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Mulish';
  bool get headlineLargeIsCustom => true;
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w800,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Mulish';
  bool get headlineMediumIsCustom => true;
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 28.0,
      );
  String get headlineSmallFamily => 'Mulish';
  bool get headlineSmallIsCustom => true;
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Mulish',
        color: theme.tradeHighlightColor,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Mulish';
  bool get titleLargeIsCustom => true;
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Mulish',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get titleMediumFamily => 'Mulish';
  bool get titleMediumIsCustom => true;
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Mulish',
        color: theme.primaryTextFieldBgColor,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Mulish';
  bool get titleSmallIsCustom => true;
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Mulish',
        color: theme.info,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Mulish';
  bool get labelLargeIsCustom => true;
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Mulish',
        color: theme.primaryTextFieldBgColor,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Mulish';
  bool get labelMediumIsCustom => true;
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Mulish',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Mulish';
  bool get labelSmallIsCustom => true;
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Mulish',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Mulish';
  bool get bodyLargeIsCustom => true;
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Mulish',
        color: theme.primaryTextFieldBgColor,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Mulish';
  bool get bodyMediumIsCustom => true;
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Mulish',
        color: theme.secondaryBackground,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Mulish';
  bool get bodySmallIsCustom => true;
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Mulish',
        color: theme.primaryTextFieldBgColor,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
  String get customTextStyle1Family => 'Primary Family';
  TextStyle get customTextStyle1 => GoogleFonts.roboto(
        color: Colors.white,
        fontSize: 16.0,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    TextStyle? font,
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = false,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
    String? package,
  }) {
    if (useGoogleFonts && fontFamily != null) {
      font = GoogleFonts.getFont(fontFamily,
          fontWeight: fontWeight ?? this.fontWeight,
          fontStyle: fontStyle ?? this.fontStyle);
    }

    return font != null
        ? font.copyWith(
            color: color ?? this.color,
            fontSize: fontSize ?? this.fontSize,
            letterSpacing: letterSpacing ?? this.letterSpacing,
            fontWeight: fontWeight ?? this.fontWeight,
            fontStyle: fontStyle ?? this.fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          )
        : copyWith(
            fontFamily: fontFamily,
            package: package,
            color: color,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          );
  }
}
