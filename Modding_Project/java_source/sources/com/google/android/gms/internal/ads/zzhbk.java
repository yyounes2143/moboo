package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzhbk extends zzhbi {
    @Override // com.google.android.gms.internal.ads.zzhbi
    public final /* bridge */ /* synthetic */ Object zza(Object obj) {
        zzgys zzgysVar = (zzgys) obj;
        zzhbj zzhbjVar = zzgysVar.zzt;
        if (zzhbjVar == zzhbj.zzc()) {
            zzhbj zzf = zzhbj.zzf();
            zzgysVar.zzt = zzf;
            return zzf;
        }
        return zzhbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhbi
    public final /* synthetic */ Object zzb() {
        return zzhbj.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzhbi
    public final /* synthetic */ Object zzc(Object obj) {
        zzhbj zzhbjVar = (zzhbj) obj;
        zzhbjVar.zzh();
        return zzhbjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhbi
    public final /* bridge */ /* synthetic */ void zzd(Object obj, int i, int i2) {
        ((zzhbj) obj).zzj((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.ads.zzhbi
    public final /* bridge */ /* synthetic */ void zze(Object obj, int i, long j) {
        ((zzhbj) obj).zzj((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzhbi
    public final /* bridge */ /* synthetic */ void zzf(Object obj, int i, Object obj2) {
        ((zzhbj) obj).zzj((i << 3) | 3, (zzhbj) obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzhbi
    public final /* bridge */ /* synthetic */ void zzg(Object obj, int i, zzgxk zzgxkVar) {
        ((zzhbj) obj).zzj((i << 3) | 2, zzgxkVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhbi
    public final /* bridge */ /* synthetic */ void zzh(Object obj, int i, long j) {
        ((zzhbj) obj).zzj(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.zzhbi
    public final void zzi(Object obj) {
        ((zzgys) obj).zzt.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzhbi
    public final /* synthetic */ void zzj(Object obj, Object obj2) {
        ((zzgys) obj).zzt = (zzhbj) obj2;
    }
}
