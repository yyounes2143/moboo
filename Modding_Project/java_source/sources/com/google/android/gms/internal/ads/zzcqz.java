package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcqz implements zzcra {
    private final Map zza;

    public zzcqz(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzcra
    @Nullable
    public final zzedf zza(int i, String str) {
        return (zzedf) this.zza.get(str);
    }
}
