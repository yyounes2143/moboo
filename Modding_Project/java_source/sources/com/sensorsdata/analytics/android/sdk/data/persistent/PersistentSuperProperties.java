package com.sensorsdata.analytics.android.sdk.data.persistent;

import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.data.persistent.PersistentIdentity;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class PersistentSuperProperties extends PersistentIdentity<JSONObject> {
    public PersistentSuperProperties() {
        super(DbParams.PersistentName.SUPER_PROPERTIES, new PersistentIdentity.PersistentSerializer<JSONObject>() { // from class: com.sensorsdata.analytics.android.sdk.data.persistent.PersistentSuperProperties.1
            @Override // com.sensorsdata.analytics.android.sdk.data.persistent.PersistentIdentity.PersistentSerializer
            public JSONObject create() {
                return new JSONObject();
            }

            @Override // com.sensorsdata.analytics.android.sdk.data.persistent.PersistentIdentity.PersistentSerializer
            public JSONObject load(String str) {
                try {
                    return new JSONObject(str);
                } catch (JSONException e) {
                    SALog.d("Persistent", "failed to load SuperProperties from SharedPreferences.", e);
                    return new JSONObject();
                }
            }

            @Override // com.sensorsdata.analytics.android.sdk.data.persistent.PersistentIdentity.PersistentSerializer
            public String save(JSONObject jSONObject) {
                return jSONObject == null ? create().toString() : jSONObject.toString();
            }
        });
    }
}
