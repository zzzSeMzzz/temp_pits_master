import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/globals/widgets/additional/w_scale.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final Color? color;
  final Color textColor;
  final TextStyle? textStyle;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final GestureTapCallback onTap;
  final BoxBorder? border;
  final double borderRadius;
  final Widget? child;
  final Color disabledColor;
  final bool isDisabled;
  final bool isLoading;
  final double? scaleValue;
  final List<BoxShadow>? shadow;
  final bool hasError;
  final bool svgColorFilterDiable;
  final String? svgAsset;

  const WButton({
    required this.onTap,
    this.text = '',
    this.color = black,
    this.hasError = false,
    this.textColor = white,
    this.borderRadius = 12,
    this.disabledColor = disabled,
    this.isDisabled = false,
    this.isLoading = false,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.textStyle,
    this.border,
    this.child,
    this.scaleValue,
    this.shadow,
    this.svgAsset,
    this.svgColorFilterDiable = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => WScaleAnimation(
        scaleValue: scaleValue ?? 0.95,
        onTap: () {
          if (!(isLoading || isDisabled)) {
            onTap();
          }
        },
        isDisabled: isDisabled,
        child: Container(
          width: width ?? double.maxFinite,
          height: height ?? 50,
          margin: margin,
          padding: padding ?? const EdgeInsets.only(top: 15, bottom: 14),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isDisabled ? disabledColor : color,
            borderRadius: BorderRadius.circular(borderRadius),
            border: hasError ? Border.all(color: red, width: 1) : border,
            boxShadow: shadow,
          ),
          child: isLoading
              ? const Center(
                  child: CupertinoActivityIndicator(
                  color: Colors.white,
                ))
              : child ??
                  (svgAsset == null
                      ? Text(
                          text,
                          style: isDisabled
                              ? Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      height: 1.36,
                                      color: textColor)
                              : textStyle ??
                                  Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          height: 1.36,
                                          color: textColor),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        )
                      : Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              svgAsset!,
                              width: 18,
                              height: 18,
                              colorFilter: svgColorFilterDiable ? null :
                                  ColorFilter.mode(textColor, BlendMode.srcIn),
                            ),
                            const SizedBox(width: 8),
                            Flexible(
                              child: Text(
                                text,
                                style: isDisabled
                                    ? Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            height: 1.36,
                                            color: textColor)
                                    : textStyle ??
                                        Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14,
                                                height: 1.36,
                                                color: textColor),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        )),
        ),
      );
}
