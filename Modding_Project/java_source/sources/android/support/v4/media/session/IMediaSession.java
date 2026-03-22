package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.IMediaControllerCallback;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import androidx.annotation.RestrictTo;
import java.util.List;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface IMediaSession extends IInterface {

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class _Parcel {
        public static <T extends Parcelable> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Parcel parcel, T t, int i) {
            if (t != null) {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
                return;
            }
            parcel.writeInt(0);
        }

        public static <T extends Parcelable> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Parcel parcel, List<T> list, int i) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, list.get(i2), i);
            }
        }

        public static <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    ParcelableVolumeInfo Kkkkkkkkkkkk() throws RemoteException;

    List<MediaSessionCompat.QueueItem> Kkkkkkkkkkkkk() throws RemoteException;

    void Kkkkkkkkkkkkkk(boolean z) throws RemoteException;

    void Kkkkkkkkkkkkkkk(int i, int i2, String str) throws RemoteException;

    void Kkkkkkkkkkkkkkkkkkk() throws RemoteException;

    void Kkkkkkkkkkkkkkkkkkkk(IMediaControllerCallback iMediaControllerCallback) throws RemoteException;

    CharSequence Kkkkkkkkkkkkkkkkkkkkk() throws RemoteException;

    void Kkkkkkkkkkkkkkkkkkkkkkk(String str, Bundle bundle) throws RemoteException;

    void Kkkkkkkkkkkkkkkkkkkkkkkk(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    boolean Kkkkkkkkkkkkkkkkkkkkkkkkk() throws RemoteException;

    void Kkkkkkkkkkkkkkkkkkkkkkkkkk(MediaDescriptionCompat mediaDescriptionCompat) throws RemoteException;

    void Www(int i, int i2, String str) throws RemoteException;

    void Wwww(RatingCompat ratingCompat) throws RemoteException;

    void Wwwww(IMediaControllerCallback iMediaControllerCallback) throws RemoteException;

    void Wwwwwww(int i) throws RemoteException;

    void Wwwwwwww(boolean z) throws RemoteException;

    void Wwwwwwwww(long j) throws RemoteException;

    void Wwwwwwwwww() throws RemoteException;

    void Wwwwwwwwwww(String str, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultReceiverWrapper) throws RemoteException;

    boolean Wwwwwwwwwwwww() throws RemoteException;

    void Wwwwwwwwwwwwww(int i) throws RemoteException;

    int Wwwwwwwwwwwwwww() throws RemoteException;

    void Wwwwwwwwwwwwwwwww(MediaDescriptionCompat mediaDescriptionCompat, int i) throws RemoteException;

    void Wwwwwwwwwwwwwwwwwww(RatingCompat ratingCompat, Bundle bundle) throws RemoteException;

    boolean Wwwwwwwwwwwwwwwwwwww(KeyEvent keyEvent) throws RemoteException;

    void Wwwwwwwwwwwwwwwwwwwww(Uri uri, Bundle bundle) throws RemoteException;

    void Wwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) throws RemoteException;

    void Wwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) throws RemoteException;

    Bundle Wwwwwwwwwwwwwwwwwwwwwwww() throws RemoteException;

    void Wwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) throws RemoteException;

    int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() throws RemoteException;

    PendingIntent Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws RemoteException;

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri, Bundle bundle) throws RemoteException;

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws RemoteException;

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) throws RemoteException;

    Bundle getExtras() throws RemoteException;

    long getFlags() throws RemoteException;

    MediaMetadataCompat getMetadata() throws RemoteException;

    String getPackageName() throws RemoteException;

    PlaybackStateCompat getPlaybackState() throws RemoteException;

    int getRepeatMode() throws RemoteException;

    String getTag() throws RemoteException;

    void next() throws RemoteException;

    void pause() throws RemoteException;

    void play() throws RemoteException;

    void prepare() throws RemoteException;

    void previous() throws RemoteException;

    void seekTo(long j) throws RemoteException;

    void setPlaybackSpeed(float f) throws RemoteException;

    void setRepeatMode(int i) throws RemoteException;

    void stop() throws RemoteException;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMediaSession {

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class Proxy implements IMediaSession {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public IBinder f251Wwwwwwwwwwwwwwwwwwwwwwwww;

            public Proxy(IBinder iBinder) {
                this.f251Wwwwwwwwwwwwwwwwwwwwwwwww = iBinder;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwww(IMediaControllerCallback iMediaControllerCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    obtain.writeStrongInterface(iMediaControllerCallback);
                    this.f251Wwwwwwwwwwwwwwwwwwwwwwwww.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean Wwwwwwwwwwwwwwwwwwww(KeyEvent keyEvent) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    boolean z = false;
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain, keyEvent, 0);
                    this.f251Wwwwwwwwwwwwwwwwwwwwwwwww.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f251Wwwwwwwwwwwwwwwwwwwwwwwww;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PlaybackStateCompat getPlaybackState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
                    this.f251Wwwwwwwwwwwwwwwwwwwwwwwww.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                    return (PlaybackStateCompat) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obtain2, PlaybackStateCompat.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "android.support.v4.media.session.IMediaSession");
        }

        public static IMediaSession Kkkkkkkkkk(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IMediaSession)) {
                return (IMediaSession) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            }
            if (i == 1598968902) {
                parcel2.writeString("android.support.v4.media.session.IMediaSession");
                return true;
            }
            boolean z = false;
            switch (i) {
                case 1:
                    Wwwwwwwwwww(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR), (MediaSessionCompat.ResultReceiverWrapper) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, MediaSessionCompat.ResultReceiverWrapper.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 2:
                    boolean Wwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwww((KeyEvent) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, KeyEvent.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(Wwwwwwwwwwwwwwwwwwww2 ? 1 : 0);
                    break;
                case 3:
                    Wwwww(IMediaControllerCallback.Stub.Kkkkkkkkkk(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 4:
                    Kkkkkkkkkkkkkkkkkkkk(IMediaControllerCallback.Stub.Kkkkkkkkkk(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    break;
                case 5:
                    boolean Kkkkkkkkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkkkkkkkk();
                    parcel2.writeNoException();
                    parcel2.writeInt(Kkkkkkkkkkkkkkkkkkkkkkkkk2 ? 1 : 0);
                    break;
                case 6:
                    String packageName = getPackageName();
                    parcel2.writeNoException();
                    parcel2.writeString(packageName);
                    break;
                case 7:
                    String tag = getTag();
                    parcel2.writeNoException();
                    parcel2.writeString(tag);
                    break;
                case 8:
                    PendingIntent Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 1);
                    break;
                case 9:
                    long flags = getFlags();
                    parcel2.writeNoException();
                    parcel2.writeLong(flags);
                    break;
                case 10:
                    ParcelableVolumeInfo Kkkkkkkkkkkk2 = Kkkkkkkkkkkk();
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, Kkkkkkkkkkkk2, 1);
                    break;
                case 11:
                    Kkkkkkkkkkkkkkk(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    break;
                case 12:
                    Www(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    break;
                case 13:
                    play();
                    parcel2.writeNoException();
                    break;
                case 14:
                    Wwwwwwwwwwwwwwwwwwwwwww(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 15:
                    Wwwwwwwwwwwwwwwwwwwwww(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 16:
                    Wwwwwwwwwwwwwwwwwwwww((Uri) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Uri.CREATOR), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 17:
                    Wwwwwwwww(parcel.readLong());
                    parcel2.writeNoException();
                    break;
                case 18:
                    pause();
                    parcel2.writeNoException();
                    break;
                case 19:
                    stop();
                    parcel2.writeNoException();
                    break;
                case 20:
                    next();
                    parcel2.writeNoException();
                    break;
                case 21:
                    previous();
                    parcel2.writeNoException();
                    break;
                case 22:
                    Kkkkkkkkkkkkkkkkkkk();
                    parcel2.writeNoException();
                    break;
                case 23:
                    Wwwwwwwwww();
                    parcel2.writeNoException();
                    break;
                case 24:
                    seekTo(parcel.readLong());
                    parcel2.writeNoException();
                    break;
                case 25:
                    Wwww((RatingCompat) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, RatingCompat.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 26:
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 27:
                    MediaMetadataCompat metadata = getMetadata();
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, metadata, 1);
                    break;
                case 28:
                    PlaybackStateCompat playbackState = getPlaybackState();
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, playbackState, 1);
                    break;
                case 29:
                    List<MediaSessionCompat.QueueItem> Kkkkkkkkkkkkk2 = Kkkkkkkkkkkkk();
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, Kkkkkkkkkkkkk2, 1);
                    break;
                case 30:
                    CharSequence Kkkkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkkkk();
                    parcel2.writeNoException();
                    if (Kkkkkkkkkkkkkkkkkkkkk2 != null) {
                        parcel2.writeInt(1);
                        TextUtils.writeToParcel(Kkkkkkkkkkkkkkkkkkkkk2, parcel2, 1);
                        break;
                    } else {
                        parcel2.writeInt(0);
                        break;
                    }
                case 31:
                    Bundle extras = getExtras();
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, extras, 1);
                    break;
                case 32:
                    int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    parcel2.writeNoException();
                    parcel2.writeInt(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    break;
                case 33:
                    prepare();
                    parcel2.writeNoException();
                    break;
                case 34:
                    Wwwwwwwwwwwwwwwwwwwwwwwww(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 35:
                    Kkkkkkkkkkkkkkkkkkkkkkk(parcel.readString(), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 36:
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Uri) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Uri.CREATOR), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 37:
                    int repeatMode = getRepeatMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(repeatMode);
                    break;
                case 38:
                    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    parcel2.writeNoException();
                    parcel2.writeInt(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 ? 1 : 0);
                    break;
                case 39:
                    setRepeatMode(parcel.readInt());
                    parcel2.writeNoException();
                    break;
                case 40:
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    Wwwwwwww(z);
                    parcel2.writeNoException();
                    break;
                case 41:
                    Kkkkkkkkkkkkkkkkkkkkkkkk((MediaDescriptionCompat) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, MediaDescriptionCompat.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 42:
                    Wwwwwwwwwwwwwwwww((MediaDescriptionCompat) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, MediaDescriptionCompat.CREATOR), parcel.readInt());
                    parcel2.writeNoException();
                    break;
                case 43:
                    Kkkkkkkkkkkkkkkkkkkkkkkkkk((MediaDescriptionCompat) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, MediaDescriptionCompat.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 44:
                    Wwwwwwwwwwwwww(parcel.readInt());
                    parcel2.writeNoException();
                    break;
                case 45:
                    boolean Wwwwwwwwwwwww2 = Wwwwwwwwwwwww();
                    parcel2.writeNoException();
                    parcel2.writeInt(Wwwwwwwwwwwww2 ? 1 : 0);
                    break;
                case 46:
                    if (parcel.readInt() != 0) {
                        z = true;
                    }
                    Kkkkkkkkkkkkkk(z);
                    parcel2.writeNoException();
                    break;
                case 47:
                    int Wwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwww();
                    parcel2.writeNoException();
                    parcel2.writeInt(Wwwwwwwwwwwwwww2);
                    break;
                case 48:
                    Wwwwwww(parcel.readInt());
                    parcel2.writeNoException();
                    break;
                case 49:
                    setPlaybackSpeed(parcel.readFloat());
                    parcel2.writeNoException();
                    break;
                case 50:
                    Bundle Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww();
                    parcel2.writeNoException();
                    _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel2, Wwwwwwwwwwwwwwwwwwwwwwww2, 1);
                    break;
                case 51:
                    Wwwwwwwwwwwwwwwwwww((RatingCompat) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, RatingCompat.CREATOR), (Bundle) _Parcel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
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
    public static class Default implements IMediaSession {
        @Override // android.support.v4.media.session.IMediaSession
        public boolean Wwwwwwwwwwwwwwwwwwww(KeyEvent keyEvent) throws RemoteException {
            return false;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.media.session.IMediaSession
        public PlaybackStateCompat getPlaybackState() throws RemoteException {
            return null;
        }

        @Override // android.support.v4.media.session.IMediaSession
        public void Wwwww(IMediaControllerCallback iMediaControllerCallback) throws RemoteException {
        }
    }
}
