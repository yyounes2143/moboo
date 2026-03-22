package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdet extends zzdbo {
    private boolean zzb;

    public zzdet(Set set) {
        super(set);
    }

    public final void zza() {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzdeq
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((VideoController.VideoLifecycleCallbacks) obj).onVideoEnd();
            }
        });
    }

    public final void zzb() {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzdep
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((VideoController.VideoLifecycleCallbacks) obj).onVideoPause();
            }
        });
    }

    public final synchronized void zzc() {
        try {
            if (!this.zzb) {
                zzq(new zzder());
                this.zzb = true;
            }
            zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzdes
                @Override // com.google.android.gms.internal.ads.zzdbn
                public final void zza(Object obj) {
                    ((VideoController.VideoLifecycleCallbacks) obj).onVideoPlay();
                }
            });
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzd() {
        zzq(new zzder());
        this.zzb = true;
    }
}
