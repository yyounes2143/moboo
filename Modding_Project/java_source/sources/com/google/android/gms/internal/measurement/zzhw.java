package com.google.android.gms.internal.measurement;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzhw extends zzmf implements zznn {
    private static final zzhw zzj;
    private int zzb;
    private long zzf;
    private float zzg;
    private double zzh;
    private String zzd = "";
    private String zze = "";
    private zzmo zzi = zzmf.zzcv();

    static {
        zzhw zzhwVar = new zzhw();
        zzj = zzhwVar;
        zzmf.zzcp(zzhw.class, zzhwVar);
    }

    private zzhw() {
    }

    public static zzhv zzn() {
        return (zzhv) zzj.zzck();
    }

    private final void zzz() {
        zzmo zzmoVar = this.zzi;
        if (!zzmoVar.zza()) {
            this.zzi = zzmf.zzcw(zzmoVar);
        }
    }

    public final boolean zza() {
        if ((this.zzb & 1) != 0) {
            return true;
        }
        return false;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final boolean zzc() {
        if ((this.zzb & 2) != 0) {
            return true;
        }
        return false;
    }

    public final String zzd() {
        return this.zze;
    }

    public final boolean zze() {
        if ((this.zzb & 4) != 0) {
            return true;
        }
        return false;
    }

    public final long zzf() {
        return this.zzf;
    }

    public final boolean zzg() {
        if ((this.zzb & 8) != 0) {
            return true;
        }
        return false;
    }

    public final float zzh() {
        return this.zzg;
    }

    public final boolean zzi() {
        if ((this.zzb & 16) != 0) {
            return true;
        }
        return false;
    }

    public final double zzj() {
        return this.zzh;
    }

    public final List zzk() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    public final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzj;
                        }
                        throw null;
                    }
                    return new zzhv(null);
                }
                return new zzhw();
            }
            return zzmf.zzcq(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", zzhw.class});
        }
        return (byte) 1;
    }

    public final int zzm() {
        return this.zzi.size();
    }

    public final /* synthetic */ void zzo(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void zzp(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    public final /* synthetic */ void zzq() {
        this.zzb &= -3;
        this.zze = zzj.zze;
    }

    public final /* synthetic */ void zzr(long j) {
        this.zzb |= 4;
        this.zzf = j;
    }

    public final /* synthetic */ void zzs() {
        this.zzb &= -5;
        this.zzf = 0L;
    }

    public final /* synthetic */ void zzt(double d) {
        this.zzb |= 16;
        this.zzh = d;
    }

    public final /* synthetic */ void zzu() {
        this.zzb &= -17;
        this.zzh = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
    }

    public final /* synthetic */ void zzv(zzhw zzhwVar) {
        zzhwVar.getClass();
        zzz();
        this.zzi.add(zzhwVar);
    }

    public final /* synthetic */ void zzw(Iterable iterable) {
        zzz();
        zzks.zzce(iterable, this.zzi);
    }

    public final /* synthetic */ void zzx() {
        this.zzi = zzmf.zzcv();
    }
}
