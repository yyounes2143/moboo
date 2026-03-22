package android.support.v4.media;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.media.MediaDescription;
import android.media.browse.MediaBrowser;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.collection.ArrayMap;
import androidx.core.app.BundleCompat;
import androidx.media.MediaBrowserCompatUtils;
import androidx.media.MediaBrowserProtocol;
import androidx.media.MediaBrowserServiceCompat;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes.dex */
public final class MediaBrowserCompat {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final boolean f137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Log.isLoggable("MediaBrowserCompat", 3);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MediaBrowserImpl f138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        @DoNotInline
        public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaBrowser.MediaItem mediaItem) {
            return mediaItem.getFlags();
        }

        @DoNotInline
        public static MediaDescription Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaBrowser.MediaItem mediaItem) {
            return mediaItem.getDescription();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class CallbackHandler extends Handler {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public WeakReference<Messenger> f139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final WeakReference<MediaBrowserServiceCallbackImpl> f140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public CallbackHandler(MediaBrowserServiceCallbackImpl mediaBrowserServiceCallbackImpl) {
            this.f140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(mediaBrowserServiceCallbackImpl);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger) {
            this.f139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(messenger);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            WeakReference<Messenger> weakReference = this.f139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (weakReference != null && weakReference.get() != null && this.f140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get() != null) {
                Bundle data = message.getData();
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(data);
                MediaBrowserServiceCallbackImpl mediaBrowserServiceCallbackImpl = this.f140Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                Messenger messenger = this.f139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get();
                try {
                    int i = message.what;
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                message.toString();
                                return;
                            }
                            Bundle bundle = data.getBundle(MediaBrowserProtocol.DATA_OPTIONS);
                            MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                            Bundle bundle2 = data.getBundle(MediaBrowserProtocol.DATA_NOTIFY_CHILDREN_CHANGED_OPTIONS);
                            MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle2);
                            mediaBrowserServiceCallbackImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), data.getParcelableArrayList(MediaBrowserProtocol.DATA_MEDIA_ITEM_LIST), bundle, bundle2);
                            return;
                        }
                        mediaBrowserServiceCallbackImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(messenger);
                        return;
                    }
                    Bundle bundle3 = data.getBundle(MediaBrowserProtocol.DATA_ROOT_HINTS);
                    MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle3);
                    mediaBrowserServiceCallbackImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messenger, data.getString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID), (MediaSessionCompat.Token) data.getParcelable(MediaBrowserProtocol.DATA_MEDIA_SESSION_TOKEN), bundle3);
                } catch (BadParcelableException unused) {
                    if (message.what == 1) {
                        mediaBrowserServiceCallbackImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(messenger);
                    }
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class CustomActionResultReceiver extends ResultReceiver {

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final CustomActionCallback f142Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bundle f143Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f144Wwwwwwwwwwwwwwwwwwwwww;

        @Override // android.support.v4.os.ResultReceiver
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bundle bundle) {
            if (this.f142Wwwwwwwwwwwwwwwwwwww == null) {
                return;
            }
            MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
            if (i != -1) {
                if (i != 0) {
                    if (i != 1) {
                        Objects.toString(this.f143Wwwwwwwwwwwwwwwwwwwww);
                        Objects.toString(bundle);
                        return;
                    }
                    this.f142Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f144Wwwwwwwwwwwwwwwwwwwwww, this.f143Wwwwwwwwwwwwwwwwwwwww, bundle);
                    return;
                }
                this.f142Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f144Wwwwwwwwwwwwwwwwwwwwww, this.f143Wwwwwwwwwwwwwwwwwwwww, bundle);
                return;
            }
            this.f142Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f144Wwwwwwwwwwwwwwwwwwwwww, this.f143Wwwwwwwwwwwwwwwwwwwww, bundle);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class ItemReceiver extends ResultReceiver {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ItemCallback f147Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f148Wwwwwwwwwwwwwwwwwwwwww;

        @Override // android.support.v4.os.ResultReceiver
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwww(bundle);
            }
            if (i == 0 && bundle != null && bundle.containsKey(MediaBrowserServiceCompat.KEY_MEDIA_ITEM)) {
                Parcelable parcelable = bundle.getParcelable(MediaBrowserServiceCompat.KEY_MEDIA_ITEM);
                if (parcelable != null && !(parcelable instanceof MediaItem)) {
                    this.f147Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f148Wwwwwwwwwwwwwwwwwwwwww);
                    return;
                } else {
                    this.f147Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((MediaItem) parcelable);
                    return;
                }
            }
            this.f147Wwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f148Wwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface MediaBrowserImpl {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void disconnect();

        @NonNull
        MediaSessionCompat.Token getSessionToken();
    }

    /* compiled from: Proguard */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class MediaBrowserImplApi23 extends MediaBrowserImplApi21 {
        public MediaBrowserImplApi23(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            super(context, componentName, connectionCallback, bundle);
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static class MediaBrowserImplApi26 extends MediaBrowserImplApi23 {
        public MediaBrowserImplApi26(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            super(context, componentName, connectionCallback, bundle);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class MediaBrowserImplBase implements MediaBrowserImpl, MediaBrowserServiceCallbackImpl {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bundle f177Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bundle f178Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MediaSessionCompat.Token f179Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f180Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Messenger f181Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ServiceBinderWrapper f182Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MediaServiceConnection f183Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayMap<String, Subscription> f185Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final CallbackHandler f186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bundle f187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ConnectionCallback f188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ComponentName f189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f190Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$3  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass3 implements Runnable {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f193Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ ItemCallback f194Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // java.lang.Runnable
            public void run() {
                this.f194Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f193Wwwwwwwwwwwwwwwwwwwwwwww);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$4  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass4 implements Runnable {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f195Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ ItemCallback f196Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // java.lang.Runnable
            public void run() {
                this.f196Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f195Wwwwwwwwwwwwwwwwwwwwwwww);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$5  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass5 implements Runnable {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Bundle f197Wwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f198Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ SearchCallback f199Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // java.lang.Runnable
            public void run() {
                this.f199Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f198Wwwwwwwwwwwwwwwwwwwwwwww, this.f197Wwwwwwwwwwwwwwwwwwwwwww);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$6  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass6 implements Runnable {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Bundle f200Wwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f201Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ CustomActionCallback f202Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // java.lang.Runnable
            public void run() {
                this.f202Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f201Wwwwwwwwwwwwwwwwwwwwwwww, this.f200Wwwwwwwwwwwwwwwwwwwwwww, null);
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public class MediaServiceConnection implements ServiceConnection {
            public MediaServiceConnection() {
            }

            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Runnable runnable) {
                if (Thread.currentThread() == MediaBrowserImplBase.this.f186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getLooper().getThread()) {
                    runnable.run();
                } else {
                    MediaBrowserImplBase.this.f186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(runnable);
                }
            }

            public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
                int i;
                MediaBrowserImplBase mediaBrowserImplBase = MediaBrowserImplBase.this;
                if (mediaBrowserImplBase.f183Wwwwwwwwwwwwwwwwwwwwwwwwwww == this && (i = mediaBrowserImplBase.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww) != 0 && i != 1) {
                    return true;
                }
                int i2 = mediaBrowserImplBase.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i2 != 0 && i2 != 1) {
                    Objects.toString(MediaBrowserImplBase.this.f189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    Objects.toString(MediaBrowserImplBase.this.f183Wwwwwwwwwwwwwwwwwwwwwwwwwww);
                    toString();
                    return false;
                }
                return false;
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(final ComponentName componentName, final IBinder iBinder) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.1
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean z = MediaBrowserCompat.f137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (z) {
                            Objects.toString(componentName);
                            Objects.toString(iBinder);
                            MediaBrowserImplBase.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        if (MediaServiceConnection.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("onServiceConnected")) {
                            MediaBrowserImplBase mediaBrowserImplBase = MediaBrowserImplBase.this;
                            mediaBrowserImplBase.f182Wwwwwwwwwwwwwwwwwwwwwwwwww = new ServiceBinderWrapper(iBinder, mediaBrowserImplBase.f187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                            MediaBrowserImplBase.this.f181Wwwwwwwwwwwwwwwwwwwwwwwww = new Messenger(MediaBrowserImplBase.this.f186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                            MediaBrowserImplBase mediaBrowserImplBase2 = MediaBrowserImplBase.this;
                            mediaBrowserImplBase2.f186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaBrowserImplBase2.f181Wwwwwwwwwwwwwwwwwwwwwwwww);
                            MediaBrowserImplBase mediaBrowserImplBase3 = MediaBrowserImplBase.this;
                            mediaBrowserImplBase3.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 2;
                            if (z) {
                                try {
                                    mediaBrowserImplBase3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                } catch (RemoteException unused) {
                                    Objects.toString(MediaBrowserImplBase.this.f189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                                    if (MediaBrowserCompat.f137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                                        MediaBrowserImplBase.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                        return;
                                    }
                                    return;
                                }
                            }
                            MediaBrowserImplBase mediaBrowserImplBase4 = MediaBrowserImplBase.this;
                            mediaBrowserImplBase4.f182Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaBrowserImplBase4.f190Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, mediaBrowserImplBase4.f181Wwwwwwwwwwwwwwwwwwwwwwwww);
                        }
                    }
                });
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(final ComponentName componentName) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.MediaServiceConnection.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MediaBrowserCompat.f137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                            Objects.toString(componentName);
                            toString();
                            Objects.toString(MediaBrowserImplBase.this.f183Wwwwwwwwwwwwwwwwwwwwwwwwwww);
                            MediaBrowserImplBase.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        if (!MediaServiceConnection.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("onServiceDisconnected")) {
                            return;
                        }
                        MediaBrowserImplBase mediaBrowserImplBase = MediaBrowserImplBase.this;
                        mediaBrowserImplBase.f182Wwwwwwwwwwwwwwwwwwwwwwwwww = null;
                        mediaBrowserImplBase.f181Wwwwwwwwwwwwwwwwwwwwwwwww = null;
                        mediaBrowserImplBase.f186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                        MediaBrowserImplBase mediaBrowserImplBase2 = MediaBrowserImplBase.this;
                        mediaBrowserImplBase2.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 4;
                        mediaBrowserImplBase2.f188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onConnectionSuspended();
                    }
                });
            }
        }

        public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                return "UNKNOWN/" + i;
                            }
                            return "CONNECT_STATE_SUSPENDED";
                        }
                        return "CONNECT_STATE_CONNECTED";
                    }
                    return "CONNECT_STATE_CONNECTING";
                }
                return "CONNECT_STATE_DISCONNECTED";
            }
            return "CONNECT_STATE_DISCONNECTING";
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger, String str) {
            int i;
            if (this.f181Wwwwwwwwwwwwwwwwwwwwwwwww == messenger && (i = this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww) != 0 && i != 1) {
                return true;
            }
            int i2 = this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i2 != 0 && i2 != 1) {
                Objects.toString(this.f189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                Objects.toString(this.f181Wwwwwwwwwwwwwwwwwwwwwwwww);
                toString();
                return false;
            }
            return false;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww == 3) {
                return true;
            }
            return false;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger) {
            Objects.toString(this.f189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwww(messenger, "onConnectFailed")) {
                return;
            }
            if (this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww != 2) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                return;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onConnectionFailed();
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            MediaServiceConnection mediaServiceConnection = this.f183Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (mediaServiceConnection != null) {
                this.f190Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.unbindService(mediaServiceConnection);
            }
            this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;
            this.f183Wwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f182Wwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f181Wwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            this.f180Wwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f179Wwwwwwwwwwwwwwwwwwwwwww = null;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww(messenger, "onConnect")) {
                if (this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww != 2) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    return;
                }
                this.f180Wwwwwwwwwwwwwwwwwwwwwwww = str;
                this.f179Wwwwwwwwwwwwwwwwwwwwwww = token;
                this.f178Wwwwwwwwwwwwwwwwwwwwww = bundle;
                this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 3;
                if (MediaBrowserCompat.f137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                this.f188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onConnected();
                try {
                    for (Map.Entry<String, Subscription> entry : this.f185Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.entrySet()) {
                        String key = entry.getKey();
                        Subscription value = entry.getValue();
                        List<SubscriptionCallback> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        List<Bundle> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        for (int i = 0; i < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size(); i++) {
                            this.f182Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(key, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i).f219Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i), this.f181Wwwwwwwwwwwwwwwwwwwwwwwww);
                        }
                    }
                } catch (RemoteException unused) {
                }
            }
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Objects.toString(this.f189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Objects.toString(this.f188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Objects.toString(this.f187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Objects.toString(this.f183Wwwwwwwwwwwwwwwwwwwwwwwwwww);
            Objects.toString(this.f182Wwwwwwwwwwwwwwwwwwwwwwwwww);
            Objects.toString(this.f181Wwwwwwwwwwwwwwwwwwwwwwwww);
            Objects.toString(this.f179Wwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            int i = this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i != 0 && i != 1) {
                throw new IllegalStateException("connect() called while neigther disconnecting nor disconnected (state=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww) + ")");
            }
            this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 2;
            this.f186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.1
                @Override // java.lang.Runnable
                public void run() {
                    boolean z;
                    MediaBrowserImplBase mediaBrowserImplBase = MediaBrowserImplBase.this;
                    if (mediaBrowserImplBase.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww != 0) {
                        mediaBrowserImplBase.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 2;
                        if (MediaBrowserCompat.f137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && mediaBrowserImplBase.f183Wwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                            throw new RuntimeException("mServiceConnection should be null. Instead it is " + MediaBrowserImplBase.this.f183Wwwwwwwwwwwwwwwwwwwwwwwwwww);
                        } else if (mediaBrowserImplBase.f182Wwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                            if (mediaBrowserImplBase.f181Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
                                Intent intent = new Intent(MediaBrowserServiceCompat.SERVICE_INTERFACE);
                                intent.setComponent(MediaBrowserImplBase.this.f189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                                MediaBrowserImplBase mediaBrowserImplBase2 = MediaBrowserImplBase.this;
                                mediaBrowserImplBase2.f183Wwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaServiceConnection();
                                try {
                                    MediaBrowserImplBase mediaBrowserImplBase3 = MediaBrowserImplBase.this;
                                    z = mediaBrowserImplBase3.f190Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.bindService(intent, mediaBrowserImplBase3.f183Wwwwwwwwwwwwwwwwwwwwwwwwwww, 1);
                                } catch (Exception unused) {
                                    Objects.toString(MediaBrowserImplBase.this.f189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                                    z = false;
                                }
                                if (!z) {
                                    MediaBrowserImplBase.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                    MediaBrowserImplBase.this.f188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onConnectionFailed();
                                }
                                if (MediaBrowserCompat.f137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                                    MediaBrowserImplBase.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                                    return;
                                }
                                return;
                            }
                            throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + MediaBrowserImplBase.this.f181Wwwwwwwwwwwwwwwwwwwwwwwww);
                        } else {
                            throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + MediaBrowserImplBase.this.f182Wwwwwwwwwwwwwwwwwwwwwwwwww);
                        }
                    }
                }
            });
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2) {
            SubscriptionCallback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww(messenger, "onLoadChildren")) {
                if (MediaBrowserCompat.f137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    Objects.toString(this.f189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
                Subscription subscription = this.f185Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
                if (subscription != null && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = subscription.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle)) != null) {
                    if (bundle == null) {
                        if (list == null) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                            return;
                        }
                        this.f177Wwwwwwwwwwwwwwwwwwwww = bundle2;
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, list);
                        this.f177Wwwwwwwwwwwwwwwwwwwww = null;
                    } else if (list == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, bundle);
                    } else {
                        this.f177Wwwwwwwwwwwwwwwwwwwww = bundle2;
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, list, bundle);
                        this.f177Wwwwwwwwwwwwwwwwwwwww = null;
                    }
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void disconnect() {
            this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
            this.f186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.post(new Runnable() { // from class: android.support.v4.media.MediaBrowserCompat.MediaBrowserImplBase.2
                @Override // java.lang.Runnable
                public void run() {
                    MediaBrowserImplBase mediaBrowserImplBase = MediaBrowserImplBase.this;
                    Messenger messenger = mediaBrowserImplBase.f181Wwwwwwwwwwwwwwwwwwwwwwwww;
                    if (messenger != null) {
                        try {
                            mediaBrowserImplBase.f182Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messenger);
                        } catch (RemoteException unused) {
                            Objects.toString(MediaBrowserImplBase.this.f189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        }
                    }
                    MediaBrowserImplBase mediaBrowserImplBase2 = MediaBrowserImplBase.this;
                    int i = mediaBrowserImplBase2.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    mediaBrowserImplBase2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (i != 0) {
                        MediaBrowserImplBase.this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
                    }
                    if (MediaBrowserCompat.f137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        MediaBrowserImplBase.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                }
            });
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        @NonNull
        public MediaSessionCompat.Token getSessionToken() {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return this.f179Wwwwwwwwwwwwwwwwwwwwwww;
            }
            throw new IllegalStateException("getSessionToken() called while not connected(state=" + this.f184Wwwwwwwwwwwwwwwwwwwwwwwwwwww + ")");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public interface MediaBrowserServiceCallbackImpl {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2);
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class SearchResultReceiver extends ResultReceiver {

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final SearchCallback f211Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bundle f212Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f213Wwwwwwwwwwwwwwwwwwwwww;

        @Override // android.support.v4.os.ResultReceiver
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bundle bundle) {
            if (bundle != null) {
                bundle = MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwww(bundle);
            }
            if (i == 0 && bundle != null && bundle.containsKey(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS)) {
                Parcelable[] parcelableArray = bundle.getParcelableArray(MediaBrowserServiceCompat.KEY_SEARCH_RESULTS);
                if (parcelableArray != null) {
                    ArrayList arrayList = new ArrayList(parcelableArray.length);
                    for (Parcelable parcelable : parcelableArray) {
                        arrayList.add((MediaItem) parcelable);
                    }
                    this.f211Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f213Wwwwwwwwwwwwwwwwwwwwww, this.f212Wwwwwwwwwwwwwwwwwwwww, arrayList);
                    return;
                }
                this.f211Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f213Wwwwwwwwwwwwwwwwwwwwww, this.f212Wwwwwwwwwwwwwwwwwwwww);
                return;
            }
            this.f211Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f213Wwwwwwwwwwwwwwwwwwwwww, this.f212Wwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class ServiceBinderWrapper {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bundle f214Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Messenger f215Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public ServiceBinderWrapper(IBinder iBinder, Bundle bundle) {
            this.f215Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Messenger(iBinder);
            this.f214Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger) throws RemoteException {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(7, null, messenger);
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bundle bundle, Messenger messenger) throws RemoteException {
            Message obtain = Message.obtain();
            obtain.what = i;
            obtain.arg1 = 1;
            obtain.setData(bundle);
            obtain.replyTo = messenger;
            this.f215Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.send(obtain);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
            bundle.putInt(MediaBrowserProtocol.DATA_CALLING_PID, Process.myPid());
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.f214Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(6, bundle, messenger);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger) throws RemoteException {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2, null, messenger);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, Messenger messenger) throws RemoteException {
            Bundle bundle = new Bundle();
            bundle.putString(MediaBrowserProtocol.DATA_PACKAGE_NAME, context.getPackageName());
            bundle.putInt(MediaBrowserProtocol.DATA_CALLING_PID, Process.myPid());
            bundle.putBundle(MediaBrowserProtocol.DATA_ROOT_HINTS, this.f214Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1, bundle, messenger);
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, IBinder iBinder, Bundle bundle, Messenger messenger) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString(MediaBrowserProtocol.DATA_MEDIA_ITEM_ID, str);
            BundleCompat.putBinder(bundle2, MediaBrowserProtocol.DATA_CALLBACK_TOKEN, iBinder);
            bundle2.putBundle(MediaBrowserProtocol.DATA_OPTIONS, bundle);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(3, bundle2, messenger);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class Subscription {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<SubscriptionCallback> f217Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Bundle> f216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

        public List<Bundle> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public List<SubscriptionCallback> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f217Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public SubscriptionCallback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) {
            for (int i = 0; i < this.f216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size(); i++) {
                if (MediaBrowserCompatUtils.areSameOptions(this.f216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i), bundle)) {
                    return this.f217Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i);
                }
            }
            return null;
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaBrowserImplApi26(context, componentName, connectionCallback, bundle);
        } else {
            this.f138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaBrowserImplApi23(context, componentName, connectionCallback, bundle);
        }
    }

    @NonNull
    public MediaSessionCompat.Token Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSessionToken();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.disconnect();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    /* compiled from: Proguard */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator<MediaItem>() { // from class: android.support.v4.media.MediaBrowserCompat.MediaItem.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }
        };

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaDescriptionCompat f209Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f210Wwwwwwwwwwwwwwwwwwwwwwwww;

        public MediaItem(@NonNull MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (mediaDescriptionCompat != null) {
                if (!TextUtils.isEmpty(mediaDescriptionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                    this.f210Wwwwwwwwwwwwwwwwwwwwwwwww = i;
                    this.f209Wwwwwwwwwwwwwwwwwwwwwwww = mediaDescriptionCompat;
                    return;
                }
                throw new IllegalArgumentException("description must have a non-empty media id");
            }
            throw new IllegalArgumentException("description cannot be null");
        }

        public static List<MediaItem> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<?> list) {
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

        public static MediaItem Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
            if (obj != null) {
                MediaBrowser.MediaItem mediaItem = (MediaBrowser.MediaItem) obj;
                return new MediaItem(MediaDescriptionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaItem)), Api21Impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaItem));
            }
            return null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NonNull
        public String toString() {
            return "MediaItem{mFlags=" + this.f210Wwwwwwwwwwwwwwwwwwwwwwwww + ", mDescription=" + this.f209Wwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f210Wwwwwwwwwwwwwwwwwwwwwwwww);
            this.f209Wwwwwwwwwwwwwwwwwwwwwwww.writeToParcel(parcel, i);
        }

        public MediaItem(Parcel parcel) {
            this.f210Wwwwwwwwwwwwwwwwwwwwwwwww = parcel.readInt();
            this.f209Wwwwwwwwwwwwwwwwwwwwwwww = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static class ConnectionCallback {
        final MediaBrowser.ConnectionCallback mConnectionCallbackFwk = new ConnectionCallbackApi21();
        ConnectionCallbackInternal mConnectionCallbackInternal;

        /* compiled from: Proguard */
        @RequiresApi(21)
        /* loaded from: classes.dex */
        public class ConnectionCallbackApi21 extends MediaBrowser.ConnectionCallback {
            public ConnectionCallbackApi21() {
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnected() {
                ConnectionCallbackInternal connectionCallbackInternal = ConnectionCallback.this.mConnectionCallbackInternal;
                if (connectionCallbackInternal != null) {
                    connectionCallbackInternal.onConnected();
                }
                ConnectionCallback.this.onConnected();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionFailed() {
                ConnectionCallbackInternal connectionCallbackInternal = ConnectionCallback.this.mConnectionCallbackInternal;
                if (connectionCallbackInternal != null) {
                    connectionCallbackInternal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                ConnectionCallback.this.onConnectionFailed();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public void onConnectionSuspended() {
                ConnectionCallbackInternal connectionCallbackInternal = ConnectionCallback.this.mConnectionCallbackInternal;
                if (connectionCallbackInternal != null) {
                    connectionCallbackInternal.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                ConnectionCallback.this.onConnectionSuspended();
            }
        }

        /* compiled from: Proguard */
        /* loaded from: classes.dex */
        public interface ConnectionCallbackInternal {
            void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

            void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

            void onConnected();
        }

        public void setInternalConnectionCallback(ConnectionCallbackInternal connectionCallbackInternal) {
            this.mConnectionCallbackInternal = connectionCallbackInternal;
        }

        public void onConnected() {
        }

        public void onConnectionFailed() {
        }

        public void onConnectionSuspended() {
        }
    }

    /* compiled from: Proguard */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class MediaBrowserImplApi21 implements MediaBrowserImpl, MediaBrowserServiceCallbackImpl, ConnectionCallback.ConnectionCallbackInternal {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Bundle f149Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public MediaSessionCompat.Token f150Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Messenger f151Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ServiceBinderWrapper f152Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f153Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bundle f156Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaBrowser f157Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final CallbackHandler f155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new CallbackHandler(this);

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayMap<String, Subscription> f154Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayMap<>();

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$1  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements Runnable {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f159Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ ItemCallback f160Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // java.lang.Runnable
            public void run() {
                this.f160Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f159Wwwwwwwwwwwwwwwwwwwwwwww);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$2  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass2 implements Runnable {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f161Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ ItemCallback f162Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // java.lang.Runnable
            public void run() {
                this.f162Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f161Wwwwwwwwwwwwwwwwwwwwwwww);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$3  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass3 implements Runnable {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f163Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ ItemCallback f164Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // java.lang.Runnable
            public void run() {
                this.f164Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f163Wwwwwwwwwwwwwwwwwwwwwwww);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$4  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass4 implements Runnable {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Bundle f165Wwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f166Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ SearchCallback f167Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // java.lang.Runnable
            public void run() {
                this.f167Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f166Wwwwwwwwwwwwwwwwwwwwwwww, this.f165Wwwwwwwwwwwwwwwwwwwwwww);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$5  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass5 implements Runnable {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Bundle f168Wwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f169Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ SearchCallback f170Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // java.lang.Runnable
            public void run() {
                this.f170Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f169Wwwwwwwwwwwwwwwwwwwwwwww, this.f168Wwwwwwwwwwwwwwwwwwwwwww);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$6  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass6 implements Runnable {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Bundle f171Wwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f172Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ CustomActionCallback f173Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // java.lang.Runnable
            public void run() {
                this.f173Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f172Wwwwwwwwwwwwwwwwwwwwwwww, this.f171Wwwwwwwwwwwwwwwwwwwwwww, null);
            }
        }

        /* compiled from: Proguard */
        /* renamed from: android.support.v4.media.MediaBrowserCompat$MediaBrowserImplApi21$7  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass7 implements Runnable {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Bundle f174Wwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f175Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ CustomActionCallback f176Wwwwwwwwwwwwwwwwwwwwwwwww;

            @Override // java.lang.Runnable
            public void run() {
                this.f176Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f175Wwwwwwwwwwwwwwwwwwwwwwww, this.f174Wwwwwwwwwwwwwwwwwwwwwww, null);
            }
        }

        public MediaBrowserImplApi21(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            Bundle bundle2;
            this.f158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
            if (bundle != null) {
                bundle2 = new Bundle(bundle);
            } else {
                bundle2 = new Bundle();
            }
            this.f156Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bundle2;
            bundle2.putInt(MediaBrowserProtocol.EXTRA_CLIENT_VERSION, 1);
            bundle2.putInt(MediaBrowserProtocol.EXTRA_CALLING_PID, Process.myPid());
            connectionCallback.setInternalConnectionCallback(this);
            this.f157Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new MediaBrowser(context, componentName, connectionCallback.mConnectionCallbackFwk, bundle2);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f152Wwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f151Wwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f150Wwwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f157Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.connect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger, String str, List<MediaItem> list, Bundle bundle, Bundle bundle2) {
            if (this.f151Wwwwwwwwwwwwwwwwwwwwwwwwwww == messenger) {
                Subscription subscription = this.f154Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
                if (subscription == null) {
                    boolean z = MediaBrowserCompat.f137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    return;
                }
                SubscriptionCallback Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = subscription.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    if (bundle == null) {
                        if (list == null) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                            return;
                        }
                        this.f149Wwwwwwwwwwwwwwwwwwwwwwwww = bundle2;
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, list);
                        this.f149Wwwwwwwwwwwwwwwwwwwwwwwww = null;
                    } else if (list == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, bundle);
                    } else {
                        this.f149Wwwwwwwwwwwwwwwwwwwwwwwww = bundle2;
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, list, bundle);
                        this.f149Wwwwwwwwwwwwwwwwwwwwwwwww = null;
                    }
                }
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        public void disconnect() {
            Messenger messenger;
            ServiceBinderWrapper serviceBinderWrapper = this.f152Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (serviceBinderWrapper != null && (messenger = this.f151Wwwwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                try {
                    serviceBinderWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(messenger);
                } catch (RemoteException unused) {
                }
            }
            this.f157Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.disconnect();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserImpl
        @NonNull
        public MediaSessionCompat.Token getSessionToken() {
            if (this.f150Wwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                this.f150Wwwwwwwwwwwwwwwwwwwwwwwwww = MediaSessionCompat.Token.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f157Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSessionToken());
            }
            return this.f150Wwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal
        public void onConnected() {
            try {
                Bundle extras = this.f157Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getExtras();
                if (extras != null) {
                    this.f153Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = extras.getInt(MediaBrowserProtocol.EXTRA_SERVICE_VERSION, 0);
                    IBinder binder = BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_MESSENGER_BINDER);
                    if (binder != null) {
                        this.f152Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new ServiceBinderWrapper(binder, this.f156Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        Messenger messenger = new Messenger(this.f155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                        this.f151Wwwwwwwwwwwwwwwwwwwwwwwwwww = messenger;
                        this.f155Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messenger);
                        try {
                            this.f152Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f151Wwwwwwwwwwwwwwwwwwwwwwwwwww);
                        } catch (RemoteException unused) {
                        }
                    }
                    IMediaSession Kkkkkkkkkk2 = IMediaSession.Stub.Kkkkkkkkkk(BundleCompat.getBinder(extras, MediaBrowserProtocol.EXTRA_SESSION_BINDER));
                    if (Kkkkkkkkkk2 != null) {
                        this.f150Wwwwwwwwwwwwwwwwwwwwwwwwww = MediaSessionCompat.Token.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f157Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getSessionToken(), Kkkkkkkkkk2);
                    }
                }
            } catch (IllegalStateException unused2) {
            }
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback.ConnectionCallbackInternal
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger) {
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Messenger messenger, String str, MediaSessionCompat.Token token, Bundle bundle) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class ItemCallback {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaBrowser.ItemCallback f145Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ItemCallbackApi23();

        /* compiled from: Proguard */
        @RequiresApi(23)
        /* loaded from: classes.dex */
        public class ItemCallbackApi23 extends MediaBrowser.ItemCallback {
            public ItemCallbackApi23() {
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public void onError(@NonNull String str) {
                ItemCallback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            }

            @Override // android.media.browse.MediaBrowser.ItemCallback
            public void onItemLoaded(MediaBrowser.MediaItem mediaItem) {
                ItemCallback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaItem));
            }
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MediaItem mediaItem) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class SubscriptionCallback {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public WeakReference<Subscription> f218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final IBinder f219Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Binder();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MediaBrowser.SubscriptionCallback f220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @RequiresApi(21)
        /* loaded from: classes.dex */
        public class SubscriptionCallbackApi21 extends MediaBrowser.SubscriptionCallback {
            public SubscriptionCallbackApi21() {
            }

            public List<MediaItem> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<MediaItem> list, Bundle bundle) {
                if (list == null) {
                    return null;
                }
                int i = bundle.getInt("android.media.browse.extra.PAGE", -1);
                int i2 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
                if (i == -1 && i2 == -1) {
                    return list;
                }
                int i3 = i2 * i;
                int i4 = i3 + i2;
                if (i >= 0 && i2 >= 1 && i3 < list.size()) {
                    if (i4 > list.size()) {
                        i4 = list.size();
                    }
                    return list.subList(i3, i4);
                }
                return Collections.EMPTY_LIST;
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String str, List<MediaBrowser.MediaItem> list) {
                Subscription subscription;
                WeakReference<Subscription> weakReference = SubscriptionCallback.this.f218Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (weakReference == null) {
                    subscription = null;
                } else {
                    subscription = weakReference.get();
                }
                if (subscription == null) {
                    SubscriptionCallback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, MediaItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list));
                    return;
                }
                List<MediaItem> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = MediaItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
                List<SubscriptionCallback> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = subscription.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                List<Bundle> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = subscription.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                for (int i = 0; i < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.size(); i++) {
                    Bundle bundle = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i);
                    if (bundle == null) {
                        SubscriptionCallback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    } else {
                        SubscriptionCallback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, bundle), bundle);
                    }
                }
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String str) {
                SubscriptionCallback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            }
        }

        /* compiled from: Proguard */
        @RequiresApi(26)
        /* loaded from: classes.dex */
        public class SubscriptionCallbackApi26 extends SubscriptionCallbackApi21 {
            public SubscriptionCallbackApi26() {
                super();
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onChildrenLoaded(@NonNull String str, @NonNull List<MediaBrowser.MediaItem> list, @NonNull Bundle bundle) {
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                SubscriptionCallback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, MediaItem.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list), bundle);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public void onError(@NonNull String str, @NonNull Bundle bundle) {
                MediaSessionCompat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
                SubscriptionCallback.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, bundle);
            }
        }

        public SubscriptionCallback() {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SubscriptionCallbackApi26();
            } else {
                this.f220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new SubscriptionCallbackApi21();
            }
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str, @NonNull Bundle bundle) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str, @NonNull List<MediaItem> list) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str, @NonNull List<MediaItem> list, @NonNull Bundle bundle) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class SearchCallback {
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str, Bundle bundle) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull String str, Bundle bundle, @NonNull List<MediaItem> list) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static abstract class CustomActionCallback {
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle, Bundle bundle2) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle, Bundle bundle2) {
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, Bundle bundle, Bundle bundle2) {
        }
    }
}
