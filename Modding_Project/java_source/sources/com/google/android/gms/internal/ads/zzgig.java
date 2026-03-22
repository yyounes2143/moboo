package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgig {
    public static final zzgig zza = new zzgig("ASSUME_AES_GCM");
    public static final zzgig zzb = new zzgig("ASSUME_XCHACHA20POLY1305");
    public static final zzgig zzc = new zzgig("ASSUME_CHACHA20POLY1305");
    public static final zzgig zzd = new zzgig("ASSUME_AES_CTR_HMAC");
    public static final zzgig zze = new zzgig("ASSUME_AES_EAX");
    public static final zzgig zzf = new zzgig("ASSUME_AES_GCM_SIV");
    private final String zzg;

    private zzgig(String str) {
        this.zzg = str;
    }

    public final String toString() {
        return this.zzg;
    }
}
