package com.sensorsdata.analytics.android.sdk;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SALog {
    private static final int CHUNK_SIZE = 4000;
    private static boolean debug;
    private static boolean disableSDK;
    private static boolean enableLog;

    public static void d(String str, String str2) {
        if (!debug || disableSDK) {
            return;
        }
        info(str, str2, null);
    }

    public static void i(String str, String str2) {
        if (!enableLog || disableSDK) {
            return;
        }
        info(str, str2, null);
    }

    public static void info(String str, String str2, Throwable th) {
        if (str2 != null) {
            try {
                byte[] bytes = str2.getBytes();
                int length = bytes.length;
                if (length > 4000) {
                    int i = 0;
                    while (i < length - 4000) {
                        int lastIndexOfLF = lastIndexOfLF(bytes, i);
                        int i2 = lastIndexOfLF - i;
                        new String(bytes, i, i2);
                        if (i2 < 4000) {
                            lastIndexOfLF++;
                        }
                        i = lastIndexOfLF;
                    }
                    if (length > i) {
                        new String(bytes, i, length - i);
                    }
                }
            } catch (Exception e) {
                printStackTrace(e);
            }
        }
    }

    public static boolean isDebug() {
        return debug;
    }

    public static boolean isLogEnabled() {
        return enableLog;
    }

    private static int lastIndexOfLF(byte[] bArr, int i) {
        int min = Math.min(i + 4000, bArr.length - 1);
        for (int i2 = min; i2 > min - 4000; i2--) {
            if (bArr[i2] == 10) {
                return i2;
            }
        }
        return min;
    }

    public static void setDebug(boolean z) {
        debug = z;
    }

    public static void setDisableSDK(boolean z) {
        disableSDK = z;
    }

    public static void setEnableLog(boolean z) {
        enableLog = z;
    }

    public static void d(String str, String str2, Throwable th) {
        if (!debug || disableSDK) {
            return;
        }
        info(str, str2, th);
    }

    public static void i(String str, Throwable th) {
        if (!enableLog || disableSDK) {
            return;
        }
        info(str, "", th);
    }

    public static void i(String str, String str2, Throwable th) {
        if (!enableLog || disableSDK) {
            return;
        }
        info(str, str2, th);
    }

    public static void i(String str, String str2, Object... objArr) {
        if (!enableLog || disableSDK) {
            return;
        }
        info(str, String.format(str2, objArr), null);
    }

    public static void printStackTrace(Exception exc) {
    }
}
