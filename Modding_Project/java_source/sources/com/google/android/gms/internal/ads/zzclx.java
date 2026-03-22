package com.google.android.gms.internal.ads;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzclx implements zzcle {
    private final zzbya zza;

    public zzclx(zzbya zzbyaVar) {
        this.zza = zzbyaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.ads.zzbya] */
    /* JADX WARN: Type inference failed for: r4v2, types: [int] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // com.google.android.gms.internal.ads.zzcle
    public final void zza(JSONObject jSONObject) {
        ?? r4;
        long optLong = jSONObject.optLong(CampaignEx.JSON_KEY_TIMESTAMP);
        if (jSONObject.optBoolean("npa_reset")) {
            r4 = -1;
        } else {
            r4 = jSONObject.optBoolean("npa");
        }
        this.zza.zzb(r4, optLong);
    }
}
