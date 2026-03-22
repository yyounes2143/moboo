package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhcg extends zzgys implements zzhae {
    private static final zzhcg zza;
    private static volatile zzhal zzb;
    private zzgze zzc = zzgys.zzbK();

    static {
        zzhcg zzhcgVar = new zzhcg();
        zza = zzhcgVar;
        zzgys.zzbZ(zzhcg.class, zzhcgVar);
    }

    private zzhcg() {
    }

    public static zzhcf zzc() {
        return (zzhcf) zza.zzaZ();
    }

    public static /* synthetic */ void zzf(zzhcg zzhcgVar, zzhce zzhceVar) {
        zzhceVar.getClass();
        zzgze zzgzeVar = zzhcgVar.zzc;
        if (!zzgzeVar.zzc()) {
            zzhcgVar.zzc = zzgys.zzbL(zzgzeVar);
        }
        zzhcgVar.zzc.add(zzhceVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgys
    public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
        zzhal zzhalVar;
        int ordinal = zzgyrVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal != 5) {
                            if (ordinal == 6) {
                                zzhal zzhalVar2 = zzb;
                                if (zzhalVar2 == null) {
                                    synchronized (zzhcg.class) {
                                        try {
                                            zzhalVar = zzb;
                                            if (zzhalVar == null) {
                                                zzhalVar = new zzgyn(zza);
                                                zzb = zzhalVar;
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                    return zzhalVar;
                                }
                                return zzhalVar2;
                            }
                            throw null;
                        }
                        return zza;
                    }
                    return new zzhcf(null);
                }
                return new zzhcg();
            }
            return zzgys.zzbQ(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzhce.class});
        }
        return (byte) 1;
    }
}
