package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgrf extends zzgys implements zzhae {
    private static final zzgrf zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;
    private zzgri zze;

    static {
        zzgrf zzgrfVar = new zzgrf();
        zza = zzgrfVar;
        zzgys.zzbZ(zzgrf.class, zzgrfVar);
    }

    private zzgrf() {
    }

    public static zzgrd zzb() {
        return (zzgrd) zza.zzaZ();
    }

    public static zzgrf zzd(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzgrf) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public static /* synthetic */ void zzh(zzgrf zzgrfVar, zzgri zzgriVar) {
        zzgriVar.getClass();
        zzgrfVar.zze = zzgriVar;
        zzgrfVar.zzc |= 1;
    }

    public final int zza() {
        return this.zzd;
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
                                    synchronized (zzgrf.class) {
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
                    return new zzgrd(null);
                }
                return new zzgrf();
            }
            return zzgys.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgri zzf() {
        zzgri zzgriVar = this.zze;
        if (zzgriVar == null) {
            return zzgri.zzd();
        }
        return zzgriVar;
    }
}
