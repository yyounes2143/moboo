package com.google.android.gms.internal.ads;

import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzdko implements zzgcu {
    final /* synthetic */ zzdkp zza;

    public zzdko(zzdkp zzdkpVar) {
        this.zza = zzdkpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfE)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(th, "omid native display exp");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    /* renamed from: zzc */
    public final void zzb(List list) {
        try {
            zzcfb zzcfbVar = (zzcfb) list.get(0);
            if (zzcfbVar != null) {
                this.zza.zzb(zzcfbVar);
            }
        } catch (ClassCastException | IndexOutOfBoundsException e) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzfE)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "omid native display exp");
            }
        }
    }
}
