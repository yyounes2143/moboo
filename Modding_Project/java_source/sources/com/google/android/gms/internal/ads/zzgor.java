package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgor {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final Map zzd;

    public /* synthetic */ zzgor(zzgon zzgonVar, zzgoq zzgoqVar) {
        Map map;
        Map map2;
        Map map3;
        Map map4;
        map = zzgonVar.zza;
        this.zza = new HashMap(map);
        map2 = zzgonVar.zzb;
        this.zzb = new HashMap(map2);
        map3 = zzgonVar.zzc;
        this.zzc = new HashMap(map3);
        map4 = zzgonVar.zzd;
        this.zzd = new HashMap(map4);
    }

    public final zzgek zza(zzgom zzgomVar, @Nullable zzgey zzgeyVar) throws GeneralSecurityException {
        zzgoo zzgooVar = new zzgoo(zzgomVar.getClass(), zzgomVar.zzd(), null);
        Map map = this.zzb;
        if (map.containsKey(zzgooVar)) {
            return ((zzgme) map.get(zzgooVar)).zza(zzgomVar, zzgeyVar);
        }
        String obj = zzgooVar.toString();
        throw new GeneralSecurityException("No Key Parser for requested key type " + obj + " available");
    }

    public final zzgex zzb(zzgom zzgomVar) throws GeneralSecurityException {
        zzgoo zzgooVar = new zzgoo(zzgomVar.getClass(), zzgomVar.zzd(), null);
        Map map = this.zzd;
        if (map.containsKey(zzgooVar)) {
            return ((zzgno) map.get(zzgooVar)).zza(zzgomVar);
        }
        String obj = zzgooVar.toString();
        throw new GeneralSecurityException("No Parameters Parser for requested key type " + obj + " available");
    }

    public final zzgom zzc(zzgek zzgekVar, Class cls, @Nullable zzgey zzgeyVar) throws GeneralSecurityException {
        zzgop zzgopVar = new zzgop(zzgekVar.getClass(), cls, null);
        Map map = this.zza;
        if (map.containsKey(zzgopVar)) {
            return ((zzgmi) map.get(zzgopVar)).zza(zzgekVar, zzgeyVar);
        }
        String obj = zzgopVar.toString();
        throw new GeneralSecurityException("No Key serializer for " + obj + " available");
    }

    public final zzgom zzd(zzgex zzgexVar, Class cls) throws GeneralSecurityException {
        zzgop zzgopVar = new zzgop(zzgexVar.getClass(), cls, null);
        Map map = this.zzc;
        if (map.containsKey(zzgopVar)) {
            return ((zzgns) map.get(zzgopVar)).zza(zzgexVar);
        }
        String obj = zzgopVar.toString();
        throw new GeneralSecurityException("No Key Format serializer for " + obj + " available");
    }

    public final boolean zzi(zzgom zzgomVar) {
        return this.zzb.containsKey(new zzgoo(zzgomVar.getClass(), zzgomVar.zzd(), null));
    }

    public final boolean zzj(zzgom zzgomVar) {
        return this.zzd.containsKey(new zzgoo(zzgomVar.getClass(), zzgomVar.zzd(), null));
    }
}
