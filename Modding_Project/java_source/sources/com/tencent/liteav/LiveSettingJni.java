package com.tencent.liteav;

import android.text.TextUtils;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.SoLoader;
/* compiled from: Proguard */
@JNINamespace("liteav")
/* loaded from: classes6.dex */
public class LiveSettingJni {
    private static final String TAG = "LiveSettingJni";
    private static String mUserId;

    static {
        SoLoader.loadAllLibraries();
    }

    public static String getUserId() {
        return mUserId;
    }

    private static native void nativeSetAppId(String str);

    private static native void nativeSetAppVersion(String str);

    private static native void nativeSetUserId(String str);

    public static void setAppId(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        nativeSetAppId(str);
    }

    public static void setAppVersion(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        nativeSetAppVersion(str);
    }

    public static void setUserId(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        mUserId = str;
        nativeSetUserId(str);
    }
}
