package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgod {
    private final Map zza;
    private final Map zzb;

    private zzgod() {
        this.zza = new HashMap();
        this.zzb = new HashMap();
    }

    public final zzgod zza(zzgob zzgobVar) throws GeneralSecurityException {
        if (zzgobVar != null) {
            zzgoe zzgoeVar = new zzgoe(zzgobVar.zzc(), zzgobVar.zzd(), null);
            Map map = this.zza;
            if (map.containsKey(zzgoeVar)) {
                zzgob zzgobVar2 = (zzgob) map.get(zzgoeVar);
                if (zzgobVar2.equals(zzgobVar) && zzgobVar.equals(zzgobVar2)) {
                    return this;
                }
                throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: ".concat(zzgoeVar.toString()));
            }
            map.put(zzgoeVar, zzgobVar);
            return this;
        }
        throw new NullPointerException("primitive constructor must be non-null");
    }

    public final zzgod zzb(zzgoh zzgohVar) throws GeneralSecurityException {
        Map map = this.zzb;
        Class zzb = zzgohVar.zzb();
        if (map.containsKey(zzb)) {
            zzgoh zzgohVar2 = (zzgoh) map.get(zzb);
            if (zzgohVar2.equals(zzgohVar) && zzgohVar.equals(zzgohVar2)) {
                return this;
            }
            throw new GeneralSecurityException("Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type".concat(zzb.toString()));
        }
        map.put(zzb, zzgohVar);
        return this;
    }

    public final zzgog zzc() {
        return new zzgog(this, null);
    }

    public /* synthetic */ zzgod(zzgof zzgofVar) {
        this.zza = new HashMap();
        this.zzb = new HashMap();
    }

    public /* synthetic */ zzgod(zzgog zzgogVar, zzgof zzgofVar) {
        this.zza = new HashMap(zzgog.zzd(zzgogVar));
        this.zzb = new HashMap(zzgog.zze(zzgogVar));
    }
}
