package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcqh implements zzayu {
    @Nullable
    private final zzcfb zza;
    private final Executor zzb;
    private final AtomicReference zzc = new AtomicReference();

    public zzcqh(@Nullable zzcfb zzcfbVar, Executor executor) {
        this.zza = zzcfbVar;
        this.zzb = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    public final synchronized void zzdr(zzayt zzaytVar) {
        final zzcfb zzcfbVar = this.zza;
        if (zzcfbVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmQ)).booleanValue()) {
                if (zzaytVar.zzj) {
                    AtomicReference atomicReference = this.zzc;
                    Boolean bool = Boolean.TRUE;
                    if (!bool.equals(atomicReference.getAndSet(bool))) {
                        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqf
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcfb.this.onResume();
                            }
                        });
                    }
                } else {
                    AtomicReference atomicReference2 = this.zzc;
                    Boolean bool2 = Boolean.FALSE;
                    if (!bool2.equals(atomicReference2.getAndSet(bool2))) {
                        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqg
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcfb.this.onPause();
                            }
                        });
                    }
                }
            }
        }
    }
}
