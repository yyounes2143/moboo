package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgsy extends zzgys implements zzhae {
    private static final zzgsy zza;
    private static volatile zzhal zzb;

    static {
        zzgsy zzgsyVar = new zzgsy();
        zza = zzgsyVar;
        zzgys.zzbZ(zzgsy.class, zzgsyVar);
    }

    private zzgsy() {
    }

    public static zzgsy zzb() {
        return zza;
    }

    public static zzgsy zzc(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzgsy) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
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
                                    synchronized (zzgsy.class) {
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
                    return new zzgsw(null);
                }
                return new zzgsy();
            }
            return zzgys.zzbQ(zza, "\u0000\u0000", null);
        }
        return (byte) 1;
    }
}
