package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zznb implements Runnable {
    final /* synthetic */ zznf zza;

    public zznb(zznf zznfVar) {
        Objects.requireNonNull(zznfVar);
        this.zza = zznfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.zza.zza;
        zzic zzicVar = zznlVar.zzu;
        Context zzaY = zzicVar.zzaY();
        zzicVar.zzaU();
        zznlVar.zzW(new ComponentName(zzaY, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
