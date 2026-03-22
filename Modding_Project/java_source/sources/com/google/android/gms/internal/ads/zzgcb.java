package com.google.android.gms.internal.ads;

import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgcb extends zzgbz {
    private zzgcb() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgbz
    public final int zza(zzgcd zzgcdVar) {
        int i;
        synchronized (zzgcdVar) {
            i = zzgcdVar.remainingField - 1;
            zzgcdVar.remainingField = i;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzgbz
    public final void zzb(zzgcd zzgcdVar, Set set, Set set2) {
        synchronized (zzgcdVar) {
            try {
                if (zzgcdVar.seenExceptionsField == null) {
                    zzgcdVar.seenExceptionsField = set2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public /* synthetic */ zzgcb(zzgcc zzgccVar) {
        super(null);
    }
}
