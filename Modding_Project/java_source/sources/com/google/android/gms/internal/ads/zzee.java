package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzee {
    final /* synthetic */ zzei zza;
    private final WeakReference zzb;
    private final Executor zzc;

    public zzee(zzei zzeiVar, zzzh zzzhVar, Executor executor) {
        this.zza = zzeiVar;
        this.zzb = new WeakReference(zzzhVar);
        this.zzc = executor;
    }

    public static /* synthetic */ void zza(zzee zzeeVar) {
        zzzh zzzhVar = (zzzh) zzeeVar.zzb.get();
        if (zzzhVar != null) {
            zzzj.zzi(zzzhVar.zza, zzeeVar.zza.zza());
        }
    }

    public final void zzb() {
        this.zzc.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzed
            @Override // java.lang.Runnable
            public final void run() {
                zzee.zza(zzee.this);
            }
        });
    }

    public final boolean zzc() {
        if (this.zzb.get() == null) {
            return true;
        }
        return false;
    }
}
