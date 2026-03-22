package com.google.android.gms.internal.ads;

import java.util.concurrent.BlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzapf implements Runnable {
    final /* synthetic */ zzapu zza;
    final /* synthetic */ zzapg zzb;

    public zzapf(zzapg zzapgVar, zzapu zzapuVar) {
        this.zza = zzapuVar;
        this.zzb = zzapgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BlockingQueue blockingQueue;
        try {
            blockingQueue = this.zzb.zzc;
            blockingQueue.put(this.zza);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
