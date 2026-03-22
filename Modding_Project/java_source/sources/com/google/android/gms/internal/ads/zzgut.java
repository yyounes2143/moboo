package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes4.dex */
public final class zzgut extends zzgys implements zzhae {
    public static final /* synthetic */ int zza = 0;
    private static final zzgut zzb;
    private static volatile zzhal zzc;
    private String zzd = "";
    private zzgze zze = zzgys.zzbK();

    static {
        zzgut zzgutVar = new zzgut();
        zzb = zzgutVar;
        zzgys.zzbZ(zzgut.class, zzgutVar);
    }

    private zzgut() {
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
                                zzhal zzhalVar2 = zzc;
                                if (zzhalVar2 == null) {
                                    synchronized (zzgut.class) {
                                        try {
                                            zzhalVar = zzc;
                                            if (zzhalVar == null) {
                                                zzhalVar = new zzgyn(zzb);
                                                zzc = zzhalVar;
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
                        return zzb;
                    }
                    return new zzgur(null);
                }
                return new zzgut();
            }
            return zzgys.zzbQ(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzd", "zze", zzgtt.class});
        }
        return (byte) 1;
    }
}
