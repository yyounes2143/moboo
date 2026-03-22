package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgtw extends zzgys implements zzhae {
    private static final zzgtw zza;
    private static volatile zzhal zzb;
    private int zzc;
    private zzgtm zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        zzgtw zzgtwVar = new zzgtw();
        zza = zzgtwVar;
        zzgys.zzbZ(zzgtw.class, zzgtwVar);
    }

    private zzgtw() {
    }

    public static zzgtv zzc() {
        return (zzgtv) zza.zzaZ();
    }

    public static /* synthetic */ void zzg(zzgtw zzgtwVar, zzgtm zzgtmVar) {
        zzgtmVar.getClass();
        zzgtwVar.zzd = zzgtmVar;
        zzgtwVar.zzc |= 1;
    }

    public final int zza() {
        return this.zzf;
    }

    public final zzgtm zzb() {
        zzgtm zzgtmVar = this.zzd;
        if (zzgtmVar == null) {
            return zzgtm.zzd();
        }
        return zzgtmVar;
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
                                    synchronized (zzgtw.class) {
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
                    return new zzgtv(null);
                }
                return new zzgtw();
            }
            return zzgys.zzbQ(zza, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final zzguq zzf() {
        zzguq zzb2 = zzguq.zzb(this.zzg);
        if (zzb2 == null) {
            return zzguq.UNRECOGNIZED;
        }
        return zzb2;
    }

    public final boolean zzj() {
        if ((this.zzc & 1) != 0) {
            return true;
        }
        return false;
    }

    public final int zzk() {
        int i = this.zze;
        int i2 = 2;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        i2 = 0;
                    } else {
                        i2 = 5;
                    }
                } else {
                    i2 = 4;
                }
            } else {
                i2 = 3;
            }
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }
}
