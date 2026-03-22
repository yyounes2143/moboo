package com.google.android.gms.internal.ads;

import androidx.work.multiprocess.RemoteWorkManager;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbek {
    public static final zzbef zza = zzbef.zzb("gads:app_permissions_caching_expiry_ms:expiry", 60000);
    public static final zzbef zzb = zzbef.zzb("gads:audio_caching_expiry_ms:expiry", 5000);
    public static final zzbef zzc = zzbef.zzb("gads:battery_caching_expiry_ms:expiry", 10000);
    public static final zzbef zzd = zzbef.zzb("gads:device_info_caching_expiry_ms:expiry", 300000);
    public static final zzbef zze = zzbef.zzb("gads:hsdp_caching_expiry_ms:expiry", RemoteWorkManager.DEFAULT_SESSION_TIMEOUT_MILLIS);
    public static final zzbef zzf = zzbef.zzb("gads:memory_caching_expiry_ms:expiry", 5000);
    public static final zzbef zzg = zzbef.zzb("gads:sdk_environment_caching_expiry_ms:expiry", RemoteWorkManager.DEFAULT_SESSION_TIMEOUT_MILLIS);
    public static final zzbef zzh = zzbef.zzb("gads:telephony_caching_expiry_ms:expiry", 5000);
}
