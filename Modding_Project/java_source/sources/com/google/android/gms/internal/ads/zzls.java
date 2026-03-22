package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzls extends zzup {
    private final zzbk zzc;

    public zzls(zzlt zzltVar, zzbl zzblVar) {
        super(zzblVar);
        this.zzc = new zzbk();
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzbl
    public final zzbj zzd(int i, zzbj zzbjVar, boolean z) {
        zzbl zzblVar = this.zzb;
        zzbj zzd = zzblVar.zzd(i, zzbjVar, z);
        if (zzblVar.zze(zzd.zzc, this.zzc, 0L).zzb()) {
            zzd.zzi(zzbjVar.zza, zzbjVar.zzb, zzbjVar.zzc, zzbjVar.zzd, 0L, zzb.zza, true);
            return zzd;
        }
        zzd.zzf = true;
        return zzd;
    }
}
