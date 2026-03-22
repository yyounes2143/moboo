package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgwq {
    private final zzgwp zza;

    private zzgwq(zzgwp zzgwpVar) {
        this.zza = zzgwpVar;
    }

    public static zzgwq zzb(byte[] bArr, zzgey zzgeyVar) {
        return new zzgwq(zzgwp.zzb(bArr));
    }

    public static zzgwq zzc(int i) {
        return new zzgwq(zzgwp.zzb(zzgol.zzb(i)));
    }

    public final int zza() {
        return this.zza.zza();
    }

    public final byte[] zzd(zzgey zzgeyVar) {
        return this.zza.zzd();
    }
}
