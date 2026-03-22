package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzelq implements zzetu {
    private final boolean zza;

    public zzelq(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        String str;
        Bundle bundle = ((zzcuv) obj).zza;
        if (true != this.zza) {
            str = "0";
        } else {
            str = "1";
        }
        bundle.putString("adid_p", str);
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* synthetic */ void zza(Object obj) {
    }
}
