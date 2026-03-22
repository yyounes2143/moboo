package com.google.android.gms.internal.ads;

import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzajz {
    private zzaet zzb;
    private zzadq zzc;
    private zzaju zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private final zzajs zza = new zzajs();
    private zzajw zzj = new zzajw();

    public abstract long zza(zzek zzekVar);

    public void zzb(boolean z) {
        int i;
        if (z) {
            this.zzj = new zzajw();
            this.zzf = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.zzh = i;
        this.zze = -1L;
        this.zzg = 0L;
    }

    @EnsuresNonNullIf
    public abstract boolean zzc(zzek zzekVar, long j, zzajw zzajwVar) throws IOException;

    public final int zze(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        boolean z;
        zzdc.zzb(this.zzb);
        String str = zzeu.zza;
        int i = this.zzh;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return -1;
                }
                long zzd = this.zzd.zzd(zzadoVar);
                if (zzd >= 0) {
                    zzaejVar.zza = zzd;
                    return 1;
                }
                if (zzd < -1) {
                    zzi(-(zzd + 2));
                }
                if (!this.zzl) {
                    zzaem zze = this.zzd.zze();
                    zzdc.zzb(zze);
                    this.zzc.zzP(zze);
                    this.zzb.zzl(zze.zza());
                    this.zzl = true;
                }
                if (this.zzk <= 0 && !this.zza.zze(zzadoVar)) {
                    this.zzh = 3;
                    return -1;
                }
                this.zzk = 0L;
                zzek zza = this.zza.zza();
                long zza2 = zza(zza);
                if (zza2 >= 0) {
                    long j = this.zzg;
                    if (j + zza2 >= this.zze) {
                        long zzf = zzf(j);
                        this.zzb.zzr(zza, zza.zzd());
                        this.zzb.zzt(zzf, 1, zza.zzd(), 0, null);
                        this.zze = -1L;
                    }
                }
                this.zzg += zza2;
                return 0;
            }
            zzadoVar.zzk((int) this.zzf);
            this.zzh = 2;
            return 0;
        }
        while (true) {
            zzajs zzajsVar = this.zza;
            if (!zzajsVar.zze(zzadoVar)) {
                this.zzh = 3;
                return -1;
            }
            long zzf2 = zzadoVar.zzf();
            long j2 = this.zzf;
            this.zzk = zzf2 - j2;
            if (zzc(zzajsVar.zza(), j2, this.zzj)) {
                this.zzf = zzadoVar.zzf();
            } else {
                zzz zzzVar = this.zzj.zza;
                this.zzi = zzzVar.zzF;
                if (!this.zzm) {
                    this.zzb.zzm(zzzVar);
                    this.zzm = true;
                }
                zzaju zzajuVar = this.zzj.zzb;
                if (zzajuVar != null) {
                    this.zzd = zzajuVar;
                } else if (zzadoVar.zzd() == -1) {
                    this.zzd = new zzajx(null);
                } else {
                    zzajt zzb = zzajsVar.zzb();
                    if ((zzb.zza & 4) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.zzd = new zzajo(this, this.zzf, zzadoVar.zzd(), zzb.zzd + zzb.zze, zzb.zzb, z);
                }
                this.zzh = 2;
                zzajsVar.zzd();
                return 0;
            }
        }
    }

    public final long zzf(long j) {
        return (j * 1000000) / this.zzi;
    }

    public final long zzg(long j) {
        return (this.zzi * j) / 1000000;
    }

    public final void zzh(zzadq zzadqVar, zzaet zzaetVar) {
        this.zzc = zzadqVar;
        this.zzb = zzaetVar;
        zzb(true);
    }

    public void zzi(long j) {
        this.zzg = j;
    }

    public final void zzj(long j, long j2) {
        this.zza.zzc();
        if (j == 0) {
            zzb(!this.zzl);
        } else if (this.zzh != 0) {
            long zzg = zzg(j2);
            this.zze = zzg;
            zzaju zzajuVar = this.zzd;
            String str = zzeu.zza;
            zzajuVar.zzg(zzg);
            this.zzh = 2;
        }
    }
}
