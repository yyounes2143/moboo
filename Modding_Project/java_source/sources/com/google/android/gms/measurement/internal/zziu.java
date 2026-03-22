package com.google.android.gms.measurement.internal;

import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zziu implements Runnable {
    final /* synthetic */ zzpl zza;
    final /* synthetic */ zzr zzb;
    final /* synthetic */ zzjd zzc;

    public zziu(zzjd zzjdVar, zzpl zzplVar, zzr zzrVar) {
        this.zza = zzplVar;
        this.zzb = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjd zzjdVar = this.zzc;
        zzjdVar.zzL().zzZ();
        zzpl zzplVar = this.zza;
        if (zzplVar.zza() == null) {
            zzr zzrVar = this.zzb;
            zzjdVar.zzL().zzad(zzplVar.zzb, zzrVar);
            return;
        }
        zzjdVar.zzL().zzac(zzplVar, this.zzb);
    }
}
