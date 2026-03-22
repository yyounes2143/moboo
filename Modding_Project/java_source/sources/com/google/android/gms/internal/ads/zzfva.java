package com.google.android.gms.internal.ads;

import java.io.Serializable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzfva implements Serializable {
    public static zzfva zzc() {
        return zzfug.zza;
    }

    public static zzfva zzd(Object obj) {
        if (obj == null) {
            return zzfug.zza;
        }
        return new zzfvh(obj);
    }

    public abstract zzfva zza(zzfur zzfurVar);

    public abstract Object zzb(Object obj);
}
