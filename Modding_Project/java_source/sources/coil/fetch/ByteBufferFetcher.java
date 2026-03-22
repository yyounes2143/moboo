package coil.fetch;

import coil.ImageLoader;
import coil.decode.DataSource;
import coil.decode.ImageSources;
import coil.fetch.Fetcher;
import coil.request.Options;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0001\u000eB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\t\u001a\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lcoil/fetch/ByteBufferFetcher;", "Lcoil/fetch/Fetcher;", "Ljava/nio/ByteBuffer;", "data", "Lcoil/request/Options;", "options", "<init>", "(Ljava/nio/ByteBuffer;Lcoil/request/Options;)V", "Lcoil/fetch/FetchResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/nio/ByteBuffer;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/Options;", "Factory", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ByteBufferFetcher implements Fetcher {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Options f1910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ByteBuffer f1911Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcoil/fetch/ByteBufferFetcher$Factory;", "Lcoil/fetch/Fetcher$Factory;", "Ljava/nio/ByteBuffer;", "<init>", "()V", "data", "Lcoil/request/Options;", "options", "Lcoil/ImageLoader;", "imageLoader", "Lcoil/fetch/Fetcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/nio/ByteBuffer;Lcoil/request/Options;Lcoil/ImageLoader;)Lcoil/fetch/Fetcher;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Factory implements Fetcher.Factory<ByteBuffer> {
        @Override // coil.fetch.Fetcher.Factory
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Fetcher Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteBuffer byteBuffer, @NotNull Options options, @NotNull ImageLoader imageLoader) {
            return new ByteBufferFetcher(byteBuffer, options);
        }
    }

    public ByteBufferFetcher(@NotNull ByteBuffer byteBuffer, @NotNull Options options) {
        this.f1911Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = byteBuffer;
        this.f1910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = options;
    }

    @Override // coil.fetch.Fetcher
    @Nullable
    public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Continuation<? super FetchResult> continuation) {
        try {
            Buffer buffer = new Buffer();
            buffer.write(this.f1911Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f1911Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.position(0);
            return new SourceResult(ImageSources.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer, this.f1910Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()), null, DataSource.MEMORY);
        } catch (Throwable th) {
            this.f1911Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.position(0);
            throw th;
        }
    }
}
