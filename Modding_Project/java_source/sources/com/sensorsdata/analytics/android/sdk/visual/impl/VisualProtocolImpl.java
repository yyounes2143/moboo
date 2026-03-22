package com.sensorsdata.analytics.android.sdk.visual.impl;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.jsbridge.H5Helper;
import com.sensorsdata.analytics.android.sdk.monitor.SensorsDataLifecycleMonitorManager;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewNode;
import com.sensorsdata.analytics.android.sdk.visual.HeatMapService;
import com.sensorsdata.analytics.android.sdk.visual.NodesProcess;
import com.sensorsdata.analytics.android.sdk.visual.R;
import com.sensorsdata.analytics.android.sdk.visual.VisualizedAutoTrackService;
import com.sensorsdata.analytics.android.sdk.visual.WebViewVisualInterface;
import com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager;
import com.sensorsdata.analytics.android.sdk.visual.utils.AppStateManager;
import com.sensorsdata.analytics.android.sdk.visual.utils.VisualUtil;
import com.sensorsdata.analytics.android.sdk.visual.view.PairingCodeEditDialog;
import com.sensorsdata.analytics.android.sdk.visual.view.VisualDialog;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class VisualProtocolImpl {
    private static final String TAG = "SA.SAVisualProtocolImpl";
    private final SAContextManager mSAContextManager;

    public VisualProtocolImpl(SAContextManager sAContextManager) {
        this.mSAContextManager = sAContextManager;
        SensorsDataLifecycleMonitorManager.getInstance().addActivityLifeCallback(new AppStateManager());
    }

    private void addVisualJavascriptInterface(View view) {
        if (view != null) {
            int i = R.id.sensors_analytics_tag_view_webview_visual;
            if (view.getTag(i) == null) {
                view.setTag(i, new Object());
                H5Helper.addJavascriptInterface(view, new WebViewVisualInterface(view), "SensorsData_App_Visual_Bridge");
            }
        }
    }

    private String appVisualConfig() {
        try {
            if (this.mSAContextManager.getInternalConfigs().saConfigOptions != null && this.mSAContextManager.getInternalConfigs().saConfigOptions.isVisualizedPropertiesEnabled()) {
                VisualPropertiesManager.getInstance().getVisualPropertiesH5Helper().registerListeners();
                return VisualPropertiesManager.getInstance().getVisualPropertiesCache().getVisualCache();
            }
            return null;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    private void mergeVisualProperties(JSONObject jSONObject, View view) {
        if (view != null) {
            try {
                ViewNode addViewPathProperties = VisualUtil.addViewPathProperties(SAViewUtils.getActivityOfView(view.getContext(), view), view, jSONObject);
                if (this.mSAContextManager.getInternalConfigs().saConfigOptions.isVisualizedPropertiesEnabled()) {
                    VisualPropertiesManager.getInstance().mergeVisualProperties(VisualPropertiesManager.VisualEventType.APP_CLICK, jSONObject, addViewPathProperties);
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    private void showPairingCodeInputDialog(final Context context) {
        if (this.mSAContextManager.getContext() == null) {
            SALog.i(TAG, "The argument context can't be null");
        } else if (!(context instanceof Activity)) {
            SALog.i(TAG, "The static method showPairingCodeEditDialog(Context context) only accepts Activity as a parameter");
        } else {
            ((Activity) context).runOnUiThread(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.visual.impl.VisualProtocolImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    new PairingCodeEditDialog(context).show();
                }
            });
        }
    }

    public String flutterGetAppVisualConfig() {
        String appVisualConfig = appVisualConfig();
        if (!TextUtils.isEmpty(appVisualConfig)) {
            return Base64.encodeToString(appVisualConfig.getBytes(), 2);
        }
        return null;
    }

    public Boolean getVisualState() {
        boolean z;
        if (!VisualizedAutoTrackService.getInstance().isServiceRunning() && !HeatMapService.getInstance().isServiceRunning()) {
            z = false;
        } else {
            z = true;
        }
        return Boolean.valueOf(z);
    }

    public String h5GetAppVisualConfig() {
        String appVisualConfig = appVisualConfig();
        if (!TextUtils.isEmpty(appVisualConfig)) {
            return Base64.encodeToString(appVisualConfig.getBytes(), 0);
        }
        return null;
    }

    public <T> T invokeModuleFunction(String str, Object... objArr) {
        char c;
        try {
            switch (str.hashCode()) {
                case -2132080600:
                    if (str.equals(Modules.Visual.METHOD_RESUME_VISUAL_SERVICE)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -2103270069:
                    if (str.equals(Modules.Visual.METHOD_ADD_VISUAL_JAVASCRIPTINTERFACE)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -2071982886:
                    if (str.equals(Modules.Visual.METHOD_H5_GET_APPVISUAL_CONFIG)) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case -1974002693:
                    if (str.equals(Modules.Visual.METHOD_GET_VISUAL_STATE)) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case -1706331910:
                    if (str.equals(Modules.Visual.METHOD_SHOW_PAIRING_CODE_INPUTDIALOG)) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -746052307:
                    if (str.equals(Modules.Visual.METHOD_SHOW_OPEN_VISUALIZED_AUTOTRACK_DIALOG)) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case -467015053:
                    if (str.equals(Modules.Visual.METHOD_STOP_VISUAL_SERVICE)) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -366380714:
                    if (str.equals(Modules.Visual.METHOD_RESUME_HEATMAP_SERVICE)) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -288956309:
                    if (str.equals(Modules.Visual.METHOD_STOP_HEATMAP_SERVICE)) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 561737425:
                    if (str.equals(Modules.Visual.METHOD_REQUEST_VISUAL_CONFIG)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 834619917:
                    if (str.equals(Modules.Visual.METHOD_SHOW_OPEN_HEATMAP_DIALOG)) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 873596527:
                    if (str.equals(Modules.Visual.METHOD_SEND_VISUALIZED_MESSAGE)) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 1417500907:
                    if (str.equals(Modules.Visual.METHOD_MERGE_VISUAL_PROPERTIES)) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 1571660393:
                    if (str.equals(Modules.Visual.METHOD_FLUTTER_GET_APPVISUAL_CONFIG)) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    addVisualJavascriptInterface((View) objArr[0]);
                    return null;
                case 1:
                    VisualPropertiesManager.getInstance().requestVisualConfig(this.mSAContextManager);
                    return null;
                case 2:
                    mergeVisualProperties((JSONObject) objArr[0], (View) objArr[1]);
                    return null;
                case 3:
                    VisualizedAutoTrackService.getInstance().resume();
                    return null;
                case 4:
                    VisualizedAutoTrackService.getInstance().stop();
                    return null;
                case 5:
                    HeatMapService.getInstance().resume();
                    return null;
                case 6:
                    HeatMapService.getInstance().stop();
                    return null;
                case 7:
                    showPairingCodeInputDialog((Context) objArr[0]);
                    return null;
                case '\b':
                    VisualDialog.showOpenHeatMapDialog((Activity) objArr[0], (String) objArr[1], (String) objArr[2]);
                    return null;
                case '\t':
                    VisualDialog.showOpenVisualizedAutoTrackDialog((Activity) objArr[0], (String) objArr[1], (String) objArr[2]);
                    return null;
                case '\n':
                    return (T) h5GetAppVisualConfig();
                case 11:
                    return (T) flutterGetAppVisualConfig();
                case '\f':
                    return (T) getVisualState();
                case '\r':
                    sendVisualizedMessage((String) objArr[0]);
                    return null;
                default:
                    return null;
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    public void sendVisualizedMessage(String str) {
        NodesProcess.getInstance().getFlutterNodesManager().handlerMessage(str);
    }
}
