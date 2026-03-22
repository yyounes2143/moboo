package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhdl extends zzgys implements zzhae {
    private static final zzhdl zza;
    private static volatile zzhal zzb;
    private int zzc;
    private zzhdk zzd;
    private zzgxk zzf;
    private zzgxk zzg;
    private int zzh;
    private zzgxk zzi;
    private byte zzj = 2;
    private zzgze zze = zzgys.zzbK();

    static {
        zzhdl zzhdlVar = new zzhdl();
        zza = zzhdlVar;
        zzgys.zzbZ(zzhdl.class, zzhdlVar);
    }

    private zzhdl() {
        zzgxk zzgxkVar = zzgxk.zzb;
        this.zzf = zzgxkVar;
        this.zzg = zzgxkVar;
        this.zzi = zzgxkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgys
    public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
        zzhal zzhalVar;
        byte b = 1;
        switch (zzgyrVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzj);
            case 1:
                if (obj == null) {
                    b = 0;
                }
                this.zzj = b;
                return null;
            case 2:
                return zzgys.zzbQ(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0001\u0001ဉ\u0000\u0002Л\u0003ည\u0001\u0004ည\u0002\u0005င\u0003\u0006ည\u0004", new Object[]{"zzc", "zzd", "zze", zzhdd.class, "zzf", "zzg", "zzh", "zzi"});
            case 3:
                return new zzhdl();
            case 4:
                return new zzhdi(null);
            case 5:
                return zza;
            case 6:
                zzhal zzhalVar2 = zzb;
                if (zzhalVar2 == null) {
                    synchronized (zzhdl.class) {
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
