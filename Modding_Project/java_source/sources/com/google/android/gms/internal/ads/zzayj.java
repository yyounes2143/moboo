package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzayj extends zzgys implements zzhae {
    private static final zzayj zza;
    private static volatile zzhal zzb;
    private int zzc;
    private String zzd = "";
    private String zze = "";
    private long zzf;
    private long zzg;
    private long zzh;

    static {
        zzayj zzayjVar = new zzayj();
        zza = zzayjVar;
        zzgys.zzbZ(zzayj.class, zzayjVar);
    }

    private zzayj() {
    }

    public static zzayh zzd() {
        return (zzayh) zza.zzaZ();
    }

    public static zzayj zzg() {
        return zza;
    }

    public static zzayj zzh(zzgxk zzgxkVar) throws zzgzh {
        return (zzayj) zzgys.zzbm(zza, zzgxkVar);
    }

    public static zzayj zzi(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        return (zzayj) zzgys.zzbr(zza, zzgxkVar, zzgycVar);
    }

    public static /* synthetic */ void zzl(zzayj zzayjVar, String str) {
        str.getClass();
        zzayjVar.zzc |= 2;
        zzayjVar.zze = str;
    }

    public static /* synthetic */ void zzm(zzayj zzayjVar, long j) {
        zzayjVar.zzc |= 8;
        zzayjVar.zzg = j;
    }

    public static /* synthetic */ void zzn(zzayj zzayjVar, long j) {
        zzayjVar.zzc |= 4;
        zzayjVar.zzf = j;
    }

    public static /* synthetic */ void zzo(zzayj zzayjVar, long j) {
        zzayjVar.zzc |= 16;
        zzayjVar.zzh = j;
    }

    public static /* synthetic */ void zzp(zzayj zzayjVar, String str) {
        str.getClass();
        zzayjVar.zzc |= 1;
        zzayjVar.zzd = str;
    }

    public final long zza() {
        return this.zzg;
    }

    public final long zzb() {
        return this.zzf;
    }

    public final long zzc() {
        return this.zzh;
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
                                    synchronized (zzayj.class) {
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
                    return new zzayh(null);
                }
                return new zzayj();
            }
            return zzgys.zzbQ(zza, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        return (byte) 1;
    }

    public final String zzj() {
        return this.zze;
    }

    public final String zzk() {
        return this.zzd;
    }
}
