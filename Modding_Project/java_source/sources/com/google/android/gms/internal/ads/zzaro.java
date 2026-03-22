package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaro extends zzgys implements zzhae {
    private static final zzaro zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;
    private boolean zzg;
    private zzasg zzi;
    private zzasj zzj;
    private boolean zzk;
    private boolean zze = true;
    private String zzf = "unknown_host";
    private boolean zzh = true;

    static {
        zzaro zzaroVar = new zzaro();
        zza = zzaroVar;
        zzgys.zzbZ(zzaro.class, zzaroVar);
    }

    private zzaro() {
    }

    public static zzarm zza() {
        return (zzarm) zza.zzaZ();
    }

    public static /* synthetic */ void zzg(zzaro zzaroVar, boolean z) {
        zzaroVar.zzc |= 8;
        zzaroVar.zzg = z;
    }

    public static /* synthetic */ void zzh(zzaro zzaroVar, String str) {
        str.getClass();
        zzaroVar.zzc |= 4;
        zzaroVar.zzf = str;
    }

    public final zzasg zzc() {
        zzasg zzasgVar = this.zzi;
        if (zzasgVar == null) {
            return zzasg.zzc();
        }
        return zzasgVar;
    }

    public final zzasj zzd() {
        zzasj zzasjVar = this.zzj;
        if (zzasjVar == null) {
            return zzasj.zzb();
        }
        return zzasjVar;
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
                                    synchronized (zzaro.class) {
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
                    return new zzarm(null);
                }
                return new zzaro();
            }
            return zzgys.zzbQ(zza, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဇ\u0007", new Object[]{"zzc", "zzd", zzarp.zza, "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }

    public final String zzf() {
        return this.zzf;
    }

    @Deprecated
    public final boolean zzi() {
        return this.zzg;
    }
}
