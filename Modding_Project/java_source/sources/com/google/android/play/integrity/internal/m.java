package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class m extends b implements n {
    public static n b(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.integrity.protocol.IIntegrityService");
        if (queryLocalInterface instanceof n) {
            return (n) queryLocalInterface;
        }
        return new l(iBinder);
    }
}
