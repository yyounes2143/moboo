package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzert implements zzetu {
    public final Bundle zza;

    public zzert(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = ((zzcuv) obj).zza;
        Bundle zza = zzfdd.zza(bundle, "device");
        zza.putBundle("android_mem_info", this.zza);
        bundle.putBundle("device", zza);
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
