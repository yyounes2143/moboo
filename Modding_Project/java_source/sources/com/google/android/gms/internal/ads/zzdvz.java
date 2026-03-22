package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.ViewGroup;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdvz extends com.google.android.gms.ads.internal.client.zzds {
    @VisibleForTesting
    final Map zza = new HashMap();
    private final Context zzb;
    private final WeakReference zzc;
    private final zzdvn zzd;
    private final zzgdj zze;
    private zzdvc zzf;

    public zzdvz(Context context, WeakReference weakReference, zzdvn zzdvnVar, zzdwa zzdwaVar, zzgdj zzgdjVar) {
        this.zzb = context;
        this.zzc = weakReference;
        this.zzd = zzdvnVar;
        this.zze = zzgdjVar;
    }

    private final Context zzj() {
        Context context = (Context) this.zzc.get();
        if (context == null) {
            return this.zzb;
        }
        return context;
    }

    private static AdRequest zzk() {
        Bundle bundle = new Bundle();
        bundle.putString("request_origin", "inspector_ooct");
        return new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzl(Object obj) {
        ResponseInfo responseInfo;
        com.google.android.gms.ads.internal.client.zzdx zzc;
        if (obj instanceof LoadAdError) {
            responseInfo = ((LoadAdError) obj).getResponseInfo();
        } else if (obj instanceof AppOpenAd) {
            responseInfo = ((AppOpenAd) obj).getResponseInfo();
        } else if (obj instanceof InterstitialAd) {
            responseInfo = ((InterstitialAd) obj).getResponseInfo();
        } else if (obj instanceof RewardedAd) {
            responseInfo = ((RewardedAd) obj).getResponseInfo();
        } else if (obj instanceof RewardedInterstitialAd) {
            responseInfo = ((RewardedInterstitialAd) obj).getResponseInfo();
        } else if (obj instanceof AdView) {
            responseInfo = ((AdView) obj).getResponseInfo();
        } else if (obj instanceof NativeAd) {
            responseInfo = ((NativeAd) obj).getResponseInfo();
        } else {
            return "";
        }
        if (responseInfo != null && (zzc = responseInfo.zzc()) != null) {
            try {
                return zzc.zzh();
            } catch (RemoteException unused) {
                return "";
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzm(String str, String str2) {
        try {
            zzgcy.zzr(this.zzf.zzb(str), new zzdvx(this, str2), this.zze);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "OutOfContextTester.setAdAsOutOfContext");
            this.zzd.zzk(str2);
        }
    }

    private final synchronized void zzn(String str, String str2) {
        try {
            zzgcy.zzr(this.zzf.zzb(str), new zzdvy(this, str2), this.zze);
        } catch (NullPointerException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "OutOfContextTester.setAdAsShown");
            this.zzd.zzk(str2);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void zze(String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        ViewGroup viewGroup = (ViewGroup) ObjectWrapper.unwrap(iObjectWrapper2);
        if (context != null && viewGroup != null) {
            Map map = this.zza;
            Object obj = map.get(str);
            if (obj != null) {
                map.remove(str);
            }
            if (obj instanceof AdView) {
                zzdwa.zza(context, viewGroup, (AdView) obj);
            } else if (obj instanceof NativeAd) {
                zzdwa.zzb(context, viewGroup, (NativeAd) obj);
            }
        }
    }

    public final void zzf(zzdvc zzdvcVar) {
        this.zzf = zzdvcVar;
    }

    public final synchronized void zzg(String str, Object obj, String str2) {
        this.zza.put(str, obj);
        zzm(zzl(obj), str2);
    }

    public final synchronized void zzh(final String str, String str2, final String str3) {
        char c;
        try {
            switch (str2.hashCode()) {
                case -1999289321:
                    if (str2.equals("NATIVE")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1372958932:
                    if (str2.equals("INTERSTITIAL")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -428325382:
                    if (str2.equals("APP_OPEN_AD")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 543046670:
                    if (str2.equals("REWARDED")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 1854800829:
                    if (str2.equals("REWARDED_INTERSTITIAL")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 1951953708:
                    if (str2.equals("BANNER")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c != 0) {
                if (c != 1) {
                    if (c != 2) {
                        if (c != 3) {
                            if (c != 4) {
                                if (c != 5) {
                                    return;
                                }
                                RewardedInterstitialAd.load(zzj(), str, zzk(), new zzdvv(this, str, str3));
                                return;
                            }
                            RewardedAd.load(zzj(), str, zzk(), new zzdvu(this, str, str3));
                            return;
                        }
                        AdLoader.Builder builder = new AdLoader.Builder(zzj(), str);
                        builder.forNativeAd(new NativeAd.OnNativeAdLoadedListener() { // from class: com.google.android.gms.internal.ads.zzdvo
                            @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
                            public final void onNativeAdLoaded(NativeAd nativeAd) {
                                zzdvz.this.zzg(str, nativeAd, str3);
                            }
                        });
                        builder.withAdListener(new zzdvw(this, str3));
                        builder.build().loadAd(zzk());
                        return;
                    }
                    InterstitialAd.load(zzj(), str, zzk(), new zzdvt(this, str, str3));
                    return;
                }
                AdView adView = new AdView(zzj());
                adView.setAdSize(AdSize.BANNER);
                adView.setAdUnitId(str);
                adView.setAdListener(new zzdvs(this, str, adView, str3));
                adView.loadAd(zzk());
                return;
            }
            AppOpenAd.load(zzj(), str, zzk(), new zzdvr(this, str, str3));
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0046 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:6:0x000b, B:8:0x0013, B:10:0x0025, B:12:0x0029, B:14:0x002d, B:16:0x0031, B:22:0x003b, B:24:0x0046, B:27:0x004d, B:29:0x0051, B:32:0x0058, B:34:0x005c, B:37:0x0068, B:39:0x006c, B:42:0x0078, B:44:0x0088, B:46:0x008c, B:48:0x0090, B:21:0x0038), top: B:55:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004d A[Catch: all -> 0x0036, TRY_ENTER, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:6:0x000b, B:8:0x0013, B:10:0x0025, B:12:0x0029, B:14:0x002d, B:16:0x0031, B:22:0x003b, B:24:0x0046, B:27:0x004d, B:29:0x0051, B:32:0x0058, B:34:0x005c, B:37:0x0068, B:39:0x006c, B:42:0x0078, B:44:0x0088, B:46:0x008c, B:48:0x0090, B:21:0x0038), top: B:55:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzi(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            com.google.android.gms.internal.ads.zzdvn r0 = r5.zzd     // Catch: java.lang.Throwable -> L36
            android.app.Activity r0 = r0.zzg()     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto Lb
            goto Lab
        Lb:
            java.util.Map r1 = r5.zza     // Catch: java.lang.Throwable -> L36
            java.lang.Object r2 = r1.get(r6)     // Catch: java.lang.Throwable -> L36
            if (r2 == 0) goto Lab
            com.google.android.gms.internal.ads.zzbcm r3 = com.google.android.gms.internal.ads.zzbcv.zzjH     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.internal.ads.zzbct r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L36
            java.lang.Object r4 = r4.zzb(r3)     // Catch: java.lang.Throwable -> L36
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.lang.Throwable -> L36
            boolean r4 = r4.booleanValue()     // Catch: java.lang.Throwable -> L36
            if (r4 == 0) goto L38
            boolean r4 = r2 instanceof com.google.android.gms.ads.appopen.AppOpenAd     // Catch: java.lang.Throwable -> L36
            if (r4 != 0) goto L38
            boolean r4 = r2 instanceof com.google.android.gms.ads.interstitial.InterstitialAd     // Catch: java.lang.Throwable -> L36
            if (r4 != 0) goto L38
            boolean r4 = r2 instanceof com.google.android.gms.ads.rewarded.RewardedAd     // Catch: java.lang.Throwable -> L36
            if (r4 != 0) goto L38
            boolean r4 = r2 instanceof com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd     // Catch: java.lang.Throwable -> L36
            if (r4 == 0) goto L3b
            goto L38
        L36:
            r6 = move-exception
            goto Lad
        L38:
            r1.remove(r6)     // Catch: java.lang.Throwable -> L36
        L3b:
            java.lang.String r1 = zzl(r2)     // Catch: java.lang.Throwable -> L36
            r5.zzn(r1, r7)     // Catch: java.lang.Throwable -> L36
            boolean r7 = r2 instanceof com.google.android.gms.ads.appopen.AppOpenAd     // Catch: java.lang.Throwable -> L36
            if (r7 == 0) goto L4d
            com.google.android.gms.ads.appopen.AppOpenAd r2 = (com.google.android.gms.ads.appopen.AppOpenAd) r2     // Catch: java.lang.Throwable -> L36
            r2.show(r0)     // Catch: java.lang.Throwable -> L36
            monitor-exit(r5)
            return
        L4d:
            boolean r7 = r2 instanceof com.google.android.gms.ads.interstitial.InterstitialAd     // Catch: java.lang.Throwable -> L36
            if (r7 == 0) goto L58
            com.google.android.gms.ads.interstitial.InterstitialAd r2 = (com.google.android.gms.ads.interstitial.InterstitialAd) r2     // Catch: java.lang.Throwable -> L36
            r2.show(r0)     // Catch: java.lang.Throwable -> L36
            monitor-exit(r5)
            return
        L58:
            boolean r7 = r2 instanceof com.google.android.gms.ads.rewarded.RewardedAd     // Catch: java.lang.Throwable -> L36
            if (r7 == 0) goto L68
            com.google.android.gms.ads.rewarded.RewardedAd r2 = (com.google.android.gms.ads.rewarded.RewardedAd) r2     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.internal.ads.zzdvp r6 = new com.google.android.gms.internal.ads.zzdvp     // Catch: java.lang.Throwable -> L36
            r6.<init>()     // Catch: java.lang.Throwable -> L36
            r2.show(r0, r6)     // Catch: java.lang.Throwable -> L36
            monitor-exit(r5)
            return
        L68:
            boolean r7 = r2 instanceof com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd     // Catch: java.lang.Throwable -> L36
            if (r7 == 0) goto L78
            com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd r2 = (com.google.android.gms.ads.rewardedinterstitial.RewardedInterstitialAd) r2     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.internal.ads.zzdvq r6 = new com.google.android.gms.internal.ads.zzdvq     // Catch: java.lang.Throwable -> L36
            r6.<init>()     // Catch: java.lang.Throwable -> L36
            r2.show(r0, r6)     // Catch: java.lang.Throwable -> L36
            monitor-exit(r5)
            return
        L78:
            com.google.android.gms.internal.ads.zzbct r7 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L36
            java.lang.Object r7 = r7.zzb(r3)     // Catch: java.lang.Throwable -> L36
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L36
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L36
            if (r7 == 0) goto Lab
            boolean r7 = r2 instanceof com.google.android.gms.ads.AdView     // Catch: java.lang.Throwable -> L36
            if (r7 != 0) goto L90
            boolean r7 = r2 instanceof com.google.android.gms.ads.nativead.NativeAd     // Catch: java.lang.Throwable -> L36
            if (r7 == 0) goto Lab
        L90:
            android.content.Intent r7 = new android.content.Intent     // Catch: java.lang.Throwable -> L36
            r7.<init>()     // Catch: java.lang.Throwable -> L36
            android.content.Context r0 = r5.zzj()     // Catch: java.lang.Throwable -> L36
            java.lang.String r1 = "com.google.android.gms.ads.OutOfContextTestingActivity"
            r7.setClassName(r0, r1)     // Catch: java.lang.Throwable -> L36
            java.lang.String r1 = "adUnit"
            r7.putExtra(r1, r6)     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.ads.internal.zzv.zzr()     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.ads.internal.util.zzs.zzU(r0, r7)     // Catch: java.lang.Throwable -> L36
            monitor-exit(r5)
            return
        Lab:
            monitor-exit(r5)
            return
        Lad:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L36
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdvz.zzi(java.lang.String, java.lang.String):void");
    }
}
