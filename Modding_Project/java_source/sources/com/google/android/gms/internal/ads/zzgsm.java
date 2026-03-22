package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgsm extends zzgys implements zzhae {
    private static final zzgsm zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;

    static {
        zzgsm zzgsmVar = new zzgsm();
        zza = zzgsmVar;
        zzgys.zzbZ(zzgsm.class, zzgsmVar);
    }

    private zzgsm() {
    }

    public static zzgsk zzc() {
        return (zzgsk) zza.zzaZ();
    }

    public static zzgsm zzf(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzgsm) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public final int zza() {
        return this.zzc;
    }

    public final int zzb() {
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
                                    synchronized (zzgsm.class) {
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
                    return new zzgsk(null);
                }
                return new zzgsm();
            }
            return zzgys.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzc", "zzd"});
        }
        return (byte) 1;
    }
}
