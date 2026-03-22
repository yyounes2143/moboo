package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdhk {
    private final JSONObject zza;
    private final zzdns zzb;
    @Nullable
    private final com.google.android.gms.ads.internal.zzb zzc;
    @Nullable
    private final zzbxv zzd;

    public zzdhk(JSONObject jSONObject, zzdns zzdnsVar, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbxv zzbxvVar) {
        this.zza = jSONObject;
        this.zzb = zzdnsVar;
        this.zzc = zzbVar;
        this.zzd = zzbxvVar;
    }

    @Nullable
    public final com.google.android.gms.ads.internal.zzb zza() {
        return this.zzc;
    }

    @Nullable
    public final zzbxv zzb() {
        return this.zzd;
    }

    public final zzdns zzc() {
        return this.zzb;
    }

    public final JSONObject zzd() {
        return this.zza;
    }
}
