package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfls implements Runnable {
    final /* synthetic */ zzflt zza;

    public zzfls(zzflt zzfltVar) {
        this.zza = zzfltVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzfmf zzfmfVar;
        zzflt zzfltVar = this.zza;
        float zza = zzflt.zza(zzfltVar);
        atomicReference = zzfltVar.zzc;
        if (((Float) atomicReference.getAndSet(Float.valueOf(zza))).floatValue() != zza) {
            zzfmfVar = zzfltVar.zzd;
            zzfmfVar.zze(zza);
        }
    }
}
