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
public interface IResultReceiver2 extends IInterface {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f388Wwwwwwwwwwwwwwwwwwwwwwwwwww = "android$support$v4$os$IResultReceiver2".replace((char) Typography.dollar, '.');

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class Default implements IResultReceiver2 {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class _Parcel {
        public static <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bundle bundle) throws RemoteException;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IResultReceiver2 {

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class Proxy implements IResultReceiver2 {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public IBinder f389Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f389Wwwwwwwwwwwwwwwwwwwwwwwww;
            }
        }

        public Stub() {
            attachInterface(this, IResultReceiver2.f388Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            String str = IResultReceiver2.f388Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            } else if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel.readInt(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                return true;
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }
    }
}
