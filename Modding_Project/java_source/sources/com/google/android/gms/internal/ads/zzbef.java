package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzbef {
    private final String zza;
    private final Object zzb;
    private final int zzc;

    public zzbef(String str, Object obj, int i) {
        this.zza = str;
        this.zzb = obj;
        this.zzc = i;
    }

    public static zzbef zza(String str, double d) {
        return new zzbef(str, Double.valueOf(d), 3);
    }

    public static zzbef zzb(String str, long j) {
        return new zzbef(str, Long.valueOf(j), 2);
    }

    public static zzbef zzc(String str, String str2) {
        return new zzbef("gad:dynamite_module:experiment_id", "", 4);
    }

    public static zzbef zzd(String str, boolean z) {
        return new zzbef(str, Boolean.valueOf(z), 1);
    }

    public final Object zze() {
        zzbfk zza = zzbfm.zza();
        if (zza == null) {
            if (zzbfm.zzb() != null) {
                zzbfm.zzb().zza();
            }
            return this.zzb;
        }
        int i = this.zzc - 1;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return zza.zzd(this.zza, (String) this.zzb);
                }
                return zza.zzb(this.zza, ((Double) this.zzb).doubleValue());
            }
            return zza.zzc(this.zza, ((Long) this.zzb).longValue());
        }
        return zza.zza(this.zza, ((Boolean) this.zzb).booleanValue());
    }
}
