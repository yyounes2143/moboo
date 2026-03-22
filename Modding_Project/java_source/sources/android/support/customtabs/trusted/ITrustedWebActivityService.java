package android.support.customtabs.trusted;

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
public interface ITrustedWebActivityService extends IInterface {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f133Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = "android$support$customtabs$trusted$ITrustedWebActivityService".replace((char) Typography.dollar, '.');

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

    Bundle areNotificationsEnabled(Bundle bundle) throws RemoteException;

    void cancelNotification(Bundle bundle) throws RemoteException;

    Bundle extraCommand(String str, Bundle bundle, IBinder iBinder) throws RemoteException;

    Bundle getActiveNotifications() throws RemoteException;

    Bundle getSmallIconBitmap() throws RemoteException;

    int getSmallIconId() throws RemoteException;

    Bundle notifyNotificationWithChannel(Bundle bundle) throws RemoteException;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ITrustedWebActivityService {
        static final int TRANSACTION_areNotificationsEnabled = 6;
        static final int TRANSACTION_cancelNotification = 3;
        static final int TRANSACTION_extraCommand = 9;
        static final int TRANSACTION_getActiveNotifications = 5;
        static final int TRANSACTION_getSmallIconBitmap = 7;
        static final int TRANSACTION_getSmallIconId = 4;
        static final int TRANSACTION_notifyNotificationWithChannel = 2;

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class Proxy implements ITrustedWebActivityService {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public IBinder f134Wwwwwwwwwwwwwwwwwwwwwwwww;

            public Proxy(IBinder iBinder) {
                this.f134Wwwwwwwwwwwwwwwwwwwwwwwww = iBinder;
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle areNotificationsEnabled(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITrustedWebActivityService.f133Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f134Wwwwwwwwwwwwwwwwwwwwwwwww.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain2, Bundle.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f134Wwwwwwwwwwwwwwwwwwwwwwwww;
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public void cancelNotification(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITrustedWebActivityService.f133Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f134Wwwwwwwwwwwwwwwwwwwwwwwww.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle extraCommand(String str, Bundle bundle, IBinder iBinder) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITrustedWebActivityService.f133Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeString(str);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    obtain.writeStrongBinder(iBinder);
                    this.f134Wwwwwwwwwwwwwwwwwwwwwwwww.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain2, Bundle.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle getActiveNotifications() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITrustedWebActivityService.f133Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    this.f134Wwwwwwwwwwwwwwwwwwwwwwwww.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain2, Bundle.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle getSmallIconBitmap() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITrustedWebActivityService.f133Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    this.f134Wwwwwwwwwwwwwwwwwwwwwwwww.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain2, Bundle.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public int getSmallIconId() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITrustedWebActivityService.f133Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    this.f134Wwwwwwwwwwwwwwwwwwwwwwwww.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityService
            public Bundle notifyNotificationWithChannel(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITrustedWebActivityService.f133Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f134Wwwwwwwwwwwwwwwwwwwwwwwww.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain2, Bundle.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ITrustedWebActivityService.f133Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public static ITrustedWebActivityService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ITrustedWebActivityService.f133Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ITrustedWebActivityService)) {
                return (ITrustedWebActivityService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String str = ITrustedWebActivityService.f133Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i) {
                case 2:
                    Bundle notifyNotificationWithChannel = notifyNotificationWithChannel((Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, notifyNotificationWithChannel, 1);
                    break;
                case 3:
                    cancelNotification((Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 4:
                    int smallIconId = getSmallIconId();
                    parcel2.writeNoException();
                    parcel2.writeInt(smallIconId);
                    break;
                case 5:
                    Bundle activeNotifications = getActiveNotifications();
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, activeNotifications, 1);
                    break;
                case 6:
                    Bundle areNotificationsEnabled = areNotificationsEnabled((Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, areNotificationsEnabled, 1);
                    break;
                case 7:
                    Bundle smallIconBitmap = getSmallIconBitmap();
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, smallIconBitmap, 1);
                    break;
                case 8:
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
                case 9:
                    Bundle extraCommand = extraCommand(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR), parcel.readStrongBinder());
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, extraCommand, 1);
                    break;
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
    public static class Default implements ITrustedWebActivityService {
        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle areNotificationsEnabled(Bundle bundle) throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle extraCommand(String str, Bundle bundle, IBinder iBinder) throws RemoteException {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle getActiveNotifications() throws RemoteException {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle getSmallIconBitmap() throws RemoteException {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public int getSmallIconId() throws RemoteException {
            return 0;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public Bundle notifyNotificationWithChannel(Bundle bundle) throws RemoteException {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityService
        public void cancelNotification(Bundle bundle) throws RemoteException {
        }
    }
}
