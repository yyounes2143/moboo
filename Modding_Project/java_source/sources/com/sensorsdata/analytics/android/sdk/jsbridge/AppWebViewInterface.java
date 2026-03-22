package com.sensorsdata.analytics.android.sdk.jsbridge;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.internal.beans.ServerUrl;
import com.sensorsdata.analytics.android.sdk.util.ReflectUtil;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class AppWebViewInterface {
    private static final String TAG = "SA.AppWebViewInterface";
    private final boolean enableVerify;
    private final Context mContext;
    private WeakReference<View> mWebView;
    private JSONObject properties;

    public AppWebViewInterface(Context context, JSONObject jSONObject, boolean z) {
        this(context, jSONObject, z, null);
    }

    @JavascriptInterface
    public boolean sensorsdata_abtest_module() {
        try {
            if (ReflectUtil.callStaticMethod(ReflectUtil.getCurrentClass(new String[]{"com.sensorsdata.abtest.SensorsABTest"}), "shareInstance", new Object[0]) == null) {
                return false;
            }
            return true;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    @JavascriptInterface
    public String sensorsdata_call_app() {
        try {
            if (this.properties == null) {
                this.properties = new JSONObject();
            }
            this.properties.put("type", "Android");
            String loginId = SensorsDataAPI.sharedInstance(this.mContext).getLoginId();
            if (!TextUtils.isEmpty(loginId)) {
                this.properties.put("distinct_id", loginId);
                this.properties.put("is_login", true);
            } else {
                this.properties.put("distinct_id", SensorsDataAPI.sharedInstance(this.mContext).getAnonymousId());
                this.properties.put("is_login", false);
            }
            return this.properties.toString();
        } catch (JSONException e) {
            SALog.i(TAG, e.getMessage());
            return null;
        }
    }

    @JavascriptInterface
    public String sensorsdata_get_app_visual_config() {
        return (String) SAModuleManager.getInstance().invokeModuleFunction(Modules.Visual.MODULE_NAME, Modules.Visual.METHOD_H5_GET_APPVISUAL_CONFIG, new Object[0]);
    }

    @JavascriptInterface
    public String sensorsdata_get_server_url() {
        SAConfigOptions configOptions;
        SAConfigOptions configOptions2;
        configOptions = AbstractSensorsDataAPI.getConfigOptions();
        if (configOptions.isAutoTrackWebView()) {
            configOptions2 = AbstractSensorsDataAPI.getConfigOptions();
            return configOptions2.getServerUrl();
        }
        return "";
    }

    @JavascriptInterface
    public void sensorsdata_js_call_app(String str) {
        try {
            WeakReference<View> weakReference = this.mWebView;
            if (weakReference != null) {
                H5Helper.handleJsMessage(weakReference, str);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    @JavascriptInterface
    public void sensorsdata_track(String str) {
        try {
            SALog.i(TAG, "sensorsdata_track event = " + str);
            H5Helper.trackEventFromH5(str, this.enableVerify);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    @JavascriptInterface
    public boolean sensorsdata_verify(String str) {
        try {
            SALog.i(TAG, "sensorsdata_verify event = " + str);
            if (!this.enableVerify) {
                sensorsdata_track(str);
                return true;
            }
            return H5Helper.verifyEventFromH5(str);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    @JavascriptInterface
    public boolean sensorsdata_visual_verify(String str) {
        SAConfigOptions configOptions;
        try {
            SALog.i(TAG, "sensorsdata_visual_verify event = " + str);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        if (!this.enableVerify) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String optString = new JSONObject(str).optString("server_url");
        if (!TextUtils.isEmpty(optString)) {
            ServerUrl serverUrl = new ServerUrl(optString);
            configOptions = AbstractSensorsDataAPI.getConfigOptions();
            return serverUrl.check(new ServerUrl(configOptions.getServerUrl()));
        }
        return false;
    }

    public AppWebViewInterface(Context context, JSONObject jSONObject, boolean z, View view) {
        this.mContext = context;
        this.properties = jSONObject;
        this.enableVerify = z;
        if (view != null) {
            this.mWebView = new WeakReference<>(view);
        }
    }
}
