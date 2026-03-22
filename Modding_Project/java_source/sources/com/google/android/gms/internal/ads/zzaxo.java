package com.google.android.gms.internal.ads;

import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxo extends zzayb {
    private static volatile String zzh;
    private static final Object zzi = new Object();

    public zzaxo(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2) {
        super(zzawoVar, "d4PN2fwB2P9jxIUN6NPwGCD1vcjTZd510+VTbYWnWivlqPuX4Pd9jb/zoaClHGV2", "B7r3opNSMuM8FMoC6aVwUNpehxdhrcT61rhsqayMJbM=", zzaskVar, i, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        this.zzd.zzz(ExifInterface.LONGITUDE_EAST);
        if (zzh == null) {
            synchronized (zzi) {
                try {
                    if (zzh == null) {
                        zzh = (String) this.zze.invoke(null, null);
                    }
                } finally {
                }
            }
        }
        zzask zzaskVar = this.zzd;
        synchronized (zzaskVar) {
            zzaskVar.zzz(zzh);
        }
    }
}
