package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeoutException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeup implements zzetv {
    private final com.google.android.gms.ads.internal.util.zzg zza;
    private final Context zzb;
    private final zzgdj zzc;
    private final ScheduledExecutorService zzd;
    private final zzedd zze;
    private final zzfcp zzf;
    private final VersionInfoParcel zzg;

    public zzeup(com.google.android.gms.ads.internal.util.zzg zzgVar, Context context, zzgdj zzgdjVar, ScheduledExecutorService scheduledExecutorService, zzedd zzeddVar, zzfcp zzfcpVar, VersionInfoParcel versionInfoParcel) {
        this.zza = zzgVar;
        this.zzb = context;
        this.zzc = zzgdjVar;
        this.zzd = scheduledExecutorService;
        this.zze = zzeddVar;
        this.zzf = zzfcpVar;
        this.zzg = versionInfoParcel;
    }

    public static /* synthetic */ ListenableFuture zzc(zzeup zzeupVar, final Throwable th) {
        zzeur zzeurVar;
        zzeupVar.zzc.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeum
            @Override // java.lang.Runnable
            public final void run() {
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzkJ)).booleanValue();
                Throwable th2 = th;
                if (booleanValue) {
                    com.google.android.gms.ads.internal.zzv.zzp().zzx(th2, "TopicsSignalUnsampled.fetchTopicsSignal");
                } else {
                    com.google.android.gms.ads.internal.zzv.zzp().zzv(th2, "TopicsSignal.fetchTopicsSignal");
                }
            }
        });
        if (th instanceof SecurityException) {
            zzeurVar = new zzeur("", 2, null);
        } else if (th instanceof IllegalStateException) {
            zzeurVar = new zzeur("", 3, null);
        } else if (th instanceof IllegalArgumentException) {
            zzeurVar = new zzeur("", 4, null);
        } else if (th instanceof TimeoutException) {
            zzeurVar = new zzeur("", 5, null);
        } else {
            zzeurVar = new zzeur("", 0, null);
        }
        return zzgcy.zzh(zzeurVar);
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 56;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009e, code lost:
        if (java.util.Arrays.asList(r0.split(",")).contains(r5.zzb.getPackageName()) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
        if (r0.zzd.zzy != com.google.android.gms.ads.RequestConfiguration.PublisherPrivacyPersonalizationState.DISABLED.getValue()) goto L9;
     */
    @Override // com.google.android.gms.internal.ads.zzetv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.ListenableFuture zzb() {
        /*
            r5 = this;
            com.google.android.gms.internal.ads.zzbcm r0 = com.google.android.gms.internal.ads.zzbcv.zzkI
            com.google.android.gms.internal.ads.zzbct r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lfe
            com.google.android.gms.ads.internal.util.zzg r0 = r5.zza
            boolean r0 = r0.zzO()
            if (r0 == 0) goto Lfe
            com.google.android.gms.internal.ads.zzbcm r0 = com.google.android.gms.internal.ads.zzbcv.zzkM
            com.google.android.gms.internal.ads.zzbct r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L3a
            com.google.android.gms.internal.ads.zzfcp r0 = r5.zzf
            com.google.android.gms.ads.RequestConfiguration$PublisherPrivacyPersonalizationState r1 = com.google.android.gms.ads.RequestConfiguration.PublisherPrivacyPersonalizationState.DISABLED
            int r1 = r1.getValue()
            com.google.android.gms.ads.internal.client.zzm r0 = r0.zzd
            int r0 = r0.zzy
            if (r0 == r1) goto Lfe
        L3a:
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r0 = r5.zzg
            int r0 = r0.clientJarVersion
            com.google.android.gms.internal.ads.zzbcm r1 = com.google.android.gms.internal.ads.zzbcv.zzkG
            com.google.android.gms.internal.ads.zzbct r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            if (r0 < r1) goto Lfe
            int r0 = android.os.Build.VERSION.SDK_INT
            com.google.android.gms.internal.ads.zzbcm r1 = com.google.android.gms.internal.ads.zzbcv.zzkH
            com.google.android.gms.internal.ads.zzbct r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            if (r0 < r1) goto Lfe
            com.google.android.gms.internal.ads.zzbcm r0 = com.google.android.gms.internal.ads.zzbcv.zzkE
            com.google.android.gms.internal.ads.zzbct r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.zzb(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L77
            goto La0
        L77:
            com.google.android.gms.internal.ads.zzbcm r0 = com.google.android.gms.internal.ads.zzbcv.zzkF
            com.google.android.gms.internal.ads.zzbct r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.zzb(r0)
            java.lang.String r0 = (java.lang.String) r0
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L8a
            goto Lfe
        L8a:
            java.lang.String r1 = ","
            java.lang.String[] r0 = r0.split(r1)
            java.util.List r0 = java.util.Arrays.asList(r0)
            android.content.Context r1 = r5.zzb
            java.lang.String r1 = r1.getPackageName()
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto Lfe
        La0:
            com.google.android.gms.internal.ads.zzedd r0 = r5.zze     // Catch: java.lang.Exception -> Lc1
            r1 = 0
            com.google.common.util.concurrent.ListenableFuture r0 = r0.zza(r1)     // Catch: java.lang.Exception -> Lc1
            com.google.android.gms.internal.ads.zzbcm r1 = com.google.android.gms.internal.ads.zzbcv.zzkK     // Catch: java.lang.Exception -> Lc1
            com.google.android.gms.internal.ads.zzbct r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Exception -> Lc1
            java.lang.Object r1 = r2.zzb(r1)     // Catch: java.lang.Exception -> Lc1
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Exception -> Lc1
            int r1 = r1.intValue()     // Catch: java.lang.Exception -> Lc1
            long r1 = (long) r1     // Catch: java.lang.Exception -> Lc1
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> Lc1
            java.util.concurrent.ScheduledExecutorService r4 = r5.zzd     // Catch: java.lang.Exception -> Lc1
            com.google.common.util.concurrent.ListenableFuture r0 = com.google.android.gms.internal.ads.zzgcy.zzo(r0, r1, r3, r4)     // Catch: java.lang.Exception -> Lc1
            goto Lc6
        Lc1:
            r0 = move-exception
            com.google.common.util.concurrent.ListenableFuture r0 = com.google.android.gms.internal.ads.zzgcy.zzg(r0)
        Lc6:
            com.google.android.gms.internal.ads.zzgcp r0 = com.google.android.gms.internal.ads.zzgcp.zzw(r0)
            com.google.android.gms.internal.ads.zzeun r1 = new com.google.android.gms.internal.ads.zzeun
            r1.<init>()
            com.google.android.gms.internal.ads.zzgdj r2 = r5.zzc
            com.google.common.util.concurrent.ListenableFuture r0 = com.google.android.gms.internal.ads.zzgcy.zzn(r0, r1, r2)
            com.google.android.gms.internal.ads.zzgcp r0 = (com.google.android.gms.internal.ads.zzgcp) r0
            com.google.android.gms.internal.ads.zzeuo r1 = new com.google.android.gms.internal.ads.zzeuo
            r1.<init>()
            java.lang.Class<java.lang.Throwable> r3 = java.lang.Throwable.class
            com.google.common.util.concurrent.ListenableFuture r0 = com.google.android.gms.internal.ads.zzgcy.zzf(r0, r3, r1, r2)
            com.google.android.gms.internal.ads.zzgcp r0 = (com.google.android.gms.internal.ads.zzgcp) r0
            com.google.android.gms.internal.ads.zzbcm r1 = com.google.android.gms.internal.ads.zzbcv.zzkK
            com.google.android.gms.internal.ads.zzbct r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            long r1 = (long) r1
            java.util.concurrent.ScheduledExecutorService r3 = r5.zzd
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS
            com.google.common.util.concurrent.ListenableFuture r0 = com.google.android.gms.internal.ads.zzgcy.zzo(r0, r1, r4, r3)
            return r0
        Lfe:
            com.google.android.gms.internal.ads.zzeur r0 = new com.google.android.gms.internal.ads.zzeur
            r1 = -1
            r2 = 0
            java.lang.String r3 = ""
            r0.<init>(r3, r1, r2)
            com.google.common.util.concurrent.ListenableFuture r0 = com.google.android.gms.internal.ads.zzgcy.zzh(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeup.zzb():com.google.common.util.concurrent.ListenableFuture");
    }
}
