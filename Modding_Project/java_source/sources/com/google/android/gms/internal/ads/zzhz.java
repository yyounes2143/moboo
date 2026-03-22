package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import j$.util.Objects;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzhz implements zzlv, zzly {
    private final int zzb;
    @Nullable
    private zzlz zzd;
    private int zze;
    private zzpc zzf;
    private zzdg zzg;
    private int zzh;
    @Nullable
    private zzwt zzi;
    @Nullable
    private zzz[] zzj;
    private long zzk;
    private long zzl;
    private boolean zzn;
    private boolean zzo;
    @Nullable
    private zzvb zzq;
    @Nullable
    @GuardedBy("lock")
    private zzlx zzr;
    private final Object zza = new Object();
    private final zzkq zzc = new zzkq();
    private long zzm = Long.MIN_VALUE;
    private zzbl zzp = zzbl.zza;

    public zzhz(int i) {
        this.zzb = i;
    }

    private final void zzZ(long j, boolean z) throws zzik {
        this.zzn = false;
        this.zzl = j;
        this.zzm = j;
        zzz(j, z);
    }

    public final void zzB() {
        zzlx zzlxVar;
        synchronized (this.zza) {
            zzlxVar = this.zzr;
        }
        if (zzlxVar != null) {
            zzlxVar.zza(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzG() {
        boolean z;
        if (this.zzh == 0) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzH(zzz[] zzzVarArr, zzwt zzwtVar, long j, long j2, zzvb zzvbVar) throws zzik {
        zzdc.zzf(!this.zzn);
        this.zzi = zzwtVar;
        this.zzq = zzvbVar;
        if (this.zzm == Long.MIN_VALUE) {
            this.zzm = j;
        }
        this.zzj = zzzVarArr;
        this.zzk = j2;
        zzF(zzzVarArr, j, j2, zzvbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzI() {
        boolean z;
        if (this.zzh == 0) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        zzkq zzkqVar = this.zzc;
        zzkqVar.zzb = null;
        zzkqVar.zza = null;
        zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzJ(long j) throws zzik {
        zzZ(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzK() {
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzly
    public final void zzL(zzlx zzlxVar) {
        synchronized (this.zza) {
            this.zzr = zzlxVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzN(zzbl zzblVar) {
        if (!Objects.equals(this.zzp, zzblVar)) {
            this.zzp = zzblVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzO() throws zzik {
        boolean z = true;
        if (this.zzh != 1) {
            z = false;
        }
        zzdc.zzf(z);
        this.zzh = 2;
        zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzP() {
        boolean z;
        if (this.zzh == 2) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        this.zzh = 1;
        zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final boolean zzQ() {
        if (this.zzm == Long.MIN_VALUE) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final boolean zzR() {
        return this.zzn;
    }

    public final boolean zzS() {
        if (zzQ()) {
            return this.zzn;
        }
        zzwt zzwtVar = this.zzi;
        zzwtVar.getClass();
        return zzwtVar.zze();
    }

    public final zzz[] zzT() {
        zzz[] zzzVarArr = this.zzj;
        zzzVarArr.getClass();
        return zzzVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzlv, com.google.android.gms.internal.ads.zzly
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final int zzcU() {
        return this.zzh;
    }

    public final int zzcV(zzkq zzkqVar, zzhp zzhpVar, int i) {
        zzwt zzwtVar = this.zzi;
        zzwtVar.getClass();
        int zza = zzwtVar.zza(zzkqVar, zzhpVar, i);
        if (zza == -4) {
            if (zzhpVar.zzf()) {
                this.zzm = Long.MIN_VALUE;
                if (this.zzn) {
                    return -4;
                }
                return -3;
            }
            long j = zzhpVar.zze + this.zzk;
            zzhpVar.zze = j;
            this.zzm = Math.max(this.zzm, j);
            return zza;
        }
        if (zza == -5) {
            zzz zzzVar = zzkqVar.zza;
            zzzVar.getClass();
            long j2 = zzzVar.zzt;
            if (j2 != Long.MAX_VALUE) {
                zzx zzb = zzzVar.zzb();
                zzb.zzah(j2 + this.zzk);
                zzkqVar.zza = zzb.zzaj();
                return -5;
            }
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final long zzcW() {
        return this.zzm;
    }

    public final zzik zzcX(Throwable th, @Nullable zzz zzzVar, boolean z, int i) {
        int i2 = 4;
        if (zzzVar != null && !this.zzo) {
            this.zzo = true;
            try {
                i2 = zzY(zzzVar) & 7;
            } catch (zzik unused) {
            } finally {
                this.zzo = false;
            }
        }
        return zzik.zzb(th, zzU(), this.zze, zzzVar, i2, this.zzq, z, i);
    }

    public final int zzd(long j) {
        zzwt zzwtVar = this.zzi;
        zzwtVar.getClass();
        return zzwtVar.zzb(j - this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzly
    public int zze() throws zzik {
        return 0;
    }

    public final long zzf() {
        return this.zzl;
    }

    public final zzbl zzh() {
        return this.zzp;
    }

    public final zzdg zzi() {
        zzdg zzdgVar = this.zzg;
        zzdgVar.getClass();
        return zzdgVar;
    }

    public final zzkq zzk() {
        zzkq zzkqVar = this.zzc;
        zzkqVar.zzb = null;
        zzkqVar.zza = null;
        return zzkqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    @Nullable
    public zzkw zzl() {
        return null;
    }

    public final zzlz zzn() {
        zzlz zzlzVar = this.zzd;
        zzlzVar.getClass();
        return zzlzVar;
    }

    public final zzpc zzo() {
        zzpc zzpcVar = this.zzf;
        zzpcVar.getClass();
        return zzpcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    @Nullable
    public final zzwt zzp() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzly
    public final void zzq() {
        synchronized (this.zza) {
            this.zzr = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzr() {
        boolean z = true;
        if (this.zzh != 1) {
            z = false;
        }
        zzdc.zzf(z);
        zzkq zzkqVar = this.zzc;
        zzkqVar.zzb = null;
        zzkqVar.zza = null;
        this.zzh = 0;
        this.zzi = null;
        this.zzj = null;
        this.zzn = false;
        zzx();
        this.zzq = null;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzs(zzlz zzlzVar, zzz[] zzzVarArr, zzwt zzwtVar, long j, boolean z, boolean z2, long j2, long j3, zzvb zzvbVar) throws zzik {
        boolean z3;
        if (this.zzh == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        zzdc.zzf(z3);
        this.zzd = zzlzVar;
        this.zzq = zzvbVar;
        this.zzh = 1;
        zzy(z, z2);
        zzH(zzzVarArr, zzwtVar, j2, j3, zzvbVar);
        zzZ(j2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzv(int i, zzpc zzpcVar, zzdg zzdgVar) {
        this.zze = i;
        this.zzf = zzpcVar;
        this.zzg = zzdgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final void zzw() throws IOException {
        zzwt zzwtVar = this.zzi;
        zzwtVar.getClass();
        zzwtVar.zzd();
    }

    public void zzx() {
        throw null;
    }

    public void zzz(long j, boolean z) throws zzik {
        throw null;
    }

    public void zzA() {
    }

    public void zzC() {
    }

    public void zzD() throws zzik {
    }

    public void zzE() {
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public final zzly zzm() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public /* synthetic */ void zzt() {
    }

    @Override // com.google.android.gms.internal.ads.zzlv
    public /* synthetic */ void zzM(float f, float f2) {
    }

    @Override // com.google.android.gms.internal.ads.zzlq
    public void zzu(int i, @Nullable Object obj) throws zzik {
    }

    public void zzy(boolean z, boolean z2) throws zzik {
    }

    public void zzF(zzz[] zzzVarArr, long j, long j2, zzvb zzvbVar) throws zzik {
    }
}
