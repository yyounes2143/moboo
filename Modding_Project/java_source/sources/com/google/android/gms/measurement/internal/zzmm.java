package com.google.android.gms.measurement.internal;

import j$.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzmm extends zzay {
    final /* synthetic */ zznl zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzmm(zznl zznlVar, zzjg zzjgVar) {
        super(zzjgVar);
        Objects.requireNonNull(zznlVar);
        this.zza = zznlVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzay
    public final void zza() {
        zznl zznlVar = this.zza;
        zznlVar.zzg();
        if (!zznlVar.zzh()) {
            return;
        }
        zznlVar.zzu.zzaV().zzk().zza("Inactivity, disconnecting from the service");
        zznlVar.zzM();
    }
}
