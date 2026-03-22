package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdtp extends com.google.android.gms.ads.internal.client.zzbj {
    final /* synthetic */ zzdtj zza;
    final /* synthetic */ zzdtq zzb;

    public zzdtp(zzdtq zzdtqVar, zzdtj zzdtjVar) {
        this.zza = zzdtjVar;
        this.zzb = zzdtqVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzc() throws RemoteException {
        long j;
        zzdtq zzdtqVar = this.zzb;
        zzdtj zzdtjVar = this.zza;
        j = zzdtqVar.zza;
        zzdtjVar.zzb(j);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzd() throws RemoteException {
        long j;
        zzdtq zzdtqVar = this.zzb;
        zzdtj zzdtjVar = this.zza;
        j = zzdtqVar.zza;
        zzdtjVar.zzc(j);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zze(int i) throws RemoteException {
        long j;
        zzdtq zzdtqVar = this.zzb;
        zzdtj zzdtjVar = this.zza;
        j = zzdtqVar.zza;
        zzdtjVar.zzd(j, i);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        long j;
        zzdtq zzdtqVar = this.zzb;
        zzdtj zzdtjVar = this.zza;
        j = zzdtqVar.zza;
        zzdtjVar.zzd(j, zzeVar.zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzi() throws RemoteException {
        long j;
        zzdtq zzdtqVar = this.zzb;
        zzdtj zzdtjVar = this.zza;
        j = zzdtqVar.zza;
        zzdtjVar.zze(j);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzj() throws RemoteException {
        long j;
        zzdtq zzdtqVar = this.zzb;
        zzdtj zzdtjVar = this.zza;
        j = zzdtqVar.zza;
        zzdtjVar.zzg(j);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzg() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzh() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzk() {
    }
}
