package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgsa extends zzgys implements zzhae {
    private static final zzgsa zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;
    private zzgsg zze;
    private zzgxk zzf = zzgxk.zzb;

    static {
        zzgsa zzgsaVar = new zzgsa();
        zza = zzgsaVar;
        zzgys.zzbZ(zzgsa.class, zzgsaVar);
    }

    private zzgsa() {
    }

    public static zzgry zzb() {
        return (zzgry) zza.zzaZ();
    }

    public static zzgsa zzd(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzgsa) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public static zzhal zzh() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzj(zzgsa zzgsaVar, zzgsg zzgsgVar) {
        zzgsgVar.getClass();
        zzgsaVar.zze = zzgsgVar;
        zzgsaVar.zzc |= 1;
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
                                    synchronized (zzgsa.class) {
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
                    return new zzgry(null);
                }
                return new zzgsa();
            }
            return zzgys.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000\u0003\n", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgsg zzf() {
        zzgsg zzgsgVar = this.zze;
        if (zzgsgVar == null) {
            return zzgsg.zzd();
        }
        return zzgsgVar;
    }

    public final zzgxk zzg() {
        return this.zzf;
    }
}
