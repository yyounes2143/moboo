package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzave implements Runnable {
    final /* synthetic */ zzavf zza;

    public zzave(zzavf zzavfVar) {
        this.zza = zzavfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        zzawo zzawoVar;
        ConditionVariable conditionVariable2;
        zzavf zzavfVar = this.zza;
        if (zzavfVar.zzb == null) {
            conditionVariable = zzavf.zzc;
            synchronized (conditionVariable) {
                if (zzavfVar.zzb != null) {
                    return;
                }
                boolean z2 = false;
                try {
                    z = ((Boolean) zzbcv.zzcO.zze()).booleanValue();
                } catch (IllegalStateException unused) {
                    z = false;
                }
                if (z) {
                    try {
                        zzawoVar = this.zza.zze;
                        zzavf.zza = zzfpx.zzb(zzawoVar.zza, "ADSHIELD", null);
                    } catch (Throwable unused2) {
                    }
                }
                z2 = z;
                this.zza.zzb = Boolean.valueOf(z2);
                conditionVariable2 = zzavf.zzc;
                conditionVariable2.open();
            }
        }
    }
}
