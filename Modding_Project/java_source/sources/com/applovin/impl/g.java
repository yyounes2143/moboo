package com.applovin.impl;

import android.content.Context;
import android.provider.Settings;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class g {
    public static void a(com.applovin.impl.sdk.ad.b bVar, AppLovinFullscreenActivity appLovinFullscreenActivity, com.applovin.impl.sdk.k kVar) {
        String b = d.b(appLovinFullscreenActivity);
        String a2 = d.a(appLovinFullscreenActivity);
        String packageName = appLovinFullscreenActivity.getPackageName();
        boolean z = false;
        boolean z2 = StringUtils.isValidString(b) && !b.equals(packageName);
        if (StringUtils.isValidString(a2) && !a2.equals(packageName)) {
            z = true;
        }
        if (z2 || z) {
            Map a3 = a2.a((AppLovinAdImpl) bVar);
            a3.put("activity_task_affinity_mismatch", String.valueOf(z2));
            a3.put("base_activity_task_affinity_mismatch", String.valueOf(z));
            kVar.E().a(y1.j0, "taskAffinityMismatch", a3);
        }
    }

    public static void a(com.applovin.impl.adview.b bVar, com.applovin.impl.sdk.k kVar) {
        if (bVar == null) {
            return;
        }
        boolean a2 = r.a(bVar);
        boolean a3 = a(bVar.getContext());
        if (a3 || a2) {
            Map a4 = a2.a((AppLovinAdImpl) bVar.getCurrentAd());
            a4.put("can_draw_overlays", String.valueOf(a3));
            a4.put("is_ad_view_overlaid", String.valueOf(a2));
            kVar.E().a(y1.j0, "overlayViolation", a4);
        }
    }

    private static boolean a(Context context) {
        if (k0.e()) {
            return Settings.canDrawOverlays(context);
        }
        return k0.a("android.permission.SYSTEM_ALERT_WINDOW", context);
    }
}
