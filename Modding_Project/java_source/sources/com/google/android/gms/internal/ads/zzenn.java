package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzenn implements zzetu {
    @Nullable
    @VisibleForTesting
    final String zza;
    @VisibleForTesting
    final int zzb;

    public zzenn(@Nullable String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        int i;
        Bundle bundle = ((zzcuv) obj).zza;
        String str = this.zza;
        if (!TextUtils.isEmpty(str) && (i = this.zzb) != -1) {
            Bundle zza = zzfdd.zza(bundle, "pii");
            bundle.putBundle("pii", zza);
            zza.putString("pvid", str);
            zza.putInt("pvid_s", i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
