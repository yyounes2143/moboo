package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzetc implements zzetu {
    private final String zza;
    private final Bundle zzb;

    public zzetc(String str, Bundle bundle) {
        this.zza = str;
        this.zzb = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = ((zzcuv) obj).zza;
        bundle.putString("rtb", this.zza);
        Bundle bundle2 = this.zzb;
        if (!bundle2.isEmpty()) {
            bundle.putBundle("adapter_initialization_status", bundle2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
