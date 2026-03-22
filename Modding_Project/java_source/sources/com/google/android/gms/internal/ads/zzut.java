package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzut implements zzuz, zzuy {
    public final zzvb zza;
    private final long zzb;
    private zzvd zzc;
    private zzuz zzd;
    @Nullable
    private zzuy zze;
    private long zzf = -9223372036854775807L;
    private final zzzg zzg;

    public zzut(zzvb zzvbVar, zzzg zzzgVar, long j) {
        this.zza = zzvbVar;
        this.zzg = zzzgVar;
        this.zzb = j;
    }

    private final long zzv(long j) {
        long j2 = this.zzf;
        if (j2 != -9223372036854775807L) {
            return j2;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zza(long j, zzmd zzmdVar) {
        zzuz zzuzVar = this.zzd;
        String str = zzeu.zza;
        return zzuzVar.zza(j, zzmdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final long zzb() {
        zzuz zzuzVar = this.zzd;
        String str = zzeu.zza;
        return zzuzVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final long zzc() {
        zzuz zzuzVar = this.zzd;
        String str = zzeu.zza;
        return zzuzVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zzd() {
        zzuz zzuzVar = this.zzd;
        String str = zzeu.zza;
        return zzuzVar.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zze(long j) {
        zzuz zzuzVar = this.zzd;
        String str = zzeu.zza;
        return zzuzVar.zze(j);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zzf(zzyq[] zzyqVarArr, boolean[] zArr, zzwt[] zzwtVarArr, boolean[] zArr2, long j) {
        long j2;
        long j3 = this.zzf;
        if (j3 != -9223372036854775807L && j == this.zzb) {
            j2 = j3;
        } else {
            j2 = j;
        }
        this.zzf = -9223372036854775807L;
        zzuz zzuzVar = this.zzd;
        String str = zzeu.zza;
        return zzuzVar.zzf(zzyqVarArr, zArr, zzwtVarArr, zArr2, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final zzxe zzg() {
        zzuz zzuzVar = this.zzd;
        String str = zzeu.zza;
        return zzuzVar.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzh(long j, boolean z) {
        zzuz zzuzVar = this.zzd;
        String str = zzeu.zza;
        zzuzVar.zzh(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    public final /* bridge */ /* synthetic */ void zzi(zzwv zzwvVar) {
        zzuz zzuzVar = (zzuz) zzwvVar;
        zzuy zzuyVar = this.zze;
        String str = zzeu.zza;
        zzuyVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzj() throws IOException {
        zzuz zzuzVar = this.zzd;
        if (zzuzVar != null) {
            zzuzVar.zzj();
            return;
        }
        zzvd zzvdVar = this.zzc;
        if (zzvdVar != null) {
            zzvdVar.zzz();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void zzk(zzuz zzuzVar) {
        zzuy zzuyVar = this.zze;
        String str = zzeu.zza;
        zzuyVar.zzk(this);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzl(zzuy zzuyVar, long j) {
        this.zze = zzuyVar;
        zzuz zzuzVar = this.zzd;
        if (zzuzVar != null) {
            zzuzVar.zzl(this, zzv(this.zzb));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final void zzm(long j) {
        zzuz zzuzVar = this.zzd;
        String str = zzeu.zza;
        zzuzVar.zzm(j);
    }

    public final long zzn() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final boolean zzo(zzkv zzkvVar) {
        zzuz zzuzVar = this.zzd;
        if (zzuzVar != null && zzuzVar.zzo(zzkvVar)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final boolean zzp() {
        zzuz zzuzVar = this.zzd;
        if (zzuzVar != null && zzuzVar.zzp()) {
            return true;
        }
        return false;
    }

    public final long zzq() {
        return this.zzb;
    }

    public final void zzr(zzvb zzvbVar) {
        long zzv = zzv(this.zzb);
        zzvd zzvdVar = this.zzc;
        zzvdVar.getClass();
        zzuz zzI = zzvdVar.zzI(zzvbVar, this.zzg, zzv);
        this.zzd = zzI;
        if (this.zze != null) {
            zzI.zzl(this, zzv);
        }
    }

    public final void zzs(long j) {
        this.zzf = j;
    }

    public final void zzt() {
        zzuz zzuzVar = this.zzd;
        if (zzuzVar != null) {
            zzvd zzvdVar = this.zzc;
            zzvdVar.getClass();
            zzvdVar.zzG(zzuzVar);
        }
    }

    public final void zzu(zzvd zzvdVar) {
        boolean z;
        if (this.zzc == null) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        this.zzc = zzvdVar;
    }
}
