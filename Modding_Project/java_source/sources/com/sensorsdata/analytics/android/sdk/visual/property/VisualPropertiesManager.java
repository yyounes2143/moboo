package com.sensorsdata.analytics.android.sdk.visual.property;

import android.app.Activity;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.AppStateTools;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewNode;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewTreeStatusObservable;
import com.sensorsdata.analytics.android.sdk.visual.R;
import com.sensorsdata.analytics.android.sdk.visual.constant.VisualConstants;
import com.sensorsdata.analytics.android.sdk.visual.model.VisualConfig;
import com.sensorsdata.analytics.android.sdk.visual.property.VisualConfigRequestHelper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class VisualPropertiesManager {
    private static final String PROPERTY_TYPE_NUMBER = "NUMBER";
    private static final String TAG = "SA.VP.VisualPropertiesManager";
    private CollectLogListener mCollectLogListener;
    private final VisualPropertiesCache mConfigCache;
    private final VisualConfigRequestHelper mRequestHelper;
    private VisualConfig mVisualConfig;
    private final VisualPropertiesH5Helper mVisualPropertiesH5Helper;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface CollectLogListener {
        void onCheckEventConfigFailure();

        void onCheckVisualConfigFailure(String str);

        void onFindPropertyElementFailure(String str, String str2, String str3);

        void onOtherError(String str);

        void onParsePropertyContentFailure(String str, String str2, String str3, String str4);

        void onStart(String str, String str2, ViewNode viewNode);

        void onSwitchClose();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class SingletonHolder {
        private static final VisualPropertiesManager INSTANCE = new VisualPropertiesManager();

        private SingletonHolder() {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public enum VisualEventType {
        APP_CLICK("appclick", "$AppClick"),
        WEB_CLICK("appclick", VisualConstants.WEB_CLICK_EVENT_NAME);
        
        private final String trackEventType;
        private final String visualEventType;

        VisualEventType(String str, String str2) {
            this.visualEventType = str;
            this.trackEventType = str2;
        }

        public String getVisualEventType() {
            return this.visualEventType;
        }

        public static VisualEventType getVisualEventType(String str) {
            VisualEventType[] values;
            for (VisualEventType visualEventType : values()) {
                if (TextUtils.equals(visualEventType.trackEventType, str)) {
                    return visualEventType;
                }
            }
            return null;
        }
    }

    public static VisualPropertiesManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    private void mergeVisualProperty(List<VisualConfig.VisualProperty> list, VisualConfig.VisualEvent visualEvent, JSONObject jSONObject, ViewNode viewNode, String str) {
        try {
            HashSet<String> hashSet = new HashSet<>();
            ViewTreeStatusObservable.getInstance().clearViewNodeCache();
            for (VisualConfig.VisualProperty visualProperty : list) {
                if (visualProperty.isH5 && !TextUtils.isEmpty(visualProperty.webViewElementPath)) {
                    hashSet.add(visualProperty.webViewElementPath + visualProperty.screenName);
                } else {
                    mergeAppVisualProperty(visualProperty, visualEvent, jSONObject, viewNode);
                }
            }
            if (hashSet.size() > 0) {
                this.mVisualPropertiesH5Helper.mergeJSVisualProperties(jSONObject, hashSet, str);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public boolean checkAppIdAndProject() {
        String serverUrl = SensorsDataAPI.sharedInstance().getServerUrl();
        if (TextUtils.isEmpty(serverUrl)) {
            SALog.i(TAG, "serverUrl is empty and return");
            return false;
        }
        String queryParameter = Uri.parse(serverUrl).getQueryParameter("project");
        String processName = AppInfoUtils.getProcessName(SensorsDataAPI.sharedInstance().getSAContextManager().getContext());
        if (!TextUtils.isEmpty(queryParameter) && !TextUtils.isEmpty(processName)) {
            VisualConfig visualConfig = this.mVisualConfig;
            if (visualConfig == null) {
                SALog.i(TAG, "VisualConfig is null and return");
                return false;
            } else if (!TextUtils.equals(processName, visualConfig.appId)) {
                SALog.i(TAG, String.format("app_id is not equals: current app_id is %s, config app_id is %s ", processName, this.mVisualConfig.appId));
                return false;
            } else if (TextUtils.equals(queryParameter, this.mVisualConfig.project)) {
                return true;
            } else {
                SALog.i(TAG, String.format("project is not equals: current project is %s, config project is %s ", queryParameter, this.mVisualConfig.project));
                return false;
            }
        }
        SALog.i(TAG, "project or app_id is empty and return");
        return false;
    }

    public List<VisualConfig.VisualPropertiesConfig> getMatchEventConfigList(List<VisualConfig.VisualPropertiesConfig> list, VisualEventType visualEventType, String str, String str2, String str3, String str4) {
        ArrayList arrayList = new ArrayList();
        try {
            for (VisualConfig.VisualPropertiesConfig visualPropertiesConfig : list) {
                if (TextUtils.equals(visualPropertiesConfig.eventType, visualEventType.getVisualEventType())) {
                    VisualConfig.VisualEvent visualEvent = visualPropertiesConfig.event;
                    if (TextUtils.isEmpty(str) || TextUtils.equals(visualEvent.screenName, str)) {
                        if (visualEventType == VisualEventType.APP_CLICK || visualEventType == VisualEventType.WEB_CLICK) {
                            if (!TextUtils.equals(visualEvent.elementPath, str2)) {
                                SALog.i(TAG, String.format("event element_path is not match: current element_path is %s, config element_path is %s ", str2, visualEvent.elementPath));
                            } else if (visualEvent.limitElementPosition && !TextUtils.equals(visualEvent.elementPosition, str3)) {
                                SALog.i(TAG, String.format("event element_position is not match: current element_position is %s, config element_position is %s ", str3, visualEvent.elementPosition));
                            } else if (visualEvent.limitElementContent && !TextUtils.equals(visualEvent.elementContent, str4)) {
                                SALog.i(TAG, String.format("event element_content is not match: current element_content is %s, config element_content is %s ", str4, visualEvent.elementContent));
                            }
                        }
                        arrayList.add(visualPropertiesConfig);
                    }
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        return arrayList;
    }

    public VisualConfig getVisualConfig() {
        return this.mVisualConfig;
    }

    public String getVisualConfigVersion() {
        VisualConfig visualConfig = this.mVisualConfig;
        if (visualConfig != null) {
            return visualConfig.version;
        }
        return null;
    }

    public VisualPropertiesCache getVisualPropertiesCache() {
        return this.mConfigCache;
    }

    public VisualPropertiesH5Helper getVisualPropertiesH5Helper() {
        return this.mVisualPropertiesH5Helper;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0159 A[Catch: Exception -> 0x0014, TRY_LEAVE, TryCatch #4 {Exception -> 0x0014, blocks: (B:3:0x0004, B:6:0x000e, B:10:0x0017, B:12:0x001f, B:15:0x0027, B:18:0x0033, B:20:0x003b, B:22:0x003f, B:24:0x0047, B:26:0x005d, B:55:0x00e2, B:58:0x00ea, B:73:0x0153, B:75:0x0159, B:81:0x0174, B:83:0x0178, B:85:0x0180, B:88:0x0187, B:90:0x018b, B:69:0x0142, B:71:0x0146, B:72:0x014f, B:91:0x0193, B:93:0x0197, B:53:0x00dd, B:60:0x0109, B:62:0x011b, B:65:0x012f, B:67:0x0138, B:78:0x0165), top: B:104:0x0004, inners: #0, #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0197 A[Catch: Exception -> 0x0014, TRY_LEAVE, TryCatch #4 {Exception -> 0x0014, blocks: (B:3:0x0004, B:6:0x000e, B:10:0x0017, B:12:0x001f, B:15:0x0027, B:18:0x0033, B:20:0x003b, B:22:0x003f, B:24:0x0047, B:26:0x005d, B:55:0x00e2, B:58:0x00ea, B:73:0x0153, B:75:0x0159, B:81:0x0174, B:83:0x0178, B:85:0x0180, B:88:0x0187, B:90:0x018b, B:69:0x0142, B:71:0x0146, B:72:0x014f, B:91:0x0193, B:93:0x0197, B:53:0x00dd, B:60:0x0109, B:62:0x011b, B:65:0x012f, B:67:0x0138, B:78:0x0165), top: B:104:0x0004, inners: #0, #1, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0109 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mergeAppVisualProperty(com.sensorsdata.analytics.android.sdk.visual.model.VisualConfig.VisualProperty r8, com.sensorsdata.analytics.android.sdk.visual.model.VisualConfig.VisualEvent r9, org.json.JSONObject r10, com.sensorsdata.analytics.android.sdk.util.visual.ViewNode r11) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager.mergeAppVisualProperty(com.sensorsdata.analytics.android.sdk.visual.model.VisualConfig$VisualProperty, com.sensorsdata.analytics.android.sdk.visual.model.VisualConfig$VisualEvent, org.json.JSONObject, com.sensorsdata.analytics.android.sdk.util.visual.ViewNode):void");
    }

    public void mergeVisualProperties(VisualEventType visualEventType, JSONObject jSONObject, ViewNode viewNode) {
        Exception exc;
        Activity activity;
        String str;
        String str2;
        String str3;
        JSONObject jSONObject2;
        ViewNode viewNode2;
        WeakReference<View> view;
        try {
            String optString = jSONObject.optString("$screen_name");
            CollectLogListener collectLogListener = this.mCollectLogListener;
            if (collectLogListener != null) {
                try {
                    collectLogListener.onStart(visualEventType.visualEventType, optString, viewNode);
                } catch (Exception e) {
                    exc = e;
                    SALog.printStackTrace(exc);
                    return;
                }
            }
            SALog.i(TAG, String.format("mergeVisualProperties eventType: %s, screenName:%s ", visualEventType.getVisualEventType(), optString));
            if (TextUtils.isEmpty(optString)) {
                SALog.i(TAG, "screenName is empty and return");
                return;
            }
            if (!SensorsDataAPI.sharedInstance().isVisualizedAutoTrackEnabled()) {
                SALog.i(TAG, "you should call 'enableVisualizedAutoTrack(true)' first");
                CollectLogListener collectLogListener2 = this.mCollectLogListener;
                if (collectLogListener2 != null) {
                    collectLogListener2.onSwitchClose();
                }
            } else {
                if (viewNode != null && (view = viewNode.getView()) != null && view.get() != null) {
                    activity = SAViewUtils.getActivityOfView(view.get().getContext(), view.get());
                } else {
                    activity = null;
                }
                if (activity == null) {
                    activity = AppStateTools.getInstance().getForegroundActivity();
                }
                try {
                    if (activity != null && SensorsDataAPI.sharedInstance().isVisualizedAutoTrackActivity(activity.getClass())) {
                        if (this.mVisualConfig == null) {
                            SALog.i(TAG, "visual properties is empty and return");
                            CollectLogListener collectLogListener3 = this.mCollectLogListener;
                            if (collectLogListener3 != null) {
                                collectLogListener3.onCheckVisualConfigFailure(SADisplayUtil.getStringResource(SensorsDataAPI.sharedInstance().getSAContextManager().getContext(), R.string.sensors_analytics_visual_cache_no_property_error));
                            }
                        } else if (!checkAppIdAndProject()) {
                            CollectLogListener collectLogListener4 = this.mCollectLogListener;
                            if (collectLogListener4 != null) {
                                collectLogListener4.onCheckVisualConfigFailure(SADisplayUtil.getStringResource(SensorsDataAPI.sharedInstance().getSAContextManager().getContext(), R.string.sensors_analytics_visual_appid_error));
                            }
                        } else {
                            List<VisualConfig.VisualPropertiesConfig> list = this.mVisualConfig.events;
                            if (list != null) {
                                if (list.size() != 0) {
                                    if (viewNode != null) {
                                        String viewPath = viewNode.getViewPath();
                                        str2 = viewNode.getViewPosition();
                                        str3 = viewNode.getViewContent();
                                        str = viewPath;
                                    } else {
                                        str = null;
                                        str2 = null;
                                        str3 = null;
                                    }
                                    try {
                                        List<VisualConfig.VisualPropertiesConfig> matchEventConfigList = getMatchEventConfigList(list, visualEventType, optString, str, str2, str3);
                                        if (matchEventConfigList.size() == 0) {
                                            SALog.i(TAG, "event config is empty and return");
                                            CollectLogListener collectLogListener5 = this.mCollectLogListener;
                                            if (collectLogListener5 != null) {
                                                collectLogListener5.onCheckEventConfigFailure();
                                                return;
                                            }
                                            return;
                                        }
                                        for (VisualConfig.VisualPropertiesConfig visualPropertiesConfig : matchEventConfigList) {
                                            VisualConfig.VisualEvent visualEvent = visualPropertiesConfig.event;
                                            if (visualEvent == null || !visualEvent.isH5) {
                                                List<VisualConfig.VisualProperty> list2 = visualPropertiesConfig.properties;
                                                if (list2 == null || list2.size() == 0) {
                                                    jSONObject2 = jSONObject;
                                                    viewNode2 = viewNode;
                                                    SALog.i(TAG, "properties is empty ");
                                                } else {
                                                    jSONObject2 = jSONObject;
                                                    viewNode2 = viewNode;
                                                    mergeVisualProperty(list2, visualEvent, jSONObject2, viewNode2, visualPropertiesConfig.eventName);
                                                }
                                                jSONObject = jSONObject2;
                                                viewNode = viewNode2;
                                            }
                                        }
                                        return;
                                    } catch (Exception e2) {
                                        e = e2;
                                        exc = e;
                                        SALog.printStackTrace(exc);
                                        return;
                                    }
                                }
                            }
                            SALog.i(TAG, "propertiesConfigs is empty");
                            CollectLogListener collectLogListener6 = this.mCollectLogListener;
                            if (collectLogListener6 != null) {
                                collectLogListener6.onOtherError("propertiesConfigs is empty");
                            }
                        }
                    } else {
                        SALog.i(TAG, "activity is null or not in white list and return");
                        CollectLogListener collectLogListener7 = this.mCollectLogListener;
                        if (collectLogListener7 != null) {
                            collectLogListener7.onOtherError("activity is null or not in white list and return");
                        }
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    public void registerCollectLogListener(CollectLogListener collectLogListener) {
        this.mCollectLogListener = collectLogListener;
    }

    public void requestVisualConfig(SAContextManager sAContextManager) {
        boolean isSDKDisabled;
        if (sAContextManager != null) {
            try {
                if (sAContextManager.getSensorsDataAPI().isNetworkRequestEnable()) {
                    isSDKDisabled = AbstractSensorsDataAPI.isSDKDisabled();
                    if (!isSDKDisabled) {
                        if (sAContextManager.getInternalConfigs().saConfigOptions.isVisualizedPropertiesEnabled()) {
                            SALog.i(TAG, Modules.Visual.METHOD_REQUEST_VISUAL_CONFIG);
                            this.mRequestHelper.requestVisualConfig(sAContextManager.getContext(), getVisualConfigVersion(), new VisualConfigRequestHelper.IApiCallback() { // from class: com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager.1
                                @Override // com.sensorsdata.analytics.android.sdk.visual.property.VisualConfigRequestHelper.IApiCallback
                                public void onSuccess(String str) {
                                    VisualPropertiesManager.this.save2Cache(str);
                                }
                            });
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
                return;
            }
        }
        SALog.i(TAG, "Close network request");
    }

    public void save2Cache(String str) {
        this.mConfigCache.save2Cache(str);
        this.mVisualConfig = this.mConfigCache.getVisualConfig();
    }

    public void unRegisterCollectLogListener() {
        this.mCollectLogListener = null;
    }

    private VisualPropertiesManager() {
        VisualPropertiesCache visualPropertiesCache = new VisualPropertiesCache();
        this.mConfigCache = visualPropertiesCache;
        this.mVisualConfig = visualPropertiesCache.getVisualConfig();
        this.mRequestHelper = new VisualConfigRequestHelper();
        this.mVisualPropertiesH5Helper = new VisualPropertiesH5Helper();
    }
}
