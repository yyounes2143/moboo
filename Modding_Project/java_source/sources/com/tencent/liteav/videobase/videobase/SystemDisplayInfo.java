package com.tencent.liteav.videobase.videobase;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.firebase.messaging.Constants;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.Size;
import com.tencent.liteav.base.util.j;
import com.tencent.liteav.base.util.l;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import io.flutter.plugin.platform.PlatformPlugin;
/* compiled from: Proguard */
@JNINamespace("liteav::video")
/* loaded from: classes6.dex */
public class SystemDisplayInfo {
    private static final String TAG = "SystemDisplayInfo";

    private static Display getDefaultDisplayByWindowManager() {
        return getDefaultDisplayByWindowManager(ContextUtils.getApplicationContext());
    }

    public static Display getDisplay() {
        if (nativeGetDisplayRotationObtainMethod() == 0) {
            return getDisplayByDisplayManager();
        }
        Display defaultDisplayByWindowManager = getDefaultDisplayByWindowManager();
        if (defaultDisplayByWindowManager != null) {
            return defaultDisplayByWindowManager;
        }
        return getDisplayByDisplayManager();
    }

    private static Display getDisplayByDisplayManager() {
        Context c = j.a().c();
        if (c == null) {
            c = ContextUtils.getApplicationContext();
        }
        if (c == null) {
            LiteavLog.e(TAG, "context is null.");
            return null;
        } else if (LiteavSystemInfo.getSystemOSVersionInt() < 32) {
            return getDefaultDisplayByWindowManager(c);
        } else {
            try {
                return ((DisplayManager) c.getSystemService(Constants.ScionAnalytics.MessageType.DISPLAY_NOTIFICATION)).getDisplay(0);
            } catch (Throwable th) {
                LiteavLog.e(TAG, "error getting display from display service.", th);
                return getDefaultDisplayByWindowManager(c);
            }
        }
    }

    public static l getDisplayRotation() {
        l displayRotationCorrection = getDisplayRotationCorrection();
        if (displayRotationCorrection != null) {
            return displayRotationCorrection;
        }
        try {
            Display display = getDisplay();
            if (display != null) {
                return surfaceRotationEnumToRotation(display.getRotation());
            }
        } catch (Exception e) {
            LiteavLog.e(TAG, "error getting display rotation.", e);
        }
        return l.NORMAL;
    }

    private static l getDisplayRotationCorrection() {
        int nativeGetDisplayRotationCorrection = nativeGetDisplayRotationCorrection();
        if (l.b(nativeGetDisplayRotationCorrection)) {
            return l.a(nativeGetDisplayRotationCorrection);
        }
        return null;
    }

    public static int getDisplayRotationDegree() {
        return getDisplayRotation().mValue;
    }

    public static Size getDisplaySize() {
        try {
            Display display = getDisplay();
            if (display != null) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                display.getRealMetrics(displayMetrics);
                return new Size(displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
        } catch (Exception e) {
            LiteavLog.e(TAG, "error getting display size.", e);
        }
        return new Size(TXVodDownloadDataSource.QUALITY_720P, PlatformPlugin.DEFAULT_SYSTEM_UI);
    }

    private static native synchronized int nativeGetDisplayRotationCorrection();

    private static native synchronized int nativeGetDisplayRotationObtainMethod();

    private static l surfaceRotationEnumToRotation(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return l.NORMAL;
                }
                return l.ROTATION_270;
            }
            return l.ROTATION_180;
        }
        return l.ROTATION_90;
    }

    private static Display getDefaultDisplayByWindowManager(Context context) {
        if (context == null) {
            LiteavLog.e(TAG, "context is null.");
            return null;
        }
        try {
            return ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        } catch (Throwable th) {
            LiteavLog.e(TAG, "error getting display from window service.", th);
            return null;
        }
    }
}
