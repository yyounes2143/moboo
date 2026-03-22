package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import j$.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzmt implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzbg zzc;
    final /* synthetic */ zznl zzd;

    public zzmt(zznl zznlVar, boolean z, zzr zzrVar, boolean z2, zzbg zzbgVar, String str) {
        this.zza = zzrVar;
        this.zzb = z2;
        this.zzc = zzbgVar;
        Objects.requireNonNull(zznlVar);
        this.zzd = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbg zzbgVar;
        zznl zznlVar = this.zzd;
        zzgb zzZ = zznlVar.zzZ();
        if (zzZ == null) {
            zznlVar.zzu.zzaV().zzb().zza("Discarding data. Failed to send event to service");
            return;
        }
        zzr zzrVar = this.zza;
        Preconditions.checkNotNull(zzrVar);
        if (this.zzb) {
            zzbgVar = null;
        } else {
            zzbgVar = this.zzc;
        }
        zznlVar.zzm(zzZ, zzbgVar, zzrVar);
        zznlVar.zzV();
    }
}
