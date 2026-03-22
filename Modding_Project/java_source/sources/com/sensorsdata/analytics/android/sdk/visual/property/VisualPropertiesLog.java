package com.sensorsdata.analytics.android.sdk.visual.property;

import android.content.Context;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import com.sensorsdata.analytics.android.sdk.util.visual.ViewNode;
import com.sensorsdata.analytics.android.sdk.visual.R;
import com.sensorsdata.analytics.android.sdk.visual.model.VisualConfig;
import com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class VisualPropertiesLog implements VisualPropertiesManager.CollectLogListener {
    private Builder mBuilder;
    private Context mContext;
    private JSONArray mJSONArray;
    private final Object object = new Object();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class Builder {
        private String elementContent;
        private String elementPath;
        private String elementPosition;
        private JSONObject eventConfig;
        private String eventType;
        private String localConfig;
        private Context mContext;
        private JSONObject otherError;
        private JSONObject propertyContentParse;
        private JSONObject propertyElement;
        private String screenName;
        private JSONObject switchControl;
        private JSONObject visualConfig;

        public Builder(Context context, String str, String str2, String str3, String str4, String str5) {
            this.mContext = context;
            this.eventType = str;
            this.screenName = str2;
            this.elementPath = str3;
            this.elementPosition = str4;
            this.elementContent = str5;
            this.localConfig = null;
            VisualConfig visualConfig = VisualPropertiesManager.getInstance().getVisualConfig();
            if (visualConfig != null) {
                this.localConfig = visualConfig.toString();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject build() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("event_type", this.eventType);
                jSONObject.put("element_path", this.elementPath);
                jSONObject.put("element_position", this.elementPosition);
                jSONObject.put("element_content", this.elementContent);
                jSONObject.put(FirebaseAnalytics.Param.SCREEN_NAME, this.screenName);
                jSONObject.put("local_config", this.localConfig);
                JSONArray jSONArray = new JSONArray();
                JSONObject jSONObject2 = this.switchControl;
                if (jSONObject2 != null) {
                    jSONArray.put(jSONObject2);
                }
                JSONObject jSONObject3 = this.visualConfig;
                if (jSONObject3 != null) {
                    jSONArray.put(jSONObject3);
                }
                JSONObject jSONObject4 = this.eventConfig;
                if (jSONObject4 != null) {
                    jSONArray.put(jSONObject4);
                }
                JSONObject jSONObject5 = this.propertyElement;
                if (jSONObject5 != null) {
                    jSONArray.put(jSONObject5);
                }
                JSONObject jSONObject6 = this.propertyContentParse;
                if (jSONObject6 != null) {
                    jSONArray.put(jSONObject6);
                }
                JSONObject jSONObject7 = this.otherError;
                if (jSONObject7 != null) {
                    jSONArray.put(jSONObject7);
                }
                jSONObject.put("message", jSONArray);
                return jSONObject;
            } catch (JSONException e) {
                SALog.printStackTrace(e);
                return jSONObject;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void buildEventConfig() {
            try {
                this.eventConfig = new JSONObject().put(CampaignEx.JSON_KEY_TITLE, SADisplayUtil.getStringResource(this.mContext, R.string.sensors_analytics_visual_event_error)).put("message", SADisplayUtil.getStringResource(this.mContext, R.string.sensors_analytics_visual_cache_error));
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void buildOtherError(String str) {
            try {
                this.otherError = new JSONObject().put(CampaignEx.JSON_KEY_TITLE, SADisplayUtil.getStringResource(this.mContext, R.string.sensors_analytics_visual_other_error)).put("message", str);
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void buildPropertyContentParse(String str) {
            try {
                this.propertyContentParse = new JSONObject().put(CampaignEx.JSON_KEY_TITLE, SADisplayUtil.getStringResource(this.mContext, R.string.sensors_analytics_visual_parseProperty_error)).put("message", str);
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void buildPropertyElement(String str) {
            try {
                this.propertyElement = new JSONObject().put(CampaignEx.JSON_KEY_TITLE, SADisplayUtil.getStringResource(this.mContext, R.string.sensors_analytics_visual_getProperty_error)).put("message", str);
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void buildSwitchControl() {
            try {
                this.switchControl = new JSONObject().put(CampaignEx.JSON_KEY_TITLE, SADisplayUtil.getStringResource(this.mContext, R.string.sensors_analytics_visual_switch_error)).put("message", SADisplayUtil.getStringResource(this.mContext, R.string.sensors_analytics_visual_property_switch_error));
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void buildVisualConfig(String str) {
            try {
                this.visualConfig = new JSONObject().put(CampaignEx.JSON_KEY_TITLE, SADisplayUtil.getStringResource(this.mContext, R.string.sensors_analytics_visual_config_error)).put("message", str);
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }
    }

    private synchronized void add2JsonArray(JSONObject jSONObject) {
        synchronized (this.object) {
            if (this.mJSONArray == null) {
                this.mJSONArray = new JSONArray();
            }
            this.mJSONArray.put(jSONObject);
        }
    }

    public synchronized String getVisualPropertiesLog() {
        synchronized (this.object) {
            this.mContext = SensorsDataAPI.sharedInstance().getSAContextManager().getContext();
            JSONArray jSONArray = this.mJSONArray;
            if (jSONArray != null) {
                return jSONArray.toString();
            }
            return null;
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager.CollectLogListener
    public void onCheckEventConfigFailure() {
        this.mBuilder.buildEventConfig();
        add2JsonArray(this.mBuilder.build());
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager.CollectLogListener
    public void onCheckVisualConfigFailure(String str) {
        this.mBuilder.buildVisualConfig(str);
        add2JsonArray(this.mBuilder.build());
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager.CollectLogListener
    public void onFindPropertyElementFailure(String str, String str2, String str3) {
        this.mBuilder.buildPropertyElement(String.format(SADisplayUtil.getStringResource(this.mContext, R.string.sensors_analytics_visual_property_error), str, str2, str3));
        add2JsonArray(this.mBuilder.build());
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager.CollectLogListener
    public void onOtherError(String str) {
        this.mBuilder.buildOtherError(str);
        add2JsonArray(this.mBuilder.build());
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager.CollectLogListener
    public void onParsePropertyContentFailure(String str, String str2, String str3, String str4) {
        this.mBuilder.buildPropertyContentParse(String.format(SADisplayUtil.getStringResource(this.mContext, R.string.sensors_analytics_visual_regex_error), str, str3, str4, str2));
        add2JsonArray(this.mBuilder.build());
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager.CollectLogListener
    public void onStart(String str, String str2, ViewNode viewNode) {
        String str3;
        String str4;
        String str5;
        if (viewNode != null) {
            String viewPath = viewNode.getViewPath();
            String viewPosition = viewNode.getViewPosition();
            str5 = viewNode.getViewContent();
            str3 = viewPath;
            str4 = viewPosition;
        } else {
            str3 = null;
            str4 = null;
            str5 = null;
        }
        this.mBuilder = new Builder(this.mContext, str, str2, str3, str4, str5);
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.property.VisualPropertiesManager.CollectLogListener
    public void onSwitchClose() {
        this.mBuilder.buildSwitchControl();
        add2JsonArray(this.mBuilder.build());
    }
}
