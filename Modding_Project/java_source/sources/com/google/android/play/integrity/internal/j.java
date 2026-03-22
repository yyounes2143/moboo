package com.google.android.play.integrity.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class j extends b implements k {
    public j() {
        super("com.google.android.play.core.integrity.protocol.IExpressIntegrityServiceCallback");
    }

    @Override // com.google.android.play.integrity.internal.b
    public final boolean a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    if (i != 5) {
                        return false;
                    }
                    c.b(parcel);
                    b((Bundle) c.a(parcel, Bundle.CREATOR));
                    return true;
                }
                c.b(parcel);
                d((Bundle) c.a(parcel, Bundle.CREATOR));
                return true;
            }
            c.b(parcel);
            c((Bundle) c.a(parcel, Bundle.CREATOR));
            return true;
        }
        c.b(parcel);
        e((Bundle) c.a(parcel, Bundle.CREATOR));
        return true;
    }
}
