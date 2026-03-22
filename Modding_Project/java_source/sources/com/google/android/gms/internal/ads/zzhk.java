package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import androidx.annotation.RequiresApi;
/* compiled from: Proguard */
@RequiresApi(24)
/* loaded from: classes4.dex */
final class zzhk {
    private final MediaCodec.CryptoInfo zza;
    private final MediaCodec.CryptoInfo.Pattern zzb = androidx.media3.decoder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0, 0);

    public static /* bridge */ /* synthetic */ void zza(zzhk zzhkVar, int i, int i2) {
        MediaCodec.CryptoInfo.Pattern pattern = zzhkVar.zzb;
        pattern.set(i, i2);
        zzhkVar.zza.setPattern(pattern);
    }
}
