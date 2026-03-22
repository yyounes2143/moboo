package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbfj {
    public static final zzbef zza = zzbef.zzd("gads:trustless_token_for_decagon:enabled", true);
    public static final zzbef zzb;

    static {
        zzbef.zzd("gads:invalidate_token_at_refresh_start", true);
        zzbef.zzd("gms:expose_token_for_gma:enabled", true);
        zzbef.zzd("gads:referesh_rate_limit", false);
        zzb = zzbef.zzb("gads:timeout_for_trustless_token:millis", 2000L);
        zzbef.zzd("gads:token_anonymization:enabled", true);
        zzbef.zzb("gads:cached_token:ttl_millis", 10800000L);
    }
}
