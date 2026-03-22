package com.sensorsdata.analytics.android.sdk.advert.oaid;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class OAIDRom {
    private static final String TAG = "SA.OAIDRom";

    private OAIDRom() {
    }

    public static boolean isASUS() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("ASUS") && !Build.BRAND.equalsIgnoreCase("ASUS")) {
            return false;
        }
        return true;
    }

    public static boolean isBlackShark() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("BLACKSHARK") && !Build.BRAND.equalsIgnoreCase("BLACKSHARK")) {
            return false;
        }
        return true;
    }

    public static boolean isCoolpad(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.coolpad.deviceidsupport", 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isEmui() {
        return !TextUtils.isEmpty(sysProperty("ro.build.version.emui", ""));
    }

    public static boolean isHuawei() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("HUAWEI")) {
            String str = Build.BRAND;
            if (!str.equalsIgnoreCase("HUAWEI") && !str.equalsIgnoreCase("HONOR")) {
                return false;
            }
            return true;
        }
        return true;
    }

    public static boolean isLenovo() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("LENOVO")) {
            String str = Build.BRAND;
            if (!str.equalsIgnoreCase("LENOVO") && !str.equalsIgnoreCase("ZUK")) {
                return false;
            }
            return true;
        }
        return true;
    }

    public static boolean isMeizu() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("MEIZU") && !Build.BRAND.equalsIgnoreCase("MEIZU") && !Build.DISPLAY.toUpperCase().contains("FLYME")) {
            return false;
        }
        return true;
    }

    public static boolean isMiui() {
        return !TextUtils.isEmpty(sysProperty("ro.miui.ui.version.name", ""));
    }

    public static boolean isMotolora() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("MOTOLORA") && !Build.BRAND.equalsIgnoreCase("MOTOLORA")) {
            return false;
        }
        return true;
    }

    public static boolean isNubia() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("NUBIA") && !Build.BRAND.equalsIgnoreCase("NUBIA")) {
            return false;
        }
        return true;
    }

    public static boolean isOnePlus() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("ONEPLUS") && !Build.BRAND.equalsIgnoreCase("ONEPLUS")) {
            return false;
        }
        return true;
    }

    public static boolean isOppo() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("OPPO")) {
            String str = Build.BRAND;
            if (!str.equalsIgnoreCase("OPPO") && !str.equalsIgnoreCase("REALME") && TextUtils.isEmpty(sysProperty("ro.build.version.opporom", ""))) {
                return false;
            }
            return true;
        }
        return true;
    }

    public static boolean isSamsung() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("SAMSUNG") && !Build.BRAND.equalsIgnoreCase("SAMSUNG")) {
            return false;
        }
        return true;
    }

    public static boolean isVivo() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("VIVO") && !Build.BRAND.equalsIgnoreCase("VIVO") && TextUtils.isEmpty(sysProperty("ro.vivo.os.version", ""))) {
            return false;
        }
        return true;
    }

    public static boolean isXiaomi() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("XIAOMI")) {
            String str = Build.BRAND;
            if (!str.equalsIgnoreCase("XIAOMI") && !str.equalsIgnoreCase("REDMI")) {
                return false;
            }
            return true;
        }
        return true;
    }

    public static boolean isZTE() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("ZTE") && !Build.BRAND.equalsIgnoreCase("ZTE")) {
            return false;
        }
        return true;
    }

    public static String sysProperty(String str, String str2) {
        String str3;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str3 = (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Throwable th) {
            SALog.i(TAG, th);
            str3 = null;
        }
        if (str3 == null) {
            return "";
        }
        return str3;
    }
}
