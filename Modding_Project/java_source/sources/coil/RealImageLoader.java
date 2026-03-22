package coil;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import coil.EventListener;
import coil.decode.BitmapFactoryDecoder;
import coil.disk.DiskCache;
import coil.fetch.AssetUriFetcher;
import coil.fetch.BitmapFetcher;
import coil.fetch.ByteBufferFetcher;
import coil.fetch.ContentUriFetcher;
import coil.fetch.DrawableFetcher;
import coil.fetch.FileFetcher;
import coil.fetch.HttpUriFetcher;
import coil.fetch.ResourceUriFetcher;
import coil.intercept.EngineInterceptor;
import coil.intercept.Interceptor;
import coil.key.FileKeyer;
import coil.key.UriKeyer;
import coil.map.ByteArrayMapper;
import coil.map.FileUriMapper;
import coil.map.HttpUrlMapper;
import coil.map.ResourceIntMapper;
import coil.map.ResourceUriMapper;
import coil.map.StringMapper;
import coil.memory.MemoryCache;
import coil.request.DefaultRequestOptions;
import coil.request.Disposable;
import coil.request.ImageRequest;
import coil.request.ImageResult;
import coil.request.OneShotDisposable;
import coil.request.RequestService;
import coil.target.ViewTarget;
import coil.util.ImageLoaderOptions;
import coil.util.Logger;
import coil.util.SystemCallbacks;
import coil.util.Utils;
import com.google.firebase.remoteconfig.RemoteConfigComponent;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.Call;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 k2\u00020\u0001:\u0001kBg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0006\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u0017H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\u001fH\u0000¢\u0006\u0004\b\"\u0010#J#\u0010&\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u001fH\u0083@ø\u0001\u0000¢\u0006\u0004\b&\u0010'J)\u0010.\u001a\u00020!2\u0006\u0010)\u001a\u00020(2\b\u0010+\u001a\u0004\u0018\u00010*2\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b.\u0010/J)\u00101\u001a\u00020!2\u0006\u0010)\u001a\u0002002\b\u0010+\u001a\u0004\u0018\u00010*2\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b1\u00102J\u001f\u00103\u001a\u00020!2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010-\u001a\u00020,H\u0002¢\u0006\u0004\b3\u00104R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001a\u00105\u001a\u0004\b6\u00107R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u00108\u001a\u0004\b9\u0010:R\u001f\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00068\u0006¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u001f\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00068\u0006¢\u0006\f\n\u0004\b?\u0010<\u001a\u0004\b@\u0010>R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00068\u0006¢\u0006\f\n\u0004\bA\u0010<\u001a\u0004\bB\u0010>R\u0017\u0010\u000e\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b&\u0010C\u001a\u0004\bD\u0010ER\u0017\u0010\u0010\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b9\u0010F\u001a\u0004\bG\u0010HR\u0017\u0010\u0012\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bK\u0010LR\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006¢\u0006\f\n\u0004\b3\u0010M\u001a\u0004\bI\u0010NR\u0014\u0010Q\u001a\u00020O8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010PR\u0014\u0010T\u001a\u00020R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010SR\u0014\u0010W\u001a\u00020U8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010VR\u001d\u0010Z\u001a\u0004\u0018\u00010\u00078VX\u0096\u0084\u0002¢\u0006\f\n\u0004\bX\u0010<\u001a\u0004\b;\u0010YR\u001d\u0010^\u001a\u0004\u0018\u00010\t8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b[\u0010<\u001a\u0004\b\\\u0010]R\u001a\u0010a\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b_\u0010F\u001a\u0004\b`\u0010HR\u001a\u0010f\u001a\b\u0012\u0004\u0012\u00020c0b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010eR\u0014\u0010j\u001a\u00020g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010i\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006l"}, d2 = {"Lcoil/RealImageLoader;", "Lcoil/ImageLoader;", "Landroid/content/Context;", "context", "Lcoil/request/DefaultRequestOptions;", RemoteConfigComponent.DEFAULTS_FILE_NAME, "Lkotlin/Lazy;", "Lcoil/memory/MemoryCache;", "memoryCacheLazy", "Lcoil/disk/DiskCache;", "diskCacheLazy", "Lokhttp3/Call$Factory;", "callFactoryLazy", "Lcoil/EventListener$Factory;", "eventListenerFactory", "Lcoil/ComponentRegistry;", "componentRegistry", "Lcoil/util/ImageLoaderOptions;", "options", "Lcoil/util/Logger;", "logger", "<init>", "(Landroid/content/Context;Lcoil/request/DefaultRequestOptions;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil/EventListener$Factory;Lcoil/ComponentRegistry;Lcoil/util/ImageLoaderOptions;Lcoil/util/Logger;)V", "Lcoil/request/ImageRequest;", AdActivity.REQUEST_KEY_EXTRA, "Lcoil/request/Disposable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;", "Lcoil/request/ImageResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "level", "", "Wwwwwwwwwwwwwwwwwwwwwww", "(I)V", "initialRequest", "type", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcoil/request/SuccessResult;", "result", "Lcoil/target/Target;", TypedValues.AttributesType.S_TARGET, "Lcoil/EventListener;", "eventListener", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/SuccessResult;Lcoil/target/Target;Lcoil/EventListener;)V", "Lcoil/request/ErrorResult;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ErrorResult;Lcoil/target/Target;Lcoil/EventListener;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ImageRequest;Lcoil/EventListener;)V", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "Lcoil/request/DefaultRequestOptions;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/request/DefaultRequestOptions;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlin/Lazy;", "getMemoryCacheLazy", "()Lkotlin/Lazy;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getDiskCacheLazy", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getCallFactoryLazy", "Lcoil/EventListener$Factory;", "getEventListenerFactory", "()Lcoil/EventListener$Factory;", "Lcoil/ComponentRegistry;", "getComponentRegistry", "()Lcoil/ComponentRegistry;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/util/ImageLoaderOptions;", "getOptions", "()Lcoil/util/ImageLoaderOptions;", "Lcoil/util/Logger;", "()Lcoil/util/Logger;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lcoil/util/SystemCallbacks;", "Lcoil/util/SystemCallbacks;", "systemCallbacks", "Lcoil/request/RequestService;", "Lcoil/request/RequestService;", "requestService", "Wwwwwwwwwwwwwwwwwwwwww", "()Lcoil/memory/MemoryCache;", "memoryCache", "Wwwwwwwwwwwwwwwwwwwww", "getDiskCache", "()Lcoil/disk/DiskCache;", "diskCache", "Wwwwwwwwwwwwwwwwwwww", "getComponents", "components", "", "Lcoil/intercept/Interceptor;", "Wwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "interceptors", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isShutdown", "Companion", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RealImageLoader implements ImageLoader {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AtomicBoolean f1793Wwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Interceptor> f1794Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ComponentRegistry f1795Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy f1796Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy f1797Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RequestService f1798Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SystemCallbacks f1799Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CoroutineScope f1800Wwwwwwwwwwwwwwwwwwwwwwwww = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(Dispatchers.getMain().getImmediate()).plus(new RealImageLoader$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key, this)));
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Logger f1801Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageLoaderOptions f1802Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ComponentRegistry f1803Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EventListener.Factory f1804Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy<Call.Factory> f1805Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy<DiskCache> f1806Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy<MemoryCache> f1807Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DefaultRequestOptions f1808Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f1809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcoil/RealImageLoader$Companion;", "", "()V", "REQUEST_TYPE_ENQUEUE", "", "REQUEST_TYPE_EXECUTE", "TAG", "", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RealImageLoader(@NotNull Context context, @NotNull DefaultRequestOptions defaultRequestOptions, @NotNull Lazy<? extends MemoryCache> lazy, @NotNull Lazy<? extends DiskCache> lazy2, @NotNull Lazy<? extends Call.Factory> lazy3, @NotNull EventListener.Factory factory, @NotNull ComponentRegistry componentRegistry, @NotNull ImageLoaderOptions imageLoaderOptions, @Nullable Logger logger) {
        this.f1809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f1808Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = defaultRequestOptions;
        this.f1807Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = lazy;
        this.f1806Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = lazy2;
        this.f1805Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = lazy3;
        this.f1804Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = factory;
        this.f1803Wwwwwwwwwwwwwwwwwwwwwwwwwwww = componentRegistry;
        this.f1802Wwwwwwwwwwwwwwwwwwwwwwwwwww = imageLoaderOptions;
        this.f1801Wwwwwwwwwwwwwwwwwwwwwwwwww = logger;
        SystemCallbacks systemCallbacks = new SystemCallbacks(this, context, imageLoaderOptions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f1799Wwwwwwwwwwwwwwwwwwwwwwww = systemCallbacks;
        RequestService requestService = new RequestService(this, systemCallbacks, logger);
        this.f1798Wwwwwwwwwwwwwwwwwwwwwww = requestService;
        this.f1797Wwwwwwwwwwwwwwwwwwwwww = lazy;
        this.f1796Wwwwwwwwwwwwwwwwwwwww = lazy2;
        this.f1795Wwwwwwwwwwwwwwwwwwww = componentRegistry.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new HttpUrlMapper(), HttpUrl.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new StringMapper(), String.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FileUriMapper(), Uri.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ResourceUriMapper(), Uri.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ResourceIntMapper(), Integer.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ByteArrayMapper(), byte[].class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new UriKeyer(), Uri.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FileKeyer(imageLoaderOptions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), File.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new HttpUriFetcher.Factory(lazy3, lazy2, imageLoaderOptions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), Uri.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FileFetcher.Factory(), File.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new AssetUriFetcher.Factory(), Uri.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ContentUriFetcher.Factory(), Uri.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ResourceUriFetcher.Factory(), Uri.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new DrawableFetcher.Factory(), Drawable.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new BitmapFetcher.Factory(), Bitmap.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ByteBufferFetcher.Factory(), ByteBuffer.class).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new BitmapFactoryDecoder.Factory(imageLoaderOptions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), imageLoaderOptions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f1794Wwwwwwwwwwwwwwwwwww = CollectionsKt.plus((Collection<? extends EngineInterceptor>) getComponents().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), new EngineInterceptor(this, requestService, logger));
        this.f1793Wwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
        systemCallbacks.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(int i) {
        MemoryCache value;
        Lazy<MemoryCache> lazy = this.f1807Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (lazy != null && (value = lazy.getValue()) != null) {
            value.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0045, code lost:
        if (r8 != null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Wwwwwwwwwwwwwwwwwwwwwwww(coil.request.SuccessResult r7, coil.target.Target r8, coil.EventListener r9) {
        /*
            r6 = this;
            coil.request.ImageRequest r0 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            coil.decode.DataSource r1 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            coil.util.Logger r2 = r6.f1801Wwwwwwwwwwwwwwwwwwwwwwwwww
            if (r2 == 0) goto L41
            int r3 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r4 = 4
            if (r3 > r4) goto L41
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = coil.util.Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)
            r3.append(r5)
            java.lang.String r5 = " Successful ("
            r3.append(r5)
            java.lang.String r1 = r1.name()
            r3.append(r1)
            java.lang.String r1 = ") - "
            r3.append(r1)
            java.lang.Object r1 = r0.Wwwwwwwwwwwwwwwwwwwwww()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r3 = 0
            java.lang.String r5 = "RealImageLoader"
            r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5, r4, r1, r3)
        L41:
            boolean r1 = r8 instanceof coil.transition.TransitionTarget
            if (r1 != 0) goto L48
            if (r8 == 0) goto L74
            goto L5b
        L48:
            coil.request.ImageRequest r1 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            coil.transition.Transition$Factory r1 = r1.Kkkkkkkkkkkkkkkkk()
            r2 = r8
            coil.transition.TransitionTarget r2 = (coil.transition.TransitionTarget) r2
            coil.transition.Transition r1 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2, r7)
            boolean r2 = r1 instanceof coil.transition.NoneTransition
            if (r2 == 0) goto L63
        L5b:
            android.graphics.drawable.Drawable r1 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r8.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)
            goto L74
        L63:
            coil.request.ImageRequest r8 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r9.Wwwwwwwwwwwwwwwwwwwww(r8, r1)
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            coil.request.ImageRequest r8 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r9.Wwwwwwwwwwwwwwwwww(r8, r1)
        L74:
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r7)
            coil.request.ImageRequest$Listener r8 = r0.Wwwwwwww()
            if (r8 == 0) goto L80
            r8.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r7)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.RealImageLoader.Wwwwwwwwwwwwwwwwwwwwwwww(coil.request.SuccessResult, coil.target.Target, coil.EventListener):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        if (r8 != null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(coil.request.ErrorResult r7, coil.target.Target r8, coil.EventListener r9) {
        /*
            r6 = this;
            coil.request.ImageRequest r0 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            coil.util.Logger r1 = r6.f1801Wwwwwwwwwwwwwwwwwwwwwwwwww
            if (r1 == 0) goto L36
            int r2 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r3 = 4
            if (r2 > r3) goto L36
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "🚨 Failed - "
            r2.append(r4)
            java.lang.Object r4 = r0.Wwwwwwwwwwwwwwwwwwwwww()
            r2.append(r4)
            java.lang.String r4 = " - "
            r2.append(r4)
            java.lang.Throwable r4 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r2.append(r4)
            java.lang.String r2 = r2.toString()
            r4 = 0
            java.lang.String r5 = "RealImageLoader"
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5, r3, r2, r4)
        L36:
            boolean r1 = r8 instanceof coil.transition.TransitionTarget
            if (r1 != 0) goto L3d
            if (r8 == 0) goto L69
            goto L50
        L3d:
            coil.request.ImageRequest r1 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            coil.transition.Transition$Factory r1 = r1.Kkkkkkkkkkkkkkkkk()
            r2 = r8
            coil.transition.TransitionTarget r2 = (coil.transition.TransitionTarget) r2
            coil.transition.Transition r1 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2, r7)
            boolean r2 = r1 instanceof coil.transition.NoneTransition
            if (r2 == 0) goto L58
        L50:
            android.graphics.drawable.Drawable r1 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r8.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1)
            goto L69
        L58:
            coil.request.ImageRequest r8 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r9.Wwwwwwwwwwwwwwwwwwwww(r8, r1)
            r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            coil.request.ImageRequest r8 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r9.Wwwwwwwwwwwwwwwwww(r8, r1)
        L69:
            r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r7)
            coil.request.ImageRequest$Listener r8 = r0.Wwwwwwww()
            if (r8 == 0) goto L75
            r8.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0, r7)
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.RealImageLoader.Wwwwwwwwwwwwwwwwwwwwwwwww(coil.request.ErrorResult, coil.target.Target, coil.EventListener):void");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(ImageRequest imageRequest, EventListener eventListener) {
        Logger logger = this.f1801Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (logger != null && logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 4) {
            logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("RealImageLoader", 4, "🏗  Cancelled - " + imageRequest.Wwwwwwwwwwwwwwwwwwwwww(), null);
        }
        eventListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest);
        ImageRequest.Listener Wwwwwwww2 = imageRequest.Wwwwwwww();
        if (Wwwwwwww2 != null) {
            Wwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest);
        }
    }

    @Nullable
    public final Logger Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1801Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public DefaultRequestOptions Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1808Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:1|(2:3|(16:5|6|(1:(4:(1:(7:11|12|13|14|(1:16)(2:20|(1:22))|17|18)(2:35|36))(13:37|38|39|40|41|42|43|44|45|46|47|(5:50|14|(0)(0)|17|18)|49)|24|25|(3:27|28|29)(2:30|31))(3:60|61|62))(4:93|94|95|(2:97|(3:99|(1:101)|49)(13:102|64|65|(3:67|(1:69)(1:85)|(9:71|(1:73)(1:84)|74|(1:76)|77|(1:79)|80|(9:82|41|42|43|44|45|46|47|(0))|49))|86|(0)(0)|74|(0)|77|(0)|80|(0)|49))(2:103|104))|63|64|65|(0)|86|(0)(0)|74|(0)|77|(0)|80|(0)|49))|107|6|(0)(0)|63|64|65|(0)|86|(0)(0)|74|(0)|77|(0)|80|(0)|49|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x010a, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x010b, code lost:
        r6 = r2;
        r4 = r5;
        r5 = r8;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ff A[Catch: all -> 0x010a, TryCatch #5 {all -> 0x010a, blocks: (B:45:0x00f9, B:47:0x00ff, B:49:0x0105, B:54:0x0112, B:57:0x011a, B:59:0x012c, B:61:0x0132, B:62:0x0135, B:64:0x013e, B:65:0x0141, B:58:0x0128), top: B:109:0x00f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011a A[Catch: all -> 0x010a, TryCatch #5 {all -> 0x010a, blocks: (B:45:0x00f9, B:47:0x00ff, B:49:0x0105, B:54:0x0112, B:57:0x011a, B:59:0x012c, B:61:0x0132, B:62:0x0135, B:64:0x013e, B:65:0x0141, B:58:0x0128), top: B:109:0x00f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0128 A[Catch: all -> 0x010a, TryCatch #5 {all -> 0x010a, blocks: (B:45:0x00f9, B:47:0x00ff, B:49:0x0105, B:54:0x0112, B:57:0x011a, B:59:0x012c, B:61:0x0132, B:62:0x0135, B:64:0x013e, B:65:0x0141, B:58:0x0128), top: B:109:0x00f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0132 A[Catch: all -> 0x010a, TryCatch #5 {all -> 0x010a, blocks: (B:45:0x00f9, B:47:0x00ff, B:49:0x0105, B:54:0x0112, B:57:0x011a, B:59:0x012c, B:61:0x0132, B:62:0x0135, B:64:0x013e, B:65:0x0141, B:58:0x0128), top: B:109:0x00f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013e A[Catch: all -> 0x010a, TryCatch #5 {all -> 0x010a, blocks: (B:45:0x00f9, B:47:0x00ff, B:49:0x0105, B:54:0x0112, B:57:0x011a, B:59:0x012c, B:61:0x0132, B:62:0x0135, B:64:0x013e, B:65:0x0141, B:58:0x0128), top: B:109:0x00f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0191 A[Catch: all -> 0x004b, TryCatch #6 {all -> 0x004b, blocks: (B:14:0x0046, B:76:0x018b, B:78:0x0191, B:79:0x019c, B:81:0x01a0), top: B:111:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x019c A[Catch: all -> 0x004b, TryCatch #6 {all -> 0x004b, blocks: (B:14:0x0046, B:76:0x018b, B:78:0x0191, B:79:0x019c, B:81:0x01a0), top: B:111:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01c2 A[Catch: all -> 0x01d3, TRY_LEAVE, TryCatch #3 {all -> 0x01d3, blocks: (B:90:0x01be, B:92:0x01c2, B:97:0x01d5, B:98:0x01d8), top: B:106:0x01be }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01d5 A[Catch: all -> 0x01d3, TRY_ENTER, TryCatch #3 {all -> 0x01d3, blocks: (B:90:0x01be, B:92:0x01c2, B:97:0x01d5, B:98:0x01d8), top: B:106:0x01be }] */
    @androidx.annotation.MainThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(coil.request.ImageRequest r20, int r21, kotlin.coroutines.Continuation<? super coil.request.ImageResult> r22) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.RealImageLoader.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(coil.request.ImageRequest, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // coil.ImageLoader
    @Nullable
    public MemoryCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (MemoryCache) this.f1797Wwwwwwwwwwwwwwwwwwwwww.getValue();
    }

    @Override // coil.ImageLoader
    @Nullable
    public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest, @NotNull Continuation<? super ImageResult> continuation) {
        return CoroutineScopeKt.coroutineScope(new RealImageLoader$execute$2(imageRequest, this, null), continuation);
    }

    @Override // coil.ImageLoader
    @NotNull
    public Disposable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ImageRequest imageRequest) {
        Deferred<? extends ImageResult> async$default = BuildersKt.async$default(this.f1800Wwwwwwwwwwwwwwwwwwwwwwwww, null, null, new RealImageLoader$enqueue$job$1(this, imageRequest, null), 3, null);
        if (imageRequest.Kkkkkkkkkkkkkkkkkkkk() instanceof ViewTarget) {
            return Utils.Wwwwwwwwwwwwwwwwwwwwww(((ViewTarget) imageRequest.Kkkkkkkkkkkkkkkkkkkk()).getView()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(async$default);
        }
        return new OneShotDisposable(async$default);
    }

    @Override // coil.ImageLoader
    @NotNull
    public ComponentRegistry getComponents() {
        return this.f1795Wwwwwwwwwwwwwwwwwwww;
    }
}
