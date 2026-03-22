package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbih {
    private final com.google.android.gms.ads.formats.zzg zza;
    @Nullable
    private final com.google.android.gms.ads.formats.zzf zzb;
    @Nullable
    @GuardedBy("this")
    private zzbhb zzc;

    public zzbih(com.google.android.gms.ads.formats.zzg zzgVar, @Nullable com.google.android.gms.ads.formats.zzf zzfVar) {
        this.zza = zzgVar;
        this.zzb = zzfVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized zzbhb zzf(zzbha zzbhaVar) {
        zzbhb zzbhbVar = this.zzc;
        if (zzbhbVar != null) {
            return zzbhbVar;
        }
        zzbhb zzbhbVar2 = new zzbhb(zzbhaVar);
        this.zzc = zzbhbVar2;
        return zzbhbVar2;
    }

    @Nullable
    public final zzbhk zzc() {
        if (this.zzb == null) {
            return null;
        }
        return new zzbie(this, null);
    }

    public final zzbhn zzd() {
        return new zzbif(this, null);
    }
}
