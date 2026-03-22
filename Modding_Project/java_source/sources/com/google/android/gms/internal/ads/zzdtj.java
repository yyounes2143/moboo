package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.vungle.ads.internal.Constants;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdtj {
    private final zzbkv zza;

    public zzdtj(zzbkv zzbkvVar) {
        this.zza = zzbkvVar;
    }

    private final void zzs(zzdth zzdthVar) throws RemoteException {
        String zza = zzdth.zza(zzdthVar);
        String concat = "Dispatching AFMA event on publisher webview: ".concat(zza);
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
        this.zza.zzb(zza);
    }

    public final void zza() throws RemoteException {
        zzs(new zzdth(MobileAdsBridgeBase.initializeMethodName, null));
    }

    public final void zzb(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onAdClicked";
        this.zza.zzb(zzdth.zza(zzdthVar));
    }

    public final void zzc(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onAdClosed";
        zzs(zzdthVar);
    }

    public final void zzd(long j, int i) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onAdFailedToLoad";
        zzdthVar.zzd = Integer.valueOf(i);
        zzs(zzdthVar);
    }

    public final void zze(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onAdLoaded";
        zzs(zzdthVar);
    }

    public final void zzf(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzdthVar);
    }

    public final void zzg(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onAdOpened";
        zzs(zzdthVar);
    }

    public final void zzh(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth("creation", null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "nativeObjectCreated";
        zzs(zzdthVar);
    }

    public final void zzi(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth("creation", null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "nativeObjectNotCreated";
        zzs(zzdthVar);
    }

    public final void zzj(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onAdClicked";
        zzs(zzdthVar);
    }

    public final void zzk(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onRewardedAdClosed";
        zzs(zzdthVar);
    }

    public final void zzl(long j, zzbwn zzbwnVar) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onUserEarnedReward";
        zzdthVar.zze = zzbwnVar.zzf();
        zzdthVar.zzf = Integer.valueOf(zzbwnVar.zze());
        zzs(zzdthVar);
    }

    public final void zzm(long j, int i) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onRewardedAdFailedToLoad";
        zzdthVar.zzd = Integer.valueOf(i);
        zzs(zzdthVar);
    }

    public final void zzn(long j, int i) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onRewardedAdFailedToShow";
        zzdthVar.zzd = Integer.valueOf(i);
        zzs(zzdthVar);
    }

    public final void zzo(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onAdImpression";
        zzs(zzdthVar);
    }

    public final void zzp(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onRewardedAdLoaded";
        zzs(zzdthVar);
    }

    public final void zzq(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzdthVar);
    }

    public final void zzr(long j) throws RemoteException {
        zzdth zzdthVar = new zzdth(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdthVar.zza = Long.valueOf(j);
        zzdthVar.zzc = "onRewardedAdOpened";
        zzs(zzdthVar);
    }
}
