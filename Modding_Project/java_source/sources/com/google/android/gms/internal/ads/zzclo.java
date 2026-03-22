package com.google.android.gms.internal.ads;

import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzclo implements zzcle {
    private final zzdvc zza;

    public zzclo(zzdvc zzdvcVar) {
        this.zza = zzdvcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcle
    public final void zza(JSONObject jSONObject) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzjy)).booleanValue()) {
            return;
        }
        this.zza.zzn(jSONObject);
    }
}
