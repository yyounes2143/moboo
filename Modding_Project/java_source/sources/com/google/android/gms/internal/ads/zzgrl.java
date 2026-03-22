package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgrl extends zzgys implements zzhae {
    private static final zzgrl zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;
    private zzgrr zze;
    private zzgtc zzf;

    static {
        zzgrl zzgrlVar = new zzgrl();
        zza = zzgrlVar;
        zzgys.zzbZ(zzgrl.class, zzgrlVar);
    }

    private zzgrl() {
    }

    public static zzgrj zzb() {
        return (zzgrj) zza.zzaZ();
    }

    public static zzgrl zzd(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzgrl) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public static zzhal zzh() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzi(zzgrl zzgrlVar, zzgrr zzgrrVar) {
        zzgrrVar.getClass();
        zzgrlVar.zze = zzgrrVar;
        zzgrlVar.zzc |= 1;
    }

    public static /* synthetic */ void zzj(zzgrl zzgrlVar, zzgtc zzgtcVar) {
        zzgtcVar.getClass();
        zzgrlVar.zzf = zzgtcVar;
        zzgrlVar.zzc |= 2;
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
                                    synchronized (zzgrl.class) {
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
                    return new zzgrj(null);
                }
                return new zzgrl();
            }
            return zzgys.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgrr zzf() {
        zzgrr zzgrrVar = this.zze;
        if (zzgrrVar == null) {
            return zzgrr.zzd();
        }
        return zzgrrVar;
    }

    public final zzgtc zzg() {
        zzgtc zzgtcVar = this.zzf;
        if (zzgtcVar == null) {
            return zzgtc.zzd();
        }
        return zzgtcVar;
    }
}
