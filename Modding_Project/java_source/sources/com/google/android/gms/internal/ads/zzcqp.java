package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcqp {
    private final zzcyq zza;
    @Nullable
    private final zzdaw zzb;

    public zzcqp(zzcyq zzcyqVar, @Nullable zzdaw zzdawVar) {
        this.zza = zzcyqVar;
        this.zzb = zzdawVar;
    }

    public final zzcyq zza() {
        return this.zza;
    }

    @Nullable
    public final zzdaw zzb() {
        return this.zzb;
    }

    public final zzddq zzc() {
        zzdaw zzdawVar = this.zzb;
        if (zzdawVar != null) {
            return new zzddq(zzdawVar, zzcaa.zzg);
        }
        return new zzddq(new zzcqo(this), zzcaa.zzg);
    }
}
