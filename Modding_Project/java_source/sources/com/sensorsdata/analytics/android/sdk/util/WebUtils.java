package com.sensorsdata.analytics.android.sdk.util;

import android.view.View;
import com.sensorsdata.analytics.android.sdk.SALog;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class WebUtils {
    private static final String TAG = "SA.WebUtils";

    private static void invokeWebViewLoad(View view, String str, Object[] objArr, Class<?>[] clsArr) {
        if (view == null) {
            SALog.i(TAG, "WebView has not initialized.");
            return;
        }
        try {
            view.getClass().getMethod(str, clsArr).invoke(view, objArr);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void loadUrl(View view, String str) {
        invokeWebViewLoad(view, "loadUrl", new Object[]{str}, new Class[]{String.class});
    }
}
