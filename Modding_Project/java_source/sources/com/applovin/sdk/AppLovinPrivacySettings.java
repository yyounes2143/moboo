package com.applovin.sdk;

import android.content.Context;
import androidx.annotation.Nullable;
import com.applovin.impl.l0;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinPrivacySettings {
    @Nullable
    public static Boolean getAdditionalConsentStatus(int i) {
        k kVar = k.C0;
        if (kVar == null) {
            o.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getAdditionalConsentStatus(...) called when AppLovin MAX SDK is not initialized yet");
            return null;
        }
        return kVar.r0().a(i);
    }

    @Nullable
    public static Boolean getPurposeConsentStatus(int i) {
        k kVar = k.C0;
        if (kVar == null) {
            o.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getPurposeConsentStatus(...) called when AppLovin MAX SDK is not initialized yet");
            return null;
        }
        return kVar.r0().b(i);
    }

    @Nullable
    public static Boolean getSpecialFeatureOptInStatus(int i) {
        k kVar = k.C0;
        if (kVar == null) {
            o.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getSpecialFeatureOptInStatus(...) called when AppLovin MAX SDK is not initialized yet");
            return null;
        }
        return kVar.r0().c(i);
    }

    @Nullable
    public static Boolean getTcfVendorConsentStatus(int i) {
        k kVar = k.C0;
        if (kVar == null) {
            o.h("AppLovinPrivacySettings", "AppLovinPrivacySettings.getTcfVendorConsentStatus(...) called when AppLovin MAX SDK is not initialized yet");
            return null;
        }
        return kVar.r0().d(i);
    }

    public static boolean hasUserConsent() {
        return hasUserConsent(k.o());
    }

    public static boolean isDoNotSell() {
        return isDoNotSell(k.o());
    }

    public static boolean isDoNotSellSet() {
        return isDoNotSellSet(k.o());
    }

    public static boolean isUserConsentSet() {
        return isUserConsentSet(k.o());
    }

    public static void setDoNotSell(boolean z) {
        setDoNotSell(z, k.o());
    }

    public static void setHasUserConsent(boolean z) {
        setHasUserConsent(z, k.o());
    }

    @Deprecated
    public static boolean hasUserConsent(Context context) {
        Boolean b = l0.b().b(context);
        if (b != null) {
            return b.booleanValue();
        }
        return false;
    }

    @Deprecated
    public static boolean isDoNotSell(Context context) {
        Boolean b = l0.a().b(context);
        if (b != null) {
            return b.booleanValue();
        }
        return false;
    }

    @Deprecated
    public static boolean isDoNotSellSet(Context context) {
        return l0.a().b(context) != null;
    }

    @Deprecated
    public static boolean isUserConsentSet(Context context) {
        return l0.b().b(context) != null;
    }

    @Deprecated
    public static void setDoNotSell(boolean z, Context context) {
        o.g("AppLovinPrivacySettings", "setDoNotSell()");
        if (l0.a(z, context)) {
            AppLovinSdk.getInstance(context).reinitialize(null, Boolean.valueOf(z));
        }
    }

    @Deprecated
    public static void setHasUserConsent(boolean z, Context context) {
        o.g("AppLovinPrivacySettings", "setHasUserConsent()");
        if (l0.b(z, context)) {
            AppLovinSdk.getInstance(context).reinitialize(Boolean.valueOf(z), null);
        }
    }
}
