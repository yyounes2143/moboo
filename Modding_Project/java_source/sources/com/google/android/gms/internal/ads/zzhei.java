package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhei extends zzgys implements zzhae {
    private static final zzhei zza;
    private static volatile zzhal zzb;
    private int zzc;
    private long zze;
    private boolean zzf;
    private int zzg;
    private boolean zzj;
    private boolean zzk;
    private String zzd = "";
    private String zzh = "";
    private String zzi = "";

    static {
        zzhei zzheiVar = new zzhei();
        zza = zzheiVar;
        zzgys.zzbZ(zzhei.class, zzheiVar);
    }

    private zzhei() {
    }

    public static zzheh zzc() {
        return (zzheh) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzhei zzd() {
        return zza;
    }

    public static /* synthetic */ void zzf(zzhei zzheiVar, String str) {
        zzheiVar.zzc |= 1;
        zzheiVar.zzd = str;
    }

    public static /* synthetic */ void zzg(zzhei zzheiVar, long j) {
        zzheiVar.zzc |= 2;
        zzheiVar.zze = j;
    }

    public static /* synthetic */ void zzh(zzhei zzheiVar, boolean z) {
        zzheiVar.zzc |= 4;
        zzheiVar.zzf = z;
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
                                    synchronized (zzhei.class) {
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
                    return new zzheh(null);
                }
                return new zzhei();
            }
            return zzgys.zzbQ(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\bဇ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", zzhej.zza, "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }
}
