package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbla extends zzayl implements zzblb {
    public static zzblb zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManagerCreator");
        if (queryLocalInterface instanceof zzblb) {
            return (zzblb) queryLocalInterface;
        }
        return new zzbkz(iBinder);
    }
}
