package com.google.android.gms.internal.ads;

import androidx.media3.extractor.avi.AviExtractor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzafg implements zzafb {
    public final int zza;
    public final int zzb;
    public final int zzc;

    private zzafg(int i, int i2, int i3, int i4) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    public static zzafg zzb(zzek zzekVar) {
        int zzi = zzekVar.zzi();
        zzekVar.zzM(8);
        int zzi2 = zzekVar.zzi();
        int zzi3 = zzekVar.zzi();
        zzekVar.zzM(4);
        int zzi4 = zzekVar.zzi();
        zzekVar.zzM(12);
        return new zzafg(zzi, zzi2, zzi3, zzi4);
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zza() {
        return AviExtractor.FOURCC_avih;
    }
}
