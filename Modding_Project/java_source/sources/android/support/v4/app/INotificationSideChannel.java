package android.support.v4.app;

import android.app.Notification;
import android.os.Binder;
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
public interface INotificationSideChannel extends IInterface {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f135Wwwwwwwwwwwwwwwwwwwwwwwwwwww = "android$support$v4$app$INotificationSideChannel".replace((char) Typography.dollar, '.');

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

    void cancel(String str, int i, String str2) throws RemoteException;

    void cancelAll(String str) throws RemoteException;

    void notify(String str, int i, String str2, Notification notification) throws RemoteException;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements INotificationSideChannel {
        static final int TRANSACTION_cancel = 2;
        static final int TRANSACTION_cancelAll = 3;
        static final int TRANSACTION_notify = 1;

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class Proxy implements INotificationSideChannel {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public IBinder f136Wwwwwwwwwwwwwwwwwwwwwwwww;

            public Proxy(IBinder iBinder) {
                this.f136Wwwwwwwwwwwwwwwwwwwwwwwww = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f136Wwwwwwwwwwwwwwwwwwwwwwwww;
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancel(String str, int i, String str2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(INotificationSideChannel.f135Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    this.f136Wwwwwwwwwwwwwwwwwwwwwwwww.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void cancelAll(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(INotificationSideChannel.f135Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeString(str);
                    this.f136Wwwwwwwwwwwwwwwwwwwwwwwww.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.app.INotificationSideChannel
            public void notify(String str, int i, String str2, Notification notification) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(INotificationSideChannel.f135Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeString(str2);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, notification, 0);
                    this.f136Wwwwwwwwwwwwwwwwwwwwwwwww.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, INotificationSideChannel.f135Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public static INotificationSideChannel asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(INotificationSideChannel.f135Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (queryLocalInterface != null && (queryLocalInterface instanceof INotificationSideChannel)) {
                return (INotificationSideChannel) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String str = INotificationSideChannel.f135Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    cancelAll(parcel.readString());
                } else {
                    cancel(parcel.readString(), parcel.readInt(), parcel.readString());
                }
            } else {
                notify(parcel.readString(), parcel.readInt(), parcel.readString(), (Notification) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Notification.CREATOR));
            }
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class Default implements INotificationSideChannel {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancelAll(String str) throws RemoteException {
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancel(String str, int i, String str2) throws RemoteException {
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void notify(String str, int i, String str2, Notification notification) throws RemoteException {
        }
    }
}
