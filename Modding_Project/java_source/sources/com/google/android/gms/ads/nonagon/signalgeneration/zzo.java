package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.os.Bundle;
import android.util.Pair;
import android.webkit.CookieManager;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzcaa;
import com.google.android.gms.internal.ads.zzdsi;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzo {
    private final Map zza = new HashMap();
    private final Map zzb = new HashMap();
    private final Context zzc;
    private final zzdsi zzd;
    private final ExecutorService zze;

    public zzo(Context context, zzdsi zzdsiVar, ExecutorService executorService) {
        this.zzc = context;
        this.zzd = zzdsiVar;
        this.zze = executorService;
    }

    public static /* synthetic */ Object zza(zzo zzoVar, AdRequest adRequest, zzp zzpVar) {
        QueryInfo.generate(zzoVar.zzc, AdFormat.BANNER, adRequest, zzpVar);
        return Boolean.TRUE;
    }

    public static /* synthetic */ void zzb(zzo zzoVar, Object obj, Pair pair) {
        boolean z = false;
        if (obj instanceof WebView) {
            CookieManager zza = com.google.android.gms.ads.internal.zzv.zzs().zza(zzoVar.zzc);
            if (zza != null) {
                z = zza.acceptThirdPartyCookies((WebView) obj);
            }
        }
        Map map = zzoVar.zza;
        Boolean valueOf = Boolean.valueOf(z);
        zzq zzqVar = (zzq) map.get(valueOf);
        if (zzqVar != null && !zzqVar.zze()) {
            zzoVar.zzi(zzqVar, pair, true);
            return;
        }
        Map map2 = zzoVar.zzb;
        List list = (List) map2.get(valueOf);
        if (list == null) {
            list = new ArrayList();
            map2.put(valueOf, list);
        }
        list.add(pair);
    }

    private final void zzh(final boolean z) {
        Map map = this.zzb;
        Boolean valueOf = Boolean.valueOf(z);
        if (!map.containsKey(valueOf)) {
            map.put(valueOf, new ArrayList());
            this.zze.submit(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzm
                @Override // java.lang.Runnable
                public final void run() {
                    zzo.this.zzj(z, false);
                }
            });
        }
    }

    private final void zzi(zzq zzqVar, Pair pair, boolean z) {
        boolean z2;
        zzqVar.zzd();
        QueryInfo zzb = zzqVar.zzb();
        if (zzb != null) {
            ((QueryInfoGenerationCallback) pair.first).onSuccess(zzb);
        } else {
            ((QueryInfoGenerationCallback) pair.first).onFailure(zzqVar.zzc());
        }
        zzdsi zzdsiVar = this.zzd;
        Pair pair2 = new Pair("se", "query_g");
        Pair pair3 = new Pair(FirebaseAnalytics.Param.AD_FORMAT, AdFormat.BANNER.name());
        Pair pair4 = new Pair("rtype", Integer.toString(6));
        Pair pair5 = new Pair("scar", "true");
        Pair pair6 = new Pair("lat_ms", Long.toString(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - ((Long) pair.second).longValue()));
        Pair pair7 = new Pair("sgpc_h", Boolean.toString(z));
        if (zzqVar.zzb() != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzaa.zzd(zzdsiVar, null, "sgpcr", pair2, pair3, pair4, pair5, pair6, pair7, new Pair("sgpc_rs", Boolean.toString(z2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzj(boolean z, boolean z2) {
        Throwable th;
        Boolean valueOf;
        try {
            try {
                Bundle bundle = new Bundle();
                bundle.putString("query_info_type", "requester_type_6");
                bundle.putBoolean("accept_3p_cookie", z);
                Map map = this.zza;
                Boolean valueOf2 = Boolean.valueOf(z);
                zzq zzqVar = (zzq) map.get(valueOf2);
                int i = 0;
                if (z2 && zzqVar != null) {
                    try {
                        i = zzqVar.zza() + 1;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                zzq zzqVar2 = (zzq) map.get(valueOf2);
                if (zzqVar2 == null) {
                    valueOf = null;
                } else {
                    valueOf = Boolean.valueOf(zzqVar2.zzf());
                }
                final zzp zzpVar = new zzp(this, z, i, valueOf, this.zzd);
                final AdRequest build = new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlr)).booleanValue()) {
                    this.zze.submit(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzn
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return zzo.zza(zzo.this, build, zzpVar);
                        }
                    });
                } else {
                    QueryInfo.generate(this.zzc, AdFormat.BANNER, build, zzpVar);
                }
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final synchronized void zze() {
        zzh(true);
        zzh(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0015, B:9:0x001b, B:15:0x0027, B:17:0x002d, B:19:0x003e, B:23:0x004c, B:26:0x006b, B:27:0x006f, B:29:0x0075, B:18:0x0036, B:14:0x0024), top: B:35:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0036 A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0015, B:9:0x001b, B:15:0x0027, B:17:0x002d, B:19:0x003e, B:23:0x004c, B:26:0x006b, B:27:0x006f, B:29:0x0075, B:18:0x0036, B:14:0x0024), top: B:35:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006a A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006b A[Catch: all -> 0x0022, TryCatch #0 {all -> 0x0022, blocks: (B:3:0x0001, B:5:0x000f, B:7:0x0015, B:9:0x001b, B:15:0x0027, B:17:0x002d, B:19:0x003e, B:23:0x004c, B:26:0x006b, B:27:0x006f, B:29:0x0075, B:18:0x0036, B:14:0x0024), top: B:35:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzf(final boolean r8, com.google.android.gms.ads.nonagon.signalgeneration.zzq r9) {
        /*
            r7 = this;
            monitor-enter(r7)
            java.util.Map r0 = r7.zza     // Catch: java.lang.Throwable -> L22
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r8)     // Catch: java.lang.Throwable -> L22
            java.lang.Object r2 = r0.get(r1)     // Catch: java.lang.Throwable -> L22
            com.google.android.gms.ads.nonagon.signalgeneration.zzq r2 = (com.google.android.gms.ads.nonagon.signalgeneration.zzq) r2     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L24
            boolean r3 = r2.zze()     // Catch: java.lang.Throwable -> L22
            if (r3 != 0) goto L24
            com.google.android.gms.ads.query.QueryInfo r2 = r2.zzb()     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L24
            com.google.android.gms.ads.query.QueryInfo r2 = r9.zzb()     // Catch: java.lang.Throwable -> L22
            if (r2 == 0) goto L27
            goto L24
        L22:
            r8 = move-exception
            goto L81
        L24:
            r0.put(r1, r9)     // Catch: java.lang.Throwable -> L22
        L27:
            com.google.android.gms.ads.query.QueryInfo r0 = r9.zzb()     // Catch: java.lang.Throwable -> L22
            if (r0 == 0) goto L36
            com.google.android.gms.internal.ads.zzbef r0 = com.google.android.gms.internal.ads.zzbfa.zzf     // Catch: java.lang.Throwable -> L22
            java.lang.Object r0 = r0.zze()     // Catch: java.lang.Throwable -> L22
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.Throwable -> L22
            goto L3e
        L36:
            com.google.android.gms.internal.ads.zzbef r0 = com.google.android.gms.internal.ads.zzbfa.zzg     // Catch: java.lang.Throwable -> L22
            java.lang.Object r0 = r0.zze()     // Catch: java.lang.Throwable -> L22
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.Throwable -> L22
        L3e:
            long r2 = r0.longValue()     // Catch: java.lang.Throwable -> L22
            com.google.android.gms.ads.query.QueryInfo r0 = r9.zzb()     // Catch: java.lang.Throwable -> L22
            r4 = 0
            if (r0 != 0) goto L4b
            r0 = 1
            goto L4c
        L4b:
            r0 = r4
        L4c:
            java.util.concurrent.ScheduledExecutorService r5 = com.google.android.gms.internal.ads.zzcaa.zzd     // Catch: java.lang.Throwable -> L22
            com.google.android.gms.ads.nonagon.signalgeneration.zzl r6 = new com.google.android.gms.ads.nonagon.signalgeneration.zzl     // Catch: java.lang.Throwable -> L22
            r6.<init>()     // Catch: java.lang.Throwable -> L22
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L22
            r5.schedule(r6, r2, r8)     // Catch: java.lang.Throwable -> L22
            java.util.Map r8 = r7.zzb     // Catch: java.lang.Throwable -> L22
            java.lang.Object r0 = r8.get(r1)     // Catch: java.lang.Throwable -> L22
            java.util.List r0 = (java.util.List) r0     // Catch: java.lang.Throwable -> L22
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L22
            r2.<init>()     // Catch: java.lang.Throwable -> L22
            r8.put(r1, r2)     // Catch: java.lang.Throwable -> L22
            if (r0 != 0) goto L6b
            goto L7f
        L6b:
            java.util.Iterator r8 = r0.iterator()     // Catch: java.lang.Throwable -> L22
        L6f:
            boolean r0 = r8.hasNext()     // Catch: java.lang.Throwable -> L22
            if (r0 == 0) goto L7f
            java.lang.Object r0 = r8.next()     // Catch: java.lang.Throwable -> L22
            android.util.Pair r0 = (android.util.Pair) r0     // Catch: java.lang.Throwable -> L22
            r7.zzi(r9, r0, r4)     // Catch: java.lang.Throwable -> L22
            goto L6f
        L7f:
            monitor-exit(r7)
            return
        L81:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L22
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzo.zzf(boolean, com.google.android.gms.ads.nonagon.signalgeneration.zzq):void");
    }

    public final synchronized void zzg(final Object obj, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        final Pair pair = new Pair(queryInfoGenerationCallback, Long.valueOf(com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis()));
        zzcaa.zzf.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzk
            @Override // java.lang.Runnable
            public final void run() {
                zzo.zzb(zzo.this, obj, pair);
            }
        });
    }
}
