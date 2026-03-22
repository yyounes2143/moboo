package com.android.billingclient.api;

import androidx.annotation.NonNull;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@zzh
/* loaded from: classes3.dex */
public final class BillingConfig {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public BillingConfig(String str) throws JSONException {
        this.f2290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new JSONObject(str).optString(RemoteConfigConstants.RequestFieldKey.COUNTRY_CODE);
    }

    @NonNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
