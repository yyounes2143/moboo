package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbet {
    public static final zzbef zza = zzbef.zzd("gads:init:init_on_bg_thread", true);
    public static final zzbef zzb = zzbef.zzd("gads:init:init_on_single_bg_thread", false);
    public static final zzbef zzc = zzbef.zzd("gads:adloader_load_bg_thread", true);
    public static final zzbef zzd = zzbef.zzd("gads:appopen_load_on_bg_thread", true);
    public static final zzbef zze = zzbef.zzd("gads:banner_destroy_bg_thread", false);
    public static final zzbef zzf = zzbef.zzd("gads:banner_load_bg_thread", true);
    public static final zzbef zzg = zzbef.zzd("gads:banner_pause_bg_thread", false);
    public static final zzbef zzh = zzbef.zzd("gads:banner_resume_bg_thread", false);
    public static final zzbef zzi = zzbef.zzd("gads:interstitial_load_on_bg_thread", true);
    public static final zzbef zzj;
    public static final zzbef zzk;

    static {
        zzbef.zzd("gads:persist_flags_on_bg_thread", true);
        zzj = zzbef.zzd("gads:query_info_bg_thread", true);
        zzk = zzbef.zzd("gads:rewarded_load_bg_thread", true);
    }
}
