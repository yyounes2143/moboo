package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxb extends zzayb {
    private static final zzayc zzh = new zzayc();
    private final Context zzi;

    public zzaxb(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2, Context context) {
        super(zzawoVar, "agDdf5wrmtJ0cP5XVK0JCsJ4BViR17o/n9P6hmH0muvYwmpx2DZ552/tAJvOo6qR", "48yXjRp5G93PEoVZx8WBMAeqgOhil0yQSUdmW98nZyI=", zzaskVar, i, 29);
        this.zzi = context;
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        this.zzd.zzn(ExifInterface.LONGITUDE_EAST);
        Context context = this.zzi;
        AtomicReference zza = zzh.zza(context.getPackageName());
        if (zza.get() == null) {
            synchronized (zza) {
                try {
                    if (zza.get() == null) {
                        zza.set((String) this.zze.invoke(null, context));
                    }
                } finally {
                }
            }
        }
        String str = (String) zza.get();
        zzask zzaskVar = this.zzd;
        synchronized (zzaskVar) {
            zzaskVar.zzn(zzauc.zza(str.getBytes(), true));
        }
    }
}
