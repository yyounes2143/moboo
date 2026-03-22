package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfhz extends zzgys implements zzhae {
    private static final zzfhz zza;
    private static volatile zzhal zzb;
    private zzgze zzc = zzgys.zzbK();

    static {
        zzfhz zzfhzVar = new zzfhz();
        zza = zzfhzVar;
        zzgys.zzbZ(zzfhz.class, zzfhzVar);
    }

    private zzfhz() {
    }

    public static zzfhv zzb() {
        return (zzfhv) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzfhz zzc() {
        return zza;
    }

    public static /* synthetic */ void zzd(zzfhz zzfhzVar, zzfhx zzfhxVar) {
        zzfhxVar.getClass();
        zzgze zzgzeVar = zzfhzVar.zzc;
        if (!zzgzeVar.zzc()) {
            zzfhzVar.zzc = zzgys.zzbL(zzgzeVar);
        }
        zzfhzVar.zzc.add(zzfhxVar);
    }

    public static /* synthetic */ void zzf(zzfhz zzfhzVar) {
        zzfhzVar.zzc = zzgys.zzbK();
    }

    public final int zza() {
        return this.zzc.size();
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
                                    synchronized (zzfhz.class) {
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
                    return new zzfhv(null);
                }
                return new zzfhz();
            }
            return zzgys.zzbQ(zza, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzfhx.class});
        }
        return (byte) 1;
    }
}
