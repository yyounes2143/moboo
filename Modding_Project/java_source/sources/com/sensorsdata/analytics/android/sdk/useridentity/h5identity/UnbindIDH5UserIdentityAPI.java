package com.sensorsdata.analytics.android.sdk.useridentity.h5identity;

import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.useridentity.UserIdentityAPI;
import java.util.Iterator;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class UnbindIDH5UserIdentityAPI extends H5UserIdentityAPI {
    private final UserIdentityAPI mUserIdentityApi;

    public UnbindIDH5UserIdentityAPI(UserIdentityAPI userIdentityAPI) {
        this.mUserIdentityApi = userIdentityAPI;
    }

    @Override // com.sensorsdata.analytics.android.sdk.useridentity.h5identity.H5UserIdentityAPI
    public boolean updateIdentities() {
        try {
            Iterator<String> keys = this.mIdentityJson.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                this.mUserIdentityApi.getIdentitiesInstance().remove(next, this.mIdentityJson.optString(next));
            }
            this.mEventObject.put("identities", this.mIdentityJson);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        return super.updateIdentities();
    }
}
