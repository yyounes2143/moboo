package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfla {
    private boolean zza;

    public final void zza(Context context) {
        zzfmx.zzc(context, "Application Context cannot be null");
        if (!this.zza) {
            this.zza = true;
            zzfmf.zzb().zzd(context);
            zzflw.zza().zzd(context);
            zzfms.zzb(context);
            zzfmt.zzd(context);
            zzfmw.zza(context);
            zzfmc.zzb().zzc(context);
            zzflv.zza().zzd(context);
            zzfmh.zza().zze(context);
        }
    }

    public final boolean zzb() {
        return this.zza;
    }
}
