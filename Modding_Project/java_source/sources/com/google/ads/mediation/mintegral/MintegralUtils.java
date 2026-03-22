package com.google.ads.mediation.mintegral;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.mediation.AppLovinExtras;
import com.google.android.gms.ads.AdError;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class MintegralUtils {
    public static final String TAG = "MintegralUtils";

    public static int convertDipToPixel(@NonNull Context context, float f) {
        Resources resources = context.getResources();
        if (resources == null) {
            return 0;
        }
        return (int) TypedValue.applyDimension(1, f + 0.5f, resources.getDisplayMetrics());
    }

    public static String getAdapterVersion() {
        return BuildConfig.ADAPTER_VERSION;
    }

    public static String getSdkVersion() {
        return "MAL_16.9.41";
    }

    public static boolean shouldMuteAudio(@NonNull Bundle bundle) {
        return bundle.getBoolean(AppLovinExtras.Keys.MUTE_AUDIO);
    }

    @Nullable
    public static AdError validateMintegralAdLoadParams(@Nullable String str, @Nullable String str2) {
        if (TextUtils.isEmpty(str)) {
            AdError createAdapterError = MintegralConstants.createAdapterError(101, "Missing or invalid ad Unit ID configured for this ad source instance in the AdMob or Ad Manager UI.");
            createAdapterError.toString();
            return createAdapterError;
        } else if (TextUtils.isEmpty(str2)) {
            AdError createAdapterError2 = MintegralConstants.createAdapterError(101, "Missing or invalid Placement ID configured for this ad source instance in the AdMob or Ad Manager UI.");
            createAdapterError2.toString();
            return createAdapterError2;
        } else {
            return null;
        }
    }

    @Nullable
    public static AdError validateMintegralAdLoadParams(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        AdError validateMintegralAdLoadParams = validateMintegralAdLoadParams(str, str2);
        if (validateMintegralAdLoadParams != null) {
            return validateMintegralAdLoadParams;
        }
        if (TextUtils.isEmpty(str3)) {
            AdError createAdapterError = MintegralConstants.createAdapterError(103, "Missing or invalid Mintegral bidding signal in this ad request.");
            createAdapterError.toString();
            return createAdapterError;
        }
        return null;
    }
}
