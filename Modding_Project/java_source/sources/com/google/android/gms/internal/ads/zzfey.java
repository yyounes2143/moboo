package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayDeque;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfey {
    private final zzfec zza;
    private final zzfew zzb;
    private final zzfdy zzc;
    private zzffe zze;
    private int zzf = 1;
    private final ArrayDeque zzd = new ArrayDeque();

    public zzfey(zzfec zzfecVar, zzfdy zzfdyVar, zzfew zzfewVar) {
        this.zza = zzfecVar;
        this.zzc = zzfdyVar;
        this.zzb = zzfewVar;
        zzfdyVar.zzb(new zzfet(this));
    }

    public static /* synthetic */ void zzc(zzfey zzfeyVar) {
        synchronized (zzfeyVar) {
            zzfeyVar.zzf = 1;
            zzfeyVar.zzh();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0057, code lost:
        r3 = new com.google.android.gms.internal.ads.zzffe(r4.zza, r4.zzb, r0);
        r4.zze = r3;
        r3.zzd(new com.google.android.gms.internal.ads.zzfeu(r4, r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x006b, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzh() {
        /*
            r4 = this;
            monitor-enter(r4)
            com.google.android.gms.internal.ads.zzbcm r0 = com.google.android.gms.internal.ads.zzbcv.zzgv     // Catch: java.lang.Throwable -> L2d
            com.google.android.gms.internal.ads.zzbct r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r0 = r1.zzb(r0)     // Catch: java.lang.Throwable -> L2d
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L2d
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L2d
            if (r0 == 0) goto L2f
            com.google.android.gms.internal.ads.zzbzn r0 = com.google.android.gms.ads.internal.zzv.zzp()     // Catch: java.lang.Throwable -> L2d
            com.google.android.gms.ads.internal.util.zzg r0 = r0.zzi()     // Catch: java.lang.Throwable -> L2d
            com.google.android.gms.internal.ads.zzbzh r0 = r0.zzg()     // Catch: java.lang.Throwable -> L2d
            boolean r0 = r0.zzh()     // Catch: java.lang.Throwable -> L2d
            if (r0 == 0) goto L26
            goto L2f
        L26:
            java.util.ArrayDeque r0 = r4.zzd     // Catch: java.lang.Throwable -> L2d
            r0.clear()     // Catch: java.lang.Throwable -> L2d
            monitor-exit(r4)
            return
        L2d:
            r0 = move-exception
            goto L6e
        L2f:
            boolean r0 = r4.zzi()     // Catch: java.lang.Throwable -> L2d
            if (r0 == 0) goto L6c
        L35:
            java.util.ArrayDeque r0 = r4.zzd     // Catch: java.lang.Throwable -> L2d
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> L2d
            if (r1 != 0) goto L6c
            java.lang.Object r0 = r0.pollFirst()     // Catch: java.lang.Throwable -> L2d
            com.google.android.gms.internal.ads.zzfex r0 = (com.google.android.gms.internal.ads.zzfex) r0     // Catch: java.lang.Throwable -> L2d
            if (r0 == 0) goto L57
            com.google.android.gms.internal.ads.zzfem r1 = r0.zza()     // Catch: java.lang.Throwable -> L2d
            if (r1 == 0) goto L35
            com.google.android.gms.internal.ads.zzfec r1 = r4.zza     // Catch: java.lang.Throwable -> L2d
            com.google.android.gms.internal.ads.zzfem r2 = r0.zza()     // Catch: java.lang.Throwable -> L2d
            boolean r1 = r1.zze(r2)     // Catch: java.lang.Throwable -> L2d
            if (r1 == 0) goto L35
        L57:
            com.google.android.gms.internal.ads.zzfec r1 = r4.zza     // Catch: java.lang.Throwable -> L2d
            com.google.android.gms.internal.ads.zzfew r2 = r4.zzb     // Catch: java.lang.Throwable -> L2d
            com.google.android.gms.internal.ads.zzffe r3 = new com.google.android.gms.internal.ads.zzffe     // Catch: java.lang.Throwable -> L2d
            r3.<init>(r1, r2, r0)     // Catch: java.lang.Throwable -> L2d
            r4.zze = r3     // Catch: java.lang.Throwable -> L2d
            com.google.android.gms.internal.ads.zzfeu r1 = new com.google.android.gms.internal.ads.zzfeu     // Catch: java.lang.Throwable -> L2d
            r1.<init>(r4, r0)     // Catch: java.lang.Throwable -> L2d
            r3.zzd(r1)     // Catch: java.lang.Throwable -> L2d
            monitor-exit(r4)
            return
        L6c:
            monitor-exit(r4)
            return
        L6e:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L2d
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfey.zzh():void");
    }

    private final synchronized boolean zzi() {
        if (this.zze == null) {
            return true;
        }
        return false;
    }

    @Nullable
    public final synchronized ListenableFuture zza(zzfex zzfexVar) {
        this.zzf = 2;
        if (zzi()) {
            return null;
        }
        return this.zze.zzc(zzfexVar);
    }

    public final synchronized void zzf(zzfex zzfexVar) {
        this.zzd.add(zzfexVar);
    }
}
