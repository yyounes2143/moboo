package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzue implements zzwt {
    public final zzwt zza;
    final /* synthetic */ zzuf zzb;
    private boolean zzc;

    public zzue(zzuf zzufVar, zzwt zzwtVar) {
        this.zzb = zzufVar;
        this.zza = zzwtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final int zza(zzkq zzkqVar, zzhp zzhpVar, int i) {
        zzuf zzufVar = this.zzb;
        if (zzufVar.zzq()) {
            return -3;
        }
        if (this.zzc) {
            zzhpVar.zzc(4);
            return -4;
        }
        long zzb = zzufVar.zzb();
        int zza = this.zza.zza(zzkqVar, zzhpVar, i);
        if (zza == -5) {
            zzz zzzVar = zzkqVar.zza;
            zzzVar.getClass();
            int i2 = zzzVar.zzH;
            int i3 = 0;
            if (i2 == 0) {
                if (zzzVar.zzI != 0) {
                    i2 = 0;
                }
                return -5;
            }
            if (zzufVar.zzb == Long.MIN_VALUE) {
                i3 = zzzVar.zzI;
            }
            zzx zzb2 = zzzVar.zzb();
            zzb2.zzI(i2);
            zzb2.zzJ(i3);
            zzkqVar.zza = zzb2.zzaj();
            return -5;
        }
        long j = zzufVar.zzb;
        if (j != Long.MIN_VALUE && ((zza == -4 && zzhpVar.zze >= j) || (zza == -3 && zzb == Long.MIN_VALUE && !zzhpVar.zzd))) {
            zzhpVar.zzb();
            zzhpVar.zzc(4);
            this.zzc = true;
            return -4;
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final int zzb(long j) {
        if (this.zzb.zzq()) {
            return -3;
        }
        return this.zza.zzb(j);
    }

    public final void zzc() {
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final void zzd() throws IOException {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzwt
    public final boolean zze() {
        if (!this.zzb.zzq() && this.zza.zze()) {
            return true;
        }
        return false;
    }
}
