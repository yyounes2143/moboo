package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgtc extends zzgys implements zzhae {
    private static final zzgtc zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;
    private zzgti zze;
    private zzgxk zzf = zzgxk.zzb;

    static {
        zzgtc zzgtcVar = new zzgtc();
        zza = zzgtcVar;
        zzgys.zzbZ(zzgtc.class, zzgtcVar);
    }

    private zzgtc() {
    }

    public static zzgta zzb() {
        return (zzgta) zza.zzaZ();
    }

    public static zzgtc zzd() {
        return zza;
    }

    public static zzgtc zzf(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzgtc) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public static zzhal zzi() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzk(zzgtc zzgtcVar, zzgti zzgtiVar) {
        zzgtiVar.getClass();
        zzgtcVar.zze = zzgtiVar;
        zzgtcVar.zzc |= 1;
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
                                    synchronized (zzgtc.class) {
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
                    return new zzgta(null);
                }
                return new zzgtc();
            }
            return zzgys.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgti zzg() {
        zzgti zzgtiVar = this.zze;
        if (zzgtiVar == null) {
            return zzgti.zzf();
        }
        return zzgtiVar;
    }

    public final zzgxk zzh() {
        return this.zzf;
    }
}
