package com.google.android.gms.internal.measurement;

import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzib extends zzmf implements zznn {
    private static final zzib zzh;
    private int zzb;
    private zzmo zzd = zzmf.zzcv();
    private String zze = "";
    private String zzf = "";
    private int zzg;

    static {
        zzib zzibVar = new zzib();
        zzh = zzibVar;
        zzmf.zzcp(zzib.class, zzibVar);
    }

    private zzib() {
    }

    public static zzhz zzh() {
        return (zzhz) zzh.zzck();
    }

    public static zzhz zzi(zzib zzibVar) {
        zzmb zzck = zzh.zzck();
        zzck.zzbd(zzibVar);
        return (zzhz) zzck;
    }

    private final void zzr() {
        zzmo zzmoVar = this.zzd;
        if (!zzmoVar.zza()) {
            this.zzd = zzmf.zzcw(zzmoVar);
        }
    }

    public final List zza() {
        return this.zzd;
    }

    public final int zzb() {
        return this.zzd.size();
    }

    public final zzid zzc(int i) {
        return (zzid) this.zzd.get(i);
    }

    public final boolean zzd() {
        if ((this.zzb & 1) != 0) {
            return true;
        }
        return false;
    }

    public final String zze() {
        return this.zze;
    }

    public final boolean zzf() {
        if ((this.zzb & 2) != 0) {
            return true;
        }
        return false;
    }

    public final String zzg() {
        return this.zzf;
    }

    public final /* synthetic */ void zzj(int i, zzid zzidVar) {
        zzidVar.getClass();
        zzr();
        this.zzd.set(i, zzidVar);
    }

    public final /* synthetic */ void zzk(zzid zzidVar) {
        zzidVar.getClass();
        zzr();
        this.zzd.add(zzidVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzh;
                        }
                        throw null;
                    }
                    return new zzhz(null);
                }
                return new zzib();
            }
            return zzmf.zzcq(zzh, "\u0004\u0004\u0000\u0001\u0001\t\u0004\u0000\u0001\u0000\u0001\u001b\u0007ဈ\u0000\bဈ\u0001\t᠌\u0002", new Object[]{"zzb", "zzd", zzid.class, "zze", "zzf", "zzg", zzia.zza});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void zzm(Iterable iterable) {
        zzr();
        zzks.zzce(iterable, this.zzd);
    }

    public final /* synthetic */ void zzn() {
        this.zzd = zzmf.zzcv();
    }

    public final /* synthetic */ void zzo(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    public final /* synthetic */ void zzp(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zzf = str;
    }
}
