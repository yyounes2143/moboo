package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgog {
    private final Map zza;
    private final Map zzb;

    public /* synthetic */ zzgog(zzgod zzgodVar, zzgof zzgofVar) {
        Map map;
        Map map2;
        map = zzgodVar.zza;
        this.zza = new HashMap(map);
        map2 = zzgodVar.zzb;
        this.zzb = new HashMap(map2);
    }

    public static zzgod zza() {
        return new zzgod(null);
    }

    public final Object zzb(zzgek zzgekVar, Class cls) throws GeneralSecurityException {
        zzgoe zzgoeVar = new zzgoe(zzgekVar.getClass(), cls, null);
        Map map = this.zza;
        if (map.containsKey(zzgoeVar)) {
            return ((zzgob) map.get(zzgoeVar)).zza(zzgekVar);
        }
        String obj = zzgoeVar.toString();
        throw new GeneralSecurityException("No PrimitiveConstructor for " + obj + " available, see https://developers.google.com/tink/faq/registration_errors");
    }

    public final Object zzc(zzgmj zzgmjVar, zzgms zzgmsVar, Class cls) throws GeneralSecurityException {
        Map map = this.zzb;
        if (map.containsKey(cls)) {
            zzgoh zzgohVar = (zzgoh) map.get(cls);
            return zzgohVar.zze(zzgmjVar, zzgmsVar, new zzgoc(this, zzgohVar));
        }
        throw new GeneralSecurityException("No wrapper found for ".concat(cls.toString()));
    }
}
