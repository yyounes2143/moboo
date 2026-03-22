package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzheg extends zzgys implements zzhae {
    private static final zzheg zza;
    private static volatile zzhal zzb;
    private int zzc;
    private int zzd;
    private zzhdh zzf;
    private zzhdl zzg;
    private int zzh;
    private int zzk;
    private byte zzm = 2;
    private String zze = "";
    private zzgza zzi = zzgys.zzbG();
    private String zzj = "";
    private zzgze zzl = zzgys.zzbK();

    static {
        zzheg zzhegVar = new zzheg();
        zza = zzhegVar;
        zzgys.zzbZ(zzheg.class, zzhegVar);
    }

    private zzheg() {
    }

    public static zzhef zzd() {
        return (zzhef) zza.zzaZ();
    }

    public static /* synthetic */ void zzh(zzheg zzhegVar, String str) {
        str.getClass();
        zzgze zzgzeVar = zzhegVar.zzl;
        if (!zzgzeVar.zzc()) {
            zzhegVar.zzl = zzgys.zzbL(zzgzeVar);
        }
        zzhegVar.zzl.add(str);
    }

    public static /* synthetic */ void zzi(zzheg zzhegVar, int i) {
        zzhegVar.zzc |= 1;
        zzhegVar.zzd = i;
    }

    public static /* synthetic */ void zzj(zzheg zzhegVar, zzhdh zzhdhVar) {
        zzhdhVar.getClass();
        zzhegVar.zzf = zzhdhVar;
        zzhegVar.zzc |= 4;
    }

    public static /* synthetic */ void zzk(zzheg zzhegVar, String str) {
        str.getClass();
        zzhegVar.zzc |= 2;
        zzhegVar.zze = str;
    }

    public static /* synthetic */ void zzl(zzheg zzhegVar, int i) {
        zzhegVar.zzk = i - 1;
        zzhegVar.zzc |= 64;
    }

    public final int zzc() {
        return this.zzl.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgys
    public final Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2) {
        zzhal zzhalVar;
        byte b = 1;
        switch (zzgyrVar.ordinal()) {
            case 0:
                return Byte.valueOf(this.zzm);
            case 1:
                if (obj == null) {
                    b = 0;
                }
                this.zzm = b;
                return null;
            case 2:
                return zzgys.zzbQ(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\b᠌\u0006\t\u001a", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzhed.zza, "zzl"});
            case 3:
                return new zzheg();
            case 4:
                return new zzhef(null);
            case 5:
                return zza;
            case 6:
                zzhal zzhalVar2 = zzb;
                if (zzhalVar2 == null) {
                    synchronized (zzheg.class) {
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

    public final String zzg() {
        return this.zze;
    }
}
