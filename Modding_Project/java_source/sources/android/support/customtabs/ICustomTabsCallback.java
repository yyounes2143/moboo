package android.support.customtabs;

import android.net.Uri;
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
public interface ICustomTabsCallback extends IInterface {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "android$support$customtabs$ICustomTabsCallback".replace((char) Typography.dollar, '.');

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

    void extraCallback(String str, Bundle bundle) throws RemoteException;

    Bundle extraCallbackWithResult(String str, Bundle bundle) throws RemoteException;

    void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle bundle) throws RemoteException;

    void onActivityResized(int i, int i2, Bundle bundle) throws RemoteException;

    void onMessageChannelReady(Bundle bundle) throws RemoteException;

    void onMinimized(Bundle bundle) throws RemoteException;

    void onNavigationEvent(int i, Bundle bundle) throws RemoteException;

    void onPostMessage(String str, Bundle bundle) throws RemoteException;

    void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) throws RemoteException;

    void onUnminimized(Bundle bundle) throws RemoteException;

    void onWarmupCompleted(Bundle bundle) throws RemoteException;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ICustomTabsCallback {
        static final int TRANSACTION_extraCallback = 3;
        static final int TRANSACTION_extraCallbackWithResult = 7;
        static final int TRANSACTION_onActivityLayout = 10;
        static final int TRANSACTION_onActivityResized = 8;
        static final int TRANSACTION_onMessageChannelReady = 4;
        static final int TRANSACTION_onMinimized = 11;
        static final int TRANSACTION_onNavigationEvent = 2;
        static final int TRANSACTION_onPostMessage = 5;
        static final int TRANSACTION_onRelationshipValidationResult = 6;
        static final int TRANSACTION_onUnminimized = 12;
        static final int TRANSACTION_onWarmupCompleted = 9;

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class Proxy implements ICustomTabsCallback {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public IBinder f124Wwwwwwwwwwwwwwwwwwwwwwwww;

            public Proxy(IBinder iBinder) {
                this.f124Wwwwwwwwwwwwwwwwwwwwwwwww = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f124Wwwwwwwwwwwwwwwwwwwwwwwww;
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void extraCallback(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeString(str);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f124Wwwwwwwwwwwwwwwwwwwwwwwww.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public Bundle extraCallbackWithResult(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeString(str);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f124Wwwwwwwwwwwwwwwwwwwwwwwww.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain2, Bundle.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f124Wwwwwwwwwwwwwwwwwwwwwwwww.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onActivityResized(int i, int i2, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f124Wwwwwwwwwwwwwwwwwwwwwwwww.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onMessageChannelReady(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f124Wwwwwwwwwwwwwwwwwwwwwwwww.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onMinimized(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f124Wwwwwwwwwwwwwwwwwwwwwwwww.transact(11, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onNavigationEvent(int i, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeInt(i);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f124Wwwwwwwwwwwwwwwwwwwwwwwww.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onPostMessage(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeString(str);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f124Wwwwwwwwwwwwwwwwwwwwwwwww.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeInt(i);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, uri, 0);
                    obtain.writeInt(z ? 1 : 0);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f124Wwwwwwwwwwwwwwwwwwwwwwwww.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onUnminimized(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f124Wwwwwwwwwwwwwwwwwwwwwwwww.transact(12, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.customtabs.ICustomTabsCallback
            public void onWarmupCompleted(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f124Wwwwwwwwwwwwwwwwwwwwwwwww.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public static ICustomTabsCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICustomTabsCallback)) {
                return (ICustomTabsCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            boolean z;
            String str = ICustomTabsCallback.f123Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i) {
                case 2:
                    onNavigationEvent(parcel.readInt(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    break;
                case 3:
                    extraCallback(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    break;
                case 4:
                    onMessageChannelReady((Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 5:
                    onPostMessage(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 6:
                    int readInt = parcel.readInt();
                    Uri uri = (Uri) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Uri.CREATOR);
                    if (parcel.readInt() != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    onRelationshipValidationResult(readInt, uri, z, (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    break;
                case 7:
                    Bundle extraCallbackWithResult = extraCallbackWithResult(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, extraCallbackWithResult, 1);
                    break;
                case 8:
                    onActivityResized(parcel.readInt(), parcel.readInt(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    break;
                case 9:
                    onWarmupCompleted((Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    break;
                case 10:
                    onActivityLayout(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    break;
                case 11:
                    onMinimized((Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    break;
                case 12:
                    onUnminimized((Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    break;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
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
    public static class Default implements ICustomTabsCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public Bundle extraCallbackWithResult(String str, Bundle bundle) throws RemoteException {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onMessageChannelReady(Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onMinimized(Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onUnminimized(Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onWarmupCompleted(Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void extraCallback(String str, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onNavigationEvent(int i, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onPostMessage(String str, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onActivityResized(int i, int i2, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) throws RemoteException {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onActivityLayout(int i, int i2, int i3, int i4, int i5, Bundle bundle) throws RemoteException {
        }
    }
}
