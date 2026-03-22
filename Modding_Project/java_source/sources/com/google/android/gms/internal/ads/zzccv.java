package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzccv extends zzard {
    static final zzccv zzb = new zzccv();

    @Override // com.google.android.gms.internal.ads.zzard
    public final zzarh zza(String str, byte[] bArr, String str2) {
        if ("moov".equals(str)) {
            return new zzarj();
        }
        if ("mvhd".equals(str)) {
            return new zzark();
        }
        return new zzarl(str);
    }
}
