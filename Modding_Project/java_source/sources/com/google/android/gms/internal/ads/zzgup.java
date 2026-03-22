package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgup extends zzgys implements zzhae {
    private static final zzgup zza;
    private static volatile zzhal zzb;
    private int zzc;
    private String zzd = "";
    private zzgtq zze;

    static {
        zzgup zzgupVar = new zzgup();
        zza = zzgupVar;
        zzgys.zzbZ(zzgup.class, zzgupVar);
    }

    private zzgup() {
    }

    public static zzgun zzb() {
        return (zzgun) zza.zzaZ();
    }

    public static zzgup zzd() {
        return zza;
    }

    public static zzgup zzf(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzgup) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public static /* synthetic */ void zzh(zzgup zzgupVar, zzgtq zzgtqVar) {
        zzgtqVar.getClass();
        zzgupVar.zze = zzgtqVar;
        zzgupVar.zzc |= 1;
    }

    public static /* synthetic */ void zzi(zzgup zzgupVar, String str) {
        str.getClass();
        zzgupVar.zzd = str;
    }

    public final zzgtq zza() {
        zzgtq zzgtqVar = this.zze;
        if (zzgtqVar == null) {
            return zzgtq.zzd();
        }
        return zzgtqVar;
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
                                    synchronized (zzgup.class) {
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
                    return new zzgun(null);
                }
                return new zzgup();
            }
            return zzgys.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002ဉ\u0000", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final String zzg() {
        return this.zzd;
    }
}
