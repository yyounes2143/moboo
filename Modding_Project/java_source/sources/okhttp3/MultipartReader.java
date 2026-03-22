package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00192\u00020\u0001:\u0003\u0019\u001a\u001bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0018\u001a\b\u0018\u00010\u0015R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Lokhttp3/MultipartReader;", "Ljava/io/Closeable;", "", "close", "()V", "", "maxResult", "Kkkkkkkkkkkkkkkkkkkkkk", "(J)J", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "source", "Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/ByteString;", "crlfDashDashBoundary", "", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "closed", "Lokhttp3/MultipartReader$PartSource;", "Wwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/MultipartReader$PartSource;", "currentPart", "Companion", "Part", "PartSource", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class MultipartReader implements Closeable, AutoCloseable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Options f12359Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public PartSource f12360Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12361Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ByteString f12362Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSource f12363Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/MultipartReader$Companion;", "", "<init>", "()V", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0001¢\u0006\u0004\b\u0003\u0010\u0004R\u0017\u0010\b\u001a\u00020\u00058\u0007¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/MultipartReader$Part;", "Ljava/io/Closeable;", "", "close", "()V", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "body", "()Lokio/BufferedSource;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Part implements Closeable, AutoCloseable {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final BufferedSource f12364Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f12364Wwwwwwwwwwwwwwwwwwwwwwwww.close();
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lokhttp3/MultipartReader$PartSource;", "Lokio/Source;", "", "close", "()V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Timeout;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class PartSource implements Source, AutoCloseable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ MultipartReader f12365Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Timeout f12366Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (Intrinsics.areEqual(this.f12365Wwwwwwwwwwwwwwwwwwwwwwww.f12360Wwwwwwwwwwwwwwwwwwwwww, this)) {
                this.f12365Wwwwwwwwwwwwwwwwwwwwwwww.f12360Wwwwwwwwwwwwwwwwwwwwww = null;
            }
        }

        @Override // okio.Source
        public long read(@NotNull Buffer buffer, long j) {
            long read;
            long j2;
            long read2;
            if (j >= 0) {
                if (Intrinsics.areEqual(this.f12365Wwwwwwwwwwwwwwwwwwwwwwww.f12360Wwwwwwwwwwwwwwwwwwwwww, this)) {
                    Timeout timeout = this.f12365Wwwwwwwwwwwwwwwwwwwwwwww.f12363Wwwwwwwwwwwwwwwwwwwwwwwww.timeout();
                    Timeout timeout2 = this.f12366Wwwwwwwwwwwwwwwwwwwwwwwww;
                    MultipartReader multipartReader = this.f12365Wwwwwwwwwwwwwwwwwwwwwwww;
                    long Wwwwwwwwwwwwwwwwwwwwwwwwww2 = timeout.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Timeout.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwww(), timeout.Wwwwwwwwwwwwwwwwwwwwwwwwww());
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                    if (timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            j2 = 0;
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Math.min(timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                        } else {
                            j2 = 0;
                        }
                        try {
                            long Kkkkkkkkkkkkkkkkkkkkkk2 = multipartReader.Kkkkkkkkkkkkkkkkkkkkkk(j);
                            if (Kkkkkkkkkkkkkkkkkkkkkk2 == j2) {
                                read2 = -1;
                            } else {
                                read2 = multipartReader.f12363Wwwwwwwwwwwwwwwwwwwwwwwww.read(buffer, Kkkkkkkkkkkkkkkkkkkkkk2);
                            }
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                            if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                            }
                            return read2;
                        } catch (Throwable th) {
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.NANOSECONDS);
                            if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                            }
                            throw th;
                        }
                    }
                    if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    }
                    try {
                        long Kkkkkkkkkkkkkkkkkkkkkk3 = multipartReader.Kkkkkkkkkkkkkkkkkkkkkk(j);
                        if (Kkkkkkkkkkkkkkkkkkkkkk3 == 0) {
                            read = -1;
                        } else {
                            read = multipartReader.f12363Wwwwwwwwwwwwwwwwwwwwwwwww.read(buffer, Kkkkkkkkkkkkkkkkkkkkkk3);
                        }
                        timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, timeUnit);
                        if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        return read;
                    } catch (Throwable th2) {
                        timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.NANOSECONDS);
                        if (timeout2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            timeout.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        }
                        throw th2;
                    }
                }
                throw new IllegalStateException("closed");
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.f12366Wwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    static {
        Options.Companion companion = Options.Companion;
        ByteString.Companion companion2 = ByteString.Companion;
        f12359Wwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("\r\n"), companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("--"), companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(" "), companion2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("\t"));
    }

    public final long Kkkkkkkkkkkkkkkkkkkkkk(long j) {
        this.f12363Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(this.f12362Wwwwwwwwwwwwwwwwwwwwwwww.size());
        long Kkkkkkkkkkkkkk2 = this.f12363Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kkkkkkkkkkkkkk(this.f12362Wwwwwwwwwwwwwwwwwwwwwwww);
        if (Kkkkkkkkkkkkkk2 == -1) {
            return Math.min(j, (this.f12363Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kk() - this.f12362Wwwwwwwwwwwwwwwwwwwwwwww.size()) + 1);
        }
        return Math.min(j, Kkkkkkkkkkkkkk2);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f12361Wwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        this.f12361Wwwwwwwwwwwwwwwwwwwwwww = true;
        this.f12360Wwwwwwwwwwwwwwwwwwwwww = null;
        this.f12363Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }
}
