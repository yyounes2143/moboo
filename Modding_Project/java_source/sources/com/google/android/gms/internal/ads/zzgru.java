package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgru extends zzgys implements zzhae {
    private static final zzgru zza;
    private static volatile zzhal zzb;
    private int zzc;
    private zzgrx zzd;
    private int zze;

    static {
        zzgru zzgruVar = new zzgru();
        zza = zzgruVar;
        zzgys.zzbZ(zzgru.class, zzgruVar);
    }

    private zzgru() {
    }

    public static zzgrs zzb() {
        return (zzgrs) zza.zzaZ();
    }

    public static zzgru zzd() {
        return zza;
    }

    public static /* synthetic */ void zzh(zzgru zzgruVar, zzgrx zzgrxVar) {
        zzgrxVar.getClass();
        zzgruVar.zzd = zzgrxVar;
        zzgruVar.zzc |= 1;
    }

    public final int zza() {
        return this.zze;
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
                                    synchronized (zzgru.class) {
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
                    return new zzgrs(null);
                }
                return new zzgru();
            }
            return zzgys.zzbQ(zza, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002\u000b", new Object[]{"zzc", "zzd", "zze"});
        }
        return (byte) 1;
    }

    public final zzgrx zzf() {
        zzgrx zzgrxVar = this.zzd;
        if (zzgrxVar == null) {
            return zzgrx.zzd();
        }
        return zzgrxVar;
    }
}
