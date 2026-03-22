package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgud extends zzgys implements zzhae {
    private static final zzgud zza;
    private static volatile zzhal zzb;
    private int zzc;
    private zzgze zzd = zzgys.zzbK();

    static {
        zzgud zzgudVar = new zzgud();
        zza = zzgudVar;
        zzgys.zzbZ(zzgud.class, zzgudVar);
    }

    private zzgud() {
    }

    public static zzgtz zza() {
        return (zzgtz) zza.zzaZ();
    }

    public static /* bridge */ /* synthetic */ zzgud zzb() {
        return zza;
    }

    public static /* synthetic */ void zzc(zzgud zzgudVar, zzgub zzgubVar) {
        zzgubVar.getClass();
        zzgze zzgzeVar = zzgudVar.zzd;
        if (!zzgzeVar.zzc()) {
            zzgudVar.zzd = zzgys.zzbL(zzgzeVar);
        }
        zzgudVar.zzd.add(zzgubVar);
    }

    public static /* synthetic */ void zzd(zzgud zzgudVar, int i) {
        zzgudVar.zzc = i;
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
                                    synchronized (zzgud.class) {
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
                    return new zzgtz(null);
                }
                return new zzgud();
            }
            return zzgys.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zzc", "zzd", zzgub.class});
        }
        return (byte) 1;
    }
}
