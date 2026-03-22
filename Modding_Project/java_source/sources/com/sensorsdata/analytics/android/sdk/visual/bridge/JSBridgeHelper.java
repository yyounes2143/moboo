package com.sensorsdata.analytics.android.sdk.visual.bridge;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.google.firebase.messaging.Constants;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.listener.SAJSListener;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class JSBridgeHelper implements WebViewJavascriptBridge {
    private static final String CALLBACK_ID_FORMAT = "JAVA_CB_%s";
    private static final String CALL_TYPE_GET_VISUAL_PROPERTIES = "getJSVisualProperties";
    private Map<String, OnBridgeCallback> mCallbacks = new HashMap();
    private SAJSListener mSAJSListener;

    /* JADX INFO: Access modifiers changed from: private */
    public static void invokeWebViewLoad(View view, String str, Object[] objArr, Class[] clsArr) {
        try {
            view.getClass().getMethod(str, clsArr).invoke(view, objArr);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void addSAJSListener() {
        if (this.mSAJSListener == null) {
            this.mSAJSListener = new SAJSListener() { // from class: com.sensorsdata.analytics.android.sdk.visual.bridge.JSBridgeHelper.1
                @Override // com.sensorsdata.analytics.android.sdk.listener.SAJSListener
                public void onReceiveJSMessage(WeakReference<View> weakReference, String str) {
                    OnBridgeCallback onBridgeCallback;
                    JSONObject optJSONObject;
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        if (TextUtils.equals(JSBridgeHelper.CALL_TYPE_GET_VISUAL_PROPERTIES, jSONObject.optString("callType"))) {
                            String optString = jSONObject.optString(Constants.MessagePayloadKeys.MSGID_SERVER);
                            if (!TextUtils.isEmpty(optString) && (onBridgeCallback = (OnBridgeCallback) JSBridgeHelper.this.mCallbacks.remove(optString)) != null && (optJSONObject = jSONObject.optJSONObject("data")) != null) {
                                onBridgeCallback.onCallBack(optJSONObject.toString());
                            }
                        }
                    } catch (Exception e) {
                        SALog.printStackTrace(e);
                    }
                }
            };
            SensorsDataAPI.sharedInstance().addSAJSListener(this.mSAJSListener);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.bridge.WebViewJavascriptBridge
    public synchronized void sendToWeb(final View view, final String str, Object obj, OnBridgeCallback onBridgeCallback) {
        final JSONObject jSONObject;
        try {
            try {
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSRequest jSRequest = new JSRequest();
            jSRequest.methodName = str;
            if (onBridgeCallback != null) {
                String format = String.format(CALLBACK_ID_FORMAT, Long.valueOf(SystemClock.currentThreadTimeMillis()));
                this.mCallbacks.put(format, onBridgeCallback);
                jSRequest.messageId = format;
            }
            if (obj instanceof String) {
                jSONObject = new JSONObject((String) obj);
            } else if (obj instanceof JSONObject) {
                jSONObject = new JSONObject();
                jSONObject.put(Constants.MessagePayloadKeys.MSGID_SERVER, jSRequest.messageId);
                jSONObject.put(TPDownloadProxyEnum.USER_PLATFORM, "Android");
                JSONUtils.mergeJSONObject((JSONObject) obj, jSONObject);
            } else {
                jSONObject = null;
            }
            if (jSONObject == null) {
                return;
            }
            if (view != null) {
                view.post(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.visual.bridge.JSBridgeHelper.2
                    @Override // java.lang.Runnable
                    public void run() {
                        View view2 = view;
                        JSBridgeHelper.invokeWebViewLoad(view2, "loadUrl", new Object[]{"javascript:window.sensorsdata_app_call_js(" + ("'" + str + "','" + Base64.encodeToString(jSONObject.toString().getBytes(), 0) + "'") + ")"}, new Class[]{String.class});
                    }
                });
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.bridge.WebViewJavascriptBridge
    public void sendToWeb(View view, String str, Object obj) {
        sendToWeb(view, str, obj, null);
    }
}
