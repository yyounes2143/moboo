package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdxz extends zzbvc {
    final /* synthetic */ zzdyb zza;

    public zzdxz(zzdyb zzdybVar) {
        this.zza = zzdybVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void zze(com.google.android.gms.ads.internal.util.zzbb zzbbVar) {
        this.zza.zza.zzd(zzbbVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
        zzdyb zzdybVar = this.zza;
        zzdybVar.zza.zzc(new zzdyr(autoCloseInputStream, zzdybVar.zze));
    }

    @Override // com.google.android.gms.internal.ads.zzbvd
    public final void zzg(ParcelFileDescriptor parcelFileDescriptor, zzbvl zzbvlVar) {
        this.zza.zza.zzc(new zzdyr(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), zzbvlVar));
    }
}
