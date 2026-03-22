package com.baseflow.permissionhandler;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.provider.Settings;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import com.vungle.ads.internal.protos.Sdk;
import io.flutter.plugin.common.PluginRegistry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class PermissionManager implements PluginRegistry.ActivityResultListener, PluginRegistry.RequestPermissionsResultListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Map<Integer, Integer> f3959Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f3960Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Activity f3961Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestPermissionsSuccessCallback f3962Wwwwwwwwwwwwwwwwwwwwwwww;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f3963Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @FunctionalInterface
    /* loaded from: classes3.dex */
    public interface CheckPermissionsSuccessCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i);
    }

    /* compiled from: Proguard */
    @FunctionalInterface
    /* loaded from: classes3.dex */
    public interface RequestPermissionsSuccessCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map<Integer, Integer> map);
    }

    /* compiled from: Proguard */
    @FunctionalInterface
    /* loaded from: classes3.dex */
    public interface ShouldShowRequestPermissionRationaleSuccessCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z);
    }

    public PermissionManager(@NonNull Context context) {
        this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww = context;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(int i, ShouldShowRequestPermissionRationaleSuccessCallback shouldShowRequestPermissionRationaleSuccessCallback, ErrorCallback errorCallback) {
        Activity activity = this.f3961Wwwwwwwwwwwwwwwwwwwwwww;
        if (activity == null) {
            errorCallback.onError("PermissionHandler.PermissionManager", "Unable to detect current Android Activity.");
            return;
        }
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity, i);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            shouldShowRequestPermissionRationaleSuccessCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            shouldShowRequestPermissionRationaleSuccessCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
        } else {
            shouldShowRequestPermissionRationaleSuccessCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ActivityCompat.shouldShowRequestPermissionRationale(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(0)));
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Activity activity) {
        this.f3961Wwwwwwwwwwwwwwwwwwwwwww = activity;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(List<Integer> list, RequestPermissionsSuccessCallback requestPermissionsSuccessCallback, ErrorCallback errorCallback) {
        if (this.f3960Wwwwwwwwwwwwwwwwwwwwww > 0) {
            errorCallback.onError("PermissionHandler.PermissionManager", "A request for permissions is already running, please wait for it to finish before doing another request (note that you can request multiple permissions at the same time).");
        } else if (this.f3961Wwwwwwwwwwwwwwwwwwwwwww == null) {
            errorCallback.onError("PermissionHandler.PermissionManager", "Unable to detect current Android Activity.");
        } else {
            this.f3962Wwwwwwwwwwwwwwwwwwwwwwww = requestPermissionsSuccessCallback;
            this.f3959Wwwwwwwwwwwwwwwwwwwww = new HashMap();
            this.f3960Wwwwwwwwwwwwwwwwwwwwww = 0;
            ArrayList arrayList = new ArrayList();
            for (Integer num : list) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(num.intValue()) == 1) {
                    if (!this.f3959Wwwwwwwwwwwwwwwwwwwww.containsKey(num)) {
                        this.f3959Wwwwwwwwwwwwwwwwwwwww.put(num, 1);
                    }
                } else {
                    List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, num.intValue());
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
                        int i = Build.VERSION.SDK_INT;
                        if (num.intValue() == 16) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS", 209);
                        } else if (i >= 30 && num.intValue() == 22) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION", 210);
                        } else if (num.intValue() == 23) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.action.MANAGE_OVERLAY_PERMISSION", 211);
                        } else if (i >= 26 && num.intValue() == 24) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.MANAGE_UNKNOWN_APP_SOURCES", 212);
                        } else if (num.intValue() == 27) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS", 213);
                        } else if (i >= 31 && num.intValue() == 34) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.settings.REQUEST_SCHEDULE_EXACT_ALARM", Sdk.SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE);
                        } else if (num.intValue() != 37 && num.intValue() != 0) {
                            arrayList.addAll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                            this.f3960Wwwwwwwwwwwwwwwwwwwwww += Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
                        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            arrayList.add("android.permission.WRITE_CALENDAR");
                            arrayList.add("android.permission.READ_CALENDAR");
                            this.f3960Wwwwwwwwwwwwwwwwwwwwww += 2;
                        } else {
                            this.f3959Wwwwwwwwwwwwwwwwwwwww.put(num, 0);
                        }
                    } else if (!this.f3959Wwwwwwwwwwwwwwwwwwwww.containsKey(num)) {
                        this.f3959Wwwwwwwwwwwwwwwwwwwww.put(num, 0);
                        if (num.intValue() == 22 && Build.VERSION.SDK_INT < 30) {
                            this.f3959Wwwwwwwwwwwwwwwwwwwww.put(num, 2);
                        } else {
                            this.f3959Wwwwwwwwwwwwwwwwwwwww.put(num, 0);
                        }
                    }
                }
            }
            if (arrayList.size() > 0) {
                ActivityCompat.requestPermissions(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, (String[]) arrayList.toArray(new String[0]), 24);
            }
            RequestPermissionsSuccessCallback requestPermissionsSuccessCallback2 = this.f3962Wwwwwwwwwwwwwwwwwwwwwwww;
            if (requestPermissionsSuccessCallback2 != null && this.f3960Wwwwwwwwwwwwwwwwwwwwww == 0) {
                requestPermissionsSuccessCallback2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f3959Wwwwwwwwwwwwwwwwwwwww);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
        if (this.f3961Wwwwwwwwwwwwwwwwwwwwwww == null) {
            return;
        }
        Intent intent = new Intent(str);
        if (!str.equals("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS")) {
            intent.setData(Uri.parse("package:" + this.f3961Wwwwwwwwwwwwwwwwwwwwwww.getPackageName()));
        }
        this.f3961Wwwwwwwwwwwwwwwwwwwwwww.startActivityForResult(intent, i);
        this.f3960Wwwwwwwwwwwwwwwwwwwwww++;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        boolean z;
        boolean z2;
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww, 37);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contains("android.permission.WRITE_CALENDAR")) {
            z = true;
        } else {
            z = false;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contains("android.permission.READ_CALENDAR")) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z || !z2) {
            return false;
        }
        return true;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        boolean isExternalStorageManager;
        boolean canRequestPackageInstalls;
        boolean canScheduleExactAlarms;
        int i2;
        if (i == 17) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (i == 21) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if ((i == 30 || i == 28 || i == 29) && Build.VERSION.SDK_INT < 31) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if ((i == 37 || i == 0) && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            return 0;
        }
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww, i);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return 1;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() == 0) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.toString();
            if (i != 22 || Build.VERSION.SDK_INT >= 30) {
                return 0;
            }
            return 2;
        }
        if (this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww.getApplicationInfo().targetSdkVersion >= 23) {
            HashSet hashSet = new HashSet();
            for (String str : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                if (i == 16) {
                    String packageName = this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
                    PowerManager powerManager = (PowerManager) this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww.getSystemService("power");
                    if (powerManager != null && powerManager.isIgnoringBatteryOptimizations(packageName)) {
                        hashSet.add(1);
                    } else {
                        hashSet.add(0);
                    }
                } else if (i == 22) {
                    if (Build.VERSION.SDK_INT < 30) {
                        hashSet.add(2);
                    }
                    isExternalStorageManager = Environment.isExternalStorageManager();
                    hashSet.add(Integer.valueOf(isExternalStorageManager ? 1 : 0));
                } else if (i == 23) {
                    hashSet.add(Integer.valueOf(Settings.canDrawOverlays(this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww) ? 1 : 0));
                } else if (i == 24) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        canRequestPackageInstalls = this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww.getPackageManager().canRequestPackageInstalls();
                        hashSet.add(Integer.valueOf(canRequestPackageInstalls ? 1 : 0));
                    }
                } else if (i == 27) {
                    hashSet.add(Integer.valueOf(((NotificationManager) this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww.getSystemService("notification")).isNotificationPolicyAccessGranted() ? 1 : 0));
                } else if (i == 34) {
                    if (Build.VERSION.SDK_INT >= 31) {
                        canScheduleExactAlarms = ((AlarmManager) this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww.getSystemService(NotificationCompat.CATEGORY_ALARM)).canScheduleExactAlarms();
                        hashSet.add(Integer.valueOf(canScheduleExactAlarms ? 1 : 0));
                    } else {
                        hashSet.add(1);
                    }
                } else if (i != 9 && i != 32) {
                    if (ContextCompat.checkSelfPermission(this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww, str) != 0) {
                        hashSet.add(Integer.valueOf(PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, str)));
                    }
                } else {
                    int checkSelfPermission = ContextCompat.checkSelfPermission(this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww, str);
                    if (Build.VERSION.SDK_INT >= 34) {
                        i2 = ContextCompat.checkSelfPermission(this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED");
                    } else {
                        i2 = checkSelfPermission;
                    }
                    if (i2 == 0 && checkSelfPermission == -1) {
                        hashSet.add(3);
                    } else if (checkSelfPermission == 0) {
                        hashSet.add(1);
                    } else {
                        hashSet.add(Integer.valueOf(PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, str)));
                    }
                }
            }
            if (!hashSet.isEmpty()) {
                return PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwww(hashSet).intValue();
            }
        }
        return 1;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, CheckPermissionsSuccessCallback checkPermissionsSuccessCallback) {
        checkPermissionsSuccessCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i));
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Build.VERSION.SDK_INT < 33) {
            if (NotificationManagerCompat.from(this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww).areNotificationsEnabled()) {
                return 1;
            }
            return 0;
        } else if (this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww.checkSelfPermission("android.permission.POST_NOTIFICATIONS") == 0) {
            return 1;
        } else {
            return PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, "android.permission.POST_NOTIFICATIONS");
        }
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww, 21);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            return 1;
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i, int i2, Intent intent) {
        boolean z;
        int i3;
        boolean canScheduleExactAlarms;
        boolean canRequestPackageInstalls;
        boolean isExternalStorageManager;
        int i4;
        Activity activity = this.f3961Wwwwwwwwwwwwwwwwwwwwwww;
        boolean z2 = false;
        z2 = false;
        if (activity == null) {
            return false;
        }
        if (this.f3959Wwwwwwwwwwwwwwwwwwwww == null) {
            this.f3960Wwwwwwwwwwwwwwwwwwwwww = 0;
            return false;
        }
        if (i == 209) {
            String packageName = this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
            PowerManager powerManager = (PowerManager) this.f3963Wwwwwwwwwwwwwwwwwwwwwwwww.getSystemService("power");
            if (powerManager != null && powerManager.isIgnoringBatteryOptimizations(packageName)) {
                z2 = true;
            }
            i3 = 16;
            i4 = z2;
        } else if (i == 210) {
            if (Build.VERSION.SDK_INT >= 30) {
                isExternalStorageManager = Environment.isExternalStorageManager();
                i3 = 22;
                i4 = isExternalStorageManager;
            } else {
                return false;
            }
        } else if (i == 211) {
            i3 = 23;
            i4 = Settings.canDrawOverlays(activity);
        } else if (i == 212) {
            if (Build.VERSION.SDK_INT >= 26) {
                canRequestPackageInstalls = activity.getPackageManager().canRequestPackageInstalls();
                i3 = 24;
                i4 = canRequestPackageInstalls;
            } else {
                return false;
            }
        } else if (i == 213) {
            i3 = 27;
            i4 = ((NotificationManager) activity.getSystemService("notification")).isNotificationPolicyAccessGranted();
        } else if (i != 214) {
            return false;
        } else {
            AlarmManager alarmManager = (AlarmManager) activity.getSystemService(NotificationCompat.CATEGORY_ALARM);
            if (Build.VERSION.SDK_INT >= 31) {
                canScheduleExactAlarms = alarmManager.canScheduleExactAlarms();
                z = canScheduleExactAlarms;
            } else {
                z = true;
            }
            i3 = 34;
            i4 = z;
        }
        this.f3959Wwwwwwwwwwwwwwwwwwwww.put(Integer.valueOf(i3), Integer.valueOf(i4));
        int i5 = this.f3960Wwwwwwwwwwwwwwwwwwwwww - 1;
        this.f3960Wwwwwwwwwwwwwwwwwwwwww = i5;
        RequestPermissionsSuccessCallback requestPermissionsSuccessCallback = this.f3962Wwwwwwwwwwwwwwwwwwwwwwww;
        if (requestPermissionsSuccessCallback != null && i5 == 0) {
            requestPermissionsSuccessCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f3959Wwwwwwwwwwwwwwwwwwwww);
        }
        return true;
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (i != 24) {
            this.f3960Wwwwwwwwwwwwwwwwwwwwww = 0;
            return false;
        } else if (this.f3959Wwwwwwwwwwwwwwwwwwwww == null) {
            return false;
        } else {
            if (strArr.length == 0 && iArr.length == 0) {
                this.f3960Wwwwwwwwwwwwwwwwwwwwww = 0;
                return false;
            }
            List asList = Arrays.asList(strArr);
            int indexOf = asList.indexOf("android.permission.WRITE_CALENDAR");
            if (indexOf >= 0) {
                int Wwwwwwwwwwwwwwwwwwwwwwww2 = PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, "android.permission.WRITE_CALENDAR", iArr[indexOf]);
                this.f3959Wwwwwwwwwwwwwwwwwwwww.put(36, Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwww2));
                int indexOf2 = asList.indexOf("android.permission.READ_CALENDAR");
                if (indexOf2 >= 0) {
                    Integer Wwwwwwwwwwwwwwwwwwwwwwwwww2 = PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww(Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwww2), Integer.valueOf(PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, "android.permission.READ_CALENDAR", iArr[indexOf2])));
                    Wwwwwwwwwwwwwwwwwwwwwwwwww2.intValue();
                    this.f3959Wwwwwwwwwwwwwwwwwwwww.put(37, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                    this.f3959Wwwwwwwwwwwwwwwwwwwww.put(0, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
            for (int i2 = 0; i2 < strArr.length; i2++) {
                String str = strArr[i2];
                if (!str.equals("android.permission.WRITE_CALENDAR") && !str.equals("android.permission.READ_CALENDAR") && (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) != 20) {
                    int i3 = iArr[i2];
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 8) {
                        this.f3959Wwwwwwwwwwwwwwwwwwwww.put(8, PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f3959Wwwwwwwwwwwwwwwwwwwww.get(8), Integer.valueOf(PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, str, i3))));
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 7) {
                        if (!this.f3959Wwwwwwwwwwwwwwwwwwwww.containsKey(7)) {
                            this.f3959Wwwwwwwwwwwwwwwwwwwww.put(7, Integer.valueOf(PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, str, i3)));
                        }
                        if (!this.f3959Wwwwwwwwwwwwwwwwwwwww.containsKey(14)) {
                            this.f3959Wwwwwwwwwwwwwwwwwwwww.put(14, Integer.valueOf(PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, str, i3)));
                        }
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 4) {
                        int Wwwwwwwwwwwwwwwwwwwwwwww3 = PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, str, i3);
                        if (!this.f3959Wwwwwwwwwwwwwwwwwwwww.containsKey(4)) {
                            this.f3959Wwwwwwwwwwwwwwwwwwwww.put(4, Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwww3));
                        }
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 3) {
                        int Wwwwwwwwwwwwwwwwwwwwwwww4 = PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, str, i3);
                        if (Build.VERSION.SDK_INT < 29 && !this.f3959Wwwwwwwwwwwwwwwwwwwww.containsKey(4)) {
                            this.f3959Wwwwwwwwwwwwwwwwwwwww.put(4, Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwww4));
                        }
                        if (!this.f3959Wwwwwwwwwwwwwwwwwwwww.containsKey(5)) {
                            this.f3959Wwwwwwwwwwwwwwwwwwwww.put(5, Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwww4));
                        }
                        this.f3959Wwwwwwwwwwwwwwwwwwwww.put(Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2), Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwww4));
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 9 && Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 32) {
                        if (!this.f3959Wwwwwwwwwwwwwwwwwwwww.containsKey(Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2))) {
                            this.f3959Wwwwwwwwwwwwwwwwwwwww.put(Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2), Integer.valueOf(PermissionUtils.Wwwwwwwwwwwwwwwwwwwwwwww(this.f3961Wwwwwwwwwwwwwwwwwwwwwww, str, i3)));
                        }
                    } else {
                        this.f3959Wwwwwwwwwwwwwwwwwwwww.put(Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2), Integer.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2)));
                    }
                }
            }
            int length = this.f3960Wwwwwwwwwwwwwwwwwwwwww - iArr.length;
            this.f3960Wwwwwwwwwwwwwwwwwwwwww = length;
            RequestPermissionsSuccessCallback requestPermissionsSuccessCallback = this.f3962Wwwwwwwwwwwwwwwwwwwwwwww;
            if (requestPermissionsSuccessCallback != null && length == 0) {
                requestPermissionsSuccessCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f3959Wwwwwwwwwwwwwwwwwwwww);
                return true;
            }
            return true;
        }
    }
}
