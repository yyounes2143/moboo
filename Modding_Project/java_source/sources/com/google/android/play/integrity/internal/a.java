package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f7734a;
    private final String b;

    public a(IBinder iBinder, String str) {
        this.f7734a = iBinder;
        this.b = str;
    }

    public final Parcel a() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.b);
        return obtain;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f7734a;
    }

    public final void b(int i, Parcel parcel) throws RemoteException {
        try {
            this.f7734a.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
