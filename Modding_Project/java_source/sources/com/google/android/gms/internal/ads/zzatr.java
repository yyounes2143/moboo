package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzatr extends zzgys implements zzhae {
    private static final zzatr zza;
    private static volatile zzhal zzb;
    private int zzc;
    private long zzf;
    private long zzh;
    private long zzi;
    private String zzd = "";
    private String zze = "";
    private String zzg = "D";

    static {
        zzatr zzatrVar = new zzatr();
        zza = zzatrVar;
        zzgys.zzbZ(zzatr.class, zzatrVar);
    }

    private zzatr() {
    }

    public static zzatq zza() {
        return (zzatq) zza.zzaZ();
    }

    public static /* synthetic */ void zzc(zzatr zzatrVar, String str) {
        zzatrVar.zzc |= 1;
        zzatrVar.zzd = "0.460000000";
    }

    public static /* synthetic */ void zzd(zzatr zzatrVar, String str) {
        str.getClass();
        zzatrVar.zzc |= 2;
        zzatrVar.zze = str;
    }

    public static /* synthetic */ void zzf(zzatr zzatrVar, String str) {
        str.getClass();
        zzatrVar.zzc |= 8;
        zzatrVar.zzg = str;
    }

    public static /* synthetic */ void zzg(zzatr zzatrVar, long j) {
        zzatrVar.zzc |= 4;
        zzatrVar.zzf = j;
    }

    public static /* synthetic */ void zzh(zzatr zzatrVar, long j) {
        zzatrVar.zzc |= 32;
        zzatrVar.zzi = j;
    }

    public static /* synthetic */ void zzi(zzatr zzatrVar, long j) {
        zzatrVar.zzc |= 16;
        zzatrVar.zzh = j;
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
                                    synchronized (zzatr.class) {
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
                    return new zzatq(null);
                }
                return new zzatr();
            }
            return zzgys.zzbQ(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဈ\u0003\u0005ဂ\u0004\u0006ဂ\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }
}
