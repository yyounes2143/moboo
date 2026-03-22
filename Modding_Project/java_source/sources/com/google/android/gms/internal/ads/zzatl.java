package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzatl extends zzgys implements zzhae {
    private static final zzatl zza;
    private static volatile zzhal zzb;
    private int zzc;
    private zzgxk zzd;
    private zzgxk zze;
    private zzgxk zzf;
    private zzgxk zzg;

    static {
        zzatl zzatlVar = new zzatl();
        zza = zzatlVar;
        zzgys.zzbZ(zzatl.class, zzatlVar);
    }

    private zzatl() {
        zzgxk zzgxkVar = zzgxk.zzb;
        this.zzd = zzgxkVar;
        this.zze = zzgxkVar;
        this.zzf = zzgxkVar;
        this.zzg = zzgxkVar;
    }

    public static zzatk zza() {
        return (zzatk) zza.zzaZ();
    }

    public static zzatl zzc(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
        return (zzatl) zzgys.zzbx(zza, bArr, zzgycVar);
    }

    public static /* synthetic */ void zzi(zzatl zzatlVar, zzgxk zzgxkVar) {
        zzatlVar.zzc |= 1;
        zzatlVar.zzd = zzgxkVar;
    }

    public static /* synthetic */ void zzj(zzatl zzatlVar, zzgxk zzgxkVar) {
        zzatlVar.zzc |= 2;
        zzatlVar.zze = zzgxkVar;
    }

    public static /* synthetic */ void zzk(zzatl zzatlVar, zzgxk zzgxkVar) {
        zzatlVar.zzc |= 8;
        zzatlVar.zzg = zzgxkVar;
    }

    public static /* synthetic */ void zzl(zzatl zzatlVar, zzgxk zzgxkVar) {
        zzatlVar.zzc |= 4;
        zzatlVar.zzf = zzgxkVar;
    }

    public final zzgxk zzd() {
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
                                    synchronized (zzatl.class) {
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
                    return new zzatk(null);
                }
                return new zzatl();
            }
            return zzgys.zzbQ(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ည\u0000\u0002ည\u0001\u0003ည\u0002\u0004ည\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final zzgxk zzf() {
        return this.zze;
    }

    public final zzgxk zzg() {
        return this.zzg;
    }

    public final zzgxk zzh() {
        return this.zzf;
    }
}
