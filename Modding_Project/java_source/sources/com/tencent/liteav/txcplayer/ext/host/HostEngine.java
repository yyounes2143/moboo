package com.tencent.liteav.txcplayer.ext.host;

import android.content.Context;
import com.tencent.liteav.base.util.LiteavLog;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class HostEngine {
    public static final String TAG = "HostEngine";
    private static HostEngine mInstance;
    private Context mAppContext;
    private boolean mIsInit = false;

    private HostEngine() {
    }

    public static HostEngine getInstance() {
        if (mInstance == null) {
            synchronized (HostEngine.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new HostEngine();
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    public boolean checkAndLoadPlugin(int i) {
        LiteavLog.i(TAG, "[checkAndLoadPlugin], pluginId=".concat(String.valueOf(i)));
        return PluginManager.getInstance().checkAndLoadPlugin(i);
    }

    public Context getAppContext() {
        return this.mAppContext;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a6, code lost:
        if (r6 == r7.value) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleSyncRequestHandleByHost(int r6, java.util.Map<java.lang.String, java.lang.Object> r7, java.util.Map<java.lang.String, java.lang.Object> r8) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.txcplayer.ext.host.HostEngine.handleSyncRequestHandleByHost(int, java.util.Map, java.util.Map):void");
    }

    public synchronized void init(Context context) {
        LiteavLog.d(TAG, "[init], appContext=" + context + " ,mIsInit=" + this.mIsInit);
        if (this.mIsInit) {
            return;
        }
        this.mAppContext = context;
        onCreate();
        this.mIsInit = true;
    }

    public void onCreate() {
        LiteavLog.d(TAG, "[onCreate]");
        PluginManager.getInstance().loadPlugin();
    }

    public void onDestroy() {
        LiteavLog.d(TAG, "[onDestroy]");
        PluginManager.getInstance().unLoadPlugin();
    }

    public void sendAsyncRequestToPlugin(int i, int i2, Map<String, Object> map, PluginCallback pluginCallback) {
        IPluginBase pluginInstance = PluginManager.getInstance().getPluginInstance(i);
        if (pluginInstance != null) {
            pluginInstance.handleAsyncRequest(i, i2, map, pluginCallback);
            return;
        }
        LiteavLog.w(TAG, "[sendAsyncRequestToPlugin], destPluginId=" + i + " is not loaded");
    }

    public void sendSyncRequestHandleByHost(int i, Map<String, Object> map, Map<String, Object> map2) {
        handleSyncRequestHandleByHost(i, map, map2);
    }

    public void sendSyncRequestToPlugin(int i, int i2, Map<String, Object> map, Map<String, Object> map2) {
        IPluginBase pluginInstance = PluginManager.getInstance().getPluginInstance(i);
        if (pluginInstance != null) {
            pluginInstance.handleSyncRequest(i, i2, map, map2);
            return;
        }
        LiteavLog.w(TAG, "[sendSyncRequestToPlugin], destPluginId=" + i + " is not loaded");
    }
}
