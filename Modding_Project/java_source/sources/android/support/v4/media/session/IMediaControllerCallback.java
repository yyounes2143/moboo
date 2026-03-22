package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import java.util.List;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface IMediaControllerCallback extends IInterface {

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

    void Kkkkkkkkkkk(PlaybackStateCompat playbackStateCompat) throws RemoteException;

    void Kkkkkkkkkkkkkkkk(CharSequence charSequence) throws RemoteException;

    void Kkkkkkkkkkkkkkkkk(boolean z) throws RemoteException;

    void Kkkkkkkkkkkkkkkkkk(boolean z) throws RemoteException;

    void Kkkkkkkkkkkkkkkkkkkkkk(Bundle bundle) throws RemoteException;

    void Wwwwww(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException;

    void Wwwwwwwwwwww(int i) throws RemoteException;

    void Wwwwwwwwwwwwwwww(MediaMetadataCompat mediaMetadataCompat) throws RemoteException;

    void Wwwwwwwwwwwwwwwwww() throws RemoteException;

    void Wwwwwwwwwwwwwwwwwwwwwwwwww(List<MediaSessionCompat.QueueItem> list) throws RemoteException;

    void Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws RemoteException;

    void onEvent(String str, Bundle bundle) throws RemoteException;

    void onRepeatModeChanged(int i) throws RemoteException;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class Default implements IMediaControllerCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.media.session.IMediaControllerCallback
        public void Wwwwwwwwwwwwwwwwww() throws RemoteException {
        }

        @Override // android.support.v4.media.session.IMediaControllerCallback
        public void Kkkkkkkkkkk(PlaybackStateCompat playbackStateCompat) throws RemoteException {
        }

        @Override // android.support.v4.media.session.IMediaControllerCallback
        public void Wwwwww(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
        }

        @Override // android.support.v4.media.session.IMediaControllerCallback
        public void Wwwwwwwwwwwwwwww(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMediaControllerCallback {

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class Proxy implements IMediaControllerCallback {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public IBinder f250Wwwwwwwwwwwwwwwwwwwwwwwww;

            public Proxy(IBinder iBinder) {
                this.f250Wwwwwwwwwwwwwwwwwwwwwwwww = iBinder;
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Kkkkkkkkkkk(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, playbackStateCompat, 0);
                    this.f250Wwwwwwwwwwwwwwwwwwwwwwwww.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwww(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, parcelableVolumeInfo, 0);
                    this.f250Wwwwwwwwwwwwwwwwwwwwwwwww.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwwwwwwwwwwwww(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, mediaMetadataCompat, 0);
                    this.f250Wwwwwwwwwwwwwwwwwwwwwwwww.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwwwwwwwwwwwwwww() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
                    this.f250Wwwwwwwwwwwwwwwwwwwwwwwww.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f250Wwwwwwwwwwwwwwwwwwwwwwwww;
            }
        }

        public Stub() {
            attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
        }

        public static IMediaControllerCallback Kkkkkkkkkk(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IMediaControllerCallback)) {
                return (IMediaControllerCallback) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
            }
            if (i == 1598968902) {
                parcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
                return true;
            }
            boolean z = false;
            switch (i) {
                case 1:
                    onEvent(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    break;
                case 2:
                    Wwwwwwwwwwwwwwwwww();
                    break;
                case 3:
                    Kkkkkkkkkkk((PlaybackStateCompat) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, PlaybackStateCompat.CREATOR));
                    break;
                case 4:
                    Wwwwwwwwwwwwwwww((MediaMetadataCompat) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, MediaMetadataCompat.CREATOR));
                    break;
                case 5:
                    Wwwwwwwwwwwwwwwwwwwwwwwwww(parcel.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
                    break;
                case 6:
                    Kkkkkkkkkkkkkkkk((CharSequence) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, TextUtils.CHAR_SEQUENCE_CREATOR));
                    break;
                case 7:
                    Kkkkkkkkkkkkkkkkkkkkkk((Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    break;
                case 8:
                    Wwwwww((ParcelableVolumeInfo) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, ParcelableVolumeInfo.CREATOR));
                    break;
                case 9:
                    onRepeatModeChanged(parcel.readInt());
                    break;
                case 10:
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    Kkkkkkkkkkkkkkkkk(z);
                    break;
                case 11:
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    Kkkkkkkkkkkkkkkkkk(z);
                    break;
                case 12:
                    Wwwwwwwwwwww(parcel.readInt());
                    break;
                case 13:
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww();
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
}
