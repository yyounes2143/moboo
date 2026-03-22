package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzxb implements zzuz, zzuy {
    private final zzuz zza;
    private final long zzb;
    private zzuy zzc;

    public zzxb(zzuz zzuzVar, long j) {
        this.zza = zzuzVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zza(long j, zzmd zzmdVar) {
        long j2 = this.zzb;
        return this.zza.zza(j - j2, zzmdVar) + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final long zzb() {
        long zzb = this.zza.zzb();
        if (zzb == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzb + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final long zzc() {
        long zzc = this.zza.zzc();
        if (zzc == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return zzc + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zzd() {
        long zzd = this.zza.zzd();
        if (zzd == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return zzd + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zze(long j) {
        long j2 = this.zzb;
        return this.zza.zze(j - j2) + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final long zzf(zzyq[] zzyqVarArr, boolean[] zArr, zzwt[] zzwtVarArr, boolean[] zArr2, long j) {
        zzwt[] zzwtVarArr2 = new zzwt[zzwtVarArr.length];
        int i = 0;
        while (true) {
            zzwt zzwtVar = null;
            if (i >= zzwtVarArr.length) {
                break;
            }
            zzxa zzxaVar = (zzxa) zzwtVarArr[i];
            if (zzxaVar != null) {
                zzwtVar = zzxaVar.zzc();
            }
            zzwtVarArr2[i] = zzwtVar;
            i++;
        }
        zzuz zzuzVar = this.zza;
        long j2 = this.zzb;
        long zzf = zzuzVar.zzf(zzyqVarArr, zArr, zzwtVarArr2, zArr2, j - j2);
        for (int i2 = 0; i2 < zzwtVarArr.length; i2++) {
            zzwt zzwtVar2 = zzwtVarArr2[i2];
            if (zzwtVar2 == null) {
                zzwtVarArr[i2] = null;
            } else {
                zzwt zzwtVar3 = zzwtVarArr[i2];
                if (zzwtVar3 == null || ((zzxa) zzwtVar3).zzc() != zzwtVar2) {
                    zzwtVarArr[i2] = new zzxa(zzwtVar2, j2);
                }
            }
        }
        return zzf + j2;
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final zzxe zzg() {
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzh(long j, boolean z) {
        this.zza.zzh(j - this.zzb, false);
    }

    @Override // com.google.android.gms.internal.ads.zzwu
    public final /* bridge */ /* synthetic */ void zzi(zzwv zzwvVar) {
        zzuz zzuzVar = (zzuz) zzwvVar;
        zzuy zzuyVar = this.zzc;
        zzuyVar.getClass();
        zzuyVar.zzi(this);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzj() throws IOException {
        this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzuy
    public final void zzk(zzuz zzuzVar) {
        zzuy zzuyVar = this.zzc;
        zzuyVar.getClass();
        zzuyVar.zzk(this);
    }

    @Override // com.google.android.gms.internal.ads.zzuz
    public final void zzl(zzuy zzuyVar, long j) {
        this.zzc = zzuyVar;
        this.zza.zzl(this, j - this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final void zzm(long j) {
        this.zza.zzm(j - this.zzb);
    }

    public final zzuz zzn() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final boolean zzo(zzkv zzkvVar) {
        long j = zzkvVar.zza;
        long j2 = this.zzb;
        zzkt zza = zzkvVar.zza();
        zza.zze(j - j2);
        return this.zza.zzo(zza.zzg());
    }

    @Override // com.google.android.gms.internal.ads.zzuz, com.google.android.gms.internal.ads.zzwv
    public final boolean zzp() {
        return this.zza.zzp();
    }
}
