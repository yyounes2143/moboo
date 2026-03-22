package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzavu extends zzaub {
    public long zza;
    public long zzb;

    public zzavu() {
        this.zza = -1L;
        this.zzb = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzaub
    public final HashMap zzb() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, Long.valueOf(this.zza));
        hashMap.put(1, Long.valueOf(this.zzb));
        return hashMap;
    }

    public zzavu(String str) {
        this.zza = -1L;
        this.zzb = -1L;
        HashMap zza = zzaub.zza(str);
        if (zza != null) {
            this.zza = ((Long) zza.get(0)).longValue();
            this.zzb = ((Long) zza.get(1)).longValue();
        }
    }
}
