package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbdp extends zzayl implements zzbdq {
    public static zzbdq zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
        if (queryLocalInterface instanceof zzbdq) {
            return (zzbdq) queryLocalInterface;
        }
        return new zzbdo(iBinder);
    }
}
