package com.android.billingclient.api;

import androidx.annotation.Nullable;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import j$.util.Objects;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class zzc {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2529Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public /* synthetic */ zzc(JSONObject jSONObject, zzd zzdVar) {
        this.f2531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
        this.f2530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject.optString("productType");
        String optString = jSONObject.optString("offerToken");
        this.f2529Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true == optString.isEmpty() ? null : optString;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        if (this.f2531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(zzcVar.f2531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f2530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(zzcVar.f2530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Objects.equals(this.f2529Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, zzcVar.f2529Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f2531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2529Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final String toString() {
        return String.format("{id: %s, type: %s, offer token: %s}", this.f2531Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2530Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f2529Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
