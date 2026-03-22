package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.RemoteControlClient;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserProtocol;
import androidx.media.MediaSessionManager;
import androidx.media.VolumeProviderCompat;
import androidx.media.session.MediaButtonReceiver;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaCodecProfileLevel;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public class MediaSessionCompat {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayList<OnActiveChangeListener> f275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaControllerCompat f276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaSessionImpl f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface MediaSessionImpl {
        MediaSessionManager.RemoteUserInfo Wwwwwwwwwwwwwwwwwwwwwwwwww();

        void Wwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSessionManager.RemoteUserInfo remoteUserInfo);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(PendingIntent pendingIntent);

        Callback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackStateCompat playbackStateCompat);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataCompat mediaMetadataCompat);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Callback callback, Handler handler);

        PlaybackStateCompat getPlaybackState();

        Token getSessionToken();

        void release();

        void setFlags(int i);
    }

    /* compiled from: Proguard */
    @RequiresApi(18)
    /* loaded from: classes.dex */
    public static class MediaSessionImplApi18 extends MediaSessionImplBase {

        /* renamed from: Wwwww  reason: collision with root package name */
        public static boolean f286Wwwww = true;

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public void Wwwwwwwwwwww(PendingIntent pendingIntent, ComponentName componentName) {
            if (f286Wwwww) {
                this.f330Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.unregisterMediaButtonEventReceiver(pendingIntent);
            } else {
                super.Wwwwwwwwwwww(pendingIntent, componentName);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public void Wwwwwwwwwwwwww(PlaybackStateCompat playbackStateCompat) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == 3) {
                long j = 0;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                        j = elapsedRealtime - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0.0f && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 1.0f) {
                            j = ((float) j) * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        }
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 += j;
                }
            }
            this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww.setPlaybackState(Wwwwwwwwwwwwwwwwwwwwww(playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()), Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public void Wwwwwwwwwwwwwwwwwww(PendingIntent pendingIntent, ComponentName componentName) {
            if (f286Wwwww) {
                try {
                    this.f330Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.registerMediaButtonEventReceiver(pendingIntent);
                } catch (NullPointerException unused) {
                    f286Wwwww = false;
                }
            }
            if (!f286Wwwww) {
                super.Wwwwwwwwwwwwwwwwwww(pendingIntent, componentName);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public int Wwwwwwwwwwwwwwwwwwwww(long j) {
            int Wwwwwwwwwwwwwwwwwwwww2 = super.Wwwwwwwwwwwwwwwwwwwww(j);
            if ((j & 256) != 0) {
                return Wwwwwwwwwwwwwwwwwwwww2 | 256;
            }
            return Wwwwwwwwwwwwwwwwwwwww2;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase, android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Callback callback, Handler handler) {
            super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(callback, handler);
            if (callback == null) {
                this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww.setPlaybackPositionUpdateListener(null);
                return;
            }
            this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww.setPlaybackPositionUpdateListener(new RemoteControlClient.OnPlaybackPositionUpdateListener() { // from class: android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi18.1
                @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
                public void onPlaybackPositionUpdate(long j) {
                    MediaSessionImplApi18.this.Wwwwwwwwwwwwwwwwwwww(18, -1, -1, Long.valueOf(j), null);
                }
            });
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(19)
    /* loaded from: classes.dex */
    public static class MediaSessionImplApi19 extends MediaSessionImplApi18 {
        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi18, android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public int Wwwwwwwwwwwwwwwwwwwww(long j) {
            int Wwwwwwwwwwwwwwwwwwwww2 = super.Wwwwwwwwwwwwwwwwwwwww(j);
            if ((j & 128) != 0) {
                return Wwwwwwwwwwwwwwwwwwwww2 | 512;
            }
            return Wwwwwwwwwwwwwwwwwwwww2;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase
        public RemoteControlClient.MetadataEditor Wwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            RemoteControlClient.MetadataEditor Wwwwwwwwwwwwwwwwwwwwwwww2 = super.Wwwwwwwwwwwwwwwwwwwwwwww(bundle);
            PlaybackStateCompat playbackStateCompat = this.f318Wwwwwwwwwwwwwwwww;
            if (playbackStateCompat == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = 0;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 128) != 0) {
                Wwwwwwwwwwwwwwwwwwwwwwww2.addEditableKey(268435457);
            }
            if (bundle != null) {
                if (bundle.containsKey("android.media.metadata.YEAR")) {
                    Wwwwwwwwwwwwwwwwwwwwwwww2.putLong(8, bundle.getLong("android.media.metadata.YEAR"));
                }
                if (bundle.containsKey("android.media.metadata.RATING")) {
                    Wwwwwwwwwwwwwwwwwwwwwwww2.putObject(101, (Object) bundle.getParcelable("android.media.metadata.RATING"));
                }
                if (bundle.containsKey("android.media.metadata.USER_RATING")) {
                    Wwwwwwwwwwwwwwwwwwwwwwww2.putObject(268435457, (Object) bundle.getParcelable("android.media.metadata.USER_RATING"));
                }
            }
            return Wwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi18, android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase, android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Callback callback, Handler handler) {
            super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(callback, handler);
            if (callback == null) {
                this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww.setMetadataUpdateListener(null);
                return;
            }
            this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww.setMetadataUpdateListener(new RemoteControlClient.OnMetadataUpdateListener() { // from class: android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi19.1
                @Override // android.media.RemoteControlClient.OnMetadataUpdateListener
                public void onMetadataUpdate(int i, Object obj) {
                    if (i == 268435457 && (obj instanceof Rating)) {
                        MediaSessionImplApi19.this.Wwwwwwwwwwwwwwwwwwww(19, -1, -1, RatingCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj), null);
                    }
                }
            });
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(22)
    /* loaded from: classes.dex */
    public static class MediaSessionImplApi22 extends MediaSessionImplApi21 {
        public MediaSessionImplApi22(Context context, String str, VersionedParcelable versionedParcelable, Bundle bundle) {
            super(context, str, versionedParcelable, bundle);
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class MediaSessionImplApi29 extends MediaSessionImplApi28 {
        public MediaSessionImplApi29(Context context, String str, VersionedParcelable versionedParcelable, Bundle bundle) {
            super(context, str, versionedParcelable, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21
        public MediaSession Wwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, Bundle bundle) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, bundle);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface OnActiveChangeListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    /* compiled from: Proguard */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public interface RegistrationCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2);
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class RegistrationCallbackHandler extends Handler {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RegistrationCallback f347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
            obtainMessage(1002, i, i2).sendToTarget();
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
            obtainMessage(1001, i, i2).sendToTarget();
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i != 1001) {
                if (i != 1002) {
                    return;
                }
                this.f347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(message.arg1, message.arg2);
                return;
            }
            this.f347Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(message.arg1, message.arg2);
        }
    }

    /* compiled from: Proguard */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new Parcelable.Creator<ResultReceiverWrapper>() { // from class: android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }
        };

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ResultReceiver f348Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ResultReceiverWrapper(Parcel parcel) {
            this.f348Wwwwwwwwwwwwwwwwwwwwwwwww = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f348Wwwwwwwwwwwwwwwwwwwwwwwww.writeToParcel(parcel, i);
        }
    }

    /* compiled from: Proguard */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator<Token>() { // from class: android.support.v4.media.session.MediaSessionCompat.Token.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public Token[] newArray(int i) {
                return new Token[i];
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public Token createFromParcel(Parcel parcel) {
                return new Token(parcel.readParcelable(null));
            }
        };
        @GuardedBy("mLock")

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public VersionedParcelable f349Wwwwwwwwwwwwwwwwwwwwww;
        @GuardedBy("mLock")

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public IMediaSession f350Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f351Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f352Wwwwwwwwwwwwwwwwwwwwwwwww;

        public Token(Object obj) {
            this(obj, null, null);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public static Token Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, IMediaSession iMediaSession) {
            if (obj != null) {
                if (obj instanceof MediaSession.Token) {
                    return new Token(obj, iMediaSession);
                }
                throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
            }
            return null;
        }

        public static Token Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, null);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(VersionedParcelable versionedParcelable) {
            synchronized (this.f352Wwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f349Wwwwwwwwwwwwwwwwwwwwww = versionedParcelable;
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(IMediaSession iMediaSession) {
            synchronized (this.f352Wwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f350Wwwwwwwwwwwwwwwwwwwwwww = iMediaSession;
            }
        }

        public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f351Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public VersionedParcelable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            VersionedParcelable versionedParcelable;
            synchronized (this.f352Wwwwwwwwwwwwwwwwwwwwwwwww) {
                versionedParcelable = this.f349Wwwwwwwwwwwwwwwwwwwwww;
            }
            return versionedParcelable;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public IMediaSession Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            IMediaSession iMediaSession;
            synchronized (this.f352Wwwwwwwwwwwwwwwwwwwwwwwww) {
                iMediaSession = this.f350Wwwwwwwwwwwwwwwwwwwwwww;
            }
            return iMediaSession;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.f351Wwwwwwwwwwwwwwwwwwwwwwww;
            if (obj2 == null) {
                if (token.f351Wwwwwwwwwwwwwwwwwwwwwwww == null) {
                    return true;
                }
                return false;
            }
            Object obj3 = token.f351Wwwwwwwwwwwwwwwwwwwwwwww;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public int hashCode() {
            Object obj = this.f351Wwwwwwwwwwwwwwwwwwwwwwww;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable((Parcelable) this.f351Wwwwwwwwwwwwwwwwwwwwwwww, i);
        }

        public Token(Object obj, IMediaSession iMediaSession) {
            this(obj, iMediaSession, null);
        }

        public Token(Object obj, IMediaSession iMediaSession, VersionedParcelable versionedParcelable) {
            this.f352Wwwwwwwwwwwwwwwwwwwwwwwww = new Object();
            this.f351Wwwwwwwwwwwwwwwwwwwwwwww = obj;
            this.f350Wwwwwwwwwwwwwwwwwwwwwww = iMediaSession;
            this.f349Wwwwwwwwwwwwwwwwwwwwww = versionedParcelable;
        }
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String str) {
        this(context, str, null, null);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Bundle Wwwwwwwwwwwwwwwwwwwwwww(@Nullable Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException unused) {
            return null;
        }
    }

    public static PlaybackStateCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat) {
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        long j;
        if (playbackStateCompat != null) {
            long j2 = -1;
            if (playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                if (playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == 3 || playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == 4 || playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == 5) {
                    if (playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() > 0) {
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = (playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() * ((float) (elapsedRealtime - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2))) + playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (mediaMetadataCompat != null && mediaMetadataCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.media.metadata.DURATION")) {
                            j2 = mediaMetadataCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.media.metadata.DURATION");
                        }
                        if (j2 >= 0 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > j2) {
                            j = j2;
                        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < 0) {
                            j = 0;
                        } else {
                            j = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        }
                        return new PlaybackStateCompat.Builder(playbackStateCompat).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), j, playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), elapsedRealtime).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    return playbackStateCompat;
                }
                return playbackStateCompat;
            }
            return playbackStateCompat;
        }
        return playbackStateCompat;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(PlaybackStateCompat playbackStateCompat) {
        this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(playbackStateCompat);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataCompat mediaMetadataCompat) {
        this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaMetadataCompat);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setFlags(i);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(Callback callback, Handler handler) {
        if (callback == null) {
            this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, null);
            return;
        }
        MediaSessionImpl mediaSessionImpl = this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (handler == null) {
            handler = new Handler();
        }
        mediaSessionImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(callback, handler);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Callback callback) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(callback, null);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
        ArrayList<OnActiveChangeListener> arrayList = this.f275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            OnActiveChangeListener onActiveChangeListener = arrayList.get(i);
            i++;
            onActiveChangeListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.release();
    }

    public Token Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSessionToken();
    }

    public MediaControllerCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String str, @Nullable ComponentName componentName, @Nullable PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    public MediaSessionCompat(@NonNull Context context, @NonNull String str, @Nullable ComponentName componentName, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle) {
        this(context, str, componentName, pendingIntent, bundle, null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public MediaSessionCompat(@NonNull Context context, @NonNull String str, @Nullable ComponentName componentName, @Nullable PendingIntent pendingIntent, @Nullable Bundle bundle, @Nullable VersionedParcelable versionedParcelable) {
        this.f275Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                componentName = componentName == null ? MediaButtonReceiver.getMediaButtonReceiverComponent(context) : componentName;
                if (componentName != null && pendingIntent == null) {
                    Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent.setComponent(componentName);
                    pendingIntent = PendingIntent.getBroadcast(context, 0, intent, Build.VERSION.SDK_INT >= 31 ? TPMediaCodecProfileLevel.HEVCHighTierLevel62 : 0);
                }
                int i = Build.VERSION.SDK_INT;
                if (i >= 29) {
                    this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaSessionImplApi29(context, str, versionedParcelable, bundle);
                } else if (i >= 28) {
                    this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaSessionImplApi28(context, str, versionedParcelable, bundle);
                } else {
                    this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaSessionImplApi22(context, str, versionedParcelable, bundle);
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwww(new Callback() { // from class: android.support.v4.media.session.MediaSessionCompat.1
                }, new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper()));
                this.f277Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(pendingIntent);
                this.f276Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaControllerCompat(context, this);
                if (f274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 0) {
                    f274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("tag must not be null or empty");
        }
        throw new IllegalArgumentException("context must not be null");
    }

    /* compiled from: Proguard */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new Parcelable.Creator<QueueItem>() { // from class: android.support.v4.media.session.MediaSessionCompat.QueueItem.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }
        };

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MediaSession.QueueItem f344Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f345Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaDescriptionCompat f346Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @RequiresApi(21)
        /* loaded from: classes.dex */
        public static class Api21Impl {
            @DoNotInline
            public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSession.QueueItem queueItem) {
                return queueItem.getQueueId();
            }

            @DoNotInline
            public static MediaDescription Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSession.QueueItem queueItem) {
                return queueItem.getDescription();
            }

            @DoNotInline
            public static MediaSession.QueueItem Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescription mediaDescription, long j) {
                return new MediaSession.QueueItem(mediaDescription, j);
            }
        }

        public QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null");
            }
            if (j != -1) {
                this.f346Wwwwwwwwwwwwwwwwwwwwwwwww = mediaDescriptionCompat;
                this.f345Wwwwwwwwwwwwwwwwwwwwwwww = j;
                this.f344Wwwwwwwwwwwwwwwwwwwwwww = queueItem;
                return;
            }
            throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
        }

        public static List<QueueItem> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<?> list) {
            if (list != null) {
                ArrayList arrayList = new ArrayList(list.size());
                Iterator<?> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(it.next()));
                }
                return arrayList;
            }
            return null;
        }

        public static QueueItem Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
            if (obj != null) {
                MediaSession.QueueItem queueItem = (MediaSession.QueueItem) obj;
                return new QueueItem(queueItem, MediaDescriptionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(queueItem)), Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(queueItem));
            }
            return null;
        }

        public MediaDescriptionCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f346Wwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f346Wwwwwwwwwwwwwwwwwwwwwwwww + ", Id=" + this.f345Wwwwwwwwwwwwwwwwwwwwwwww + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f346Wwwwwwwwwwwwwwwwwwwwwwwww.writeToParcel(parcel, i);
            parcel.writeLong(this.f345Wwwwwwwwwwwwwwwwwwwwwwww);
        }

        public QueueItem(Parcel parcel) {
            this.f346Wwwwwwwwwwwwwwwwwwwwwwwww = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f345Wwwwwwwwwwwwwwwwwwwwwwww = parcel.readLong();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class Callback {
        @GuardedBy("mLock")

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public CallbackHandler f279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaSession.Callback f282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaSessionCallbackApi21();
        @GuardedBy("mLock")

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public WeakReference<MediaSessionImpl> f280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(null);

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public class CallbackHandler extends Handler {
            public CallbackHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                MediaSessionImpl mediaSessionImpl;
                Callback callback;
                CallbackHandler callbackHandler;
                if (message.what == 1) {
                    synchronized (Callback.this.f283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        mediaSessionImpl = Callback.this.f280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                        callback = Callback.this;
                        callbackHandler = callback.f279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    }
                    if (mediaSessionImpl != null && callback == mediaSessionImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && callbackHandler != null) {
                        mediaSessionImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwww((MediaSessionManager.RemoteUserInfo) message.obj);
                        Callback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaSessionImpl, callbackHandler);
                        mediaSessionImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                    }
                }
            }
        }

        /* compiled from: Proguard */
        @RequiresApi(21)
        /* loaded from: classes.dex */
        public class MediaSessionCallbackApi21 extends MediaSession.Callback {
            public MediaSessionCallbackApi21() {
            }

            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSessionImpl mediaSessionImpl) {
                if (Build.VERSION.SDK_INT >= 28) {
                    return;
                }
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mediaSessionImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (TextUtils.isEmpty(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER;
                }
                mediaSessionImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwww(new MediaSessionManager.RemoteUserInfo(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, -1, -1));
            }

            public final MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                MediaSessionImplApi21 mediaSessionImplApi21;
                synchronized (Callback.this.f283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    mediaSessionImplApi21 = (MediaSessionImplApi21) Callback.this.f280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                }
                if (mediaSessionImplApi21 != null && Callback.this == mediaSessionImplApi21.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    return mediaSessionImplApi21;
                }
                return null;
            }

            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSessionImpl mediaSessionImpl) {
                mediaSessionImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                try {
                    QueueItem queueItem = null;
                    IBinder asBinder = null;
                    queueItem = null;
                    if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                        Bundle bundle2 = new Bundle();
                        Token sessionToken = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getSessionToken();
                        IMediaSession Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = sessionToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            asBinder = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.asBinder();
                        }
                        BundleCompat.putBinder(bundle2, "android.support.v4.media.session.EXTRA_BINDER", asBinder);
                        ParcelUtils.putVersionedParcelable(bundle2, "android.support.v4.media.session.SESSION_TOKEN2", sessionToken.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        resultReceiver.send(0, bundle2);
                    } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                        Callback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                    } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                        Callback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                    } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                        Callback.this.Wwwwwwwwwwwwwwwwww((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                    } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f297Wwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                            int i = bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1);
                            if (i >= 0 && i < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f297Wwwwwwwwwwwwwwwwwwwwwwwwww.size()) {
                                queueItem = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f297Wwwwwwwwwwwwwwwwwwwwwwwwww.get(i);
                            }
                            if (queueItem != null) {
                                Callback.this.Wwwwwwwwwwwwwwwwww(queueItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                            }
                        }
                    } else {
                        Callback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, bundle, resultReceiver);
                    }
                } catch (BadParcelableException unused) {
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onCustomAction(String str, Bundle bundle) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                try {
                    if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                        Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle2);
                        Callback.this.Wwwwwwwwwwwwwwwwwwwwwww((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), bundle2);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                        Callback.this.Wwwwwwwwwwwwwwwwwwwwww();
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                        String string = bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
                        Bundle bundle3 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle3);
                        Callback.this.Wwwwwwwwwwwwwwwwwwwww(string, bundle3);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                        String string2 = bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
                        Bundle bundle4 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle4);
                        Callback.this.Wwwwwwwwwwwwwwwwwwww(string2, bundle4);
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                        Bundle bundle5 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle5);
                        Callback.this.Wwwwwwwwwwwwwwwwwww((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), bundle5);
                    } else if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                        Callback.this.Wwwwwwwwwwwwwww(bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                        Callback.this.Wwwwwwwwwww(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                        Callback.this.Wwwwwwwwww(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
                        Bundle bundle6 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                        MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle6);
                        Callback.this.Wwwwwwwwwwww((RatingCompat) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING"), bundle6);
                    } else if (str.equals("android.support.v4.media.session.action.SET_PLAYBACK_SPEED")) {
                        Callback.this.Wwwwwwwwwwwwww(bundle.getFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", 1.0f));
                    } else {
                        Callback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, bundle);
                    }
                } catch (BadParcelableException unused) {
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onFastForward() {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public boolean onMediaButtonEvent(Intent intent) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return false;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Callback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(intent);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 && !super.onMediaButtonEvent(intent)) {
                    return false;
                }
                return true;
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPause() {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlay() {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlayFromMediaId(String str, Bundle bundle) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwwwwwwwwwwww(str, bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlayFromSearch(String str, Bundle bundle) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwwwwwwwwwww(str, bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(23)
            public void onPlayFromUri(Uri uri, Bundle bundle) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwwwwwwwwww(uri, bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepare() {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepareFromMediaId(String str, Bundle bundle) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwwwwwwww(str, bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepareFromSearch(String str, Bundle bundle) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwwwwwww(str, bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(24)
            public void onPrepareFromUri(Uri uri, Bundle bundle) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwwwwww(uri, bundle);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onRewind() {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSeekTo(long j) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwwwww(j);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            @RequiresApi(29)
            public void onSetPlaybackSpeed(float f) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwwww(f);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSetRating(Rating rating) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwwwwwww(RatingCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(rating));
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToNext() {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToPrevious() {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToQueueItem(long j) {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwwww(j);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onStop() {
                MediaSessionImplApi21 Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                Callback.this.Wwwwww();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }

        public void Wwwww(MediaSessionImpl mediaSessionImpl, Handler handler) {
            synchronized (this.f283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                try {
                    this.f280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(mediaSessionImpl);
                    CallbackHandler callbackHandler = this.f279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    CallbackHandler callbackHandler2 = null;
                    if (callbackHandler != null) {
                        callbackHandler.removeCallbacksAndMessages(null);
                    }
                    if (mediaSessionImpl != null && handler != null) {
                        callbackHandler2 = new CallbackHandler(handler.getLooper());
                    }
                    this.f279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = callbackHandler2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Intent intent) {
            MediaSessionImpl mediaSessionImpl;
            CallbackHandler callbackHandler;
            KeyEvent keyEvent;
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            if (Build.VERSION.SDK_INT >= 27) {
                return false;
            }
            synchronized (this.f283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                mediaSessionImpl = this.f280Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                callbackHandler = this.f279Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (mediaSessionImpl == null || callbackHandler == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
                return false;
            }
            MediaSessionManager.RemoteUserInfo Wwwwwwwwwwwwwwwwwwwwwwwwww2 = mediaSessionImpl.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 79 && keyCode != 85) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaSessionImpl, callbackHandler);
                return false;
            }
            if (keyEvent.getRepeatCount() == 0) {
                if (this.f281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    callbackHandler.removeMessages(1);
                    this.f281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
                    PlaybackStateCompat playbackState = mediaSessionImpl.getPlaybackState();
                    if (playbackState == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = 0;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = playbackState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 32) != 0) {
                        Wwwwwwwww();
                    }
                } else {
                    this.f281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                    callbackHandler.sendMessageDelayed(callbackHandler.obtainMessage(1, Wwwwwwwwwwwwwwwwwwwwwwwwww2), ViewConfiguration.getDoubleTapTimeout());
                }
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaSessionImpl, callbackHandler);
            }
            return true;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSessionImpl mediaSessionImpl, Handler handler) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            boolean z;
            boolean z2;
            if (this.f281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                boolean z3 = false;
                this.f281Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
                handler.removeMessages(1);
                PlaybackStateCompat playbackState = mediaSessionImpl.getPlaybackState();
                if (playbackState == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = 0;
                } else {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = playbackState.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                if (playbackState != null && playbackState.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == 3) {
                    z = true;
                } else {
                    z = false;
                }
                if ((516 & Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 514) != 0) {
                    z3 = true;
                }
                if (z && z3) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                } else if (!z && z2) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }
        }

        public void Wwwwww() {
        }

        public void Wwwwwwww() {
        }

        public void Wwwwwwwww() {
        }

        public void Wwwwwwwwwwwwwwwww() {
        }

        public void Wwwwwwwwwwwwwwwwwwwwww() {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }

        public void Wwwwwww(long j) {
        }

        public void Wwwwwwwwww(int i) {
        }

        public void Wwwwwwwwwww(int i) {
        }

        public void Wwwwwwwwwwwww(RatingCompat ratingCompat) {
        }

        public void Wwwwwwwwwwwwww(float f) {
        }

        public void Wwwwwwwwwwwwwww(boolean z) {
        }

        public void Wwwwwwwwwwwwwwww(long j) {
        }

        public void Wwwwwwwwwwwwwwwwww(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void Wwwwwwwwwwww(RatingCompat ratingCompat, Bundle bundle) {
        }

        public void Wwwwwwwwwwwwwwwwwww(Uri uri, Bundle bundle) {
        }

        public void Wwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
        }

        public void Wwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwww(Uri uri, Bundle bundle) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class MediaSessionImplApi21 implements MediaSessionImpl {
        @GuardedBy("mLock")

        /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MediaSessionManager.RemoteUserInfo f289Wwwwwwwwwwwwwwwwww;
        @GuardedBy("mLock")

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public RegistrationCallbackHandler f290Wwwwwwwwwwwwwwwwwww;
        @GuardedBy("mLock")

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Callback f291Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f292Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f293Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f294Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f295Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MediaMetadataCompat f296Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public List<QueueItem> f297Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public PlaybackStateCompat f298Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bundle f301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Token f303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ExtraSession f304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaSession f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f300Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RemoteCallbackList<IMediaControllerCallback> f299Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new RemoteCallbackList<>();

        public MediaSessionImplApi21(Context context, String str, VersionedParcelable versionedParcelable, Bundle bundle) {
            MediaSession Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(context, str, bundle);
            this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwww2;
            ExtraSession extraSession = new ExtraSession(this);
            this.f304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = extraSession;
            this.f303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Token(Wwwwwwwwwwwwwwwwwwwwwwwww2.getSessionToken(), extraSession, versionedParcelable);
            this.f301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle;
            setFlags(3);
        }

        public MediaSession Wwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, Bundle bundle) {
            return new MediaSession(context, str);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public MediaSessionManager.RemoteUserInfo Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            MediaSessionManager.RemoteUserInfo remoteUserInfo;
            synchronized (this.f302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                remoteUserInfo = this.f289Wwwwwwwwwwwwwwwwww;
            }
            return remoteUserInfo;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            synchronized (this.f302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f289Wwwwwwwwwwwwwwwwww = remoteUserInfo;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setActive(z);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(PendingIntent pendingIntent) {
            this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setMediaButtonReceiver(pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public Callback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Callback callback;
            synchronized (this.f302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                callback = this.f291Wwwwwwwwwwwwwwwwwwww;
            }
            return callback;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            try {
                return (String) this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getClass().getMethod("getCallingPackage", null).invoke(this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackStateCompat playbackStateCompat) {
            PlaybackState playbackState;
            this.f298Wwwwwwwwwwwwwwwwwwwwwwwwwww = playbackStateCompat;
            synchronized (this.f302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                for (int beginBroadcast = this.f299Wwwwwwwwwwwwwwwwwwwwwwwwwwww.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f299Wwwwwwwwwwwwwwwwwwwwwwwwwwww.getBroadcastItem(beginBroadcast).Kkkkkkkkkkk(playbackStateCompat);
                    } catch (RemoteException unused) {
                    }
                }
                this.f299Wwwwwwwwwwwwwwwwwwwwwwwwwwww.finishBroadcast();
            }
            MediaSession mediaSession = this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (playbackStateCompat == null) {
                playbackState = null;
            } else {
                playbackState = (PlaybackState) playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            mediaSession.setPlaybackState(playbackState);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataCompat mediaMetadataCompat) {
            MediaMetadata mediaMetadata;
            this.f296Wwwwwwwwwwwwwwwwwwwwwwwww = mediaMetadataCompat;
            MediaSession mediaSession = this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (mediaMetadataCompat == null) {
                mediaMetadata = null;
            } else {
                mediaMetadata = (MediaMetadata) mediaMetadataCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            mediaSession.setMetadata(mediaMetadata);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Callback callback, Handler handler) {
            MediaSession.Callback callback2;
            synchronized (this.f302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                try {
                    this.f291Wwwwwwwwwwwwwwwwwwww = callback;
                    MediaSession mediaSession = this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (callback == null) {
                        callback2 = null;
                    } else {
                        callback2 = callback.f282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    }
                    mediaSession.setCallback(callback2, handler);
                    if (callback != null) {
                        callback.Wwwww(this, handler);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public PlaybackStateCompat getPlaybackState() {
            return this.f298Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public Token getSessionToken() {
            return this.f303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void release() {
            this.f300Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
            this.f299Wwwwwwwwwwwwwwwwwwwwwwwwwwww.kill();
            if (Build.VERSION.SDK_INT == 27) {
                try {
                    Field declaredField = this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getClass().getDeclaredField("mCallback");
                    declaredField.setAccessible(true);
                    Handler handler = (Handler) declaredField.get(this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                    }
                } catch (Exception unused) {
                }
            }
            this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setCallback(null);
            this.f304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkk();
            this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.release();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        @SuppressLint({"WrongConstant"})
        public void setFlags(int i) {
            this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.setFlags(i | 3);
        }

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class ExtraSession extends IMediaSession.Stub {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final AtomicReference<MediaSessionImplApi21> f306Wwwwwwwwwwwwwwwwwwwwwwwww;

            public ExtraSession(@NonNull MediaSessionImplApi21 mediaSessionImplApi21) {
                this.f306Wwwwwwwwwwwwwwwwwwwwwwwww = new AtomicReference<>(mediaSessionImplApi21);
            }

            public void Kkkkkkkkk() {
                this.f306Wwwwwwwwwwwwwwwwwwwwwwwww.set(null);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public ParcelableVolumeInfo Kkkkkkkkkkkk() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public List<QueueItem> Kkkkkkkkkkkkk() {
                return null;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkk(boolean z) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkk(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkkkkkk() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkkkkkkk(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.f306Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplApi21 == null) {
                    return;
                }
                mediaSessionImplApi21.f299Wwwwwwwwwwwwwwwwwwwwwwwwwwww.unregister(iMediaControllerCallback);
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                synchronized (mediaSessionImplApi21.f302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    try {
                        RegistrationCallbackHandler registrationCallbackHandler = mediaSessionImplApi21.f290Wwwwwwwwwwwwwwwwwww;
                        if (registrationCallbackHandler != null) {
                            registrationCallbackHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(callingPid, callingUid);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public CharSequence Kkkkkkkkkkkkkkkkkkkkk() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkkkkkkkkkk(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkkkkkkkkkkk(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean Kkkkkkkkkkkkkkkkkkkkkkkkk() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkkkkkkkkkkkkk(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Www(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwww(RatingCompat ratingCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwww(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.f306Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplApi21 == null) {
                    return;
                }
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                mediaSessionImplApi21.f299Wwwwwwwwwwwwwwwwwwwwwwwwwwww.register(iMediaControllerCallback, new MediaSessionManager.RemoteUserInfo(MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER, callingPid, callingUid));
                synchronized (mediaSessionImplApi21.f302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    try {
                        RegistrationCallbackHandler registrationCallbackHandler = mediaSessionImplApi21.f290Wwwwwwwwwwwwwwwwwww;
                        if (registrationCallbackHandler != null) {
                            registrationCallbackHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(callingPid, callingUid);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwww(int i) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwww(long j) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwww() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwww(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean Wwwwwwwwwwwww() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.f306Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplApi21 != null && mediaSessionImplApi21.f294Wwwwwwwwwwwwwwwwwwwwwww) {
                    return true;
                }
                return false;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwww(int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int Wwwwwwwwwwwwwww() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.f306Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplApi21 != null) {
                    return mediaSessionImplApi21.f292Wwwwwwwwwwwwwwwwwwwww;
                }
                return -1;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwww(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwww(RatingCompat ratingCompat, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean Wwwwwwwwwwwwwwwwwwww(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwww(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle Wwwwwwwwwwwwwwwwwwwwwwww() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.f306Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplApi21.f301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    return null;
                }
                return new Bundle(mediaSessionImplApi21.f301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.f306Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplApi21 != null) {
                    return mediaSessionImplApi21.f295Wwwwwwwwwwwwwwwwwwwwwwww;
                }
                return 0;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PendingIntent Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                return false;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle getExtras() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public long getFlags() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public MediaMetadataCompat getMetadata() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getPackageName() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PlaybackStateCompat getPlaybackState() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.f306Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplApi21 != null) {
                    return MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaSessionImplApi21.f298Wwwwwwwwwwwwwwwwwwwwwwwwwww, mediaSessionImplApi21.f296Wwwwwwwwwwwwwwwwwwwwwwwww);
                }
                return null;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRepeatMode() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.f306Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplApi21 != null) {
                    return mediaSessionImplApi21.f293Wwwwwwwwwwwwwwwwwwwwww;
                }
                return -1;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getTag() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void next() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void pause() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void play() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepare() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void previous() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void seekTo(long j) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setPlaybackSpeed(float f) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setRepeatMode(int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void stop() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwww(boolean z) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class MediaSessionImplBase implements MediaSessionImpl {

        /* renamed from: Wwwwww  reason: collision with root package name */
        public VolumeProviderCompat f307Wwwwww;

        /* renamed from: Wwwwwww  reason: collision with root package name */
        public int f308Wwwwwww;

        /* renamed from: Wwwwwwww  reason: collision with root package name */
        public int f309Wwwwwwww;

        /* renamed from: Wwwwwwwww  reason: collision with root package name */
        public Bundle f310Wwwwwwwww;

        /* renamed from: Wwwwwwwwww  reason: collision with root package name */
        public int f311Wwwwwwwwww;

        /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
        public int f312Wwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
        public boolean f313Wwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
        public int f314Wwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
        public CharSequence f315Wwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
        public List<QueueItem> f316Wwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
        public PendingIntent f317Wwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
        public PlaybackStateCompat f318Wwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MediaMetadataCompat f319Wwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f320Wwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public RegistrationCallbackHandler f321Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MediaSessionManager.RemoteUserInfo f322Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile Callback f323Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f324Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f325Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MessageHandler f326Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RemoteCallbackList<IMediaControllerCallback> f327Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f328Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final RemoteControlClient f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AudioManager f330Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bundle f331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Token f332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final PendingIntent f333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ComponentName f334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase$1  reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 extends VolumeProviderCompat.Callback {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ MediaSessionImplBase f336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // androidx.media.VolumeProviderCompat.Callback
            public void onVolumeChanged(VolumeProviderCompat volumeProviderCompat) {
                if (this.f336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f307Wwwwww != volumeProviderCompat) {
                    return;
                }
                MediaSessionImplBase mediaSessionImplBase = this.f336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                this.f336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(new ParcelableVolumeInfo(mediaSessionImplBase.f309Wwwwwwww, mediaSessionImplBase.f308Wwwwwww, volumeProviderCompat.getVolumeControl(), volumeProviderCompat.getMaxVolume(), volumeProviderCompat.getCurrentVolume()));
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static final class Command {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final ResultReceiver f337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final Bundle f338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final String f339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            public Command(String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
                this.f338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle;
                this.f337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = resultReceiver;
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public class MessageHandler extends Handler {
            public MessageHandler(Looper looper) {
                super(looper);
            }

            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(KeyEvent keyEvent, Callback callback) {
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                if (keyEvent != null && keyEvent.getAction() == 0) {
                    PlaybackStateCompat playbackStateCompat = MediaSessionImplBase.this.f318Wwwwwwwwwwwwwwwww;
                    if (playbackStateCompat == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = 0;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode != 126) {
                        if (keyCode != 127) {
                            switch (keyCode) {
                                case 86:
                                    if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 1) != 0) {
                                        callback.Wwwwww();
                                        return;
                                    }
                                    return;
                                case 87:
                                    if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 32) != 0) {
                                        callback.Wwwwwwwww();
                                        return;
                                    }
                                    return;
                                case 88:
                                    if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 16) != 0) {
                                        callback.Wwwwwwww();
                                        return;
                                    }
                                    return;
                                case 89:
                                    if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 8) != 0) {
                                        callback.Wwwwwwwwwwwwwwwww();
                                        return;
                                    }
                                    return;
                                case 90:
                                    if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 64) != 0) {
                                        callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                        return;
                                    }
                                    return;
                                default:
                                    return;
                            }
                        } else if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 2) != 0) {
                            callback.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                    } else if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 4) != 0) {
                        callback.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                QueueItem queueItem;
                Callback callback = MediaSessionImplBase.this.f323Wwwwwwwwwwwwwwwwwwwwww;
                if (callback == null) {
                    return;
                }
                Bundle data = message.getData();
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(data);
                MediaSessionImplBase.this.Wwwwwwwwwwwwwwwwwwwwwwwwwww(new MediaSessionManager.RemoteUserInfo(data.getString("data_calling_pkg"), data.getInt(MediaBrowserProtocol.DATA_CALLING_PID), data.getInt(MediaBrowserProtocol.DATA_CALLING_UID)));
                Bundle bundle = data.getBundle("data_extras");
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                try {
                    switch (message.what) {
                        case 1:
                            Command command = (Command) message.obj;
                            callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(command.f339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, command.f338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, command.f337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                            break;
                        case 2:
                            MediaSessionImplBase.this.Wwwwwwwwwwwwwwwwwwwwwwwww(message.arg1, 0);
                            break;
                        case 3:
                            callback.Wwwwwwwwwwwwwwwwwwwwww();
                            break;
                        case 4:
                            callback.Wwwwwwwwwwwwwwwwwwwww((String) message.obj, bundle);
                            break;
                        case 5:
                            callback.Wwwwwwwwwwwwwwwwwwww((String) message.obj, bundle);
                            break;
                        case 6:
                            callback.Wwwwwwwwwwwwwwwwwww((Uri) message.obj, bundle);
                            break;
                        case 7:
                            callback.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                            break;
                        case 8:
                            callback.Wwwwwwwwwwwwwwwwwwwwwwwww((String) message.obj, bundle);
                            break;
                        case 9:
                            callback.Wwwwwwwwwwwwwwwwwwwwwwww((String) message.obj, bundle);
                            break;
                        case 10:
                            callback.Wwwwwwwwwwwwwwwwwwwwwww((Uri) message.obj, bundle);
                            break;
                        case 11:
                            callback.Wwwwwww(((Long) message.obj).longValue());
                            break;
                        case 12:
                            callback.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                            break;
                        case 13:
                            callback.Wwwwww();
                            break;
                        case 14:
                            callback.Wwwwwwwww();
                            break;
                        case 15:
                            callback.Wwwwwwww();
                            break;
                        case 16:
                            callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            break;
                        case 17:
                            callback.Wwwwwwwwwwwwwwwww();
                            break;
                        case 18:
                            callback.Wwwwwwwwwwwwwwww(((Long) message.obj).longValue());
                            break;
                        case 19:
                            callback.Wwwwwwwwwwwww((RatingCompat) message.obj);
                            break;
                        case 20:
                            callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) message.obj, bundle);
                            break;
                        case 21:
                            KeyEvent keyEvent = (KeyEvent) message.obj;
                            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                            intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                            if (!callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(intent)) {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(keyEvent, callback);
                                break;
                            }
                            break;
                        case 22:
                            MediaSessionImplBase.this.Wwwwwwwwwwwww(message.arg1, 0);
                            break;
                        case 23:
                            callback.Wwwwwwwwwww(message.arg1);
                            break;
                        case 25:
                            callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((MediaDescriptionCompat) message.obj);
                            break;
                        case 26:
                            callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((MediaDescriptionCompat) message.obj, message.arg1);
                            break;
                        case 27:
                            callback.Wwwwwwwwwwwwwwwwww((MediaDescriptionCompat) message.obj);
                            break;
                        case 28:
                            List<QueueItem> list = MediaSessionImplBase.this.f316Wwwwwwwwwwwwwww;
                            if (list != null) {
                                int i = message.arg1;
                                if (i >= 0 && i < list.size()) {
                                    queueItem = MediaSessionImplBase.this.f316Wwwwwwwwwwwwwww.get(message.arg1);
                                } else {
                                    queueItem = null;
                                }
                                if (queueItem != null) {
                                    callback.Wwwwwwwwwwwwwwwwww(queueItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                                    break;
                                }
                            }
                            break;
                        case 29:
                            callback.Wwwwwwwwwwwwwww(((Boolean) message.obj).booleanValue());
                            break;
                        case 30:
                            callback.Wwwwwwwwww(message.arg1);
                            break;
                        case 31:
                            callback.Wwwwwwwwwwww((RatingCompat) message.obj, bundle);
                            break;
                        case 32:
                            callback.Wwwwwwwwwwwwww(((Float) message.obj).floatValue());
                            break;
                    }
                } finally {
                    MediaSessionImplBase.this.Wwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                }
            }
        }

        public void Wwwwwwwwwww() {
            if (this.f324Wwwwwwwwwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwww(this.f333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                this.f330Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.registerRemoteControlClient(this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f319Wwwwwwwwwwwwwwwwww);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f318Wwwwwwwwwwwwwwwww);
                return;
            }
            Wwwwwwwwwwww(this.f333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww.setPlaybackState(0);
            this.f330Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.unregisterRemoteControlClient(this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public void Wwwwwwwwwwww(PendingIntent pendingIntent, ComponentName componentName) {
            this.f330Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.unregisterMediaButtonEventReceiver(componentName);
        }

        public void Wwwwwwwwwwwww(int i, int i2) {
            if (this.f309Wwwwwwww == 2) {
                VolumeProviderCompat volumeProviderCompat = this.f307Wwwwww;
                if (volumeProviderCompat != null) {
                    volumeProviderCompat.onSetVolumeTo(i);
                    return;
                }
                return;
            }
            this.f330Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.setStreamVolume(this.f308Wwwwwww, i, i2);
        }

        public void Wwwwwwwwwwwwww(PlaybackStateCompat playbackStateCompat) {
            this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww.setPlaybackState(Wwwwwwwwwwwwwwwwwwwwww(playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        }

        public void Wwwwwwwwwwwwwww(ParcelableVolumeInfo parcelableVolumeInfo) {
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                for (int beginBroadcast = this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.getBroadcastItem(beginBroadcast).Wwwwww(parcelableVolumeInfo);
                    } catch (RemoteException unused) {
                    }
                }
                this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.finishBroadcast();
            }
        }

        public final void Wwwwwwwwwwwwwwww(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                for (int beginBroadcast = this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.getBroadcastItem(beginBroadcast).Kkkkkkkkkkk(playbackStateCompat);
                    } catch (RemoteException unused) {
                    }
                }
                this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.finishBroadcast();
            }
        }

        public final void Wwwwwwwwwwwwwwwww() {
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                for (int beginBroadcast = this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.getBroadcastItem(beginBroadcast).Wwwwwwwwwwwwwwwwww();
                    } catch (RemoteException unused) {
                    }
                }
                this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.finishBroadcast();
                this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.kill();
            }
        }

        public final void Wwwwwwwwwwwwwwwwww(MediaMetadataCompat mediaMetadataCompat) {
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                for (int beginBroadcast = this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.beginBroadcast() - 1; beginBroadcast >= 0; beginBroadcast--) {
                    try {
                        this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.getBroadcastItem(beginBroadcast).Wwwwwwwwwwwwwwww(mediaMetadataCompat);
                    } catch (RemoteException unused) {
                    }
                }
                this.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.finishBroadcast();
            }
        }

        public void Wwwwwwwwwwwwwwwwwww(PendingIntent pendingIntent, ComponentName componentName) {
            this.f330Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.registerMediaButtonEventReceiver(componentName);
        }

        public void Wwwwwwwwwwwwwwwwwwww(int i, int i2, int i3, Object obj, Bundle bundle) {
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                try {
                    MessageHandler messageHandler = this.f326Wwwwwwwwwwwwwwwwwwwwwwwww;
                    if (messageHandler != null) {
                        Message obtainMessage = messageHandler.obtainMessage(i, i2, i3, obj);
                        Bundle bundle2 = new Bundle();
                        int callingUid = Binder.getCallingUid();
                        bundle2.putInt(MediaBrowserProtocol.DATA_CALLING_UID, callingUid);
                        bundle2.putString("data_calling_pkg", Wwwwwwwwwwwwwwwwwwwwwww(callingUid));
                        int callingPid = Binder.getCallingPid();
                        if (callingPid > 0) {
                            bundle2.putInt(MediaBrowserProtocol.DATA_CALLING_PID, callingPid);
                        } else {
                            bundle2.putInt(MediaBrowserProtocol.DATA_CALLING_PID, -1);
                        }
                        if (bundle != null) {
                            bundle2.putBundle("data_extras", bundle);
                        }
                        obtainMessage.setData(bundle2);
                        obtainMessage.sendToTarget();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int Wwwwwwwwwwwwwwwwwwwww(long j) {
            int i;
            if ((1 & j) != 0) {
                i = 32;
            } else {
                i = 0;
            }
            if ((2 & j) != 0) {
                i |= 16;
            }
            if ((4 & j) != 0) {
                i |= 4;
            }
            if ((8 & j) != 0) {
                i |= 2;
            }
            if ((16 & j) != 0) {
                i |= 1;
            }
            if ((32 & j) != 0) {
                i |= 128;
            }
            if ((64 & j) != 0) {
                i |= 64;
            }
            if ((j & 512) != 0) {
                return i | 8;
            }
            return i;
        }

        public int Wwwwwwwwwwwwwwwwwwwwww(int i) {
            switch (i) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                case 8:
                    return 8;
                case 7:
                    return 9;
                case 9:
                    return 7;
                case 10:
                case 11:
                    return 6;
                default:
                    return -1;
            }
        }

        public String Wwwwwwwwwwwwwwwwwwwwwww(int i) {
            String nameForUid = this.f335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageManager().getNameForUid(i);
            if (TextUtils.isEmpty(nameForUid)) {
                return MediaSessionManager.RemoteUserInfo.LEGACY_CONTROLLER;
            }
            return nameForUid;
        }

        public RemoteControlClient.MetadataEditor Wwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) {
            RemoteControlClient.MetadataEditor editMetadata = this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww.editMetadata(true);
            if (bundle != null) {
                if (bundle.containsKey("android.media.metadata.ART")) {
                    Bitmap bitmap = (Bitmap) bundle.getParcelable("android.media.metadata.ART");
                    if (bitmap != null) {
                        bitmap = bitmap.copy(bitmap.getConfig(), false);
                    }
                    editMetadata.putBitmap(100, bitmap);
                } else if (bundle.containsKey("android.media.metadata.ALBUM_ART")) {
                    Bitmap bitmap2 = (Bitmap) bundle.getParcelable("android.media.metadata.ALBUM_ART");
                    if (bitmap2 != null) {
                        bitmap2 = bitmap2.copy(bitmap2.getConfig(), false);
                    }
                    editMetadata.putBitmap(100, bitmap2);
                }
                if (bundle.containsKey("android.media.metadata.ALBUM")) {
                    editMetadata.putString(1, bundle.getString("android.media.metadata.ALBUM"));
                }
                if (bundle.containsKey("android.media.metadata.ALBUM_ARTIST")) {
                    editMetadata.putString(13, bundle.getString("android.media.metadata.ALBUM_ARTIST"));
                }
                if (bundle.containsKey("android.media.metadata.ARTIST")) {
                    editMetadata.putString(2, bundle.getString("android.media.metadata.ARTIST"));
                }
                if (bundle.containsKey("android.media.metadata.AUTHOR")) {
                    editMetadata.putString(3, bundle.getString("android.media.metadata.AUTHOR"));
                }
                if (bundle.containsKey("android.media.metadata.COMPILATION")) {
                    editMetadata.putString(15, bundle.getString("android.media.metadata.COMPILATION"));
                }
                if (bundle.containsKey("android.media.metadata.COMPOSER")) {
                    editMetadata.putString(4, bundle.getString("android.media.metadata.COMPOSER"));
                }
                if (bundle.containsKey("android.media.metadata.DATE")) {
                    editMetadata.putString(5, bundle.getString("android.media.metadata.DATE"));
                }
                if (bundle.containsKey("android.media.metadata.DISC_NUMBER")) {
                    editMetadata.putLong(14, bundle.getLong("android.media.metadata.DISC_NUMBER"));
                }
                if (bundle.containsKey("android.media.metadata.DURATION")) {
                    editMetadata.putLong(9, bundle.getLong("android.media.metadata.DURATION"));
                }
                if (bundle.containsKey("android.media.metadata.GENRE")) {
                    editMetadata.putString(6, bundle.getString("android.media.metadata.GENRE"));
                }
                if (bundle.containsKey("android.media.metadata.TITLE")) {
                    editMetadata.putString(7, bundle.getString("android.media.metadata.TITLE"));
                }
                if (bundle.containsKey("android.media.metadata.TRACK_NUMBER")) {
                    editMetadata.putLong(0, bundle.getLong("android.media.metadata.TRACK_NUMBER"));
                }
                if (bundle.containsKey("android.media.metadata.WRITER")) {
                    editMetadata.putString(11, bundle.getString("android.media.metadata.WRITER"));
                }
            }
            return editMetadata;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
            if (this.f309Wwwwwwww == 2) {
                VolumeProviderCompat volumeProviderCompat = this.f307Wwwwww;
                if (volumeProviderCompat != null) {
                    volumeProviderCompat.onAdjustVolume(i);
                    return;
                }
                return;
            }
            this.f330Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.adjustStreamVolume(this.f308Wwwwwww, i, i2);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public MediaSessionManager.RemoteUserInfo Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            MediaSessionManager.RemoteUserInfo remoteUserInfo;
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                remoteUserInfo = this.f322Wwwwwwwwwwwwwwwwwwwww;
            }
            return remoteUserInfo;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f322Wwwwwwwwwwwwwwwwwwwww = remoteUserInfo;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            if (z == this.f324Wwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            this.f324Wwwwwwwwwwwwwwwwwwwwwww = z;
            Wwwwwwwwwww();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public Callback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Callback callback;
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                callback = this.f323Wwwwwwwwwwwwwwwwwwwwww;
            }
            return callback;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f318Wwwwwwwwwwwwwwwww = playbackStateCompat;
            }
            Wwwwwwwwwwwwwwww(playbackStateCompat);
            if (!this.f324Wwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            if (playbackStateCompat == null) {
                this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww.setPlaybackState(0);
                this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww.setTransportControlFlags(0);
                return;
            }
            Wwwwwwwwwwwwww(playbackStateCompat);
            this.f329Wwwwwwwwwwwwwwwwwwwwwwwwwwww.setTransportControlFlags(Wwwwwwwwwwwwwwwwwwwww(playbackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataCompat mediaMetadataCompat) {
            Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            if (mediaMetadataCompat != null) {
                mediaMetadataCompat = new MediaMetadataCompat.Builder(mediaMetadataCompat, MediaSessionCompat.f274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f319Wwwwwwwwwwwwwwwwww = mediaMetadataCompat;
            }
            Wwwwwwwwwwwwwwwwww(mediaMetadataCompat);
            if (!this.f324Wwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            if (mediaMetadataCompat == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mediaMetadataCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).apply();
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0033 A[Catch: all -> 0x000c, TryCatch #0 {all -> 0x000c, blocks: (B:4:0x0003, B:6:0x0008, B:12:0x0013, B:14:0x001e, B:16:0x0024, B:18:0x0028, B:19:0x002d, B:21:0x0033, B:22:0x0038), top: B:26:0x0003 }] */
        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.support.v4.media.session.MediaSessionCompat.Callback r5, android.os.Handler r6) {
            /*
                r4 = this;
                java.lang.Object r0 = r4.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww
                monitor-enter(r0)
                android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase$MessageHandler r1 = r4.f326Wwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Lc
                r2 = 0
                if (r1 == 0) goto Le
                r1.removeCallbacksAndMessages(r2)     // Catch: java.lang.Throwable -> Lc
                goto Le
            Lc:
                r5 = move-exception
                goto L3a
            Le:
                if (r5 == 0) goto L1d
                if (r6 != 0) goto L13
                goto L1d
            L13:
                android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase$MessageHandler r1 = new android.support.v4.media.session.MediaSessionCompat$MediaSessionImplBase$MessageHandler     // Catch: java.lang.Throwable -> Lc
                android.os.Looper r3 = r6.getLooper()     // Catch: java.lang.Throwable -> Lc
                r1.<init>(r3)     // Catch: java.lang.Throwable -> Lc
                goto L1e
            L1d:
                r1 = r2
            L1e:
                r4.f326Wwwwwwwwwwwwwwwwwwwwwwwww = r1     // Catch: java.lang.Throwable -> Lc
                android.support.v4.media.session.MediaSessionCompat$Callback r1 = r4.f323Wwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Lc
                if (r1 == r5) goto L2d
                android.support.v4.media.session.MediaSessionCompat$Callback r1 = r4.f323Wwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Lc
                if (r1 == 0) goto L2d
                android.support.v4.media.session.MediaSessionCompat$Callback r1 = r4.f323Wwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Lc
                r1.Wwwww(r2, r2)     // Catch: java.lang.Throwable -> Lc
            L2d:
                r4.f323Wwwwwwwwwwwwwwwwwwwwww = r5     // Catch: java.lang.Throwable -> Lc
                android.support.v4.media.session.MediaSessionCompat$Callback r5 = r4.f323Wwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Lc
                if (r5 == 0) goto L38
                android.support.v4.media.session.MediaSessionCompat$Callback r5 = r4.f323Wwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> Lc
                r5.Wwwww(r4, r6)     // Catch: java.lang.Throwable -> Lc
            L38:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc
                return
            L3a:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> Lc
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.support.v4.media.session.MediaSessionCompat$Callback, android.os.Handler):void");
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public PlaybackStateCompat getPlaybackState() {
            PlaybackStateCompat playbackStateCompat;
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                playbackStateCompat = this.f318Wwwwwwwwwwwwwwwww;
            }
            return playbackStateCompat;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public Token getSessionToken() {
            return this.f332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void release() {
            this.f324Wwwwwwwwwwwwwwwwwwwwwww = false;
            this.f325Wwwwwwwwwwwwwwwwwwwwwwww = true;
            Wwwwwwwwwww();
            Wwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, null);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void setFlags(int i) {
            synchronized (this.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f320Wwwwwwwwwwwwwwwwwww = i | 3;
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class MediaSessionStub extends IMediaSession.Stub {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final String f340Wwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final String f341Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final AtomicReference<MediaSessionImplBase> f342Wwwwwwwwwwwwwwwwwwwwwwwww;

            public void Kkkkk(int i, Object obj, Bundle bundle) {
                Kkkkkk(i, obj, 0, bundle);
            }

            public void Kkkkkk(int i, Object obj, int i2, Bundle bundle) {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase != null) {
                    mediaSessionImplBase.Wwwwwwwwwwwwwwwwwwww(i, i2, 0, obj, bundle);
                }
            }

            public void Kkkkkkk(int i, Object obj) {
                Kkkkkk(i, obj, 0, null);
            }

            public void Kkkkkkkk(int i, int i2) {
                Kkkkkk(i, null, i2, null);
            }

            public void Kkkkkkkkk(int i) {
                Kkkkkk(i, null, 0, null);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public ParcelableVolumeInfo Kkkkkkkkkkkk() {
                int streamVolume;
                int i;
                ParcelableVolumeInfo parcelableVolumeInfo;
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase == null) {
                    return null;
                }
                synchronized (mediaSessionImplBase.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    try {
                        int i2 = mediaSessionImplBase.f309Wwwwwwww;
                        int i3 = mediaSessionImplBase.f308Wwwwwww;
                        VolumeProviderCompat volumeProviderCompat = mediaSessionImplBase.f307Wwwwww;
                        int i4 = 2;
                        if (i2 == 2) {
                            i4 = volumeProviderCompat.getVolumeControl();
                            i = volumeProviderCompat.getMaxVolume();
                            streamVolume = volumeProviderCompat.getCurrentVolume();
                        } else {
                            int streamMaxVolume = mediaSessionImplBase.f330Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getStreamMaxVolume(i3);
                            streamVolume = mediaSessionImplBase.f330Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.getStreamVolume(i3);
                            i = streamMaxVolume;
                        }
                        parcelableVolumeInfo = new ParcelableVolumeInfo(i2, i3, i4, i, streamVolume);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return parcelableVolumeInfo;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public List<QueueItem> Kkkkkkkkkkkkk() {
                List<QueueItem> list;
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase == null) {
                    return null;
                }
                synchronized (mediaSessionImplBase.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    list = mediaSessionImplBase.f316Wwwwwwwwwwwwwww;
                }
                return list;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkk(boolean z) {
                Kkkkkkk(29, Boolean.valueOf(z));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkk(int i, int i2, String str) {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase != null) {
                    mediaSessionImplBase.Wwwwwwwwwwwwwwwwwwwwwwwww(i, i2);
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkkkkkk() {
                Kkkkkkkkk(16);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkkkkkkk(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase == null) {
                    return;
                }
                mediaSessionImplBase.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.unregister(iMediaControllerCallback);
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                synchronized (mediaSessionImplBase.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    try {
                        RegistrationCallbackHandler registrationCallbackHandler = mediaSessionImplBase.f321Wwwwwwwwwwwwwwwwwwww;
                        if (registrationCallbackHandler != null) {
                            registrationCallbackHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(callingPid, callingUid);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public CharSequence Kkkkkkkkkkkkkkkkkkkkk() {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase != null) {
                    return mediaSessionImplBase.f315Wwwwwwwwwwwwww;
                }
                return null;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkkkkkkkkkk(String str, Bundle bundle) {
                Kkkkk(5, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkkkkkkkkkkk(MediaDescriptionCompat mediaDescriptionCompat) {
                Kkkkkkk(25, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean Kkkkkkkkkkkkkkkkkkkkkkkkk() {
                return true;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Kkkkkkkkkkkkkkkkkkkkkkkkkk(MediaDescriptionCompat mediaDescriptionCompat) {
                Kkkkkkk(27, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Www(int i, int i2, String str) {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase != null) {
                    mediaSessionImplBase.Wwwwwwwwwwwww(i, i2);
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwww(RatingCompat ratingCompat) {
                Kkkkkkk(19, ratingCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwww(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase == null) {
                    try {
                        iMediaControllerCallback.Wwwwwwwwwwwwwwwwww();
                        return;
                    } catch (Exception unused) {
                        return;
                    }
                }
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                mediaSessionImplBase.f327Wwwwwwwwwwwwwwwwwwwwwwwwww.register(iMediaControllerCallback, new MediaSessionManager.RemoteUserInfo(mediaSessionImplBase.Wwwwwwwwwwwwwwwwwwwwwww(callingUid), callingPid, callingUid));
                synchronized (mediaSessionImplBase.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    try {
                        RegistrationCallbackHandler registrationCallbackHandler = mediaSessionImplBase.f321Wwwwwwwwwwwwwwwwwwww;
                        if (registrationCallbackHandler != null) {
                            registrationCallbackHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(callingPid, callingUid);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwww(int i) {
                Kkkkkkkk(30, i);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwww(long j) {
                Kkkkkkk(11, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwww() {
                Kkkkkkkkk(17);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwww(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                ResultReceiver resultReceiver;
                if (resultReceiverWrapper == null) {
                    resultReceiver = null;
                } else {
                    resultReceiver = resultReceiverWrapper.f348Wwwwwwwwwwwwwwwwwwwwwwwww;
                }
                Kkkkkkk(1, new Command(str, bundle, resultReceiver));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean Wwwwwwwwwwwww() {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase != null && mediaSessionImplBase.f313Wwwwwwwwwwww) {
                    return true;
                }
                return false;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwww(int i) {
                Kkkkkkkk(28, i);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int Wwwwwwwwwwwwwww() {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase != null) {
                    return mediaSessionImplBase.f311Wwwwwwwwww;
                }
                return -1;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwww(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                Kkkkkk(26, mediaDescriptionCompat, i, null);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwww(RatingCompat ratingCompat, Bundle bundle) {
                Kkkkk(31, ratingCompat, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean Wwwwwwwwwwwwwwwwwwww(KeyEvent keyEvent) {
                Kkkkkkk(21, keyEvent);
                return true;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwww(Uri uri, Bundle bundle) {
                Kkkkk(10, uri, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
                Kkkkk(9, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
                Kkkkk(8, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle Wwwwwwwwwwwwwwwwwwwwwwww() {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase != null && mediaSessionImplBase.f331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    return new Bundle(mediaSessionImplBase.f331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
                return null;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
                Kkkkk(4, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase != null) {
                    return mediaSessionImplBase.f314Wwwwwwwwwwwww;
                }
                return 0;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PendingIntent Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                PendingIntent pendingIntent;
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase == null) {
                    return null;
                }
                synchronized (mediaSessionImplBase.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    pendingIntent = mediaSessionImplBase.f317Wwwwwwwwwwwwwwww;
                }
                return pendingIntent;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri, Bundle bundle) {
                Kkkkk(6, uri, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                return false;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) throws RemoteException {
                Kkkkk(20, str, bundle);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public Bundle getExtras() {
                Bundle bundle;
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase == null) {
                    return null;
                }
                synchronized (mediaSessionImplBase.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    bundle = mediaSessionImplBase.f310Wwwwwwwww;
                }
                return bundle;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public long getFlags() {
                long j;
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase == null) {
                    return 0L;
                }
                synchronized (mediaSessionImplBase.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    j = mediaSessionImplBase.f320Wwwwwwwwwwwwwwwwwww;
                }
                return j;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public MediaMetadataCompat getMetadata() {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase != null) {
                    return mediaSessionImplBase.f319Wwwwwwwwwwwwwwwwww;
                }
                return null;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getPackageName() {
                return this.f341Wwwwwwwwwwwwwwwwwwwwwwww;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public PlaybackStateCompat getPlaybackState() {
                PlaybackStateCompat playbackStateCompat;
                MediaMetadataCompat mediaMetadataCompat;
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase == null) {
                    return null;
                }
                synchronized (mediaSessionImplBase.f328Wwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    playbackStateCompat = mediaSessionImplBase.f318Wwwwwwwwwwwwwwwww;
                    mediaMetadataCompat = mediaSessionImplBase.f319Wwwwwwwwwwwwwwwwww;
                }
                return MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(playbackStateCompat, mediaMetadataCompat);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public int getRepeatMode() {
                MediaSessionImplBase mediaSessionImplBase = this.f342Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaSessionImplBase != null) {
                    return mediaSessionImplBase.f312Wwwwwwwwwww;
                }
                return -1;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public String getTag() {
                return this.f340Wwwwwwwwwwwwwwwwwwwwwww;
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void next() {
                Kkkkkkkkk(14);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void pause() {
                Kkkkkkkkk(12);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void play() throws RemoteException {
                Kkkkkkkkk(7);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void prepare() throws RemoteException {
                Kkkkkkkkk(3);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void previous() {
                Kkkkkkkkk(15);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void seekTo(long j) {
                Kkkkkkk(18, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setPlaybackSpeed(float f) {
                Kkkkkkk(32, Float.valueOf(f));
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void setRepeatMode(int i) {
                Kkkkkkkk(23, i);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void stop() {
                Kkkkkkkkk(13);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public void Wwwwwwww(boolean z) {
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(PendingIntent pendingIntent) {
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(28)
    /* loaded from: classes.dex */
    public static class MediaSessionImplApi28 extends MediaSessionImplApi22 {
        public MediaSessionImplApi28(Context context, String str, VersionedParcelable versionedParcelable, Bundle bundle) {
            super(context, str, versionedParcelable, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21, android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        @NonNull
        public final MediaSessionManager.RemoteUserInfo Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            MediaSessionManager.RemoteUserInfo currentControllerInfo;
            currentControllerInfo = this.f305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getCurrentControllerInfo();
            return new MediaSessionManager.RemoteUserInfo(currentControllerInfo);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21, android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        }
    }
}
