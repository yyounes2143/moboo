package com.android.billingclient.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@zzf
@KeepForSdk
/* loaded from: classes3.dex */
public final class AlternativeBillingOnlyReportingDetails {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public AlternativeBillingOnlyReportingDetails(String str) throws JSONException {
        this.f2239Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new JSONObject(str).optString("externalTransactionToken");
    }
}
