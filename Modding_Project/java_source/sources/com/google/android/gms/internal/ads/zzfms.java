package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfms {
    private static UiModeManager zza;

    public static zzflh zza() {
        UiModeManager uiModeManager = zza;
        if (uiModeManager != null) {
            int currentModeType = uiModeManager.getCurrentModeType();
            if (currentModeType != 1) {
                if (currentModeType != 4) {
                    return zzflh.OTHER;
                }
                return zzflh.CTV;
            }
            return zzflh.MOBILE;
        }
        return zzflh.OTHER;
    }

    public static void zzb(Context context) {
        if (context != null) {
            zza = (UiModeManager) context.getSystemService("uimode");
        }
    }
}
