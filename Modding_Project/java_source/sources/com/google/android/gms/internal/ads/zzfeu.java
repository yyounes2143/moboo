package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfeu implements zzgcu {
    final /* synthetic */ zzfex zza;
    final /* synthetic */ zzfey zzb;

    public zzfeu(zzfey zzfeyVar, zzfex zzfexVar) {
        this.zza = zzfexVar;
        this.zzb = zzfeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zza(Throwable th) {
        zzfey zzfeyVar = this.zzb;
        synchronized (zzfeyVar) {
            zzfeyVar.zze = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        ArrayDeque arrayDeque;
        int i;
        Void r3 = (Void) obj;
        zzfey zzfeyVar = this.zzb;
        synchronized (zzfeyVar) {
            try {
                zzfeyVar.zze = null;
                arrayDeque = zzfeyVar.zzd;
                arrayDeque.addFirst(this.zza);
                i = zzfeyVar.zzf;
                if (i == 1) {
                    zzfeyVar.zzh();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
