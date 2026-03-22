package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import j$.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzmo implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzbe zzc;
    final /* synthetic */ Bundle zzd;
    final /* synthetic */ zznl zze;

    public zzmo(zznl zznlVar, boolean z, zzr zzrVar, boolean z2, zzbe zzbeVar, Bundle bundle) {
        this.zza = zzrVar;
        this.zzb = z2;
        this.zzc = zzbeVar;
        this.zzd = bundle;
        Objects.requireNonNull(zznlVar);
        this.zze = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.zze;
        zzgb zzZ = zznlVar.zzZ();
        if (zzZ == null) {
            zznlVar.zzu.zzaV().zzb().zza("Failed to send default event parameters to service");
            return;
        }
        zzbe zzbeVar = null;
        if (zznlVar.zzu.zzc().zzp(null, zzfy.zzbb)) {
            zzr zzrVar = this.zza;
            Preconditions.checkNotNull(zzrVar);
            zznl zznlVar2 = this.zze;
            if (!this.zzb) {
                zzbeVar = this.zzc;
            }
            zznlVar2.zzm(zzZ, zzbeVar, zzrVar);
            return;
        }
        try {
            zzr zzrVar2 = this.zza;
            Preconditions.checkNotNull(zzrVar2);
            zzZ.zzu(this.zzd, zzrVar2);
            zznlVar.zzV();
        } catch (RemoteException e) {
            this.zze.zzu.zzaV().zzb().zzb("Failed to send default event parameters to service", e);
        }
    }
}
