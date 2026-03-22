package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzwi implements zzva {
    private final zzgf zza;
    private int zzb;
    private final zzwh zzc;
    private final zzzk zzd;

    public zzwi(zzgf zzgfVar, zzwh zzwhVar) {
        zzzk zzzkVar = new zzzk(-1);
        this.zza = zzgfVar;
        this.zzc = zzwhVar;
        this.zzd = zzzkVar;
        this.zzb = 1048576;
    }

    public final zzwi zza(int i) {
        this.zzb = i;
        return this;
    }

    public final zzwk zzb(zzap zzapVar) {
        zzapVar.zzb.getClass();
        return new zzwk(zzapVar, this.zza, this.zzc, zzsb.zza, this.zzd, this.zzb, 0, null, null, null);
    }
}
