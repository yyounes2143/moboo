package com.sensorsdata.analytics.android.sdk.visual.property;

import android.text.TextUtils;
import android.view.View;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentLoader;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewTreeStatusObservable;
import com.sensorsdata.analytics.android.sdk.visual.model.VisualConfig;
import com.sensorsdata.analytics.android.sdk.visual.utils.FlutterUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class VisualPropertiesCache {
    private static final String TAG = "SA.VP.VisualPropertiesCache";

    private void doOnSaveCache(String str) {
        try {
            List<View> currentWebView = ViewTreeStatusObservable.getInstance().getCurrentWebView();
            if (currentWebView != null && currentWebView.size() != 0) {
                for (View view : currentWebView) {
                    VisualPropertiesManager.getInstance().getVisualPropertiesH5Helper().sendToWeb(view, "updateH5VisualConfig", str);
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public JSONArray getH5JsonArrayFromCache(String str, String str2) {
        JSONArray optJSONArray;
        String str3 = PersistentLoader.getInstance().getVisualConfigPst().get();
        if (TextUtils.isEmpty(str3)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(str3);
            JSONArray jSONArray = new JSONArray();
            JSONArray optJSONArray2 = jSONObject.optJSONArray(DbParams.TABLE_EVENTS);
            if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                for (int i = 0; i < optJSONArray2.length(); i++) {
                    JSONObject optJSONObject = optJSONArray2.optJSONObject(i);
                    if (optJSONObject != null) {
                        VisualConfig.VisualPropertiesConfig visualPropertiesConfig = new VisualConfig.VisualPropertiesConfig();
                        String optString = optJSONObject.optString(DbParams.KEY_CHANNEL_EVENT_NAME);
                        visualPropertiesConfig.eventName = optString;
                        if (TextUtils.equals(optString, str) && (optJSONArray = optJSONObject.optJSONArray(SAPropertyFilter.PROPERTIES)) != null && optJSONArray.length() > 0) {
                            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i2);
                                VisualConfig.VisualProperty visualProperty = new VisualConfig.VisualProperty();
                                String optString2 = optJSONObject2.optString("webview_element_path");
                                visualProperty.webViewElementPath = optString2;
                                if (TextUtils.equals(optString2, str2)) {
                                    jSONArray.put(optJSONObject2);
                                }
                            }
                        }
                    }
                }
                return jSONArray;
            }
        } catch (JSONException e) {
            SALog.printStackTrace(e);
        } catch (Exception e2) {
            SALog.printStackTrace(e2);
        }
        return null;
    }

    public String getVisualCache() {
        return PersistentLoader.getInstance().getVisualConfigPst().get();
    }

    public VisualConfig getVisualConfig() {
        VisualConfig visualConfig;
        VisualConfig visualConfig2;
        String str = PersistentLoader.getInstance().getVisualConfigPst().get();
        SALog.i(TAG, "local visual config is :" + str);
        VisualConfig visualConfig3 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            VisualConfig visualConfig4 = new VisualConfig();
            JSONObject jSONObject = new JSONObject(str);
            visualConfig4.appId = jSONObject.optString("app_id");
            visualConfig4.os = jSONObject.optString("os");
            visualConfig4.project = jSONObject.optString("project");
            visualConfig4.version = jSONObject.optString("version");
            JSONArray optJSONArray = jSONObject.optJSONArray(DbParams.TABLE_EVENTS);
            if (optJSONArray != null && optJSONArray.length() > 0) {
                ArrayList arrayList = new ArrayList();
                int i = 0;
                while (i < optJSONArray.length()) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject == null) {
                        visualConfig2 = visualConfig3;
                    } else {
                        VisualConfig.VisualPropertiesConfig visualPropertiesConfig = new VisualConfig.VisualPropertiesConfig();
                        visualPropertiesConfig.eventName = optJSONObject.optString(DbParams.KEY_CHANNEL_EVENT_NAME);
                        visualPropertiesConfig.eventType = optJSONObject.optString("event_type");
                        JSONObject optJSONObject2 = optJSONObject.optJSONObject("event");
                        if (optJSONObject2 != null) {
                            VisualConfig.VisualEvent visualEvent = new VisualConfig.VisualEvent();
                            visualEvent.elementPath = optJSONObject2.optString("element_path");
                            visualEvent.elementPosition = optJSONObject2.optString("element_position");
                            visualEvent.elementContent = optJSONObject2.optString("element_content");
                            visualEvent.screenName = optJSONObject2.optString(FirebaseAnalytics.Param.SCREEN_NAME);
                            visualEvent.limitElementPosition = optJSONObject2.optBoolean("limit_element_position");
                            visualEvent.limitElementContent = optJSONObject2.optBoolean("limit_element_content");
                            visualEvent.isH5 = optJSONObject2.optBoolean("h5");
                            visualPropertiesConfig.event = visualEvent;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        JSONArray optJSONArray2 = optJSONObject.optJSONArray(SAPropertyFilter.PROPERTIES);
                        if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                            int i2 = 0;
                            while (i2 < optJSONArray2.length()) {
                                JSONObject optJSONObject3 = optJSONArray2.optJSONObject(i2);
                                VisualConfig.VisualProperty visualProperty = new VisualConfig.VisualProperty();
                                visualConfig = visualConfig3;
                                try {
                                    visualProperty.elementPath = optJSONObject3.optString("element_path");
                                    visualProperty.elementPosition = optJSONObject3.optString("element_position");
                                    visualProperty.screenName = optJSONObject3.optString(FirebaseAnalytics.Param.SCREEN_NAME);
                                    visualProperty.name = optJSONObject3.optString("name");
                                    visualProperty.regular = optJSONObject3.optString("regular");
                                    visualProperty.isH5 = optJSONObject3.optBoolean("h5");
                                    visualProperty.type = optJSONObject3.optString("type");
                                    visualProperty.webViewElementPath = optJSONObject3.optString("webview_element_path");
                                    arrayList2.add(visualProperty);
                                    i2++;
                                    visualConfig3 = visualConfig;
                                } catch (JSONException e) {
                                    e = e;
                                    SALog.printStackTrace(e);
                                    return visualConfig;
                                }
                            }
                            visualConfig2 = visualConfig3;
                            visualPropertiesConfig.properties = arrayList2;
                        } else {
                            visualConfig2 = visualConfig3;
                        }
                        arrayList.add(visualPropertiesConfig);
                    }
                    i++;
                    visualConfig3 = visualConfig2;
                }
                visualConfig = visualConfig3;
                visualConfig4.events = arrayList;
            }
            return visualConfig4;
        } catch (JSONException e2) {
            e = e2;
            visualConfig = visualConfig3;
        }
    }

    public void save2Cache(String str) {
        SALog.i(TAG, "save2Cache config is:" + str);
        PersistentLoader.getInstance().getVisualConfigPst().commit(str);
        doOnSaveCache(str);
        FlutterUtils.visualizedPropertiesConfigChanged();
    }
}
