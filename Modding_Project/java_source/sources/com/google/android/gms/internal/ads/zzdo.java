package com.google.android.gms.internal.ads;

import android.content.Context;
import android.opengl.EGL14;
import android.os.Build;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdo {
    public static void zza(boolean z, String str) throws zzdn {
        if (z) {
            return;
        }
        throw new zzdn(str);
    }

    public static boolean zzb() {
        if (Build.VERSION.SDK_INT >= 33 && zzf("EGL_EXT_gl_colorspace_bt2020_pq")) {
            return true;
        }
        return false;
    }

    public static boolean zzc(int i) {
        if (i == 6) {
            return zzb();
        }
        if (i == 7) {
            return zzf("EGL_EXT_gl_colorspace_bt2020_hlg");
        }
        return true;
    }

    public static boolean zzd(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            if (i >= 26 || (!"samsung".equals(Build.MANUFACTURER) && !"XT1650".equals(Build.MODEL))) {
                if (i < 26 && !context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
                    return false;
                }
                return zzf("EGL_EXT_protected_content");
            }
            return false;
        }
        return false;
    }

    public static boolean zze() {
        return zzf("EGL_KHR_surfaceless_context");
    }

    private static boolean zzf(String str) {
        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
        if (eglQueryString == null || !eglQueryString.contains(str)) {
            return false;
        }
        return true;
    }
}
