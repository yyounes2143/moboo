package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfow extends zzgys implements zzhae {
    private static final zzfow zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private zzfos zzg;

    static {
        zzfow zzfowVar = new zzfow();
        zza = zzfowVar;
        zzgys.zzbZ(zzfow.class, zzfowVar);
    }

    private zzfow() {
    }

    public static zzfot zza() {
        return (zzfot) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzfow zzb() {
        return zza;
    }

    public static /* synthetic */ void zzc(zzfow zzfowVar, String str) {
        str.getClass();
        zzfowVar.zzc |= 2;
        zzfowVar.zze = str;
    }

    public static /* synthetic */ void zzd(zzfow zzfowVar, zzfos zzfosVar) {
        zzfosVar.getClass();
        zzfowVar.zzg = zzfosVar;
        zzfowVar.zzc |= 8;
    }

    public static /* synthetic */ void zzf(zzfow zzfowVar, int i) {
        zzfowVar.zzd = 1;
        zzfowVar.zzc = 1 | zzfowVar.zzc;
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
                                    synchronized (zzfow.class) {
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
                    return new zzfot(null);
                }
                return new zzfow();
            }
            return zzgys.zzbQ(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzc", "zzd", zzfou.zza, "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
