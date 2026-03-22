package coil.util;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import coil.RealImageLoader;
import coil.network.EmptyNetworkObserver;
import coil.network.NetworkObserver;
import coil.network.NetworkObserverKt;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 12\u00020\u00012\u00020\u0002:\u00011B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0016\u0010\rJ\u0017\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u000b¢\u0006\u0004\b\u001a\u0010\rR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR.\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010\u00030\u00030\u001d8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u001f\u0010 \u0012\u0004\b#\u0010\r\u001a\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0011\u0010\u0017\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b/\u00100¨\u00062"}, d2 = {"Lcoil/util/SystemCallbacks;", "Landroid/content/ComponentCallbacks2;", "Lcoil/network/NetworkObserver$Listener;", "Lcoil/RealImageLoader;", "imageLoader", "Landroid/content/Context;", "context", "", "isNetworkObserverEnabled", "<init>", "(Lcoil/RealImageLoader;Landroid/content/Context;Z)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "", "level", "onTrimMemory", "(I)V", "onLowMemory", "isOnline", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/ref/WeakReference;", "getImageLoader$coil_base_release", "()Ljava/lang/ref/WeakReference;", "getImageLoader$coil_base_release$annotations", "Lcoil/network/NetworkObserver;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcoil/network/NetworkObserver;", "networkObserver", "Wwwwwwwwwwwwwwwwwwwwww", "Z", "_isOnline", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "_isShutdown", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Companion", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SystemCallbacks implements ComponentCallbacks2, NetworkObserver.Listener {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicBoolean f2221Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile boolean f2222Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final NetworkObserver f2223Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WeakReference<RealImageLoader> f2224Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f2225Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcoil/util/SystemCallbacks$Companion;", "", "()V", "OFFLINE", "", "ONLINE", "TAG", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public SystemCallbacks(@NotNull RealImageLoader realImageLoader, @NotNull Context context, boolean z) {
        NetworkObserver emptyNetworkObserver;
        this.f2225Wwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f2224Wwwwwwwwwwwwwwwwwwwwwwww = new WeakReference<>(realImageLoader);
        if (z) {
            emptyNetworkObserver = NetworkObserverKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, this, realImageLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            emptyNetworkObserver = new EmptyNetworkObserver();
        }
        this.f2223Wwwwwwwwwwwwwwwwwwwwwww = emptyNetworkObserver;
        this.f2222Wwwwwwwwwwwwwwwwwwwwww = emptyNetworkObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f2221Wwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f2221Wwwwwwwwwwwwwwwwwwwww.getAndSet(true)) {
            return;
        }
        this.f2225Wwwwwwwwwwwwwwwwwwwwwwwww.unregisterComponentCallbacks(this);
        this.f2223Wwwwwwwwwwwwwwwwwwwwwww.shutdown();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f2225Wwwwwwwwwwwwwwwwwwwwwwwww.registerComponentCallbacks(this);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2222Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // coil.network.NetworkObserver.Listener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        String str;
        RealImageLoader realImageLoader = this.f2224Wwwwwwwwwwwwwwwwwwwwwwww.get();
        Unit unit = null;
        if (realImageLoader != null) {
            Logger Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = realImageLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 4) {
                if (z) {
                    str = "ONLINE";
                } else {
                    str = "OFFLINE";
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("NetworkObserver", 4, str, null);
            }
            this.f2222Wwwwwwwwwwwwwwwwwwwwww = z;
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration configuration) {
        if (this.f2224Wwwwwwwwwwwwwwwwwwwwwwww.get() == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        onTrimMemory(80);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        RealImageLoader realImageLoader = this.f2224Wwwwwwwwwwwwwwwwwwwwwwww.get();
        Unit unit = null;
        if (realImageLoader != null) {
            Logger Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = realImageLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 2) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("NetworkObserver", 2, "trimMemory, level=" + i, null);
            }
            realImageLoader.Wwwwwwwwwwwwwwwwwwwwwww(i);
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
