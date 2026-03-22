package okhttp3.internal.cache;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"okhttp3/internal/cache/CacheInterceptor$cacheWritingResponse$cacheWritingSource$1", "Lokio/Source;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Z", "cacheRequestClosed", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class CacheInterceptor$cacheWritingResponse$cacheWritingSource$1 implements Source, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ BufferedSink f12498Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ CacheRequest f12499Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ BufferedSource f12500Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12501Wwwwwwwwwwwwwwwwwwwwwwwww;

    public CacheInterceptor$cacheWritingResponse$cacheWritingSource$1(BufferedSource bufferedSource, CacheRequest cacheRequest, BufferedSink bufferedSink) {
        this.f12500Wwwwwwwwwwwwwwwwwwwwwwww = bufferedSource;
        this.f12499Wwwwwwwwwwwwwwwwwwwwwww = cacheRequest;
        this.f12498Wwwwwwwwwwwwwwwwwwwwww = bufferedSink;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f12501Wwwwwwwwwwwwwwwwwwwwwwwww && !Util.Wwwwwwwwwwwwwwww(this, 100, TimeUnit.MILLISECONDS)) {
            this.f12501Wwwwwwwwwwwwwwwwwwwwwwwww = true;
            this.f12499Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f12500Wwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer buffer, long j) throws IOException {
        try {
            long read = this.f12500Wwwwwwwwwwwwwwwwwwwwwwww.read(buffer, j);
            if (read == -1) {
                if (!this.f12501Wwwwwwwwwwwwwwwwwwwwwwwww) {
                    this.f12501Wwwwwwwwwwwwwwwwwwwwwwwww = true;
                    this.f12498Wwwwwwwwwwwwwwwwwwwwww.close();
                }
                return -1L;
            }
            buffer.Kkkkkkkkkkkkkkkkkkk(this.f12498Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), buffer.Kk() - read, read);
            this.f12498Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return read;
        } catch (IOException e) {
            if (!this.f12501Wwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f12501Wwwwwwwwwwwwwwwwwwwwwwwww = true;
                this.f12499Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            throw e;
        }
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f12500Wwwwwwwwwwwwwwwwwwwwwwww.timeout();
    }
}
