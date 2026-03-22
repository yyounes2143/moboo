package com.sensorsdata.analytics.android.sdk.useridentity.h5identity;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.useridentity.Identities;
import com.sensorsdata.analytics.android.sdk.useridentity.UserIdentityAPI;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class H5UserIdentityStrategy {
    private final UserIdentityAPI userIdentityAPI;

    public H5UserIdentityStrategy(UserIdentityAPI userIdentityAPI) {
        this.userIdentityAPI = userIdentityAPI;
    }

    private void specialIDProcess(JSONObject jSONObject) {
        jSONObject.remove(Identities.ANDROID_ID);
        jSONObject.remove(Identities.ANDROID_UUID);
    }

    public boolean processH5UserIdentity(EventType eventType, JSONObject jSONObject) {
        JSONObject jSONObject2;
        H5UserIdentityAPI commonUserIdentityAPI;
        try {
            String optString = jSONObject.optString("identities");
            if (!TextUtils.isEmpty(optString)) {
                jSONObject2 = new JSONObject(optString);
            } else {
                jSONObject2 = new JSONObject();
            }
            if (EventType.TRACK_SIGNUP == eventType) {
                specialIDProcess(jSONObject2);
                commonUserIdentityAPI = new SignUpH5UserIdentityAPI(this.userIdentityAPI, eventType);
            } else if (EventType.TRACK_ID_BIND == eventType) {
                specialIDProcess(jSONObject2);
                commonUserIdentityAPI = new BindIDH5UserIdentityAPI(this.userIdentityAPI);
            } else if (EventType.TRACK_ID_UNBIND == eventType) {
                commonUserIdentityAPI = new UnbindIDH5UserIdentityAPI(this.userIdentityAPI);
            } else {
                specialIDProcess(jSONObject2);
                commonUserIdentityAPI = new CommonUserIdentityAPI(this.userIdentityAPI);
            }
            return commonUserIdentityAPI.process(jSONObject2, jSONObject);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }
}
