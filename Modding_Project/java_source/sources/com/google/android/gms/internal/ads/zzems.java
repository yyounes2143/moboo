package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzems implements zzetu {
    private final Bundle zza;

    @VisibleForTesting
    public zzems(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = this.zza;
        zzcuv zzcuvVar = (zzcuv) obj;
        if (!bundle.isEmpty()) {
            zzcuvVar.zza.putBundle("installed_adapter_data", bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
