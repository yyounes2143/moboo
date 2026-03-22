package com.sensorsdata.analytics.android.sdk.push.utils;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class PushUtils {
    public static String getJPushSDKName(byte b) {
        switch (b) {
            case 0:
                return "Jpush";
            case 1:
                return "Xiaomi";
            case 2:
                return "HUAWEI";
            case 3:
                return "Meizu";
            case 4:
                return "OPPO";
            case 5:
                return "vivo";
            case 6:
                return "Asus";
            case 7:
            default:
                return "Jpush";
            case 8:
                return "fcm";
        }
    }
}
