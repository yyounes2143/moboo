package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import androidx.exifinterface.media.ExifInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@VisibleForTesting
/* loaded from: classes4.dex */
public final class zzfom implements zzfon {
    private static final zzath zza;

    static {
        zzask zza2 = zzath.zza();
        zza2.zzv(ExifInterface.LONGITUDE_EAST);
        zza = (zzath) zza2.zzbr();
    }

    @Override // com.google.android.gms.internal.ads.zzfon
    public final zzath zza() {
        return zza;
    }
}
