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
public interface ITrustedWebActivityCallback extends IInterface {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f131Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "android$support$customtabs$trusted$ITrustedWebActivityCallback".replace((char) Typography.dollar, '.');

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

    void onExtraCallback(String str, Bundle bundle) throws RemoteException;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ITrustedWebActivityCallback {
        static final int TRANSACTION_onExtraCallback = 2;

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class Proxy implements ITrustedWebActivityCallback {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public IBinder f132Wwwwwwwwwwwwwwwwwwwwwwwww;

            public Proxy(IBinder iBinder) {
                this.f132Wwwwwwwwwwwwwwwwwwwwwwwww = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f132Wwwwwwwwwwwwwwwwwwwwwwwww;
            }

            @Override // android.support.customtabs.trusted.ITrustedWebActivityCallback
            public void onExtraCallback(String str, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(ITrustedWebActivityCallback.f131Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    obtain.writeString(str);
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, bundle, 0);
                    this.f132Wwwwwwwwwwwwwwwwwwwwwwwww.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, ITrustedWebActivityCallback.f131Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public static ITrustedWebActivityCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(ITrustedWebActivityCallback.f131Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ITrustedWebActivityCallback)) {
                return (ITrustedWebActivityCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String str = ITrustedWebActivityCallback.f131Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            } else if (i != 2) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                onExtraCallback(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
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
    public static class Default implements ITrustedWebActivityCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.customtabs.trusted.ITrustedWebActivityCallback
        public void onExtraCallback(String str, Bundle bundle) throws RemoteException {
        }
    }
}
