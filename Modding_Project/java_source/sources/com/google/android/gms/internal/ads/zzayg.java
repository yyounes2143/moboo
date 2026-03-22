package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzayg extends zzgys implements zzhae {
    private static final zzayg zza;
    private static volatile zzhal zzb;
    private int zzc;
    private zzayj zzd;
    private zzgxk zze;
    private zzgxk zzf;

    static {
        zzayg zzaygVar = new zzayg();
        zza = zzaygVar;
        zzgys.zzbZ(zzayg.class, zzaygVar);
    }

    private zzayg() {
        zzgxk zzgxkVar = zzgxk.zzb;
        this.zze = zzgxkVar;
        this.zzf = zzgxkVar;
    }

    public static zzayg zzb(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzayg) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public final zzayj zzc() {
        zzayj zzayjVar = this.zzd;
        if (zzayjVar == null) {
            return zzayj.zzg();
        }
        return zzayjVar;
    }

    public final zzgxk zzd() {
        return this.zzf;
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
                                    synchronized (zzayg.class) {
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
                    return new zzaye(null);
                }
                return new zzayg();
            }
            return zzgys.zzbQ(zza, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgxk zzf() {
        return this.zze;
    }
}
