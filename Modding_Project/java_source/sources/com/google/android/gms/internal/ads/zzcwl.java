package com.google.android.gms.internal.ads;

import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcwl extends zzdbo {
    private boolean zzb;

    public zzcwl(Set set) {
        super(set);
        this.zzb = false;
    }

    public final synchronized void zza() {
        if (!this.zzb) {
            zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzcwk
                @Override // com.google.android.gms.internal.ads.zzdbn
                public final void zza(Object obj) {
                    ((zzcwn) obj).zzs();
                }
            });
            this.zzb = true;
        }
    }
}
