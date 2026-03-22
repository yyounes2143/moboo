package com.baseflow.permissionhandler;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.app.ActivityCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import kotlin.text.Typography;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class PermissionUtils {
    public static boolean Wwwwwwwwwwwwwwwwwwwwwww(Context context, String str) {
        return context.getSharedPreferences(str, 0).getBoolean("sp_permission_handler_permission_was_denied_before", false);
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable Activity activity, String str, int i) {
        if (i == -1) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity, str);
        }
        return 1;
    }

    @NonNull
    public static Integer Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Collection<Integer> collection) {
        if (collection.contains(4)) {
            return 4;
        }
        if (collection.contains(2)) {
            return 2;
        }
        if (collection.contains(0)) {
            return 0;
        }
        if (collection.contains(3)) {
            return 3;
        }
        return 1;
    }

    @NonNull
    public static Integer Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Integer num, @Nullable Integer num2) {
        HashSet hashSet = new HashSet();
        hashSet.add(num);
        hashSet.add(num2);
        return Wwwwwwwwwwwwwwwwwwwwwwwww(hashSet);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str) {
        context.getSharedPreferences(str, 0).edit().putBoolean("sp_permission_handler_permission_was_denied_before", true).apply();
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        int i;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -2062386608:
                i = 30;
                if (str.equals("android.permission.READ_SMS")) {
                    c = 0;
                    break;
                }
                break;
            case -1928411001:
                i = 30;
                if (str.equals("android.permission.READ_CALENDAR")) {
                    c = 1;
                    break;
                }
                break;
            case -1925850455:
                i = 30;
                if (str.equals("android.permission.POST_NOTIFICATIONS")) {
                    c = 2;
                    break;
                }
                break;
            case -1921431796:
                i = 30;
                if (str.equals("android.permission.READ_CALL_LOG")) {
                    c = 3;
                    break;
                }
                break;
            case -1888586689:
                i = 30;
                if (str.equals("android.permission.ACCESS_FINE_LOCATION")) {
                    c = 4;
                    break;
                }
                break;
            case -1813079487:
                i = 30;
                if (str.equals("android.permission.MANAGE_EXTERNAL_STORAGE")) {
                    c = 5;
                    break;
                }
                break;
            case -1783097621:
                i = 30;
                if (str.equals("android.permission.ACCESS_NOTIFICATION_POLICY")) {
                    c = 6;
                    break;
                }
                break;
            case -1561629405:
                i = 30;
                if (str.equals("android.permission.SYSTEM_ALERT_WINDOW")) {
                    c = 7;
                    break;
                }
                break;
            case -1479758289:
                i = 30;
                if (str.equals("android.permission.RECEIVE_WAP_PUSH")) {
                    c = '\b';
                    break;
                }
                break;
            case -1238066820:
                i = 30;
                if (str.equals("android.permission.BODY_SENSORS")) {
                    c = '\t';
                    break;
                }
                break;
            case -1164582768:
                i = 30;
                if (str.equals("android.permission.READ_PHONE_NUMBERS")) {
                    c = '\n';
                    break;
                }
                break;
            case -909527021:
                i = 30;
                if (str.equals("android.permission.NEARBY_WIFI_DEVICES")) {
                    c = 11;
                    break;
                }
                break;
            case -895679497:
                i = 30;
                if (str.equals("android.permission.RECEIVE_MMS")) {
                    c = '\f';
                    break;
                }
                break;
            case -895673731:
                i = 30;
                if (str.equals("android.permission.RECEIVE_SMS")) {
                    c = '\r';
                    break;
                }
                break;
            case -798669607:
                i = 30;
                if (str.equals("android.permission.BLUETOOTH_CONNECT")) {
                    c = 14;
                    break;
                }
                break;
            case -406040016:
                i = 30;
                if (str.equals("android.permission.READ_EXTERNAL_STORAGE")) {
                    c = 15;
                    break;
                }
                break;
            case -63024214:
                i = 30;
                if (str.equals("android.permission.ACCESS_COARSE_LOCATION")) {
                    c = 16;
                    break;
                }
                break;
            case -5573545:
                i = 30;
                if (str.equals("android.permission.READ_PHONE_STATE")) {
                    c = 17;
                    break;
                }
                break;
            case 52602690:
                i = 30;
                if (str.equals("android.permission.SEND_SMS")) {
                    c = 18;
                    break;
                }
                break;
            case 112197485:
                i = 30;
                if (str.equals("android.permission.CALL_PHONE")) {
                    c = 19;
                    break;
                }
                break;
            case 175802396:
                i = 30;
                if (str.equals("android.permission.READ_MEDIA_IMAGES")) {
                    c = 20;
                    break;
                }
                break;
            case 214526995:
                i = 30;
                if (str.equals("android.permission.WRITE_CONTACTS")) {
                    c = 21;
                    break;
                }
                break;
            case 361658321:
                i = 30;
                if (str.equals("android.permission.BODY_SENSORS_BACKGROUND")) {
                    c = 22;
                    break;
                }
                break;
            case 463403621:
                i = 30;
                if (str.equals("android.permission.CAMERA")) {
                    c = 23;
                    break;
                }
                break;
            case 603653886:
                i = 30;
                if (str.equals("android.permission.WRITE_CALENDAR")) {
                    c = 24;
                    break;
                }
                break;
            case 610633091:
                i = 30;
                if (str.equals("android.permission.WRITE_CALL_LOG")) {
                    c = 25;
                    break;
                }
                break;
            case 691260818:
                i = 30;
                if (str.equals("android.permission.READ_MEDIA_AUDIO")) {
                    c = 26;
                    break;
                }
                break;
            case 710297143:
                i = 30;
                if (str.equals("android.permission.READ_MEDIA_VIDEO")) {
                    c = 27;
                    break;
                }
                break;
            case 784519842:
                i = 30;
                if (str.equals("android.permission.USE_SIP")) {
                    c = 28;
                    break;
                }
                break;
            case 970694249:
                i = 30;
                if (str.equals("android.permission.SCHEDULE_EXACT_ALARM")) {
                    c = 29;
                    break;
                }
                break;
            case 1166454870:
                i = 30;
                if (str.equals("android.permission.BLUETOOTH_ADVERTISE")) {
                    c = 30;
                    break;
                }
                break;
            case 1271781903:
                i = 30;
                if (str.equals("android.permission.GET_ACCOUNTS")) {
                    c = 31;
                    break;
                }
                break;
            case 1365911975:
                i = 30;
                if (str.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                    c = ' ';
                    break;
                }
                break;
            case 1777263169:
                i = 30;
                if (str.equals("android.permission.REQUEST_INSTALL_PACKAGES")) {
                    c = '!';
                    break;
                }
                break;
            case 1780337063:
                i = 30;
                if (str.equals("android.permission.ACTIVITY_RECOGNITION")) {
                    c = '\"';
                    break;
                }
                break;
            case 1831139720:
                i = 30;
                if (str.equals("android.permission.RECORD_AUDIO")) {
                    c = '#';
                    break;
                }
                break;
            case 1977429404:
                i = 30;
                if (str.equals("android.permission.READ_CONTACTS")) {
                    c = Typography.dollar;
                    break;
                }
                break;
            case 2024715147:
                i = 30;
                if (str.equals("android.permission.ACCESS_BACKGROUND_LOCATION")) {
                    c = '%';
                    break;
                }
                break;
            case 2062356686:
                i = 30;
                if (str.equals("android.permission.BLUETOOTH_SCAN")) {
                    c = Typography.amp;
                    break;
                }
                break;
            case 2114579147:
                i = 30;
                if (str.equals("android.permission.ACCESS_MEDIA_LOCATION")) {
                    c = '\'';
                    break;
                }
                break;
            case 2133799037:
                i = 30;
                if (str.equals("com.android.voicemail.permission.ADD_VOICEMAIL")) {
                    c = '(';
                    break;
                }
                break;
            default:
                i = 30;
                break;
        }
        switch (c) {
            case 0:
            case '\b':
            case '\f':
            case '\r':
            case 18:
                return 13;
            case 1:
            case 24:
                return 0;
            case 2:
                return 17;
            case 3:
            case '\n':
            case 17:
            case 19:
            case 25:
            case 28:
            case '(':
                return 8;
            case 4:
            case 16:
                return 3;
            case 5:
                return 22;
            case 6:
                return 27;
            case 7:
                return 23;
            case '\t':
                return 12;
            case 11:
                return 31;
            case 14:
                return i;
            case 15:
            case ' ':
                return 15;
            case 20:
                return 9;
            case 21:
            case 31:
            case '$':
                return 2;
            case 22:
                return 35;
            case 23:
                return 1;
            case 26:
                return 33;
            case 27:
                return 32;
            case 29:
                return 34;
            case 30:
                return 29;
            case '!':
                return 24;
            case '\"':
                return 19;
            case '#':
                return 7;
            case '%':
                return 4;
            case '&':
                return 28;
            case '\'':
                return 18;
            default:
                return 20;
        }
    }

    @RequiresApi(api = 23)
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Activity activity, String str) {
        return !ActivityCompat.shouldShowRequestPermissionRationale(activity, str);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ArrayList<String> arrayList, String str) {
        PackageInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (arrayList != null) {
            try {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    String str2 = arrayList.get(i);
                    i++;
                    if (str2.equals(str)) {
                        return true;
                    }
                }
            } catch (Exception unused) {
            }
        }
        if (context == null || (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)) == null) {
            return false;
        }
        ArrayList arrayList2 = new ArrayList(Arrays.asList(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.requestedPermissions));
        int size2 = arrayList2.size();
        int i2 = 0;
        while (i2 < size2) {
            Object obj = arrayList2.get(i2);
            i2++;
            if (((String) obj).equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static PackageInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) throws PackageManager.NameNotFoundException {
        PackageManager.PackageInfoFlags of;
        PackageInfo packageInfo;
        PackageManager packageManager = context.getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            String packageName = context.getPackageName();
            of = PackageManager.PackageInfoFlags.of(4096L);
            packageInfo = packageManager.getPackageInfo(packageName, of);
            return packageInfo;
        }
        return packageManager.getPackageInfo(context.getPackageName(), 4096);
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x012e, code lost:
        if (r7 != false) goto L108;
     */
    @android.annotation.TargetApi(22)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.content.Context r6, int r7) {
        /*
            Method dump skipped, instructions count: 746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baseflow.permissionhandler.PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.content.Context, int):java.util.List");
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Activity activity, String str) {
        if (activity == null) {
            return 0;
        }
        boolean Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww(activity, str);
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity, str);
        boolean z = !Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (Wwwwwwwwwwwwwwwwwwwwwww2) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                z = true;
            } else {
                z = false;
            }
        }
        if (!Wwwwwwwwwwwwwwwwwwwwwww2 && z) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(activity, str);
        }
        if (!Wwwwwwwwwwwwwwwwwwwwwww2 || !z) {
            return 0;
        }
        return 4;
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 31 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, null, str)) {
            return str;
        }
        if (i < 29) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, null, "android.permission.ACCESS_FINE_LOCATION")) {
                return "android.permission.ACCESS_FINE_LOCATION";
            }
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, null, "android.permission.ACCESS_COARSE_LOCATION")) {
                return null;
            }
            return "android.permission.ACCESS_COARSE_LOCATION";
        } else if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, null, "android.permission.ACCESS_FINE_LOCATION")) {
            return null;
        } else {
            return "android.permission.ACCESS_FINE_LOCATION";
        }
    }
}
