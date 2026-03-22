package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzkx {
    public final zzuz zza;
    public final Object zzb;
    public final zzwt[] zzc;
    public boolean zzd;
    public boolean zze;
    public boolean zzf;
    public zzky zzg;
    public boolean zzh;
    private final boolean[] zzi;
    private final zzly[] zzj;
    private final zzyx zzk;
    private final zzlm zzl;
    @Nullable
    private zzkx zzm;
    private zzxe zzn;
    private zzyy zzo;
    private long zzp;

    public zzkx(zzly[] zzlyVarArr, long j, zzyx zzyxVar, zzzg zzzgVar, zzlm zzlmVar, zzky zzkyVar, zzyy zzyyVar, long j2) {
        this.zzj = zzlyVarArr;
        this.zzp = j;
        this.zzk = zzyxVar;
        this.zzl = zzlmVar;
        zzvb zzvbVar = zzkyVar.zza;
        this.zzb = zzvbVar.zza;
        this.zzg = zzkyVar;
        this.zzn = zzxe.zza;
        this.zzo = zzyyVar;
        this.zzc = new zzwt[2];
        this.zzi = new boolean[2];
        long j3 = zzkyVar.zzb;
        long j4 = zzkyVar.zzd;
        zzuz zzp = zzlmVar.zzp(zzvbVar, zzzgVar, j3);
        this.zza = j4 != -9223372036854775807L ? new zzuf(zzp, true, 0L, j4) : zzp;
    }

    private final void zzu() {
        if (zzw()) {
            int i = 0;
            while (true) {
                zzyy zzyyVar = this.zzo;
                if (i < zzyyVar.zza) {
                    zzyyVar.zzb(i);
                    zzyq zzyqVar = this.zzo.zzc[i];
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    private final void zzv() {
        if (zzw()) {
            int i = 0;
            while (true) {
                zzyy zzyyVar = this.zzo;
                if (i < zzyyVar.zza) {
                    zzyyVar.zzb(i);
                    zzyq zzyqVar = this.zzo.zzc[i];
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    private final boolean zzw() {
        if (this.zzm == null) {
            return true;
        }
        return false;
    }

    public final long zza(zzyy zzyyVar, long j, boolean z) {
        return zzb(zzyyVar, j, false, new boolean[2]);
    }

    public final long zzb(zzyy zzyyVar, long j, boolean z, boolean[] zArr) {
        zzly[] zzlyVarArr;
        boolean z2;
        int i = 0;
        while (true) {
            boolean z3 = true;
            if (i >= zzyyVar.zza) {
                break;
            }
            boolean[] zArr2 = this.zzi;
            if (z || !zzyyVar.zza(this.zzo, i)) {
                z3 = false;
            }
            zArr2[i] = z3;
            i++;
        }
        int i2 = 0;
        while (true) {
            zzlyVarArr = this.zzj;
            if (i2 >= 2) {
                break;
            }
            zzlyVarArr[i2].zzb();
            i2++;
        }
        zzu();
        this.zzo = zzyyVar;
        zzv();
        zzuz zzuzVar = this.zza;
        zzyq[] zzyqVarArr = zzyyVar.zzc;
        boolean[] zArr3 = this.zzi;
        zzwt[] zzwtVarArr = this.zzc;
        long zzf = zzuzVar.zzf(zzyqVarArr, zArr3, zzwtVarArr, zArr, j);
        for (int i3 = 0; i3 < 2; i3++) {
            zzlyVarArr[i3].zzb();
        }
        this.zzf = false;
        for (int i4 = 0; i4 < 2; i4++) {
            if (zzwtVarArr[i4] != null) {
                zzdc.zzf(zzyyVar.zzb(i4));
                zzlyVarArr[i4].zzb();
                this.zzf = true;
            } else {
                if (zzyqVarArr[i4] == null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzdc.zzf(z2);
            }
        }
        return zzf;
    }

    public final long zzc() {
        long j;
        if (!this.zze) {
            return this.zzg.zzb;
        }
        if (this.zzf) {
            j = this.zza.zzb();
        } else {
            j = Long.MIN_VALUE;
        }
        if (j == Long.MIN_VALUE) {
            return this.zzg.zze;
        }
        return j;
    }

    public final long zzd() {
        if (!this.zze) {
            return 0L;
        }
        return this.zza.zzc();
    }

    public final long zze() {
        return this.zzp;
    }

    public final long zzf() {
        return this.zzg.zzb + this.zzp;
    }

    @Nullable
    public final zzkx zzg() {
        return this.zzm;
    }

    public final zzxe zzh() {
        return this.zzn;
    }

    public final zzyy zzi() {
        return this.zzo;
    }

    public final zzyy zzj(float f, zzbl zzblVar, boolean z) throws zzik {
        zzyq[] zzyqVarArr;
        zzxe zzxeVar = this.zzn;
        zzvb zzvbVar = this.zzg.zza;
        zzyx zzyxVar = this.zzk;
        zzly[] zzlyVarArr = this.zzj;
        zzyy zzo = zzyxVar.zzo(zzlyVarArr, zzxeVar, zzvbVar, zzblVar);
        for (int i = 0; i < zzo.zza; i++) {
            boolean z2 = true;
            if (zzo.zzb(i)) {
                if (zzo.zzc[i] == null) {
                    zzlyVarArr[i].zzb();
                    z2 = false;
                }
                zzdc.zzf(z2);
            } else {
                if (zzo.zzc[i] != null) {
                    z2 = false;
                }
                zzdc.zzf(z2);
            }
        }
        for (zzyq zzyqVar : zzo.zzc) {
        }
        return zzo;
    }

    public final void zzk(zzkv zzkvVar) {
        zzdc.zzf(zzw());
        this.zza.zzo(zzkvVar);
    }

    public final void zzl(float f, zzbl zzblVar, boolean z) throws zzik {
        this.zze = true;
        this.zzn = this.zza.zzg();
        zzyy zzj = zzj(f, zzblVar, z);
        zzky zzkyVar = this.zzg;
        long j = zzkyVar.zzb;
        long j2 = zzkyVar.zze;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        long zza = zza(zzj, j, false);
        long j3 = this.zzp;
        zzky zzkyVar2 = this.zzg;
        this.zzp = j3 + (zzkyVar2.zzb - zza);
        this.zzg = zzkyVar2.zzb(zza);
    }

    public final void zzm(zzuy zzuyVar, long j) {
        this.zzd = true;
        this.zza.zzl(zzuyVar, j);
    }

    public final void zzn(long j) {
        zzdc.zzf(zzw());
        if (this.zze) {
            this.zza.zzm(j - this.zzp);
        }
    }

    public final void zzo() {
        zzu();
        zzuz zzuzVar = this.zza;
        try {
            boolean z = zzuzVar instanceof zzuf;
            zzlm zzlmVar = this.zzl;
            if (z) {
                zzlmVar.zzi(((zzuf) zzuzVar).zza);
            } else {
                zzlmVar.zzi(zzuzVar);
            }
        } catch (RuntimeException e) {
            zzdx.zzd("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    public final void zzp(@Nullable zzkx zzkxVar) {
        if (zzkxVar == this.zzm) {
            return;
        }
        zzu();
        this.zzm = zzkxVar;
        zzv();
    }

    public final void zzq(long j) {
        this.zzp = j;
    }

    public final void zzr() {
        zzuz zzuzVar = this.zza;
        if (zzuzVar instanceof zzuf) {
            long j = this.zzg.zzd;
            if (j == -9223372036854775807L) {
                j = Long.MIN_VALUE;
            }
            ((zzuf) zzuzVar).zzn(0L, j);
        }
    }

    public final boolean zzs() {
        if (!this.zze) {
            return false;
        }
        if (this.zzf && this.zza.zzb() != Long.MIN_VALUE) {
            return false;
        }
        return true;
    }

    public final boolean zzt() {
        if (!this.zze) {
            return false;
        }
        if (!zzs() && zzc() - this.zzg.zzb < -9223372036854775807L) {
            return false;
        }
        return true;
    }
}
