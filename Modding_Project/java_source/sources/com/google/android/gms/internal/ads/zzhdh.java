package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhdh extends zzgys implements zzhae {
    private static final zzhdh zza;
    private static volatile zzhal zzb;
    private int zzc;
    private zzhdg zzd;
    private zzgxk zzf;
    private zzgxk zzg;
    private int zzh;
    private byte zzi = 2;
    private zzgze zze = zzgys.zzbK();

    static {
        zzhdh zzhdhVar = new zzhdh();
        zza = zzhdhVar;
        zzgys.zzbZ(zzhdh.class, zzhdhVar);
    }

    private zzhdh() {
        zzgxk zzgxkVar = zzgxk.zzb;
        this.zzf = zzgxkVar;
        this.zzg = zzgxkVar;
    }

    public static zzhde zzc() {
        return (zzhde) zza.zzaZ();
    }

    public static /* synthetic */ void zzf(zzhdh zzhdhVar, zzhdd zzhddVar) {
        zzhddVar.getClass();
        zzgze zzgzeVar = zzhdhVar.zze;
        if (!zzgzeVar.zzc()) {
            zzhdhVar.zze = zzgys.zzbL(zzgzeVar);
        }
        zzhdhVar.zze.add(zzhddVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgys
    public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
        zzhal zzhalVar;
        byte b = 1;
        switch (zzgyrVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzi);
            case 1:
                if (obj == null) {
                    b = 0;
                }
                this.zzi = b;
                return null;
            case 2:
                return zzgys.zzbQ(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003", new Object[]{"zzc", "zzd", "zze", zzhdd.class, "zzf", "zzg", "zzh"});
            case 3:
                return new zzhdh();
            case 4:
                return new zzhde(null);
            case 5:
                return zza;
            case 6:
                zzhal zzhalVar2 = zzb;
                if (zzhalVar2 == null) {
                    synchronized (zzhdh.class) {
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
            default:
                throw null;
        }
    }
}
