package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class h extends b implements i {
    public static i b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IExpressIntegrityService");
        if (queryLocalInterface instanceof i) {
            return (i) queryLocalInterface;
        }
        return new g(iBinder);
    }
}
