package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdjq {
    private final zzdsd zza;

    public zzdjq(zzdsd zzdsdVar) {
        this.zza = zzdsdVar;
    }

    public final void zza(@Nullable View view, zzfbu zzfbuVar) {
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzne)).booleanValue() && view != null) {
            if (true != com.google.android.gms.ads.internal.util.zzac.zza(view)) {
                str = "0";
            } else {
                str = "1";
            }
            zzdsc zza = this.zza.zza();
            zza.zzb("action", "hcp");
            zza.zzb("hcp", str);
            zza.zzc(zzfbuVar);
            zza.zzj();
        }
    }
}
