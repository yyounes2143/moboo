package com.google.android.gms.internal.engage;

import com.google.android.gms.tasks.TaskCompletionSource;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzh extends zze {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ zze zzb;
    final /* synthetic */ zzo zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzh(zzo zzoVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, zze zzeVar) {
        super(taskCompletionSource);
        this.zza = taskCompletionSource2;
        this.zzb = zzeVar;
        Objects.requireNonNull(zzoVar);
        this.zzc = zzoVar;
    }

    @Override // com.google.android.gms.internal.engage.zze
    public final void zza() {
        Object obj;
        AtomicInteger atomicInteger;
        zzd zzdVar;
        zzo zzoVar = this.zzc;
        obj = zzoVar.zzg;
        synchronized (obj) {
            try {
                zzo.zzo(zzoVar, this.zza);
                atomicInteger = zzoVar.zzl;
                if (atomicInteger.getAndIncrement() > 0) {
                    zzdVar = zzoVar.zzc;
                    zzdVar.zzc("Already connected to the service.", new Object[0]);
                }
                zzo.zzq(zzoVar, this.zzb);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
