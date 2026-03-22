package com.appsflyer.internal;

import android.app.Activity;
import android.net.Uri;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class AFi1lSDK implements AFi1oSDK {
    @Nullable
    private String getRevenue;

    private static String AFAdRevenueData(Activity activity) {
        Uri k_ = AFb1qSDK.k_(activity != null ? activity.getIntent() : null);
        String obj = k_ != null ? k_.toString() : null;
        if (obj == null) {
            obj = "";
        }
        if (AFAdRevenueData(obj)) {
            return null;
        }
        return obj;
    }

    @Override // com.appsflyer.internal.AFi1oSDK
    @NotNull
    public final String getMediationNetwork(@Nullable Activity activity) {
        Uri uri;
        String str = null;
        if (activity != null && activity.getIntent() != null) {
            uri = activity.getReferrer();
        } else {
            uri = null;
        }
        if (uri != null) {
            str = uri.toString();
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    @Override // com.appsflyer.internal.AFi1oSDK
    public final void getMonetizationNetwork(@NotNull Activity activity) {
        String str = this.getRevenue;
        if (str != null && str.length() != 0) {
            return;
        }
        this.getRevenue = AFAdRevenueData(activity);
    }

    @Override // com.appsflyer.internal.AFi1oSDK
    @Nullable
    public final String getRevenue(@Nullable Activity activity) {
        String str = this.getRevenue;
        this.getRevenue = null;
        if (str != null && str.length() != 0) {
            return str;
        }
        return AFAdRevenueData(activity);
    }

    private static boolean AFAdRevenueData(String str) {
        return StringsKt.startsWith$default(str, "android-app://", false, 2, (Object) null);
    }
}
