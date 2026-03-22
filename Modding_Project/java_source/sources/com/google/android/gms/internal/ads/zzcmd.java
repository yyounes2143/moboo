package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcmd implements zzcwo {
    private final zzfdn zza;

    public zzcmd(zzfdn zzfdnVar) {
        this.zza = zzfdnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdj(@Nullable Context context) {
        try {
            this.zza.zzg();
        } catch (zzfcw e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdl(@Nullable Context context) {
        try {
            this.zza.zzt();
        } catch (zzfcw e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwo
    public final void zzdm(@Nullable Context context) {
        try {
            zzfdn zzfdnVar = this.zza;
            zzfdnVar.zzu();
            if (context != null) {
                zzfdnVar.zzs(context);
            }
        } catch (zzfcw e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot invoke onResume for the mediation adapter.", e);
        }
    }
}
