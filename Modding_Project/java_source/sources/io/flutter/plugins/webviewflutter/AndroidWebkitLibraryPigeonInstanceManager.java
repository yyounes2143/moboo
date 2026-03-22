package io.flutter.plugins.webviewflutter;

import android.os.Handler;
import android.os.Looper;
import com.unity3d.services.core.fid.Constants;
import io.flutter.plugins.webviewflutter.WebViewProxyApi;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u0000 02\u00020\u0001:\u0002/0B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\u001e\u001a\u0004\u0018\u0001H\u001f\"\u0004\b\u0000\u0010\u001f2\u0006\u0010 \u001a\u00020\b¢\u0006\u0002\u0010!J\u0017\u0010\"\u001a\u0004\u0018\u00010\b2\b\u0010#\u001a\u0004\u0018\u00010\u0001¢\u0006\u0002\u0010$J\u0016\u0010%\u001a\u00020&2\u0006\u0010#\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\bJ\u000e\u0010'\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u0001J\u001b\u0010(\u001a\u0004\u0018\u0001H\u001f\"\u0004\b\u0000\u0010\u001f2\u0006\u0010 \u001a\u00020\b¢\u0006\u0002\u0010!J\u0010\u0010)\u001a\u00020\u00172\b\u0010#\u001a\u0004\u0018\u00010\u0001J\u0006\u0010*\u001a\u00020&J\u0006\u0010+\u001a\u00020&J\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010,\u001a\u00020&H\u0002J\u0018\u0010-\u001a\u00020&2\u0006\u0010#\u001a\u00020\u00012\u0006\u0010 \u001a\u00020\bH\u0002J\b\u0010.\u001a\u00020&H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\t\u001a*\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000b0\nj\u0014\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000b`\fX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\nj\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u0001`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R6\u0010\u0010\u001a*\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000b\u0012\u0004\u0012\u00020\b0\nj\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000b\u0012\u0004\u0012\u00020\b`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u00061"}, d2 = {"Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;", "", "finalizationListener", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;", "<init>", "(Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;)V", "identifiers", "Ljava/util/WeakHashMap;", "", "weakInstances", "Ljava/util/HashMap;", "Ljava/lang/ref/WeakReference;", "Lkotlin/collections/HashMap;", "strongInstances", "referenceQueue", "Ljava/lang/ref/ReferenceQueue;", "weakReferencesToIdentifiers", "handler", "Landroid/os/Handler;", "releaseAllFinalizedInstancesRunnable", "Ljava/lang/Runnable;", "nextIdentifier", "hasFinalizationListenerStopped", "", "value", "clearFinalizedWeakReferencesInterval", "getClearFinalizedWeakReferencesInterval", "()J", "setClearFinalizedWeakReferencesInterval", "(J)V", "remove", "T", "identifier", "(J)Ljava/lang/Object;", "getIdentifierForStrongReference", "instance", "(Ljava/lang/Object;)Ljava/lang/Long;", "addDartCreatedInstance", "", "addHostCreatedInstance", Constants.GET_INSTANCE, "containsInstance", "stopFinalizationListener", "clear", "releaseAllFinalizedInstances", "addInstance", "logWarningIfFinalizationListenerHasStopped", "PigeonFinalizationListener", "Companion", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroidWebkitLibrary.g.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebkitLibrary.g.kt\nio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6490:1\n1#2:6491\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidWebkitLibraryPigeonInstanceManager {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long minHostCreatedIdentifier = 65536;
    @NotNull
    private static final String tag = "PigeonInstanceManager";
    private long clearFinalizedWeakReferencesInterval;
    @NotNull
    private final PigeonFinalizationListener finalizationListener;
    @NotNull
    private final Handler handler;
    private boolean hasFinalizationListenerStopped;
    private long nextIdentifier;
    @NotNull
    private final Runnable releaseAllFinalizedInstancesRunnable;
    @NotNull
    private final WeakHashMap<Object, Long> identifiers = new WeakHashMap<>();
    @NotNull
    private final HashMap<Long, WeakReference<Object>> weakInstances = new HashMap<>();
    @NotNull
    private final HashMap<Long, Object> strongInstances = new HashMap<>();
    @NotNull
    private final ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
    @NotNull
    private final HashMap<WeakReference<Object>, Long> weakReferencesToIdentifiers = new HashMap<>();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$Companion;", "", "<init>", "()V", "minHostCreatedIdentifier", "", "tag", "", "create", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager;", "finalizationListener", "Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AndroidWebkitLibraryPigeonInstanceManager create(@NotNull PigeonFinalizationListener pigeonFinalizationListener) {
            return new AndroidWebkitLibraryPigeonInstanceManager(pigeonFinalizationListener);
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lio/flutter/plugins/webviewflutter/AndroidWebkitLibraryPigeonInstanceManager$PigeonFinalizationListener;", "", "onFinalize", "", "identifier", "", "webview_flutter_android_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public interface PigeonFinalizationListener {
        void onFinalize(long j);
    }

    public AndroidWebkitLibraryPigeonInstanceManager(@NotNull PigeonFinalizationListener pigeonFinalizationListener) {
        this.finalizationListener = pigeonFinalizationListener;
        Handler handler = new Handler(Looper.getMainLooper());
        this.handler = handler;
        Runnable runnable = new Runnable() { // from class: io.flutter.plugins.webviewflutter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AndroidWebkitLibraryPigeonInstanceManager.this.releaseAllFinalizedInstances();
            }
        };
        this.releaseAllFinalizedInstancesRunnable = runnable;
        this.nextIdentifier = 65536L;
        this.clearFinalizedWeakReferencesInterval = androidx.media3.common.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
        handler.postDelayed(runnable, androidx.media3.common.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    private final void addInstance(Object obj, long j) {
        if (j >= 0) {
            if (!this.weakInstances.containsKey(Long.valueOf(j))) {
                WeakReference<Object> weakReference = new WeakReference<>(obj, this.referenceQueue);
                this.identifiers.put(obj, Long.valueOf(j));
                this.weakInstances.put(Long.valueOf(j), weakReference);
                this.weakReferencesToIdentifiers.put(weakReference, Long.valueOf(j));
                this.strongInstances.put(Long.valueOf(j), obj);
                return;
            }
            throw new IllegalArgumentException(("Identifier has already been added: " + j).toString());
        }
        throw new IllegalArgumentException(("Identifier must be >= 0: " + j).toString());
    }

    private final void logWarningIfFinalizationListenerHasStopped() {
        hasFinalizationListenerStopped();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void releaseAllFinalizedInstances() {
        if (hasFinalizationListenerStopped()) {
            return;
        }
        while (true) {
            WeakReference weakReference = (WeakReference) this.referenceQueue.poll();
            if (weakReference != null) {
                Long l = (Long) TypeIntrinsics.asMutableMap(this.weakReferencesToIdentifiers).remove(weakReference);
                if (l != null) {
                    this.weakInstances.remove(l);
                    this.strongInstances.remove(l);
                    this.finalizationListener.onFinalize(l.longValue());
                }
            } else {
                this.handler.postDelayed(this.releaseAllFinalizedInstancesRunnable, this.clearFinalizedWeakReferencesInterval);
                return;
            }
        }
    }

    public final void addDartCreatedInstance(@NotNull Object obj, long j) {
        logWarningIfFinalizationListenerHasStopped();
        addInstance(obj, j);
    }

    public final long addHostCreatedInstance(@NotNull Object obj) {
        logWarningIfFinalizationListenerHasStopped();
        if (!containsInstance(obj)) {
            long j = this.nextIdentifier;
            this.nextIdentifier = 1 + j;
            addInstance(obj, j);
            return j;
        }
        Class<?> cls = obj.getClass();
        throw new IllegalArgumentException(("Instance of " + cls + " has already been added.").toString());
    }

    public final void clear() {
        this.identifiers.clear();
        this.weakInstances.clear();
        this.strongInstances.clear();
        this.weakReferencesToIdentifiers.clear();
    }

    public final boolean containsInstance(@Nullable Object obj) {
        logWarningIfFinalizationListenerHasStopped();
        return this.identifiers.containsKey(obj);
    }

    public final long getClearFinalizedWeakReferencesInterval() {
        return this.clearFinalizedWeakReferencesInterval;
    }

    @Nullable
    public final Long getIdentifierForStrongReference(@Nullable Object obj) {
        logWarningIfFinalizationListenerHasStopped();
        Long l = this.identifiers.get(obj);
        if (l != null) {
            this.strongInstances.put(l, obj);
        }
        return l;
    }

    @Nullable
    public final <T> T getInstance(long j) {
        logWarningIfFinalizationListenerHasStopped();
        WeakReference<Object> weakReference = this.weakInstances.get(Long.valueOf(j));
        if (weakReference != null) {
            return (T) weakReference.get();
        }
        return null;
    }

    public final boolean hasFinalizationListenerStopped() {
        return this.hasFinalizationListenerStopped;
    }

    @Nullable
    public final <T> T remove(long j) {
        logWarningIfFinalizationListenerHasStopped();
        Object androidWebkitLibraryPigeonInstanceManager = getInstance(j);
        if (androidWebkitLibraryPigeonInstanceManager instanceof WebViewProxyApi.WebViewPlatformView) {
            ((WebViewProxyApi.WebViewPlatformView) androidWebkitLibraryPigeonInstanceManager).destroy();
        }
        return (T) this.strongInstances.remove(Long.valueOf(j));
    }

    public final void setClearFinalizedWeakReferencesInterval(long j) {
        this.handler.removeCallbacks(this.releaseAllFinalizedInstancesRunnable);
        this.clearFinalizedWeakReferencesInterval = j;
        releaseAllFinalizedInstances();
    }

    public final void stopFinalizationListener() {
        this.handler.removeCallbacks(this.releaseAllFinalizedInstancesRunnable);
        this.hasFinalizationListenerStopped = true;
    }
}
