package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaru extends zzgys implements zzhae {
    private static final zzaru zza;
    private static volatile zzhal zzb;
    private int zzc;
    private long zze;
    private long zzi;
    private long zzj;
    private long zzl;
    private int zzp;
    private String zzd = "";
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzk = "";
    private String zzm = "";
    private String zzn = "";
    private zzgze zzo = zzgys.zzbK();

    static {
        zzaru zzaruVar = new zzaru();
        zza = zzaruVar;
        zzgys.zzbZ(zzaru.class, zzaruVar);
    }

    private zzaru() {
    }

    public static zzarq zza() {
        return (zzarq) zza.zzaZ();
    }

    public static /* synthetic */ void zzc(zzaru zzaruVar, String str) {
        str.getClass();
        zzaruVar.zzc |= 1;
        zzaruVar.zzd = str;
    }

    public static /* synthetic */ void zzd(zzaru zzaruVar, String str) {
        zzaruVar.zzc |= 16;
        zzaruVar.zzh = str;
    }

    public static /* synthetic */ void zzf(zzaru zzaruVar, String str) {
        zzaruVar.zzc |= 1024;
        zzaruVar.zzn = str;
    }

    public static /* synthetic */ void zzg(zzaru zzaruVar, String str) {
        str.getClass();
        zzaruVar.zzc |= 8;
        zzaruVar.zzg = str;
    }

    public static /* synthetic */ void zzh(zzaru zzaruVar, long j) {
        zzaruVar.zzc |= 2;
        zzaruVar.zze = j;
    }

    public static /* synthetic */ void zzi(zzaru zzaruVar, String str) {
        str.getClass();
        zzaruVar.zzc |= 4;
        zzaruVar.zzf = str;
    }

    public static /* synthetic */ void zzj(zzaru zzaruVar, int i) {
        zzaruVar.zzp = i - 1;
        zzaruVar.zzc |= 2048;
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
                                    synchronized (zzaru.class) {
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
                    return new zzarq(null);
                }
                return new zzaru();
            }
            return zzgys.zzbQ(zza, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဂ\u0005\u0007ဂ\u0006\bဈ\u0007\tဂ\b\nဈ\t\u000bဈ\n\f\u001b\r᠌\u000b", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", zzars.class, "zzp", zzart.zza});
        }
        return (byte) 1;
    }
}
