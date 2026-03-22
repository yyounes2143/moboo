package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzael implements zzaem {
    private final long zza;
    private final zzaek zzb;

    public zzael(long j, long j2) {
        zzaen zzaenVar;
        this.zza = j;
        if (j2 == 0) {
            zzaenVar = zzaen.zza;
        } else {
            zzaenVar = new zzaen(0L, j2);
        }
        this.zzb = new zzaek(zzaenVar, zzaenVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final long zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzaek zzg(long j) {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean zzh() {
        return false;
    }
}
