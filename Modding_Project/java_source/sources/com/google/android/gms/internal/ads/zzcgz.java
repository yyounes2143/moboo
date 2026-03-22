package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzcgz extends zzayl implements zzcha {
    public static zzcha zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.measurement.IMeasurementManager");
        if (queryLocalInterface instanceof zzcha) {
            return (zzcha) queryLocalInterface;
        }
        return new zzcgy(iBinder);
    }
}
