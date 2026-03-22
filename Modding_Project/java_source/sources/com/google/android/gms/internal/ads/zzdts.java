package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzdts extends zzbww {
    final /* synthetic */ zzdtu zza;

    public zzdts(zzdtu zzdtuVar) {
        this.zza = zzdtuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zze(int i) throws RemoteException {
        zzdtj zzdtjVar;
        long j;
        zzdtu zzdtuVar = this.zza;
        zzdtjVar = zzdtuVar.zzb;
        j = zzdtuVar.zza;
        zzdtjVar.zzm(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        zzdtj zzdtjVar;
        long j;
        zzdtu zzdtuVar = this.zza;
        zzdtjVar = zzdtuVar.zzb;
        j = zzdtuVar.zza;
        zzdtjVar.zzm(j, zzeVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwx
    public final void zzg() throws RemoteException {
        zzdtj zzdtjVar;
        long j;
        zzdtu zzdtuVar = this.zza;
        zzdtjVar = zzdtuVar.zzb;
        j = zzdtuVar.zza;
        zzdtjVar.zzp(j);
    }
}
