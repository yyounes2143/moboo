package coil.network;

import coil.util.Utils;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Response;
import okio.BufferedSink;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rR\u001b\u0010\u0012\u001a\u00020\u000e8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u0011R\u001d\u0010\u0016\u001a\u0004\u0018\u00010\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0010\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u001c\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\u001e\u001a\u00020\u00178\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u0019\u001a\u0004\b\u0018\u0010\u001bR\u0017\u0010#\u001a\u00020\u001f8\u0006¢\u0006\f\n\u0004\b\u001a\u0010 \u001a\u0004\b!\u0010\"R\u0017\u0010'\u001a\u00020$8\u0006¢\u0006\f\n\u0004\b!\u0010%\u001a\u0004\b\u001d\u0010&¨\u0006("}, d2 = {"Lcoil/network/CacheResponse;", "", "Lokio/BufferedSource;", "source", "<init>", "(Lokio/BufferedSource;)V", "Lokhttp3/Response;", "response", "(Lokhttp3/Response;)V", "Lokio/BufferedSink;", "sink", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSink;)V", "Lokhttp3/CacheControl;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlin/Lazy;", "()Lokhttp3/CacheControl;", "cacheControl", "Lokhttp3/MediaType;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/MediaType;", "contentType", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "sentRequestAtMillis", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "receivedResponseAtMillis", "", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isTls", "Lokhttp3/Headers;", "Lokhttp3/Headers;", "()Lokhttp3/Headers;", "responseHeaders", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CacheResponse {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Headers f1979Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f1980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f1981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f1982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy f1983Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy f1984Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CacheResponse(@NotNull BufferedSource bufferedSource) {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f1984Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<CacheControl>() { // from class: coil.network.CacheResponse$cacheControl$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CacheControl invoke() {
                return CacheControl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CacheResponse.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        });
        this.f1983Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<MediaType>() { // from class: coil.network.CacheResponse$contentType$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final MediaType invoke() {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CacheResponse.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Type");
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    return MediaType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                return null;
            }
        });
        this.f1982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Long.parseLong(bufferedSource.Wwwwwwwwwwwwwwwwwwwwww());
        this.f1981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Long.parseLong(bufferedSource.Wwwwwwwwwwwwwwwwwwwwww());
        this.f1980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Integer.parseInt(bufferedSource.Wwwwwwwwwwwwwwwwwwwwww()) > 0;
        int parseInt = Integer.parseInt(bufferedSource.Wwwwwwwwwwwwwwwwwwwwww());
        Headers.Builder builder = new Headers.Builder();
        for (int i = 0; i < parseInt; i++) {
            Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(builder, bufferedSource.Wwwwwwwwwwwwwwwwwwwwww());
        }
        this.f1979Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull BufferedSink bufferedSink) {
        long j;
        bufferedSink.Wwwwwwwwwwwwwwwww(this.f1982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).writeByte(10);
        bufferedSink.Wwwwwwwwwwwwwwwww(this.f1981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).writeByte(10);
        if (this.f1980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            j = 1;
        } else {
            j = 0;
        }
        bufferedSink.Wwwwwwwwwwwwwwwww(j).writeByte(10);
        bufferedSink.Wwwwwwwwwwwwwwwww(this.f1979Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.size()).writeByte(10);
        int size = this.f1979Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        for (int i = 0; i < size; i++) {
            bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f1979Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i)).Wwwwwwwwwwwwwwwwwwwwwwwwww(": ").Wwwwwwwwwwwwwwwwwwwwwwwwww(this.f1979Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(i)).writeByte(10);
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1979Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final MediaType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (MediaType) this.f1983Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue();
    }

    @NotNull
    public final CacheControl Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (CacheControl) this.f1984Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue();
    }

    public CacheResponse(@NotNull Response response) {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f1984Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<CacheControl>() { // from class: coil.network.CacheResponse$cacheControl$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final CacheControl invoke() {
                return CacheControl.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CacheResponse.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        });
        this.f1983Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<MediaType>() { // from class: coil.network.CacheResponse$contentType$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final MediaType invoke() {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CacheResponse.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Type");
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    return MediaType.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
                return null;
            }
        });
        this.f1982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkk();
        this.f1981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkk();
        this.f1980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkkkkkkkk() != null;
        this.f1979Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkkkk();
    }
}
