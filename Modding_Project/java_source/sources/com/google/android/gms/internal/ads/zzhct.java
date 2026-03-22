package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhct extends zzgys implements zzhae {
    private static final zzhct zza;
    private static volatile zzhal zzb;
    private int zzc;
    private String zzd = "";

    static {
        zzhct zzhctVar = new zzhct();
        zza = zzhctVar;
        zzgys.zzbZ(zzhct.class, zzhctVar);
    }

    private zzhct() {
    }

    public static zzhcs zzc() {
        return (zzhcs) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzhct zzd() {
        return zza;
    }

    public static /* synthetic */ void zzf(zzhct zzhctVar, String str) {
        zzhctVar.zzc |= 1;
        zzhctVar.zzd = str;
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
                                    synchronized (zzhct.class) {
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
                    return new zzhcs(null);
                }
                return new zzhct();
            }
            return zzgys.zzbQ(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzc", "zzd"});
        }
        return (byte) 1;
    }
}
