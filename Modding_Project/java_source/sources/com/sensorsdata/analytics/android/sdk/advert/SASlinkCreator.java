package com.sensorsdata.analytics.android.sdk.advert;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.sensorsdata.analytics.advert.R;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.advert.SAAdvertConstants;
import com.sensorsdata.analytics.android.sdk.advert.model.SASlinkResponse;
import com.sensorsdata.analytics.android.sdk.advert.model.SATLandingPageType;
import com.sensorsdata.analytics.android.sdk.advert.monitor.SensorsDataCreateSLinkCallback;
import com.sensorsdata.analytics.android.sdk.internal.beans.ServerUrl;
import com.sensorsdata.analytics.android.sdk.network.HttpCallback;
import com.sensorsdata.analytics.android.sdk.network.HttpMethod;
import com.sensorsdata.analytics.android.sdk.network.RequestHelper;
import com.sensorsdata.analytics.android.sdk.util.NetworkUtils;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import com.vungle.ads.internal.protos.Sdk;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SASlinkCreator {
    private String mChannelName;
    private String mCommonRedirectURI;
    private SATLandingPageType mLandingPageType;
    private String mRouteParam;
    private String mTemplateID;
    private String mToken;
    private String mName = "";
    private String mChannelType = "";
    private String mUriSchemeSuffix = "";
    private String mRedirectURLOnOtherDevice = "";
    private String mUtmSource = "";
    private String mUtmCampaign = "";
    private String mUtmMedium = "";
    private String mUtmTerm = "";
    private String mUtmContent = "";
    private JSONObject mCustomParams = new JSONObject();
    private JSONObject mSystemParams = new JSONObject();
    private Map<String, String> mLandingPage = new HashMap();

    public SASlinkCreator(String str, String str2, String str3, String str4) {
        this.mTemplateID = "";
        this.mToken = "";
        this.mChannelName = "";
        this.mCommonRedirectURI = "";
        this.mTemplateID = str;
        this.mChannelName = str2;
        this.mCommonRedirectURI = str3;
        this.mToken = str4;
    }

    private boolean checkInfo(Context context, SensorsDataCreateSLinkCallback sensorsDataCreateSLinkCallback, String str) {
        if (sensorsDataCreateSLinkCallback == null) {
            trackSlinkCreate(10005, SADisplayUtil.getStringResource(context, R.string.sensors_analytics_ad_create_link_callback_missing), null);
            return false;
        } else if (!NetworkUtils.isNetworkAvailable(context)) {
            trackSlinkCreate(Sdk.SDKError.Reason.AD_LOAD_TOO_FREQUENTLY_VALUE, SADisplayUtil.getStringResource(context, R.string.sensors_analytics_ad_create_link_no_network), sensorsDataCreateSLinkCallback);
            return false;
        } else if (!TextUtils.isEmpty(str) && (str.startsWith("http://") || str.startsWith("https://"))) {
            if (TextUtils.isEmpty(this.mToken)) {
                trackSlinkCreate(10001, SADisplayUtil.getStringResource(context, R.string.sensors_analytics_ad_create_link_token_missing), sensorsDataCreateSLinkCallback);
                return false;
            } else if (TextUtils.isEmpty(this.mTemplateID)) {
                trackSlinkCreate(10001, SADisplayUtil.getStringResource(context, R.string.sensors_analytics_ad_create_link_template_id_missing), sensorsDataCreateSLinkCallback);
                return false;
            } else if (TextUtils.isEmpty(this.mChannelName)) {
                trackSlinkCreate(10001, SADisplayUtil.getStringResource(context, R.string.sensors_analytics_ad_create_link_channel_name_missing), sensorsDataCreateSLinkCallback);
                return false;
            } else if (TextUtils.isEmpty(this.mCommonRedirectURI)) {
                trackSlinkCreate(10001, SADisplayUtil.getStringResource(context, R.string.sensors_analytics_ad_create_link_common_redirect_url_missing), sensorsDataCreateSLinkCallback);
                return false;
            } else {
                return true;
            }
        } else {
            trackSlinkCreate(10003, SADisplayUtil.getStringResource(context, R.string.sensors_analytics_ad_create_link_custom_url_error), sensorsDataCreateSLinkCallback);
            return false;
        }
    }

    private String getChannelType() {
        return this.mChannelType;
    }

    private SASlinkCreator setChannelType(String str) {
        this.mChannelType = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trackSlinkCreate(int i, String str, SensorsDataCreateSLinkCallback sensorsDataCreateSLinkCallback) {
        trackSlinkCreate(i, str, "", "", sensorsDataCreateSLinkCallback);
    }

    public void createSLink(final Context context, final SensorsDataCreateSLinkCallback sensorsDataCreateSLinkCallback) {
        SAConfigOptions configOptions;
        configOptions = AbstractSensorsDataAPI.getConfigOptions();
        String requestUrl = NetworkUtils.getRequestUrl(configOptions.getCustomADChannelUrl(), "slink/dynamic/links");
        try {
            if (checkInfo(context, sensorsDataCreateSLinkCallback, requestUrl)) {
                String project = new ServerUrl(SensorsDataAPI.sharedInstance().getServerUrl()).getProject();
                HashMap hashMap = new HashMap();
                hashMap.put(BidResponsed.KEY_TOKEN, this.mToken);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("project_name", project);
                jSONObject.put("slink_template_id", this.mTemplateID);
                jSONObject.put("name", getName());
                jSONObject.put("channel_type", "app_share");
                jSONObject.put("channel_name", this.mChannelName);
                jSONObject.put("custom_param", getCustomParams());
                jSONObject.put("system_param", getSystemParams());
                jSONObject.put("route_param", getRouteParam());
                jSONObject.put("fixed_param", new JSONObject().put("channel_utm_campaign", getUtmCampaign()).put("channel_utm_content", getUtmContent()).put("channel_utm_medium", getUtmMedium()).put("channel_utm_source", getUtmSource()).put("channel_utm_term", getUtmTerm()));
                jSONObject.put("uri_scheme_suffix", getUriSchemeSuffix());
                if (getLandingPageType() != null) {
                    jSONObject.put("landing_page_type", getLandingPageType().getTypeName());
                }
                jSONObject.put("other_landing_page_map", new JSONObject(getLandingPage()));
                jSONObject.put("jump_address", this.mRedirectURLOnOtherDevice);
                new RequestHelper.Builder(HttpMethod.POST, requestUrl).header(hashMap).jsonData(jSONObject.toString()).callback(new HttpCallback.JsonCallback() { // from class: com.sensorsdata.analytics.android.sdk.advert.SASlinkCreator.1
                    @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                    public void onFailure(int i, String str) {
                        if (i == 0) {
                            i = 10006;
                        }
                        SASlinkCreator.this.trackSlinkCreate(i, str, sensorsDataCreateSLinkCallback);
                    }

                    @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                    public void onResponse(JSONObject jSONObject2) {
                        String str;
                        int i;
                        String str2;
                        String str3;
                        String str4;
                        String stringResource = SADisplayUtil.getStringResource(context, R.string.sensors_analytics_ad_create_link_response_data_error);
                        String str5 = "";
                        if (jSONObject2 == null) {
                            str = stringResource;
                            i = 10004;
                            str2 = "";
                            str3 = str2;
                        } else {
                            int optInt = jSONObject2.optInt("code", 10004);
                            if (optInt != 0) {
                                if (optInt != 10004) {
                                    stringResource = jSONObject2.optString(NotificationCompat.CATEGORY_MESSAGE);
                                }
                                str = stringResource;
                                str2 = "";
                                str3 = str2;
                            } else {
                                String optString = jSONObject2.optString(NotificationCompat.CATEGORY_MESSAGE, SADisplayUtil.getStringResource(context, R.string.sensors_analytics_ad_create_link_success));
                                JSONObject optJSONObject = jSONObject2.optJSONObject("data");
                                if (optJSONObject == null) {
                                    str4 = "";
                                } else {
                                    str5 = optJSONObject.optString("slink_id");
                                    str4 = optJSONObject.optString("short_url");
                                }
                                str3 = str4;
                                str = optString;
                                str2 = str5;
                            }
                            i = optInt;
                        }
                        SASlinkCreator.this.trackSlinkCreate(i, str, str2, str3, sensorsDataCreateSLinkCallback);
                    }
                }).execute();
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public JSONObject getCustomParams() {
        return this.mCustomParams;
    }

    public Map<String, String> getLandingPage() {
        return this.mLandingPage;
    }

    public SATLandingPageType getLandingPageType() {
        return this.mLandingPageType;
    }

    public String getName() {
        return this.mName;
    }

    public String getRedirectURLOnOtherDevice() {
        return this.mRedirectURLOnOtherDevice;
    }

    public String getRouteParam() {
        return this.mRouteParam;
    }

    public JSONObject getSystemParams() {
        return this.mSystemParams;
    }

    public String getUriSchemeSuffix() {
        return this.mUriSchemeSuffix;
    }

    public String getUtmCampaign() {
        return this.mUtmCampaign;
    }

    public String getUtmContent() {
        return this.mUtmContent;
    }

    public String getUtmMedium() {
        return this.mUtmMedium;
    }

    public String getUtmSource() {
        return this.mUtmSource;
    }

    public String getUtmTerm() {
        return this.mUtmTerm;
    }

    public SASlinkCreator setCustomParams(JSONObject jSONObject) {
        this.mCustomParams = jSONObject;
        return this;
    }

    public SASlinkCreator setLandingPage(Map<String, String> map) {
        this.mLandingPage = map;
        return this;
    }

    public SASlinkCreator setLandingPageType(SATLandingPageType sATLandingPageType) {
        this.mLandingPageType = sATLandingPageType;
        return this;
    }

    public SASlinkCreator setName(String str) {
        this.mName = str;
        return this;
    }

    public SASlinkCreator setRedirectURLOnOtherDevice(String str) {
        this.mRedirectURLOnOtherDevice = str;
        return this;
    }

    public SASlinkCreator setRouteParam(String str) {
        this.mRouteParam = str;
        return this;
    }

    public SASlinkCreator setSystemParams(JSONObject jSONObject) {
        this.mSystemParams = jSONObject;
        return this;
    }

    public SASlinkCreator setUriSchemeSuffix(String str) {
        this.mUriSchemeSuffix = str;
        return this;
    }

    public SASlinkCreator setUtmCampaign(String str) {
        this.mUtmCampaign = str;
        return this;
    }

    public SASlinkCreator setUtmContent(String str) {
        this.mUtmContent = str;
        return this;
    }

    public SASlinkCreator setUtmMedium(String str) {
        this.mUtmMedium = str;
        return this;
    }

    public SASlinkCreator setUtmSource(String str) {
        this.mUtmSource = str;
        return this;
    }

    public SASlinkCreator setUtmTerm(String str) {
        this.mUtmTerm = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trackSlinkCreate(int i, String str, String str2, String str3, SensorsDataCreateSLinkCallback sensorsDataCreateSLinkCallback) {
        SASlinkResponse sASlinkResponse = new SASlinkResponse();
        sASlinkResponse.slink = str3;
        sASlinkResponse.statusCode = i;
        sASlinkResponse.message = str;
        sASlinkResponse.slinkID = str2;
        sASlinkResponse.commonRedirectURI = this.mCommonRedirectURI;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject put = jSONObject.put(SAAdvertConstants.Properties.DYNAMIC_SLINK_CHANNEL_TYPE, "app_share").put(SAAdvertConstants.Properties.DYNAMIC_SLINK_SOURCE, "Android").put(SAAdvertConstants.Properties.DYNAMIC_SLINK_CHANNEL_NAME, this.mChannelName).put(SAAdvertConstants.Properties.DYNAMIC_SLINK_DATA, "").put(SAAdvertConstants.Properties.DYNAMIC_SLINK_SHORT_URL, str3).put(SAAdvertConstants.Properties.DYNAMIC_SLINK_STATUS, i);
            if (str.length() > 200) {
                str = str.substring(0, 200);
            }
            put.put(SAAdvertConstants.Properties.DYNAMIC_SLINK_MSG, str).put(SAAdvertConstants.Properties.SLINK_ID, str2).put(SAAdvertConstants.Properties.SLINK_TEMPLATE_ID, this.mTemplateID).put(SAAdvertConstants.Properties.SLINK_TYPE, "dynamic");
        } catch (JSONException e) {
            SALog.printStackTrace(e);
        }
        SensorsDataAPI.sharedInstance().track(SAAdvertConstants.EventName.DYNAMIC_SLINK_CREATE, jSONObject);
        if (sensorsDataCreateSLinkCallback != null) {
            sensorsDataCreateSLinkCallback.onReceive(sASlinkResponse);
        }
    }
}
