package com.facebook.ppml.receiver;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface IReceiverService extends IInterface {

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static class Default implements IReceiverService {
        @Override // com.facebook.ppml.receiver.IReceiverService
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) throws RemoteException {
            return 0;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) throws RemoteException;

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static abstract class Stub extends Binder implements IReceiverService {

        /* compiled from: Proguard */
        /* loaded from: classes4.dex */
        public static class Proxy implements IReceiverService {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public static IReceiverService f7155Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public IBinder f7156Wwwwwwwwwwwwwwwwwwwwwwwww;

            public Proxy(IBinder iBinder) {
                this.f7156Wwwwwwwwwwwwwwwwwwwwwwwww = iBinder;
            }

            @Override // com.facebook.ppml.receiver.IReceiverService
            public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) throws RemoteException {
                int readInt;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.facebook.ppml.receiver.IReceiverService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f7156Wwwwwwwwwwwwwwwwwwwwwwwww.transact(1, obtain, obtain2, 0) && Stub.Kkkkkkkkk() != null) {
                        readInt = Stub.Kkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                    } else {
                        obtain2.readException();
                        readInt = obtain2.readInt();
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return readInt;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f7156Wwwwwwwwwwwwwwwwwwwwwwwww;
            }
        }

        public Stub() {
            attachInterface(this, "com.facebook.ppml.receiver.IReceiverService");
        }

        public static IReceiverService Kkkkkkkkk() {
            return Proxy.f7155Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        public static IReceiverService Kkkkkkkkkk(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.facebook.ppml.receiver.IReceiverService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IReceiverService)) {
                return (IReceiverService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle bundle;
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.facebook.ppml.receiver.IReceiverService");
                return true;
            }
            parcel.enforceInterface("com.facebook.ppml.receiver.IReceiverService");
            if (parcel.readInt() != 0) {
                bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
            } else {
                bundle = null;
            }
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
            parcel2.writeNoException();
            parcel2.writeInt(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }
}
