package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgtq extends zzgys implements zzhae {
    private static final zzgtq zza;
    private static volatile zzhal zzb;
    private String zzc = "";
    private zzgxk zzd = zzgxk.zzb;
    private int zze;

    static {
        zzgtq zzgtqVar = new zzgtq();
        zza = zzgtqVar;
        zzgys.zzbZ(zzgtq.class, zzgtqVar);
    }

    private zzgtq() {
    }

    public static zzgto zza() {
        return (zzgto) zza.zzaZ();
    }

    public static zzgto zzb(zzgtq zzgtqVar) {
        return (zzgto) zza.zzba(zzgtqVar);
    }

    public static zzgtq zzd() {
        return zza;
    }

    public static zzgtq zzf(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
        return (zzgtq) zzgys.zzbx(zza, bArr, zzgycVar);
    }

    public static /* synthetic */ void zzk(zzgtq zzgtqVar, String str) {
        str.getClass();
        zzgtqVar.zzc = str;
    }

    public static /* synthetic */ void zzl(zzgtq zzgtqVar, zzgxk zzgxkVar) {
        zzgxkVar.getClass();
        zzgtqVar.zzd = zzgxkVar;
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
                                    synchronized (zzgtq.class) {
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
                    return new zzgto(null);
                }
                return new zzgtq();
            }
            return zzgys.zzbQ(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzguq zzg() {
        zzguq zzb2 = zzguq.zzb(this.zze);
        if (zzb2 == null) {
            return zzguq.UNRECOGNIZED;
        }
        return zzb2;
    }

    public final zzgxk zzh() {
        return this.zzd;
    }

    public final String zzi() {
        return this.zzc;
    }
}
