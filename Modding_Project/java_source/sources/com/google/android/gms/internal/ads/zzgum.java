package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgum extends zzgys implements zzhae {
    private static final zzgum zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;
    private zzgup zze;

    static {
        zzgum zzgumVar = new zzgum();
        zza = zzgumVar;
        zzgys.zzbZ(zzgum.class, zzgumVar);
    }

    private zzgum() {
    }

    public static zzguk zzb() {
        return (zzguk) zza.zzaZ();
    }

    public static zzgum zzd(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzgum) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public static zzhal zzg() {
        return zza.zzbN();
    }

    public static /* synthetic */ void zzh(zzgum zzgumVar, zzgup zzgupVar) {
        zzgupVar.getClass();
        zzgumVar.zze = zzgupVar;
        zzgumVar.zzc |= 1;
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
                                    synchronized (zzgum.class) {
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
                    return new zzguk(null);
                }
                return new zzgum();
            }
            return zzgys.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgup zzf() {
        zzgup zzgupVar = this.zze;
        if (zzgupVar == null) {
            return zzgup.zzd();
        }
        return zzgupVar;
    }
}
