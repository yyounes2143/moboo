package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgon {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final Map zzd;

    public zzgon() {
        this.zza = new HashMap();
        this.zzb = new HashMap();
        this.zzc = new HashMap();
        this.zzd = new HashMap();
    }

    public final zzgon zza(zzgme zzgmeVar) throws GeneralSecurityException {
        zzgoo zzgooVar = new zzgoo(zzgmeVar.zzd(), zzgmeVar.zzc(), null);
        Map map = this.zzb;
        if (map.containsKey(zzgooVar)) {
            zzgme zzgmeVar2 = (zzgme) map.get(zzgooVar);
            if (zzgmeVar2.equals(zzgmeVar) && zzgmeVar.equals(zzgmeVar2)) {
                return this;
            }
            throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(zzgooVar.toString()));
        }
        map.put(zzgooVar, zzgmeVar);
        return this;
    }

    public final zzgon zzb(zzgmi zzgmiVar) throws GeneralSecurityException {
        zzgop zzgopVar = new zzgop(zzgmiVar.zzc(), zzgmiVar.zzd(), null);
        Map map = this.zza;
        if (map.containsKey(zzgopVar)) {
            zzgmi zzgmiVar2 = (zzgmi) map.get(zzgopVar);
            if (zzgmiVar2.equals(zzgmiVar) && zzgmiVar.equals(zzgmiVar2)) {
                return this;
            }
            throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzgopVar.toString()));
        }
        map.put(zzgopVar, zzgmiVar);
        return this;
    }

    public final zzgon zzc(zzgno zzgnoVar) throws GeneralSecurityException {
        zzgoo zzgooVar = new zzgoo(zzgnoVar.zzd(), zzgnoVar.zzc(), null);
        Map map = this.zzd;
        if (map.containsKey(zzgooVar)) {
            zzgno zzgnoVar2 = (zzgno) map.get(zzgooVar);
            if (zzgnoVar2.equals(zzgnoVar) && zzgnoVar.equals(zzgnoVar2)) {
                return this;
            }
            throw new GeneralSecurityException("Attempt to register non-equal parser for already existing object of type: ".concat(zzgooVar.toString()));
        }
        map.put(zzgooVar, zzgnoVar);
        return this;
    }

    public final zzgon zzd(zzgns zzgnsVar) throws GeneralSecurityException {
        zzgop zzgopVar = new zzgop(zzgnsVar.zzc(), zzgnsVar.zzd(), null);
        Map map = this.zzc;
        if (map.containsKey(zzgopVar)) {
            zzgns zzgnsVar2 = (zzgns) map.get(zzgopVar);
            if (zzgnsVar2.equals(zzgnsVar) && zzgnsVar.equals(zzgnsVar2)) {
                return this;
            }
            throw new GeneralSecurityException("Attempt to register non-equal serializer for already existing object of type: ".concat(zzgopVar.toString()));
        }
        map.put(zzgopVar, zzgnsVar);
        return this;
    }

    public zzgon(zzgor zzgorVar) {
        this.zza = new HashMap(zzgor.zzf(zzgorVar));
        this.zzb = new HashMap(zzgor.zze(zzgorVar));
        this.zzc = new HashMap(zzgor.zzh(zzgorVar));
        this.zzd = new HashMap(zzgor.zzg(zzgorVar));
    }
}
