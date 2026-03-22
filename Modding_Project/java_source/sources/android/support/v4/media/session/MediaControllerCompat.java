package android.support.v4.media.session;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.IMediaControllerCallback;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.app.BundleCompat;
import androidx.media.AudioAttributesCompat;
import androidx.versionedparcelable.ParcelUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final class MediaControllerCompat {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<Callback> f252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaSessionCompat.Token f253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaControllerImpl f254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface MediaControllerImpl {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(KeyEvent keyEvent);

        PlaybackStateCompat getPlaybackState();
    }

    /* compiled from: Proguard */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class MediaControllerImplApi21 implements MediaControllerImpl {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaSessionCompat.Token f262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaController f266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Object f265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Object();
        @GuardedBy("mLock")

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Callback> f264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public HashMap<Callback, ExtraCallback> f263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public WeakReference<MediaControllerImplApi21> f267Wwwwwwwwwwwwwwwwwwwwwwwww;

            public ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.f267Wwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            public void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f267Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (mediaControllerImplApi21 != null && bundle != null) {
                    synchronized (mediaControllerImplApi21.f265Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        mediaControllerImplApi21.f262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(IMediaSession.Stub.Kkkkkkkkkk(BundleCompat.getBinder(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                        mediaControllerImplApi21.f262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ParcelUtils.getVersionedParcelable(bundle, "android.support.v4.media.session.SESSION_TOKEN2"));
                        mediaControllerImplApi21.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class ExtraCallback extends Callback.StubCompat {
            public ExtraCallback(Callback callback) {
                super(callback);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void Kkkkkkkkkkkkkkkk(CharSequence charSequence) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void Kkkkkkkkkkkkkkkkkkkkkk(Bundle bundle) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwww(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwwwwwwwwwwwww(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwwwwwwwwwwwwwww() throws RemoteException {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat, android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwwwwwwwwwwwwwwwwwwwwwww(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.f262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = token;
            this.f266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaController(context, (MediaSession.Token) token.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (token.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle, ResultReceiver resultReceiver) {
            this.f266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.sendCommand(str, bundle, resultReceiver);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }

        @GuardedBy("mLock")
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                return;
            }
            for (Callback callback : this.f264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                ExtraCallback extraCallback = new ExtraCallback(callback);
                this.f263Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(callback, extraCallback);
                callback.f255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = extraCallback;
                try {
                    this.f262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwww(extraCallback);
                    callback.Wwwwwwwwwwwwwwwwwwwwww(13, null, null);
                } catch (RemoteException unused) {
                }
            }
            this.f264Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.MediaControllerImpl
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(KeyEvent keyEvent) {
            return this.f266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.dispatchMediaButtonEvent(keyEvent);
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.MediaControllerImpl
        public PlaybackStateCompat getPlaybackState() {
            if (this.f262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                try {
                    return this.f262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getPlaybackState();
                } catch (RemoteException unused) {
                }
            }
            PlaybackState playbackState = this.f266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPlaybackState();
            if (playbackState != null) {
                return PlaybackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(playbackState);
            }
            return null;
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class MediaControllerImplApi29 extends MediaControllerImplApi21 {
        public MediaControllerImplApi29(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class MediaControllerImplBase implements MediaControllerImpl {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public IMediaSession f268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // android.support.v4.media.session.MediaControllerCompat.MediaControllerImpl
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(KeyEvent keyEvent) {
            if (keyEvent != null) {
                try {
                    this.f268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(keyEvent);
                    return false;
                } catch (RemoteException unused) {
                    return false;
                }
            }
            throw new IllegalArgumentException("event may not be null.");
        }

        @Override // android.support.v4.media.session.MediaControllerCompat.MediaControllerImpl
        public PlaybackStateCompat getPlaybackState() {
            try {
                return this.f268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPlaybackState();
            } catch (RemoteException unused) {
                return null;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class PlaybackInfo {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AudioAttributesCompat f272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public PlaybackInfo(int i, int i2, int i3, int i4, int i5) {
            this(i, new AudioAttributesCompat.Builder().setLegacyStreamType(i2).build(), i3, i4, i5);
        }

        public PlaybackInfo(int i, @NonNull AudioAttributesCompat audioAttributesCompat, int i2, int i3, int i4) {
            this.f273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = audioAttributesCompat;
            this.f271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
            this.f270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
            this.f269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i4;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class TransportControls {
    }

    /* compiled from: Proguard */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class TransportControlsApi21 extends TransportControls {
    }

    /* compiled from: Proguard */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class TransportControlsApi23 extends TransportControlsApi21 {
    }

    /* compiled from: Proguard */
    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static class TransportControlsApi24 extends TransportControlsApi23 {
    }

    /* compiled from: Proguard */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static class TransportControlsApi29 extends TransportControlsApi24 {
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class TransportControlsBase extends TransportControls {
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat mediaSessionCompat) {
        this(context, mediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public PlaybackStateCompat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPlaybackState();
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(KeyEvent keyEvent) {
        if (keyEvent != null) {
            return this.f254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(keyEvent);
        }
        throw new IllegalArgumentException("KeyEvent may not be null");
    }

    public MediaControllerCompat(Context context, @NonNull MediaSessionCompat.Token token) {
        if (token != null) {
            this.f252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.synchronizedSet(new HashSet());
            this.f253Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = token;
            if (Build.VERSION.SDK_INT >= 29) {
                this.f254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaControllerImplApi29(context, token);
                return;
            } else {
                this.f254Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaControllerImplApi21(context, token);
                return;
            }
        }
        throw new IllegalArgumentException("sessionToken must not be null");
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class Callback implements IBinder.DeathRecipient {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public IMediaControllerCallback f255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MessageHandler f256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaController.Callback f257Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaControllerCallbackApi21(this);

        /* compiled from: Proguard */
        @RequiresApi(21)
        /* loaded from: classes.dex */
        public static class MediaControllerCallbackApi21 extends MediaController.Callback {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final WeakReference<Callback> f258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            public MediaControllerCallbackApi21(Callback callback) {
                this.f258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(callback);
            }

            @Override // android.media.session.MediaController.Callback
            public void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                Callback callback = this.f258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new PlaybackInfo(playbackInfo.getPlaybackType(), AudioAttributesCompat.wrap(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume()));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                Callback callback = this.f258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onMetadataChanged(MediaMetadata mediaMetadata) {
                Callback callback = this.f258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaMetadata));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onPlaybackStateChanged(PlaybackState playbackState) {
                Callback callback = this.f258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null && callback.f255Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackStateCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(playbackState));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueChanged(List<MediaSession.QueueItem> list) {
                Callback callback = this.f258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaSessionCompat.QueueItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onQueueTitleChanged(CharSequence charSequence) {
                Callback callback = this.f258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(charSequence);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionDestroyed() {
                Callback callback = this.f258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                Callback callback = this.f258Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwwwwww(str, bundle);
                }
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public class MessageHandler extends Handler {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Callback f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public boolean f260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (!this.f260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return;
                }
                switch (message.what) {
                    case 1:
                        Bundle data = message.getData();
                        MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(data);
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww((String) message.obj, data);
                        return;
                    case 2:
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((PlaybackStateCompat) message.obj);
                        return;
                    case 3:
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((MediaMetadataCompat) message.obj);
                        return;
                    case 4:
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((PlaybackInfo) message.obj);
                        return;
                    case 5:
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((List) message.obj);
                        return;
                    case 6:
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww((CharSequence) message.obj);
                        return;
                    case 7:
                        Bundle bundle = (Bundle) message.obj;
                        MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                        return;
                    case 8:
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                        return;
                    case 9:
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(((Integer) message.obj).intValue());
                        return;
                    case 10:
                    default:
                        return;
                    case 11:
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((Boolean) message.obj).booleanValue());
                        return;
                    case 12:
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(((Integer) message.obj).intValue());
                        return;
                    case 13:
                        this.f259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww();
                        return;
                }
            }
        }

        public void Wwwwwwwwwwwwwwwwwwwwww(int i, Object obj, Bundle bundle) {
            MessageHandler messageHandler = this.f256Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (messageHandler != null) {
                Message obtainMessage = messageHandler.obtainMessage(i, obj);
                obtainMessage.setData(bundle);
                obtainMessage.sendToTarget();
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Wwwwwwwwwwwwwwwwwwwwww(8, null, null);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwww() {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        }

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public static class StubCompat extends IMediaControllerCallback.Stub {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final WeakReference<Callback> f261Wwwwwwwwwwwwwwwwwwwwwwwww;

            public StubCompat(Callback callback) {
                this.f261Wwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(callback);
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Kkkkkkkkkkk(PlaybackStateCompat playbackStateCompat) throws RemoteException {
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwww(2, playbackStateCompat, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Kkkkkkkkkkkkkkkk(CharSequence charSequence) throws RemoteException {
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwww(6, charSequence, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Kkkkkkkkkkkkkkkkkk(boolean z) throws RemoteException {
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwww(11, Boolean.valueOf(z), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Kkkkkkkkkkkkkkkkkkkkkk(Bundle bundle) throws RemoteException {
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwww(7, bundle, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwww(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
                PlaybackInfo playbackInfo;
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    if (parcelableVolumeInfo != null) {
                        playbackInfo = new PlaybackInfo(parcelableVolumeInfo.f357Wwwwwwwwwwwwwwwwwwwwwwwww, parcelableVolumeInfo.f356Wwwwwwwwwwwwwwwwwwwwwwww, parcelableVolumeInfo.f355Wwwwwwwwwwwwwwwwwwwwwww, parcelableVolumeInfo.f354Wwwwwwwwwwwwwwwwwwwwww, parcelableVolumeInfo.f353Wwwwwwwwwwwwwwwwwwwww);
                    } else {
                        playbackInfo = null;
                    }
                    callback.Wwwwwwwwwwwwwwwwwwwwww(4, playbackInfo, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwwwwwwwww(int i) throws RemoteException {
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwww(12, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwwwwwwwwwwwww(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwww(3, mediaMetadataCompat, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwwwwwwwwwwwwwww() throws RemoteException {
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwww(8, null, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwwwwwwwwwwwwwwwwwwwwwww(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwww(5, list, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws RemoteException {
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwww(13, null, null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onEvent(String str, Bundle bundle) throws RemoteException {
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwww(1, str, bundle);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void onRepeatModeChanged(int i) throws RemoteException {
                Callback callback = this.f261Wwwwwwwwwwwwwwwwwwwwwwwww.get();
                if (callback != null) {
                    callback.Wwwwwwwwwwwwwwwwwwwwww(9, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.v4.media.session.IMediaControllerCallback
            public void Kkkkkkkkkkkkkkkkk(boolean z) throws RemoteException {
            }
        }

        public void Wwwwwwwwwwwwwwwwwwwwwww(int i) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(CharSequence charSequence) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<MediaSessionCompat.QueueItem> list) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackStateCompat playbackStateCompat) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PlaybackInfo playbackInfo) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle) {
        }
    }
}
