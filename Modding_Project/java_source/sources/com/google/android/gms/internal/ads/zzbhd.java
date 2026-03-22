package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzbhd extends zzayl implements zzbhe {
    public static zzbhe zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
        if (queryLocalInterface instanceof zzbhe) {
            return (zzbhe) queryLocalInterface;
        }
        return new zzbhc(iBinder);
    }
}
