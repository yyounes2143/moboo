package com.sensorsdata.analytics.android.sdk.util;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.tasks.ThreadNameConstants;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Method;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class AppInfoUtils {
    private static String mAppVersionName;
    private static Bundle mConfigBundle;

    public static Bundle getAppInfoBundle(Context context) {
        if (mConfigBundle == null) {
            try {
                ApplicationInfo applicationInfo = context.getApplicationContext().getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null) {
                    mConfigBundle = applicationInfo.metaData;
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
        Bundle bundle = mConfigBundle;
        if (bundle == null) {
            return new Bundle();
        }
        return bundle;
    }

    public static CharSequence getAppName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            return packageManager.getApplicationInfo(context.getPackageName(), 128).loadLabel(packageManager);
        } catch (Throwable th) {
            SALog.i("SA.AppInfoUtils", th.getMessage());
            return "";
        }
    }

    public static String getAppVersionName(Context context) {
        if (context == null) {
            return "";
        }
        if (!TextUtils.isEmpty(mAppVersionName)) {
            return mAppVersionName;
        }
        try {
            mAppVersionName = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        return mAppVersionName;
    }

    private static String getCurrentProcessName() {
        String processName;
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                processName = Application.getProcessName();
                return processName;
            }
            String currentProcessNameByCmd = getCurrentProcessNameByCmd();
            if (TextUtils.isEmpty(currentProcessNameByCmd)) {
                return getCurrentProcessNameByAT();
            }
            return currentProcessNameByCmd;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    private static String getCurrentProcessNameByAT() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", null);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, null);
            if (invoke instanceof String) {
                return (String) invoke;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static String getCurrentProcessNameByCmd() {
        FileInputStream fileInputStream;
        byte[] bArr;
        int i;
        try {
            try {
                fileInputStream = new FileInputStream("/proc/self/cmdline");
            } catch (IOException e) {
                SALog.printStackTrace(e);
            }
        } catch (Throwable unused) {
            fileInputStream = null;
        }
        try {
            bArr = new byte[256];
            i = 0;
            while (true) {
                int read = fileInputStream.read();
                if (read <= 0 || i >= 256) {
                    break;
                }
                bArr[i] = (byte) read;
                i++;
            }
        } catch (Throwable unused2) {
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return null;
        }
        if (i > 0) {
            String str = new String(bArr, 0, i, "UTF-8");
            try {
                fileInputStream.close();
                return str;
            } catch (IOException e2) {
                SALog.printStackTrace(e2);
                return str;
            }
        }
        fileInputStream.close();
        return null;
    }

    public static String getMainProcessName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getApplicationContext().getApplicationInfo().processName;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return "";
        }
    }

    public static String getProcessName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getApplicationInfo().processName;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return "";
        }
    }

    public static boolean isMainProcess(Context context, Bundle bundle) {
        if (context == null) {
            return false;
        }
        String mainProcessName = getMainProcessName(context);
        if (TextUtils.isEmpty(mainProcessName) && bundle != null) {
            mainProcessName = bundle.getString("com.sensorsdata.analytics.android.MainProcessName");
        }
        if (TextUtils.isEmpty(mainProcessName)) {
            return true;
        }
        String currentProcessName = getCurrentProcessName();
        if (!TextUtils.isEmpty(currentProcessName) && !mainProcessName.equals(currentProcessName)) {
            return false;
        }
        return true;
    }

    public static boolean isTaskExecuteThread() {
        return TextUtils.equals(ThreadNameConstants.THREAD_TASK_EXECUTE, Thread.currentThread().getName());
    }
}
