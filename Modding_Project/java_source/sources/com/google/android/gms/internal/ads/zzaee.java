package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaee implements zzaem {
    private final zzdy zza;
    private final zzdy zzb;
    private long zzc;

    public zzaee(long[] jArr, long[] jArr2, long j) {
        boolean z;
        int length = jArr.length;
        int length2 = jArr2.length;
        if (length == length2) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        if (length2 > 0 && jArr2[0] > 0) {
            int i = length2 + 1;
            zzdy zzdyVar = new zzdy(i);
            this.zza = zzdyVar;
            zzdy zzdyVar2 = new zzdy(i);
            this.zzb = zzdyVar2;
            zzdyVar.zzc(0L);
            zzdyVar2.zzc(0L);
        } else {
            this.zza = new zzdy(length2);
            this.zzb = new zzdy(length2);
        }
        this.zza.zzd(jArr);
        this.zzb.zzd(jArr2);
        this.zzc = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzaek zzg(long j) {
        zzdy zzdyVar = this.zzb;
        if (zzdyVar.zza() == 0) {
            zzaen zzaenVar = zzaen.zza;
            return new zzaek(zzaenVar, zzaenVar);
        }
        int zzb = zzeu.zzb(zzdyVar, j, true, true);
        long zzb2 = zzdyVar.zzb(zzb);
        zzdy zzdyVar2 = this.zza;
        zzaen zzaenVar2 = new zzaen(zzb2, zzdyVar2.zzb(zzb));
        if (zzaenVar2.zzb != j && zzb != zzdyVar.zza() - 1) {
            int i = zzb + 1;
            return new zzaek(zzaenVar2, new zzaen(zzdyVar.zzb(i), zzdyVar2.zzb(i)));
        }
        return new zzaek(zzaenVar2, zzaenVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean zzh() {
        if (this.zzb.zza() > 0) {
            return true;
        }
        return false;
    }
}
