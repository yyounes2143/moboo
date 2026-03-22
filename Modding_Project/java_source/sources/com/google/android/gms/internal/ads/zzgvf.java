package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgvf extends zzgys implements zzhae {
    private static final zzgvf zza;
    private static volatile zzhal zzb;
    private int zzc;
    private zzgxk zzd = zzgxk.zzb;

    static {
        zzgvf zzgvfVar = new zzgvf();
        zza = zzgvfVar;
        zzgys.zzbZ(zzgvf.class, zzgvfVar);
    }

    private zzgvf() {
    }

    public static zzgvd zzb() {
        return (zzgvd) zza.zzaZ();
    }

    public static zzgvf zzd(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzgvf) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public static zzhal zzg() {
        return zza.zzbN();
    }

    public final int zza() {
        return this.zzc;
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
                                    synchronized (zzgvf.class) {
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
                    return new zzgvd(null);
                }
                return new zzgvf();
            }
            return zzgys.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zzc", "zzd"});
        }
        return (byte) 1;
    }

    public final zzgxk zzf() {
        return this.zzd;
    }
}
