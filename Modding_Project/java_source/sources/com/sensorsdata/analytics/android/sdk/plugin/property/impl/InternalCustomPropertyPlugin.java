package com.sensorsdata.analytics.android.sdk.plugin.property.impl;

import com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertiesFetcher;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import com.sensorsdata.analytics.android.sdk.util.JSONUtils;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class InternalCustomPropertyPlugin extends SAPropertyPlugin {
    private JSONObject mCustomProperties = new JSONObject();

    @Override // com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin, com.sensorsdata.analytics.android.sdk.plugin.property.ISAPropertyPlugin
    public boolean isMatchedWithFilter(SAPropertyFilter sAPropertyFilter) {
        return "Android".equals(sAPropertyFilter.getEventJson(SAPropertyFilter.LIB).optString("$lib"));
    }

    @Override // com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin, com.sensorsdata.analytics.android.sdk.plugin.property.ISAPropertyPlugin
    public void properties(SAPropertiesFetcher sAPropertiesFetcher) {
        JSONObject jSONObject = this.mCustomProperties;
        if (jSONObject != null) {
            JSONUtils.mergeJSONObject(jSONObject, sAPropertiesFetcher.getProperties());
            this.mCustomProperties = null;
        }
    }

    public void saveCustom(JSONObject jSONObject) {
        this.mCustomProperties = jSONObject;
        if (jSONObject != null) {
            jSONObject.remove("$device_id");
            this.mCustomProperties.remove("$anonymization_id");
        }
    }
}
