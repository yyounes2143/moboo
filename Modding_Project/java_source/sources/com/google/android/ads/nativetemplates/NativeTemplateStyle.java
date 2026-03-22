package com.google.android.ads.nativetemplates;

import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import androidx.annotation.Nullable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class NativeTemplateStyle {
    private ColorDrawable callToActionBackgroundColor;
    private float callToActionTextSize;
    private Typeface callToActionTextTypeface;
    @Nullable
    private Integer callToActionTypefaceColor;
    private ColorDrawable mainBackgroundColor;
    private ColorDrawable primaryTextBackgroundColor;
    private float primaryTextSize;
    private Typeface primaryTextTypeface;
    @Nullable
    private Integer primaryTextTypefaceColor;
    private ColorDrawable secondaryTextBackgroundColor;
    private float secondaryTextSize;
    private Typeface secondaryTextTypeface;
    @Nullable
    private Integer secondaryTextTypefaceColor;
    private ColorDrawable tertiaryTextBackgroundColor;
    private float tertiaryTextSize;
    private Typeface tertiaryTextTypeface;
    @Nullable
    private Integer tertiaryTextTypefaceColor;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static final class Builder {
        private NativeTemplateStyle styles = new NativeTemplateStyle();

        public NativeTemplateStyle build() {
            return this.styles;
        }

        @CanIgnoreReturnValue
        public Builder withCallToActionBackgroundColor(ColorDrawable colorDrawable) {
            this.styles.callToActionBackgroundColor = colorDrawable;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withCallToActionTextSize(float f) {
            this.styles.callToActionTextSize = f;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withCallToActionTextTypeface(Typeface typeface) {
            this.styles.callToActionTextTypeface = typeface;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withCallToActionTypefaceColor(int i) {
            this.styles.callToActionTypefaceColor = Integer.valueOf(i);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withMainBackgroundColor(ColorDrawable colorDrawable) {
            this.styles.mainBackgroundColor = colorDrawable;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withPrimaryTextBackgroundColor(ColorDrawable colorDrawable) {
            this.styles.primaryTextBackgroundColor = colorDrawable;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withPrimaryTextSize(float f) {
            this.styles.primaryTextSize = f;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withPrimaryTextTypeface(Typeface typeface) {
            this.styles.primaryTextTypeface = typeface;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withPrimaryTextTypefaceColor(int i) {
            this.styles.primaryTextTypefaceColor = Integer.valueOf(i);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withSecondaryTextBackgroundColor(ColorDrawable colorDrawable) {
            this.styles.secondaryTextBackgroundColor = colorDrawable;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withSecondaryTextSize(float f) {
            this.styles.secondaryTextSize = f;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withSecondaryTextTypeface(Typeface typeface) {
            this.styles.secondaryTextTypeface = typeface;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withSecondaryTextTypefaceColor(int i) {
            this.styles.secondaryTextTypefaceColor = Integer.valueOf(i);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withTertiaryTextBackgroundColor(ColorDrawable colorDrawable) {
            this.styles.tertiaryTextBackgroundColor = colorDrawable;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withTertiaryTextSize(float f) {
            this.styles.tertiaryTextSize = f;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withTertiaryTextTypeface(Typeface typeface) {
            this.styles.tertiaryTextTypeface = typeface;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder withTertiaryTextTypefaceColor(int i) {
            this.styles.tertiaryTextTypefaceColor = Integer.valueOf(i);
            return this;
        }
    }

    public ColorDrawable getCallToActionBackgroundColor() {
        return this.callToActionBackgroundColor;
    }

    public float getCallToActionTextSize() {
        return this.callToActionTextSize;
    }

    public Typeface getCallToActionTextTypeface() {
        return this.callToActionTextTypeface;
    }

    @Nullable
    public Integer getCallToActionTypefaceColor() {
        return this.callToActionTypefaceColor;
    }

    public ColorDrawable getMainBackgroundColor() {
        return this.mainBackgroundColor;
    }

    public ColorDrawable getPrimaryTextBackgroundColor() {
        return this.primaryTextBackgroundColor;
    }

    public float getPrimaryTextSize() {
        return this.primaryTextSize;
    }

    public Typeface getPrimaryTextTypeface() {
        return this.primaryTextTypeface;
    }

    @Nullable
    public Integer getPrimaryTextTypefaceColor() {
        return this.primaryTextTypefaceColor;
    }

    public ColorDrawable getSecondaryTextBackgroundColor() {
        return this.secondaryTextBackgroundColor;
    }

    public float getSecondaryTextSize() {
        return this.secondaryTextSize;
    }

    public Typeface getSecondaryTextTypeface() {
        return this.secondaryTextTypeface;
    }

    @Nullable
    public Integer getSecondaryTextTypefaceColor() {
        return this.secondaryTextTypefaceColor;
    }

    public ColorDrawable getTertiaryTextBackgroundColor() {
        return this.tertiaryTextBackgroundColor;
    }

    public float getTertiaryTextSize() {
        return this.tertiaryTextSize;
    }

    public Typeface getTertiaryTextTypeface() {
        return this.tertiaryTextTypeface;
    }

    @Nullable
    public Integer getTertiaryTextTypefaceColor() {
        return this.tertiaryTextTypefaceColor;
    }
}
