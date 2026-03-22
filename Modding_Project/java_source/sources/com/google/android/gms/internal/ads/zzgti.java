package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgti extends zzgys implements zzhae {
    private static final zzgti zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;

    static {
        zzgti zzgtiVar = new zzgti();
        zza = zzgtiVar;
        zzgys.zzbZ(zzgti.class, zzgtiVar);
    }

    private zzgti() {
    }

    public static zzgtg zzc() {
        return (zzgtg) zza.zzaZ();
    }

    public static zzgti zzf() {
        return zza;
    }

    public final int zza() {
        return this.zzd;
    }

    public final zzgsz zzb() {
        zzgsz zzgszVar;
        int i = this.zzc;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                zzgszVar = null;
                            } else {
                                zzgszVar = zzgsz.SHA224;
                            }
                        } else {
                            zzgszVar = zzgsz.SHA512;
                        }
                    } else {
                        zzgszVar = zzgsz.SHA256;
                    }
                } else {
                    zzgszVar = zzgsz.SHA384;
                }
            } else {
                zzgszVar = zzgsz.SHA1;
            }
        } else {
            zzgszVar = zzgsz.UNKNOWN_HASH;
        }
        if (zzgszVar == null) {
            return zzgsz.UNRECOGNIZED;
        }
        return zzgszVar;
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
                                    synchronized (zzgti.class) {
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
                    return new zzgtg(null);
                }
                return new zzgti();
            }
            return zzgys.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzc", "zzd"});
        }
        return (byte) 1;
    }
}
