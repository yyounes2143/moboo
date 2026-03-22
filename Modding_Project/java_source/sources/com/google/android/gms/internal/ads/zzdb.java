package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdb {
    private static final String zzb;
    public final String zza;

    static {
        String str = zzeu.zza;
        zzb = Integer.toString(0, 36);
    }

    public zzdb(String str) {
        this.zza = str;
    }

    public final Bundle zza() {
        Bundle bundle = new Bundle();
        bundle.putString(zzb, this.zza);
        return bundle;
    }
}
