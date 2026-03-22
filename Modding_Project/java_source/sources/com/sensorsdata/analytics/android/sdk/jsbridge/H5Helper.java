package com.sensorsdata.analytics.android.sdk.jsbridge;

import android.text.TextUtils;
import android.view.View;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPIEmptyImplementation;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.internal.beans.ServerUrl;
import com.sensorsdata.analytics.android.sdk.listener.SAJSListener;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class H5Helper {
    private static CopyOnWriteArrayList<SAJSListener> mSAJSListeners;

    public static void addJavascriptInterface(View view, Object obj, String str) {
        try {
            Class<?> cls = view.getClass();
            try {
                Object invoke = cls.getMethod("getSettings", null).invoke(view, null);
                if (invoke != null) {
                    invoke.getClass().getMethod("setJavaScriptEnabled", Boolean.TYPE).invoke(invoke, Boolean.TRUE);
                }
            } catch (Exception unused) {
            }
            cls.getMethod("addJavascriptInterface", Object.class, String.class).invoke(view, obj, str);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void addSAJSListener(SAJSListener sAJSListener) {
        try {
            if (mSAJSListeners == null) {
                mSAJSListeners = new CopyOnWriteArrayList<>();
            }
            if (!mSAJSListeners.contains(sAJSListener)) {
                mSAJSListeners.add(sAJSListener);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void handleJsMessage(WeakReference<View> weakReference, String str) {
        CopyOnWriteArrayList<SAJSListener> copyOnWriteArrayList = mSAJSListeners;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            Iterator<SAJSListener> it = mSAJSListeners.iterator();
            while (it.hasNext()) {
                SAJSListener next = it.next();
                if (next != null) {
                    try {
                        next.onReceiveJSMessage(weakReference, str);
                    } catch (Exception e) {
                        SALog.printStackTrace(e);
                    }
                }
            }
        }
    }

    public static void removeSAJSListener(SAJSListener sAJSListener) {
        try {
            CopyOnWriteArrayList<SAJSListener> copyOnWriteArrayList = mSAJSListeners;
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.contains(sAJSListener)) {
                mSAJSListeners.remove(sAJSListener);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    private static void trackEvent(final String str) {
        if (SensorsDataAPI.sharedInstance() instanceof SensorsDataAPIEmptyImplementation) {
            return;
        }
        SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.jsbridge.H5Helper.1
            @Override // java.lang.Runnable
            public void run() {
                SACoreHelper.getInstance().trackEvent(new InputData().setExtras(str));
            }
        });
    }

    public static void trackEventFromH5(String str, boolean z) {
        try {
            if (!TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject(str);
                if (z) {
                    String optString = jSONObject.optString("server_url");
                    if (!TextUtils.isEmpty(optString)) {
                        if (!new ServerUrl(optString).check(new ServerUrl(SensorsDataAPI.sharedInstance().getServerUrl()))) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
                trackEvent(str);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static boolean verifyEventFromH5(String str) {
        SAConfigOptions configOptions;
        try {
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String optString = new JSONObject(str).optString("server_url");
        if (!TextUtils.isEmpty(optString)) {
            ServerUrl serverUrl = new ServerUrl(optString);
            configOptions = AbstractSensorsDataAPI.getConfigOptions();
            if (!serverUrl.check(new ServerUrl(configOptions.getServerUrl()))) {
                return false;
            }
            trackEvent(str);
            return true;
        }
        return false;
    }
}
