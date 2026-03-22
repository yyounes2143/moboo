package android.support.v4.os;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;
import kotlin.text.Typography;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface IResultReceiver extends IInterface {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f386Wwwwwwwwwwwwwwwwwwwwwwwwww = "android$support$v4$os$IResultReceiver".replace((char) Typography.dollar, '.');

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class _Parcel {
        public static <T extends Parcelable> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Parcel parcel, T t, int i) {
            if (t != null) {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
                return;
            }
            parcel.writeInt(0);
        }

        public static <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bundle bundle) throws RemoteException;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IResultReceiver {

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class Proxy implements IResultReceiver {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public IBinder f387Wwwwwwwwwwwwwwwwwwwwwwwww;

            public Proxy(IBinder iBinder) {
                this.f387Wwwwwwwwwwwwwwwwwwwwwwwww = iBinder;
            }

            @Override // android.support.v4.os.IResultReceiver
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IResultReceiver.f386Wwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeInt(i);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f387Wwwwwwwwwwwwwwwwwwwwwwwww.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f387Wwwwwwwwwwwwwwwwwwwwwwwww;
            }
        }

        public Stub() {
            attachInterface(this, IResultReceiver.f386Wwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public static IResultReceiver Kkkkkkkkkk(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IResultReceiver.f386Wwwwwwwwwwwwwwwwwwwwwwwwww);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IResultReceiver)) {
                return (IResultReceiver) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String str = IResultReceiver.f386Wwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            } else if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel.readInt(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                return true;
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class Default implements IResultReceiver {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.os.IResultReceiver
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bundle bundle) throws RemoteException {
        }
    }
}
