package io.flutter.plugins.googlemobileads.nativetemplates;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.ads.nativetemplates.NativeTemplateStyle;
import com.google.android.ads.nativetemplates.TemplateView;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class FlutterNativeTemplateStyle {
    @Nullable
    final FlutterNativeTemplateTextStyle callToActionStyle;
    @Nullable
    final ColorDrawable mainBackgroundColor;
    @Nullable
    final FlutterNativeTemplateTextStyle primaryTextStyle;
    @Nullable
    final FlutterNativeTemplateTextStyle secondaryTextStyle;
    @NonNull
    final FlutterNativeTemplateType templateType;
    @Nullable
    final FlutterNativeTemplateTextStyle tertiaryTextStyle;

    public FlutterNativeTemplateStyle(@NonNull FlutterNativeTemplateType flutterNativeTemplateType, @Nullable ColorDrawable colorDrawable, @Nullable FlutterNativeTemplateTextStyle flutterNativeTemplateTextStyle, @Nullable FlutterNativeTemplateTextStyle flutterNativeTemplateTextStyle2, @Nullable FlutterNativeTemplateTextStyle flutterNativeTemplateTextStyle3, @Nullable FlutterNativeTemplateTextStyle flutterNativeTemplateTextStyle4) {
        this.templateType = flutterNativeTemplateType;
        this.mainBackgroundColor = colorDrawable;
        this.callToActionStyle = flutterNativeTemplateTextStyle;
        this.primaryTextStyle = flutterNativeTemplateTextStyle2;
        this.secondaryTextStyle = flutterNativeTemplateTextStyle3;
        this.tertiaryTextStyle = flutterNativeTemplateTextStyle4;
    }

    public NativeTemplateStyle asNativeTemplateStyle() {
        NativeTemplateStyle.Builder builder = new NativeTemplateStyle.Builder();
        ColorDrawable colorDrawable = this.mainBackgroundColor;
        if (colorDrawable != null) {
            builder.withMainBackgroundColor(colorDrawable);
        }
        FlutterNativeTemplateTextStyle flutterNativeTemplateTextStyle = this.callToActionStyle;
        if (flutterNativeTemplateTextStyle != null) {
            if (flutterNativeTemplateTextStyle.getBackgroundColor() != null) {
                builder.withCallToActionBackgroundColor(this.callToActionStyle.getBackgroundColor());
            }
            if (this.callToActionStyle.getTextColor() != null) {
                builder.withCallToActionTypefaceColor(this.callToActionStyle.getTextColor().getColor());
            }
            if (this.callToActionStyle.getFontStyle() != null) {
                builder.withCallToActionTextTypeface(this.callToActionStyle.getFontStyle().getTypeface());
            }
            if (this.callToActionStyle.getSize() != null) {
                builder.withCallToActionTextSize(this.callToActionStyle.getSize().floatValue());
            }
        }
        FlutterNativeTemplateTextStyle flutterNativeTemplateTextStyle2 = this.primaryTextStyle;
        if (flutterNativeTemplateTextStyle2 != null) {
            if (flutterNativeTemplateTextStyle2.getBackgroundColor() != null) {
                builder.withPrimaryTextBackgroundColor(this.primaryTextStyle.getBackgroundColor());
            }
            if (this.primaryTextStyle.getTextColor() != null) {
                builder.withPrimaryTextTypefaceColor(this.primaryTextStyle.getTextColor().getColor());
            }
            if (this.primaryTextStyle.getFontStyle() != null) {
                builder.withPrimaryTextTypeface(this.primaryTextStyle.getFontStyle().getTypeface());
            }
            if (this.primaryTextStyle.getSize() != null) {
                builder.withPrimaryTextSize(this.primaryTextStyle.getSize().floatValue());
            }
        }
        FlutterNativeTemplateTextStyle flutterNativeTemplateTextStyle3 = this.secondaryTextStyle;
        if (flutterNativeTemplateTextStyle3 != null) {
            if (flutterNativeTemplateTextStyle3.getBackgroundColor() != null) {
                builder.withSecondaryTextBackgroundColor(this.secondaryTextStyle.getBackgroundColor());
            }
            if (this.secondaryTextStyle.getTextColor() != null) {
                builder.withSecondaryTextTypefaceColor(this.secondaryTextStyle.getTextColor().getColor());
            }
            if (this.secondaryTextStyle.getFontStyle() != null) {
                builder.withSecondaryTextTypeface(this.secondaryTextStyle.getFontStyle().getTypeface());
            }
            if (this.secondaryTextStyle.getSize() != null) {
                builder.withSecondaryTextSize(this.secondaryTextStyle.getSize().floatValue());
            }
        }
        FlutterNativeTemplateTextStyle flutterNativeTemplateTextStyle4 = this.tertiaryTextStyle;
        if (flutterNativeTemplateTextStyle4 != null) {
            if (flutterNativeTemplateTextStyle4.getBackgroundColor() != null) {
                builder.withTertiaryTextBackgroundColor(this.tertiaryTextStyle.getBackgroundColor());
            }
            if (this.tertiaryTextStyle.getTextColor() != null) {
                builder.withTertiaryTextTypefaceColor(this.tertiaryTextStyle.getTextColor().getColor());
            }
            if (this.tertiaryTextStyle.getFontStyle() != null) {
                builder.withTertiaryTextTypeface(this.tertiaryTextStyle.getFontStyle().getTypeface());
            }
            if (this.tertiaryTextStyle.getSize() != null) {
                builder.withTertiaryTextSize(this.tertiaryTextStyle.getSize().floatValue());
            }
        }
        return builder.build();
    }

    public TemplateView asTemplateView(Context context) {
        TemplateView templateView = (TemplateView) ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(this.templateType.resourceId(), (ViewGroup) null);
        templateView.setStyles(asNativeTemplateStyle());
        return templateView;
    }

    public boolean equals(Object obj) {
        ColorDrawable colorDrawable;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlutterNativeTemplateStyle)) {
            return false;
        }
        FlutterNativeTemplateStyle flutterNativeTemplateStyle = (FlutterNativeTemplateStyle) obj;
        if (this.templateType == flutterNativeTemplateStyle.templateType && ((((colorDrawable = this.mainBackgroundColor) == null && flutterNativeTemplateStyle.mainBackgroundColor == null) || colorDrawable.getColor() == flutterNativeTemplateStyle.mainBackgroundColor.getColor()) && Objects.equals(this.callToActionStyle, flutterNativeTemplateStyle.callToActionStyle) && Objects.equals(this.primaryTextStyle, flutterNativeTemplateStyle.primaryTextStyle) && Objects.equals(this.secondaryTextStyle, flutterNativeTemplateStyle.secondaryTextStyle) && Objects.equals(this.tertiaryTextStyle, flutterNativeTemplateStyle.tertiaryTextStyle))) {
            return true;
        }
        return false;
    }

    @Nullable
    public FlutterNativeTemplateTextStyle getCallToActionStyle() {
        return this.callToActionStyle;
    }

    @Nullable
    public ColorDrawable getMainBackgroundColor() {
        return this.mainBackgroundColor;
    }

    @Nullable
    public FlutterNativeTemplateTextStyle getPrimaryTextStyle() {
        return this.primaryTextStyle;
    }

    @Nullable
    public FlutterNativeTemplateTextStyle getSecondaryTextStyle() {
        return this.secondaryTextStyle;
    }

    @NonNull
    public FlutterNativeTemplateType getTemplateType() {
        return this.templateType;
    }

    @Nullable
    public FlutterNativeTemplateTextStyle getTertiaryTextStyle() {
        return this.tertiaryTextStyle;
    }

    public int hashCode() {
        Integer valueOf;
        ColorDrawable colorDrawable = this.mainBackgroundColor;
        if (colorDrawable == null) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(colorDrawable.getColor());
        }
        return Objects.hash(valueOf, this.callToActionStyle, this.primaryTextStyle, this.secondaryTextStyle, this.tertiaryTextStyle);
    }
}
