package com.sensorsdata.analytics.android.sdk.util;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.sensorsdata.analytics.android.sdk.SALog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class DeviceUtils {
    public static String exec(String str) {
        BufferedReader bufferedReader;
        InputStreamReader inputStreamReader;
        try {
            inputStreamReader = new InputStreamReader(Runtime.getRuntime().exec(str).getInputStream());
            try {
                bufferedReader = new BufferedReader(inputStreamReader);
            } catch (Throwable th) {
                th = th;
                bufferedReader = null;
            }
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                }
                String sb2 = sb.toString();
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    SALog.i("SA.Exec", th2.getMessage());
                }
                try {
                    inputStreamReader.close();
                } catch (IOException e) {
                    SALog.i("SA.Exec", e.getMessage());
                }
                return sb2;
            } catch (Throwable th3) {
                th = th3;
                try {
                    SALog.i("SA.Exec", th.getMessage());
                    return null;
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th4) {
                            SALog.i("SA.Exec", th4.getMessage());
                        }
                    }
                    if (inputStreamReader != null) {
                        try {
                            inputStreamReader.close();
                        } catch (IOException e2) {
                            SALog.i("SA.Exec", e2.getMessage());
                        }
                    }
                }
            }
        } catch (Throwable th5) {
            th = th5;
            bufferedReader = null;
            inputStreamReader = null;
        }
    }

    public static String getBrand() {
        try {
            String str = Build.BRAND;
            if (str != null) {
                return str.trim().toUpperCase();
            }
            return "UNKNOWN";
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return "UNKNOWN";
        }
    }

    public static int[] getDeviceSize(Context context) {
        int[] iArr = new int[2];
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            int rotation = defaultDisplay.getRotation();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            int i = point.x;
            int i2 = point.y;
            iArr[0] = getNaturalWidth(rotation, i, i2);
            iArr[1] = getNaturalHeight(rotation, i, i2);
            return iArr;
        } catch (Exception unused) {
            if (context.getResources() != null) {
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                iArr[0] = displayMetrics.widthPixels;
                iArr[1] = displayMetrics.heightPixels;
            }
            return iArr;
        }
    }

    public static String getHarmonyOSVersion() {
        if (isHarmonyOs()) {
            String prop = getProp("hw_sc.build.platform.version", "");
            if (TextUtils.isEmpty(prop)) {
                return exec(SensorsDataUtils.COMMAND_HARMONYOS_VERSION);
            }
            return prop;
        }
        return null;
    }

    public static String getManufacturer() {
        try {
            String str = Build.MANUFACTURER;
            if (str != null) {
                return str.trim().toUpperCase();
            }
            return "UNKNOWN";
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return "UNKNOWN";
        }
    }

    public static String getModel() {
        String str = Build.MODEL;
        if (TextUtils.isEmpty(str)) {
            return "UNKNOWN";
        }
        return str.trim();
    }

    private static int getNaturalHeight(int i, int i2, int i3) {
        if (i != 0 && i != 2) {
            return i2;
        }
        return i3;
    }

    private static int getNaturalWidth(int i, int i2, int i3) {
        if (i != 0 && i != 2) {
            return i3;
        }
        return i2;
    }

    public static String getOS() {
        String str = Build.VERSION.RELEASE;
        if (str == null) {
            return "UNKNOWN";
        }
        return str;
    }

    private static String getProp(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str3 = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
            if (TextUtils.isEmpty(str3)) {
                return str2;
            }
            return str3;
        } catch (Throwable th) {
            SALog.i("SA.SystemProperties", th.getMessage());
            return str2;
        }
    }

    private static boolean isHarmonyOs() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            Object invoke = cls.getMethod("getOsBrand", null).invoke(cls, null);
            if (invoke == null) {
                return false;
            }
            return "harmony".equalsIgnoreCase(invoke.toString());
        } catch (Throwable th) {
            SALog.i("SA.HasHarmonyOS", th.getMessage());
            return false;
        }
    }
}
