package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdtc implements AppEventListener, zzcyv, com.google.android.gms.ads.internal.client.zza, zzcvt, zzcwn, zzcwo, zzcxh, zzcvw, zzfgu {
    private final List zza;
    private final zzdsq zzb;
    private long zzc;

    public zzdtc(zzdsq zzdsqVar, zzchb zzchbVar) {
        this.zzb = zzdsqVar;
        this.zza = Collections.singletonList(zzchbVar);
    }

    private final void zzg(Class cls, String str, Object... objArr) {
        this.zzb.zza(this.zza, "Event-".concat(cls.getSimpleName()), str, objArr);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzg(com.google.android.gms.ads.internal.client.zza.class, "onAdClicked", new Object[0]);
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void onAppEvent(String str, String str2) {
        zzg(AppEventListener.class, "onAppEvent", str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zza() {
        zzg(zzcvt.class, "onAdClosed", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzb() {
        zzg(zzcvt.class, "onAdLeftApplication", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzc() {
        zzg(zzcvt.class, "onAdOpened", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzd(zzfgn zzfgnVar, String str) {
        zzg(zzfgm.class, "onTaskSucceeded", str);
    }

    @Override // com.google.android.gms.internal.ads.zzcvw
    public final void zzdD(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzg(zzcvw.class, "onAdFailedToLoad", Integer.valueOf(zzeVar.zza), zzeVar.zzb, zzeVar.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdE(zzfgn zzfgnVar, String str) {
        zzg(zzfgm.class, "onTaskCreated", str);
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdF(zzfgn zzfgnVar, String str, Throwable th) {
        zzg(zzfgm.class, "onTaskFailed", str, th.getClass().getSimpleName());
    }

    @Override // com.google.android.gms.internal.ads.zzfgu
    public final void zzdG(zzfgn zzfgnVar, String str) {
        zzg(zzfgm.class, "onTaskStarted", str);
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdj(Context context) {
        zzg(zzcwo.class, "onDestroy", context);
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdl(Context context) {
        zzg(zzcwo.class, "onPause", context);
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdm(Context context) {
        zzg(zzcwo.class, "onResume", context);
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdn(zzbvl zzbvlVar) {
        this.zzc = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime();
        zzg(zzcyv.class, "onAdRequest", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    @ParametersAreNonnullByDefault
    public final void zzdu(zzbvx zzbvxVar, String str, String str2) {
        zzg(zzcvt.class, "onRewarded", zzbvxVar, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zze() {
        zzg(zzcvt.class, "onRewardedVideoCompleted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcvt
    public final void zzf() {
        zzg(zzcvt.class, "onRewardedVideoStarted", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcwn
    public final void zzs() {
        zzg(zzcwn.class, "onAdImpression", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcxh
    public final void zzt() {
        long elapsedRealtime = com.google.android.gms.ads.internal.zzv.zzD().elapsedRealtime() - this.zzc;
        com.google.android.gms.ads.internal.util.zze.zza("Ad Request Latency : " + elapsedRealtime);
        zzg(zzcxh.class, "onAdLoaded", new Object[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzcyv
    public final void zzdo(zzfcg zzfcgVar) {
    }
}
