package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzciw {
    private zzche zza;
    private zzcjq zzb;
    private zzfgx zzc;
    private zzckd zzd;
    private zzfdr zze;

    private zzciw() {
        throw null;
    }

    public final zzchb zza() {
        zzhgd.zzc(this.zza, zzche.class);
        zzhgd.zzc(this.zzb, zzcjq.class);
        if (this.zzc == null) {
            this.zzc = new zzfgx();
        }
        if (this.zzd == null) {
            this.zzd = new zzckd();
        }
        if (this.zze == null) {
            this.zze = new zzfdr();
        }
        return new zzcil(this.zza, this.zzb, this.zzc, this.zzd, this.zze);
    }

    public final zzciw zzb(zzche zzcheVar) {
        this.zza = zzcheVar;
        return this;
    }

    public final zzciw zzc(zzcjq zzcjqVar) {
        this.zzb = zzcjqVar;
        return this;
    }

    public /* synthetic */ zzciw(zzcjp zzcjpVar) {
    }
}
