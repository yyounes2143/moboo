package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcqm implements zzcxh, zzayu, zzdas {
    private final zzfbu zza;
    private final zzcwl zzb;
    private final zzcxq zzc;
    private final zzcyh zzf;
    private final AtomicBoolean zzd = new AtomicBoolean();
    private final AtomicBoolean zze = new AtomicBoolean();
    private final AtomicBoolean zzg = new AtomicBoolean();

    public zzcqm(zzfbu zzfbuVar, zzcwl zzcwlVar, zzcxq zzcxqVar, zzcyh zzcyhVar) {
        this.zza = zzfbuVar;
        this.zzb = zzcwlVar;
        this.zzc = zzcxqVar;
        this.zzf = zzcyhVar;
    }

    private final void zzd() {
        if (this.zzd.compareAndSet(false, true)) {
            this.zzb.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdas
    public final void zzdq() {
        if (this.zza.zze == 4) {
            zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final void zzdr(zzayt zzaytVar) {
        int i = this.zza.zze;
        if (i == 1) {
            if (zzaytVar.zzj) {
                zzd();
            }
        } else if (i == 4 && zzaytVar.zzj && this.zzg.compareAndSet(false, true)) {
            this.zzf.zza();
        }
        if (zzaytVar.zzj && this.zze.compareAndSet(false, true)) {
            this.zzc.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final synchronized void zzt() {
        int i = this.zza.zze;
        if (i != 1 && i != 4) {
            zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdas
    public final void zzdp() {
    }
}
