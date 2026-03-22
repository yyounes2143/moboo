package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzflo {
    private final String zza;
    private final String zzb;

    private zzflo(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public static zzflo zza(String str, String str2) {
        zzfmx.zzb(str, "Name is null or empty");
        zzfmx.zzb(str2, "Version is null or empty");
        return new zzflo(str, str2);
    }

    public final String zzb() {
        return this.zza;
    }

    public final String zzc() {
        return this.zzb;
    }
}
