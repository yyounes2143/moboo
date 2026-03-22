package com.google.android.gms.internal.measurement;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgj extends zzmf implements zznn {
    private static final zzgj zzh;
    private int zzb;
    private String zzd = "";
    private boolean zze;
    private boolean zzf;
    private int zzg;

    static {
        zzgj zzgjVar = new zzgj();
        zzh = zzgjVar;
        zzmf.zzcp(zzgj.class, zzgjVar);
    }

    private zzgj() {
    }

    public final String zza() {
        return this.zzd;
    }

    public final boolean zzb() {
        if ((this.zzb & 2) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zzc() {
        return this.zze;
    }

    public final boolean zzd() {
        if ((this.zzb & 4) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zze() {
        return this.zzf;
    }

    public final boolean zzf() {
        if ((this.zzb & 8) != 0) {
            return true;
        }
        return false;
    }

    public final int zzg() {
        return this.zzg;
    }

    public final /* synthetic */ void zzh(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
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
                    return new zzgi(null);
                }
                return new zzgj();
            }
            return zzmf.zzcq(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
