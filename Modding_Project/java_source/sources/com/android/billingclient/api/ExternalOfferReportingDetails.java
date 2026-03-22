package com.android.billingclient.api;

import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@zzg
/* loaded from: classes3.dex */
public final class ExternalOfferReportingDetails {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ExternalOfferReportingDetails(String str) throws JSONException {
        this.f2327Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new JSONObject(str).optString("externalTransactionToken");
    }
}
