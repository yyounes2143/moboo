package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgrc extends zzgys implements zzhae {
    private static final zzgrc zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;
    private zzgxk zze = zzgxk.zzb;
    private zzgri zzf;

    static {
        zzgrc zzgrcVar = new zzgrc();
        zza = zzgrcVar;
        zzgys.zzbZ(zzgrc.class, zzgrcVar);
    }

    private zzgrc() {
    }

    public static zzgra zzb() {
        return (zzgra) zza.zzaZ();
    }

    public static zzgrc zzd(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzgrc) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public static zzhal zzh() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzj(zzgrc zzgrcVar, zzgri zzgriVar) {
        zzgriVar.getClass();
        zzgrcVar.zzf = zzgriVar;
        zzgrcVar.zzc |= 1;
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
                                    synchronized (zzgrc.class) {
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
                    return new zzgra(null);
                }
                return new zzgrc();
            }
            return zzgys.zzbQ(zza, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003ဉ\u0000", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        return (byte) 1;
    }

    public final zzgri zzf() {
        zzgri zzgriVar = this.zzf;
        if (zzgriVar == null) {
            return zzgri.zzd();
        }
        return zzgriVar;
    }

    public final zzgxk zzg() {
        return this.zze;
    }
}
