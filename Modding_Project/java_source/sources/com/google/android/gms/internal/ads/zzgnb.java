package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgnb {
    private static final zzgnb zza = new zzgnb();
    private final Map zzb = new HashMap();

    public static zzgnb zza() {
        return zza;
    }

    public final synchronized void zzb(zzgna zzgnaVar, Class cls) throws GeneralSecurityException {
        try {
            Map map = this.zzb;
            zzgna zzgnaVar2 = (zzgna) map.get(cls);
            if (zzgnaVar2 != null && !zzgnaVar2.equals(zzgnaVar)) {
                throw new GeneralSecurityException("Different key creator for parameters class already inserted");
            }
            map.put(cls, zzgnaVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
