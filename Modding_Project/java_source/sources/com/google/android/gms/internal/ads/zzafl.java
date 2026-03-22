package com.google.android.gms.internal.ads;

import androidx.media3.extractor.avi.AviExtractor;
import java.nio.charset.StandardCharsets;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzafl implements zzafb {
    public final String zza;

    private zzafl(String str) {
        this.zza = str;
    }

    public static zzafl zzb(zzek zzekVar) {
        return new zzafl(zzekVar.zzB(zzekVar.zza(), StandardCharsets.UTF_8));
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zza() {
        return AviExtractor.FOURCC_strn;
    }
}
