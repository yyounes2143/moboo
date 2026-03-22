package com.baseflow.permissionhandler;

import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class ServiceManager {

    /* compiled from: Proguard */
    @FunctionalInterface
    /* loaded from: classes3.dex */
    public interface SuccessCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        try {
            if (Settings.Secure.getInt(context.getContentResolver(), "location_mode") == 0) {
                return false;
            }
            return true;
        } catch (Settings.SettingNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        boolean isLocationEnabled;
        if (Build.VERSION.SDK_INT >= 28) {
            LocationManager locationManager = (LocationManager) context.getSystemService(LocationManager.class);
            if (locationManager != null) {
                isLocationEnabled = locationManager.isLocationEnabled();
                return isLocationEnabled;
            }
            return false;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        return ((BluetoothManager) context.getSystemService("bluetooth")).getAdapter().isEnabled();
    }

    public final List<ResolveInfo> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PackageManager packageManager) {
        PackageManager.ResolveInfoFlags of;
        List<ResolveInfo> queryIntentActivities;
        Intent intent = new Intent("android.intent.action.CALL");
        intent.setData(Uri.parse("tel:123123"));
        if (Build.VERSION.SDK_INT >= 33) {
            of = PackageManager.ResolveInfoFlags.of(0L);
            queryIntentActivities = packageManager.queryIntentActivities(intent, of);
            return queryIntentActivities;
        }
        return packageManager.queryIntentActivities(intent, 0);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Context context, SuccessCallback successCallback, ErrorCallback errorCallback) {
        if (context == null) {
            errorCallback.onError("PermissionHandler.ServiceManager", "Android context cannot be null.");
        } else if (i != 3 && i != 4 && i != 5) {
            if (i == 21) {
                successCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context) ? 1 : 0);
            } else if (i == 8) {
                PackageManager packageManager = context.getPackageManager();
                if (!packageManager.hasSystemFeature("android.hardware.telephony")) {
                    successCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2);
                    return;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null && telephonyManager.getPhoneType() != 0) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(packageManager).isEmpty()) {
                        successCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2);
                        return;
                    } else if (telephonyManager.getSimState() != 5) {
                        successCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
                        return;
                    } else {
                        successCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
                        return;
                    }
                }
                successCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2);
            } else if (i == 16) {
                successCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            } else {
                successCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2);
            }
        } else {
            successCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context) ? 1 : 0);
        }
    }
}
