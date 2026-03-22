package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzavp extends zzaub {
    public Long zza;
    public Long zzb;
    public Long zzc;

    public zzavp() {
    }

    @Override // com.google.android.gms.internal.ads.zzaub
    public final HashMap zzb() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.zza);
        hashMap.put(1, this.zzb);
        hashMap.put(2, this.zzc);
        return hashMap;
    }

    public zzavp(String str) {
        HashMap zza = zzaub.zza(str);
        if (zza != null) {
            this.zza = (Long) zza.get(0);
            this.zzb = (Long) zza.get(1);
            this.zzc = (Long) zza.get(2);
        }
    }
}
