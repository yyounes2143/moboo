package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgro extends zzgys implements zzhae {
    private static final zzgro zza;
    private static volatile zzhal zzb;
    private int zzc;
    private zzgru zzd;
    private zzgtf zze;

    static {
        zzgro zzgroVar = new zzgro();
        zza = zzgroVar;
        zzgys.zzbZ(zzgro.class, zzgroVar);
    }

    private zzgro() {
    }

    public static zzgrm zza() {
        return (zzgrm) zza.zzaZ();
    }

    public static zzgro zzc(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzgro) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public static /* synthetic */ void zzg(zzgro zzgroVar, zzgru zzgruVar) {
        zzgruVar.getClass();
        zzgroVar.zzd = zzgruVar;
        zzgroVar.zzc |= 1;
    }

    public static /* synthetic */ void zzh(zzgro zzgroVar, zzgtf zzgtfVar) {
        zzgtfVar.getClass();
        zzgroVar.zze = zzgtfVar;
        zzgroVar.zzc |= 2;
    }

    public final zzgru zzd() {
        zzgru zzgruVar = this.zzd;
        if (zzgruVar == null) {
            return zzgru.zzd();
        }
        return zzgruVar;
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
                                    synchronized (zzgro.class) {
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
                    return new zzgrm(null);
                }
                return new zzgro();
            }
            return zzgys.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgtf zzf() {
        zzgtf zzgtfVar = this.zze;
        if (zzgtfVar == null) {
            return zzgtf.zzf();
        }
        return zzgtfVar;
    }
}
