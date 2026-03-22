package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzden extends zzdbo {
    public zzden(Set set) {
        super(set);
    }

    public final synchronized void zza(@Nullable final com.google.android.gms.ads.nonagon.signalgeneration.zzbk zzbkVar) {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzdel
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((zzdek) obj).zze(com.google.android.gms.ads.nonagon.signalgeneration.zzbk.this);
            }
        });
    }

    public final synchronized void zzb(@Nullable final String str) {
        zzq(new zzdbn() { // from class: com.google.android.gms.internal.ads.zzdem
            @Override // com.google.android.gms.internal.ads.zzdbn
            public final void zza(Object obj) {
                ((zzdek) obj).zzf(str);
            }
        });
    }
}
