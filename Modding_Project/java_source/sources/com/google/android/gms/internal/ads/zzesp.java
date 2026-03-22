package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzesp implements zzetv {
    private final Context zza;
    private final zzgdj zzb;
    private final zzfcp zzc;
    private final VersionInfoParcel zzd;

    public zzesp(Context context, zzgdj zzgdjVar, zzfcp zzfcpVar, VersionInfoParcel versionInfoParcel) {
        this.zza = context;
        this.zzb = zzgdjVar;
        this.zzc = zzfcpVar;
        this.zzd = versionInfoParcel;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0042, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzdo)).booleanValue() == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0056, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzdq)).booleanValue() != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0058, code lost:
        r1 = com.google.android.gms.internal.ads.zzfrt.zzj(r0).zzh(((java.lang.Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzdz)).longValue(), com.google.android.gms.ads.internal.zzv.zzp().zzi().zzN());
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00bd, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzdp)).booleanValue() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d1, code lost:
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzdr)).booleanValue() != false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00d3, code lost:
        r4 = com.google.android.gms.internal.ads.zzfru.zzi(r0);
        r0 = com.google.android.gms.internal.ads.zzfrq.zza(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ef, code lost:
        if (r9.zzd.clientJarVersion < ((java.lang.Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzdv)).intValue()) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f1, code lost:
        r2 = r4.zzh(((java.lang.Long) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(com.google.android.gms.internal.ads.zzbcv.zzdA)).longValue(), com.google.android.gms.ads.internal.zzv.zzp().zzi().zzN());
        r3 = r0.zzd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0115, code lost:
        r6 = r0.zze();
        r4 = r2;
        r5 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ com.google.android.gms.internal.ads.zzesq zzc(com.google.android.gms.internal.ads.zzesp r9) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzesp.zzc(com.google.android.gms.internal.ads.zzesp):com.google.android.gms.internal.ads.zzesq");
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final int zza() {
        return 53;
    }

    @Override // com.google.android.gms.internal.ads.zzetv
    public final ListenableFuture zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeso
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzesp.zzc(zzesp.this);
            }
        });
    }
}
