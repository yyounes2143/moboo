package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzguz extends zzgys implements zzhae {
    private static final zzguz zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;
    private zzgvc zze;

    static {
        zzguz zzguzVar = new zzguz();
        zza = zzguzVar;
        zzgys.zzbZ(zzguz.class, zzguzVar);
    }

    private zzguz() {
    }

    public static zzgux zzb() {
        return (zzgux) zza.zzaZ();
    }

    public static zzguz zzd(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzguz) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public static /* synthetic */ void zzg(zzguz zzguzVar, zzgvc zzgvcVar) {
        zzgvcVar.getClass();
        zzguzVar.zze = zzgvcVar;
        zzguzVar.zzc |= 1;
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
                                    synchronized (zzguz.class) {
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
                    return new zzgux(null);
                }
                return new zzguz();
            }
            return zzgys.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgvc zzf() {
        zzgvc zzgvcVar = this.zze;
        if (zzgvcVar == null) {
            return zzgvc.zzd();
        }
        return zzgvcVar;
    }
}
