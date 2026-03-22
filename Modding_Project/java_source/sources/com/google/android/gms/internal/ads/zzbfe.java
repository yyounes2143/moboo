package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbfe {
    public static final zzbef zza = zzbef.zzb("gads:dynamite_load:fail:sample_rate", 10000);
    public static final zzbef zzb = zzbef.zzd("gads:report_dynamite_crash_in_background_thread", false);
    public static final zzbef zzc = new zzbef("gads:public_beta:traffic_multiplier", "1.0", 4);
    public static final zzbef zzd = new zzbef("gads:sdk_crash_report_class_prefix", "com.google.", 4);
    public static final zzbef zze;
    public static final zzbef zzf;

    static {
        zzbef.zzd("gads:sdk_crash_report_enabled", false);
        zze = zzbef.zzd("gads:sdk_crash_report_full_stacktrace", false);
        zzf = zzbef.zza("gads:trapped_exception_sample_rate", 0.01d);
    }
}
