package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzdek;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbm implements zzdek {
    private final zzb zza;
    private final int zzb;
    @Nullable
    private final String zzc;

    @VisibleForTesting
    public zzbm(zzb zzbVar, int i, @Nullable String str) {
        this.zza = zzbVar;
        this.zzb = i;
        this.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdek
    public final void zze(@Nullable final zzbk zzbkVar) {
        if (zzbkVar != null && this.zzb == 2 && !TextUtils.isEmpty(this.zzc)) {
            com.google.android.gms.ads.internal.util.zzs.zzh(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbl
                @Override // java.lang.Runnable
                public final void run() {
                    r0.zza.zzd(zzbm.this.zzc, zzbkVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdek
    public final void zzf(@Nullable String str) {
    }
}
