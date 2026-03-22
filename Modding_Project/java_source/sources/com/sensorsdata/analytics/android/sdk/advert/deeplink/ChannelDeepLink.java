package com.sensorsdata.analytics.android.sdk.advert.deeplink;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.advert.SAAdvertConstants;
import com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkManager;
import com.sensorsdata.analytics.android.sdk.advert.utils.ChannelUtils;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import java.util.HashMap;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class ChannelDeepLink extends AbsDeepLink {
    public ChannelDeepLink(Intent intent) {
        super(intent);
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkProcessor
    public void mergeDeepLinkProperty(JSONObject jSONObject) {
        try {
            jSONObject.put(SAAdvertConstants.Properties.DEEPLINK_URL, getDeepLinkUrl());
        } catch (JSONException e) {
            SALog.printStackTrace(e);
        }
        JSONUtils.mergeJSONObject(ChannelUtils.getUtmProperties(), jSONObject);
    }

    @Override // com.sensorsdata.analytics.android.sdk.advert.deeplink.DeepLinkProcessor
    public void parseDeepLink(Intent intent) {
        if (intent != null && intent.getData() != null) {
            Uri data = intent.getData();
            if (data.isOpaque()) {
                SALog.d("ChannelDeepLink", data.toString() + " isOpaque");
                return;
            }
            Set<String> queryParameterNames = data.getQueryParameterNames();
            if (queryParameterNames != null && queryParameterNames.size() > 0) {
                HashMap hashMap = new HashMap();
                for (String str : queryParameterNames) {
                    String queryParameter = data.getQueryParameter(str);
                    if (TextUtils.isEmpty(queryParameter)) {
                        queryParameter = "";
                    }
                    hashMap.put(str, queryParameter);
                }
                ChannelUtils.parseParams(hashMap);
                DeepLinkManager.OnDeepLinkParseFinishCallback onDeepLinkParseFinishCallback = this.mCallBack;
                if (onDeepLinkParseFinishCallback != null) {
                    onDeepLinkParseFinishCallback.onFinish(DeepLinkManager.DeepLinkType.CHANNEL, null, null, true, 0L);
                }
            }
        }
    }
}
