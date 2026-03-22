package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeuv implements zzetv {
    private final Context zza;
    private final ScheduledExecutorService zzb;
    private final Executor zzc;
    private final int zzd;
    private final boolean zze;
    private final boolean zzf;
    private final zzbze zzg;

    public zzeuv(zzbze zzbzeVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, boolean z, boolean z2) {
        this.zzg = zzbzeVar;
        this.zza = context;
        this.zzb = scheduledExecutorService;
        this.zzc = executor;
        this.zzd = i;
        this.zze = z;
        this.zzf = z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzdt)).booleanValue() == false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002c, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzdu)).booleanValue() == false) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ com.google.android.gms.internal.ads.zzeuw zzc(com.google.android.gms.internal.ads.zzeuv r7, com.google.android.gms.ads.identifier.AdvertisingIdClient.Info r8) {
        /*
            com.google.android.gms.internal.ads.zzfrp r0 = new com.google.android.gms.internal.ads.zzfrp
            r0.<init>()
            boolean r1 = r7.zze
            if (r1 != 0) goto L1c
            com.google.android.gms.internal.ads.zzbcm r1 = com.google.android.gms.internal.ads.zzbcv.zzdt
            com.google.android.gms.internal.ads.zzbct r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L2f
            goto L6d
        L1c:
            com.google.android.gms.internal.ads.zzbcm r1 = com.google.android.gms.internal.ads.zzbcv.zzdu
            com.google.android.gms.internal.ads.zzbct r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.zzb(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L2f
            goto L6d
        L2f:
            android.content.Context r0 = r7.zza     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            com.google.android.gms.internal.ads.zzfrt r1 = com.google.android.gms.internal.ads.zzfrt.zzj(r0)     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            j$.util.Objects.requireNonNull(r8)     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            java.lang.String r2 = r8.getId()     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            j$.util.Objects.requireNonNull(r2)     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            java.lang.String r3 = r0.getPackageName()     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            com.google.android.gms.internal.ads.zzbcm r0 = com.google.android.gms.internal.ads.zzbcv.zzdz     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            com.google.android.gms.internal.ads.zzbct r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            java.lang.Object r0 = r4.zzb(r0)     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            java.lang.Long r0 = (java.lang.Long) r0     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            long r4 = r0.longValue()     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            boolean r6 = r7.zzf     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            com.google.android.gms.internal.ads.zzfrp r0 = r1.zzi(r2, r3, r4, r6)     // Catch: java.lang.IllegalArgumentException -> L5a java.io.IOException -> L5d
            goto L6d
        L5a:
            r0 = move-exception
        L5b:
            r7 = r0
            goto L5f
        L5d:
            r0 = move-exception
            goto L5b
        L5f:
            java.lang.String r0 = "AdIdInfoSignalSource.getPaidV1"
            com.google.android.gms.internal.ads.zzbzn r1 = com.google.android.gms.ads.internal.zzv.zzp()
            r1.zzw(r7, r0)
            com.google.android.gms.internal.ads.zzfrp r0 = new com.google.android.gms.internal.ads.zzfrp
            r0.<init>()
        L6d:
            com.google.android.gms.internal.ads.zzeuw r7 = new com.google.android.gms.internal.ads.zzeuw
            r1 = 0
            r7.<init>(r8, r1, r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeuv.zzc(com.google.android.gms.internal.ads.zzeuv, com.google.android.gms.ads.identifier.AdvertisingIdClient$Info):com.google.android.gms.internal.ads.zzeuw");
    }

    public static /* synthetic */ zzeuw zzd(zzeuv zzeuvVar, Throwable th) {
        String string;
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        ContentResolver contentResolver = zzeuvVar.zza.getContentResolver();
        if (contentResolver == null) {
            string = null;
        } else {
            string = Settings.Secure.getString(contentResolver, "android_id");
        }
        return new zzeuw(null, string, new zzfrp());
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 40;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        zzgcp zzw = zzgcp.zzw(this.zzg.zza(this.zza, this.zzd));
        zzfur zzfurVar = new zzfur() { // from class: com.google.android.gms.internal.ads.zzeut
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                return zzeuv.zzc(zzeuv.this, (AdvertisingIdClient.Info) obj);
            }
        };
        Executor executor = this.zzc;
        return (zzgcp) zzgcy.zze((zzgcp) zzgcy.zzo((zzgcp) zzgcy.zzm(zzw, zzfurVar, executor), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbi)).longValue(), TimeUnit.MILLISECONDS, this.zzb), Throwable.class, new zzfur() { // from class: com.google.android.gms.internal.ads.zzeuu
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                return zzeuv.zzd(zzeuv.this, (Throwable) obj);
            }
        }, executor);
    }
}
