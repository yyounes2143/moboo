package com.sensorsdata.analytics.android.sdk.plugin.property.beans;

import java.util.HashMap;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAPropertiesFetcher {
    private final Map<String, JSONObject> eventJson = new HashMap();

    public JSONObject getEventJson(String str) {
        return this.eventJson.get(str);
    }

    public JSONObject getProperties() {
        return this.eventJson.get(SAPropertyFilter.PROPERTIES);
    }

    public void setEventJson(String str, JSONObject jSONObject) {
        this.eventJson.put(str, jSONObject);
    }

    public void setProperties(JSONObject jSONObject) {
        this.eventJson.put(SAPropertyFilter.PROPERTIES, jSONObject);
    }

    public String toString() {
        return "SAPropertiesFetcher{eventJson=" + this.eventJson + AbstractJsonLexerKt.END_OBJ;
    }
}
