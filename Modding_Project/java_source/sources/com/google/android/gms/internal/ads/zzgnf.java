package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgnf {
    private static final zzgnf zza = new zzgnf();
    private final Map zzb = new HashMap();

    public static zzgnf zzb() {
        return zza;
    }

    public final synchronized zzgex zza(String str) throws GeneralSecurityException {
        Map map;
        map = this.zzb;
        if (map.containsKey("AES128_GCM")) {
        } else {
            throw new GeneralSecurityException("Name AES128_GCM does not exist");
        }
        return (zzgex) map.get("AES128_GCM");
    }

    public final synchronized void zzc(String str, zzgex zzgexVar) throws GeneralSecurityException {
        try {
            Map map = this.zzb;
            if (map.containsKey(str)) {
                if (((zzgex) map.get(str)).equals(zzgexVar)) {
                    return;
                }
                String valueOf = String.valueOf(map.get(str));
                String valueOf2 = String.valueOf(zzgexVar);
                throw new GeneralSecurityException("Parameters object with name " + str + " already exists (" + valueOf + "), cannot insert " + valueOf2);
            }
            map.put(str, zzgexVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzd(Map map) throws GeneralSecurityException {
        for (Map.Entry entry : map.entrySet()) {
            zzc((String) entry.getKey(), (zzgex) entry.getValue());
        }
    }
}
