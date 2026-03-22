package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdya extends zzbvc {
    private final zzcaf zza;
    private final zzbvl zzb;

    public zzdya(zzcaf zzcafVar, zzbvl zzbvlVar) {
        this.zza = zzcafVar;
        this.zzb = zzbvlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void zze(com.google.android.gms.ads.internal.util.zzbb zzbbVar) {
        this.zza.zzd(zzbbVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        this.zza.zzc(new zzdyr(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbvl zzbvlVar) {
        this.zza.zzc(new zzdyr(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), zzbvlVar));
    }
}
