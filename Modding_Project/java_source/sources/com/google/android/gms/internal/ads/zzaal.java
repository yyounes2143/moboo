package com.google.android.gms.internal.ads;

import android.media.MediaFormat;
import android.view.Surface;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaal implements zzach {
    private final zzabl zza;
    private final zzabq zzb;
    private final Queue zzc;
    @Nullable
    private Surface zzd;
    private zzz zze;
    private long zzf;
    private long zzg;
    private zzace zzh;
    private Executor zzi;
    private zzabi zzj;

    public zzaal(zzabl zzablVar, zzdg zzdgVar) {
        this.zza = zzablVar;
        zzablVar.zzi(zzdgVar);
        this.zzb = new zzabq(new zzaaj(this, null), zzablVar);
        this.zzc = new ArrayDeque();
        this.zze = new zzx().zzaj();
        this.zzf = -9223372036854775807L;
        this.zzh = zzace.zzb;
        this.zzi = new Executor() { // from class: com.google.android.gms.internal.ads.zzaad
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
            }
        };
        this.zzj = new zzabi() { // from class: com.google.android.gms.internal.ads.zzaae
            @Override // com.google.android.gms.internal.ads.zzabi
            public final void zzcT(long j, long j2, zzz zzzVar, MediaFormat mediaFormat) {
            }
        };
    }

    public static /* bridge */ /* synthetic */ zzace zzd(zzaal zzaalVar) {
        return zzaalVar.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final boolean zzA(zzz zzzVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final boolean zzB() {
        return this.zzb.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final boolean zzC() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final boolean zzD(boolean z) {
        return this.zza.zzm(z);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final Surface zzb() {
        Surface surface = this.zzd;
        zzdc.zzb(surface);
        return surface;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzh() {
        this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzi() {
        this.zzd = null;
        this.zza.zzk(null);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzj(boolean z) {
        if (z) {
            this.zza.zzg();
        }
        this.zzb.zza();
        this.zzc.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzk(boolean z) {
        this.zza.zzc(z);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzl(int i, zzz zzzVar, long j, int i2, List list) {
        zzdc.zzf(list.isEmpty());
        zzz zzzVar2 = this.zze;
        int i3 = zzzVar2.zzv;
        int i4 = zzzVar.zzv;
        if (i4 != i3 || zzzVar.zzw != zzzVar2.zzw) {
            this.zzb.zzd(i4, zzzVar.zzw);
        }
        float f = zzzVar.zzx;
        if (f != this.zze.zzx) {
            this.zza.zzj(f);
        }
        this.zze = zzzVar;
        if (j != this.zzf) {
            this.zzb.zzc(i2, j);
            this.zzf = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzm() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzo(long j, long j2) throws zzacg {
        try {
            this.zzb.zze(j, j2);
        } catch (zzik e) {
            throw new zzacg(e, this.zze);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzp(long j) {
        this.zzg = j;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzq(int i) {
        this.zza.zzh(i);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzr(zzace zzaceVar, Executor executor) {
        this.zzh = zzaceVar;
        this.zzi = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzs(Surface surface, zzel zzelVar) {
        this.zzd = surface;
        this.zza.zzk(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzt(float f) {
        this.zza.zzl(f);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzu(List list) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzv(zzabi zzabiVar) {
        this.zzj = zzabiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzw() {
        this.zzb.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzx() {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzy() {
        this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final boolean zzz(long j, zzacf zzacfVar) {
        this.zzc.add(zzacfVar);
        this.zzb.zzb(j - this.zzg);
        this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaaf
            @Override // java.lang.Runnable
            public final void run() {
                zzaal.this.zzh.zzb();
            }
        });
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzn() {
    }
}
