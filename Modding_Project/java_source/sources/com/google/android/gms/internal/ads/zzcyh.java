package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcyh extends zzdbo {
    private boolean zzb;

    @VisibleForTesting
    public zzcyh(Set set) {
        super(set);
        this.zzb = false;
    }

    public final synchronized void zza() {
        if (!this.zzb) {
            zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcyg
                @Override // com.google.android.gms.internal.ads.zzdbn
                public final void zza(Object obj) {
                    ((zzcyj) obj).zzu();
                }
            });
            this.zzb = true;
        }
    }
}
