package com.mbridge.msdk.dycreator.baseview.rewardpopview;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class AcquireRewardPopViewParameters {
    public AcquireRewardPopViewBehaviourListener behaviourListener;
    public String failTip;
    public String failTitle;
    public String language;
    public String placementId;
    public List<String> rightAnswerList;
    public String slideSuccessTitle;
    public String slideTip;
    public String slideTitle;
    public String successTip;
    public String successTitle;
    public String tips;
    public String title;
    public String unitId;
    public int viewType;
    public List<String> wrongAnswerList;
    public int autoDismissTime = 5;
    public int reduceTime = 0;
    public boolean canClickMaskArea = true;
    public int viewBackLayerTopColor = AcquireRewardPopViewConst.DEFAULT_COLOR_FFC27A;
    public int viewBackLayerBottomColor = AcquireRewardPopViewConst.DEFAULT_COLOR_FF932B;
    public int viewForegroundTopColor = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBE2;
    public int viewForegroundBottomColor = AcquireRewardPopViewConst.DEFAULT_COLOR_FFE0B5;
    public int buttonBackgroundLightColor = AcquireRewardPopViewConst.DEFAULT_COLOR_FF8B00;
    public int buttonBackgroundDarkColor = AcquireRewardPopViewConst.DEFAULT_COLOR_33EF7601;
    public int titleTextColor = AcquireRewardPopViewConst.DEFAULT_COLOR_E56F19;
    public int tipTextColor = AcquireRewardPopViewConst.DEFAULT_COLOR_89664C;
    public int buttonTextLightColor = -1;
    public int buttonTextDarkColor = AcquireRewardPopViewConst.DEFAULT_COLOR_D26700;
    public int successTipTextColor = -1;
    public int failTipTextColor = -1;
    public int containerBackgroundColor = AcquireRewardPopViewConst.DEFAULT_COLOR_50000000;
    public int successTitleGradientStartColor = AcquireRewardPopViewConst.DEFAULT_COLOR_FFFBED;
    public int successTitleGradientEndColor = AcquireRewardPopViewConst.DEFAULT_COLOR_FFBD6F;
    public int successTitleShadowColor = AcquireRewardPopViewConst.DEFAULT_COLOR_EC7501;
    public int successTitleTextSize = 40;
    public float successTitleShadowRadius = 3.0f;
    public float successTitleShadowDx = 1.5f;
    public float successTitleShadowDy = 1.8f;
    public int failTitleGradientStartColor = -1;
    public int failTitleGradientEndColor = AcquireRewardPopViewConst.DEFAULT_COLOR_8B6B45;
    public int failTitleShadowColor = AcquireRewardPopViewConst.DEFAULT_COLOR_3B3127;
    public int failTitleTextSize = 40;
    public float failTitleShadowRadius = 3.0f;
    public float failTitleShadowDx = 1.5f;
    public float failTitleShadowDy = 1.8f;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private AcquireRewardPopViewParameters f8860a;

        public Builder(String str, String str2, int i, String str3) {
            AcquireRewardPopViewParameters acquireRewardPopViewParameters = new AcquireRewardPopViewParameters();
            this.f8860a = acquireRewardPopViewParameters;
            acquireRewardPopViewParameters.placementId = str;
            acquireRewardPopViewParameters.unitId = str2;
            acquireRewardPopViewParameters.viewType = i;
            acquireRewardPopViewParameters.language = str3;
            a(str3);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x006b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(java.lang.String r6) {
            /*
                Method dump skipped, instructions count: 266
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewParameters.Builder.a(java.lang.String):void");
        }

        public AcquireRewardPopViewParameters build() {
            return this.f8860a;
        }

        public Builder setAutoDismissTime(int i) {
            this.f8860a.autoDismissTime = i;
            return this;
        }

        public Builder setBehaviourListener(AcquireRewardPopViewBehaviourListener acquireRewardPopViewBehaviourListener) {
            this.f8860a.behaviourListener = acquireRewardPopViewBehaviourListener;
            return this;
        }

        public Builder setButtonBackgroundDarkColor(int i) {
            this.f8860a.buttonBackgroundDarkColor = i;
            return this;
        }

        public Builder setButtonBackgroundLightColor(int i) {
            this.f8860a.buttonBackgroundLightColor = i;
            return this;
        }

        public Builder setButtonTextDarkColor(int i) {
            this.f8860a.buttonTextDarkColor = i;
            return this;
        }

        public Builder setButtonTextLightColor(int i) {
            this.f8860a.buttonTextLightColor = i;
            return this;
        }

        public Builder setCanClickMaskArea(boolean z) {
            this.f8860a.canClickMaskArea = z;
            return this;
        }

        public Builder setContainerBackgroundColor(int i) {
            this.f8860a.containerBackgroundColor = i;
            return this;
        }

        public Builder setFailTip(String str) {
            this.f8860a.failTip = str;
            return this;
        }

        public Builder setFailTipTextColor(int i) {
            this.f8860a.failTipTextColor = i;
            return this;
        }

        public Builder setFailTitle(String str) {
            this.f8860a.failTitle = str;
            return this;
        }

        public Builder setFailTitleGradientEndColor(int i) {
            this.f8860a.failTitleGradientEndColor = i;
            return this;
        }

        public Builder setFailTitleGradientStartColor(int i) {
            this.f8860a.failTitleGradientStartColor = i;
            return this;
        }

        public Builder setFailTitleShadowColor(int i) {
            this.f8860a.failTitleShadowColor = i;
            return this;
        }

        public Builder setFailTitleShadowDx(float f) {
            this.f8860a.failTitleShadowDx = f;
            return this;
        }

        public Builder setFailTitleShadowDy(float f) {
            this.f8860a.failTitleShadowDy = f;
            return this;
        }

        public Builder setFailTitleShadowRadius(float f) {
            this.f8860a.failTitleShadowRadius = f;
            return this;
        }

        public Builder setFailTitleTextSize(int i) {
            this.f8860a.failTitleTextSize = i;
            return this;
        }

        public Builder setReduceTime(int i) {
            this.f8860a.reduceTime = i;
            return this;
        }

        public Builder setRightAnswerList(ArrayList<String> arrayList) {
            this.f8860a.rightAnswerList = arrayList;
            return this;
        }

        public Builder setSlideSuccessTitle(String str) {
            this.f8860a.slideSuccessTitle = str;
            return this;
        }

        public Builder setSlideTip(String str) {
            this.f8860a.slideTip = str;
            return this;
        }

        public Builder setSlideTitle(String str) {
            this.f8860a.slideTitle = str;
            return this;
        }

        public Builder setSuccessTip(String str) {
            this.f8860a.successTip = str;
            return this;
        }

        public Builder setSuccessTipTextColor(int i) {
            this.f8860a.successTipTextColor = i;
            return this;
        }

        public Builder setSuccessTitle(String str) {
            this.f8860a.successTitle = str;
            return this;
        }

        public Builder setSuccessTitleGradientEndColor(int i) {
            this.f8860a.successTitleGradientEndColor = i;
            return this;
        }

        public Builder setSuccessTitleGradientStartColor(int i) {
            this.f8860a.successTitleGradientStartColor = i;
            return this;
        }

        public Builder setSuccessTitleShadowColor(int i) {
            this.f8860a.successTitleShadowColor = i;
            return this;
        }

        public Builder setSuccessTitleShadowDx(float f) {
            this.f8860a.successTitleShadowDx = f;
            return this;
        }

        public Builder setSuccessTitleShadowDy(float f) {
            this.f8860a.successTitleShadowDy = f;
            return this;
        }

        public Builder setSuccessTitleShadowRadius(float f) {
            this.f8860a.successTitleShadowRadius = f;
            return this;
        }

        public Builder setSuccessTitleTextSize(int i) {
            this.f8860a.successTitleTextSize = i;
            return this;
        }

        public Builder setTipTextColor(int i) {
            this.f8860a.tipTextColor = i;
            return this;
        }

        public Builder setTips(String str) {
            this.f8860a.tips = str;
            return this;
        }

        public Builder setTitle(String str) {
            this.f8860a.title = str;
            return this;
        }

        public Builder setTitleTextColor(int i) {
            this.f8860a.titleTextColor = i;
            return this;
        }

        public Builder setViewBackLayerBottomColor(int i) {
            this.f8860a.viewBackLayerBottomColor = i;
            return this;
        }

        public Builder setViewBackLayerTopColor(int i) {
            this.f8860a.viewBackLayerTopColor = i;
            return this;
        }

        public Builder setViewForegroundBottomColor(int i) {
            this.f8860a.viewForegroundBottomColor = i;
            return this;
        }

        public Builder setViewForegroundTopColor(int i) {
            this.f8860a.viewForegroundTopColor = i;
            return this;
        }

        public Builder setWrongAnswerList(ArrayList<String> arrayList) {
            this.f8860a.wrongAnswerList = arrayList;
            return this;
        }
    }

    public static Builder builder(String str, String str2, int i, String str3) {
        if (TextUtils.isEmpty(str2)) {
            o0.b("AcquireRewardPopViewParameters", "Unit id must not null.");
            return null;
        }
        if (i == 0) {
            i = 1;
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = "EN";
        }
        return new Builder(str, str2, i, str3);
    }
}
