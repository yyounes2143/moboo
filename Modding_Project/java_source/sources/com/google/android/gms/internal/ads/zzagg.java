package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzagg implements zzadq {
    private final long zzb;
    private final zzadq zzc;

    public zzagg(long j, zzadq zzadqVar) {
        this.zzb = j;
        this.zzc = zzadqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final void zzG() {
        this.zzc.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final void zzP(zzaem zzaemVar) {
        this.zzc.zzP(new zzagf(this, zzaemVar, zzaemVar));
    }

    @Override // com.google.android.gms.internal.ads.zzadq
    public final zzaet zzw(int i, int i2) {
        return this.zzc.zzw(i, i2);
    }
}
