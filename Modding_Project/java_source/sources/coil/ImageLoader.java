package coil;

import android.content.Context;
import coil.EventListener;
import coil.ImageLoader;
import coil.disk.DiskCache;
import coil.memory.MemoryCache;
import coil.request.DefaultRequestOptions;
import coil.request.Disposable;
import coil.request.ImageRequest;
import coil.request.ImageResult;
import coil.util.ImageLoaderOptions;
import coil.util.Logger;
import coil.util.Requests;
import coil.util.SingletonDiskCache;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001:\u0001\u0012J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\n8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000e8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lcoil/ImageLoader;", "", "Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "Lcoil/request/Disposable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;", "Lcoil/request/ImageResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcoil/ComponentRegistry;", "getComponents", "()Lcoil/ComponentRegistry;", "components", "Lcoil/memory/MemoryCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/memory/MemoryCache;", "memoryCache", "Builder", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface ImageLoader {

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\rR \u0010\u0013\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R \u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0012R\u001e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0012R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lcoil/ImageLoader$Builder;", "", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Lcoil/ImageLoader;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/ImageLoader;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "applicationContext", "Lcoil/request/DefaultRequestOptions;", "Lcoil/request/DefaultRequestOptions;", RemoteConfigComponent.DEFAULTS_FILE_NAME, "Lkotlin/Lazy;", "Lcoil/memory/MemoryCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlin/Lazy;", "memoryCache", "Lcoil/disk/DiskCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "diskCache", "Lokhttp3/Call$Factory;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "callFactory", "Lcoil/EventListener$Factory;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/EventListener$Factory;", "eventListenerFactory", "Lcoil/ComponentRegistry;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/ComponentRegistry;", "componentRegistry", "Lcoil/util/ImageLoaderOptions;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/util/ImageLoaderOptions;", "options", "Lcoil/util/Logger;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/util/Logger;", "logger", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Context f1791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public DefaultRequestOptions f1790Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Requests.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Lazy<? extends MemoryCache> f1789Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Lazy<? extends DiskCache> f1788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Lazy<? extends Call.Factory> f1787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public EventListener.Factory f1786Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ComponentRegistry f1785Wwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ImageLoaderOptions f1784Wwwwwwwwwwwwwwwwwwwwwwwwwww = new ImageLoaderOptions(false, false, false, 0, null, 31, null);
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Logger f1783Wwwwwwwwwwwwwwwwwwwwwwwwww = null;

        public Builder(@NotNull Context context) {
            this.f1791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getApplicationContext();
        }

        @NotNull
        public final ImageLoader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Context context = this.f1791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            DefaultRequestOptions defaultRequestOptions = this.f1790Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Lazy<? extends MemoryCache> lazy = this.f1789Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (lazy == null) {
                lazy = LazyKt.lazy(new Function0<MemoryCache>() { // from class: coil.ImageLoader$Builder$build$1
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final MemoryCache invoke() {
                        Context context2;
                        context2 = ImageLoader.Builder.this.f1791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        return new MemoryCache.Builder(context2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    }
                });
            }
            Lazy<? extends DiskCache> lazy2 = this.f1788Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (lazy2 == null) {
                lazy2 = LazyKt.lazy(new Function0<DiskCache>() { // from class: coil.ImageLoader$Builder$build$2
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final DiskCache invoke() {
                        Context context2;
                        SingletonDiskCache singletonDiskCache = SingletonDiskCache.INSTANCE;
                        context2 = ImageLoader.Builder.this.f1791Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        return singletonDiskCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2);
                    }
                });
            }
            Lazy<? extends Call.Factory> lazy3 = this.f1787Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (lazy3 == null) {
                lazy3 = LazyKt.lazy(new Function0<OkHttpClient>() { // from class: coil.ImageLoader$Builder$build$3
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final OkHttpClient invoke() {
                        return new OkHttpClient();
                    }
                });
            }
            EventListener.Factory factory = this.f1786Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (factory == null) {
                factory = EventListener.Factory.f1781Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            ComponentRegistry componentRegistry = this.f1785Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (componentRegistry == null) {
                componentRegistry = new ComponentRegistry();
            }
            return new RealImageLoader(context, defaultRequestOptions, lazy, lazy2, lazy3, factory, componentRegistry, this.f1784Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f1783Wwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    @Nullable
    MemoryCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @Nullable
    Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Continuation<? super ImageResult> continuation);

    @NotNull
    Disposable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest);

    @NotNull
    ComponentRegistry getComponents();
}
