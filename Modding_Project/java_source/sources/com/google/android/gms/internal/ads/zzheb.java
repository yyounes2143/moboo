package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzheb extends zzgys implements zzhae {
    private static final zzheb zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;
    private String zze = "";
    private zzgxk zzf;
    private zzgxk zzg;

    static {
        zzheb zzhebVar = new zzheb();
        zza = zzhebVar;
        zzgys.zzbZ(zzheb.class, zzhebVar);
    }

    private zzheb() {
        zzgxk zzgxkVar = zzgxk.zzb;
        this.zzf = zzgxkVar;
        this.zzg = zzgxkVar;
    }

    public static zzhdz zzc() {
        return (zzhdz) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzheb zzd() {
        return zza;
    }

    public static /* synthetic */ void zzf(zzheb zzhebVar, zzgxk zzgxkVar) {
        zzgxkVar.getClass();
        zzhebVar.zzc |= 4;
        zzhebVar.zzf = zzgxkVar;
    }

    public static /* synthetic */ void zzg(zzheb zzhebVar, String str) {
        zzhebVar.zzc |= 2;
        zzhebVar.zze = MimeTypes.IMAGE_PNG;
    }

    public static /* synthetic */ void zzh(zzheb zzhebVar, int i) {
        zzhebVar.zzd = 1;
        zzhebVar.zzc = 1 | zzhebVar.zzc;
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
                                    synchronized (zzheb.class) {
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
                    return new zzhdz(null);
                }
                return new zzheb();
            }
            return zzgys.zzbQ(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzc", "zzd", zzhea.zza, "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
