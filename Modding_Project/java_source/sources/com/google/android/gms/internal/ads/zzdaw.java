package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdaw implements zzcyv {
    private int zza = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbt)).intValue();
    private int zzb = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zznc)).intValue();

    public final synchronized int zzc() {
        return this.zza;
    }

    public final synchronized int zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final synchronized void zzdo(zzfcg zzfcgVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbu)).booleanValue()) {
            try {
                zzfbx zzfbxVar = zzfcgVar.zzb.zzb;
                this.zza = zzfbxVar.zzc;
                this.zzb = zzfbxVar.zzd;
            } catch (NullPointerException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdn(zzbvl zzbvlVar) {
    }
}
