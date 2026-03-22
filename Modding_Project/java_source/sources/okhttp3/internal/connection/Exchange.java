package okhttp3.internal.connection;

import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.EventListener;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.ws.RealWebSocket;
import okio.Buffer;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0002PQB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u000e¢\u0006\u0004\b\u0018\u0010\u0017J\r\u0010\u0019\u001a\u00020\u000e¢\u0006\u0004\b\u0019\u0010\u0017J\u0017\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001a\u001a\u00020\u0011¢\u0006\u0004\b\u001c\u0010\u001dJ\u0015\u0010 \u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b#\u0010$J\r\u0010&\u001a\u00020%¢\u0006\u0004\b&\u0010'J\r\u0010(\u001a\u00020\u000e¢\u0006\u0004\b(\u0010\u0017J\r\u0010)\u001a\u00020\u000e¢\u0006\u0004\b)\u0010\u0017J\r\u0010*\u001a\u00020\u000e¢\u0006\u0004\b*\u0010\u0017J\r\u0010+\u001a\u00020\u000e¢\u0006\u0004\b+\u0010\u0017J9\u00103\u001a\u00028\u0000\"\n\b\u0000\u0010-*\u0004\u0018\u00010,2\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020\u00112\u0006\u00102\u001a\u00028\u0000¢\u0006\u0004\b3\u00104J\r\u00105\u001a\u00020\u000e¢\u0006\u0004\b5\u0010\u0017J\u0017\u00106\u001a\u00020\u000e2\u0006\u00102\u001a\u00020,H\u0002¢\u0006\u0004\b6\u00107R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b3\u00108\u001a\u0004\b9\u0010:R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b*\u0010;\u001a\u0004\b<\u0010=R\u001a\u0010\u0007\u001a\u00020\u00068\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0014\u0010>\u001a\u0004\b?\u0010@R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010AR$\u0010F\u001a\u00020\u00112\u0006\u0010B\u001a\u00020\u00118\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b\u0018\u0010C\u001a\u0004\bD\u0010ER$\u0010H\u001a\u00020\u00112\u0006\u0010B\u001a\u00020\u00118\u0000@BX\u0080\u000e¢\u0006\f\n\u0004\b\u0016\u0010C\u001a\u0004\bG\u0010ER\u001a\u0010M\u001a\u00020I8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b9\u0010J\u001a\u0004\bK\u0010LR\u0014\u0010O\u001a\u00020\u00118@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bN\u0010E¨\u0006R"}, d2 = {"Lokhttp3/internal/connection/Exchange;", "", "Lokhttp3/internal/connection/RealCall;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/EventListener;", "eventListener", "Lokhttp3/internal/connection/ExchangeFinder;", "finder", "Lokhttp3/internal/http/ExchangeCodec;", "codec", "<init>", "(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwww", "(Lokhttp3/Request;)V", "", "duplex", "Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;Z)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwww", "expectContinue", "Lokhttp3/Response$Builder;", "Wwwwwwwwwwwwwwwww", "(Z)Lokhttp3/Response$Builder;", "Lokhttp3/Response;", "response", "Wwwwwwwwwwwwwwww", "(Lokhttp3/Response;)V", "Lokhttp3/ResponseBody;", "Wwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)Lokhttp3/ResponseBody;", "Lokhttp3/internal/ws/RealWebSocket$Streams;", "Wwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/ws/RealWebSocket$Streams;", "Wwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/IOException;", ExifInterface.LONGITUDE_EAST, "", "bytesRead", "responseDone", "requestDone", "e", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JZZLjava/io/IOException;)Ljava/io/IOException;", "Wwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "(Ljava/io/IOException;)V", "Lokhttp3/internal/connection/RealCall;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/connection/RealCall;", "Lokhttp3/EventListener;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/EventListener;", "Lokhttp3/internal/connection/ExchangeFinder;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/connection/ExchangeFinder;", "Lokhttp3/internal/http/ExchangeCodec;", "<set-?>", "Z", "Wwwwwwwwwwwwwwwwwwwwww", "()Z", "isDuplex", "Wwwwwwwwwwwwwwwwwwwwwwww", "hasFailure", "Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/internal/connection/RealConnection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/connection/RealConnection;", "connection", "Wwwwwwwwwwwwwwwwwwwwwww", "isCoalescedConnection", "RequestBodySink", "ResponseBodySource", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Exchange {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealConnection f12624Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12625Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ExchangeCodec f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ExchangeFinder f12628Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final EventListener f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealCall f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\u000b\u001a\u00028\u0000\"\n\b\u0000\u0010\t*\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u0017R\u0016\u0010\u001f\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001a¨\u0006 "}, d2 = {"Lokhttp3/internal/connection/Exchange$RequestBodySink;", "Lokio/ForwardingSink;", "Lokio/Sink;", "delegate", "", "contentLength", "<init>", "(Lokhttp3/internal/connection/Exchange;Lokio/Sink;J)V", "Ljava/io/IOException;", ExifInterface.LONGITUDE_EAST, "e", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/IOException;)Ljava/io/IOException;", "Lokio/Buffer;", "source", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "close", "Wwwwwwwwwwwwwwwwwwwwwwww", "J", "", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "completed", "Wwwwwwwwwwwwwwwwwwwwww", "bytesReceived", "Wwwwwwwwwwwwwwwwwwwww", "closed", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class RequestBodySink extends ForwardingSink {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12632Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f12633Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12634Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f12635Wwwwwwwwwwwwwwwwwwwwwwww;

        public RequestBodySink(@NotNull Sink sink, long j) {
            super(sink);
            this.f12635Wwwwwwwwwwwwwwwwwwwwwwww = j;
        }

        private final <E extends IOException> E Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(E e) {
            if (this.f12634Wwwwwwwwwwwwwwwwwwwwwww) {
                return e;
            }
            this.f12634Wwwwwwwwwwwwwwwwwwwwwww = true;
            return (E) Exchange.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12633Wwwwwwwwwwwwwwwwwwwwww, false, true, e);
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) throws IOException {
            if (!this.f12632Wwwwwwwwwwwwwwwwwwwww) {
                long j2 = this.f12635Wwwwwwwwwwwwwwwwwwwwwwww;
                if (j2 != -1 && this.f12633Wwwwwwwwwwwwwwwwwwwwww + j > j2) {
                    throw new ProtocolException("expected " + this.f12635Wwwwwwwwwwwwwwwwwwwwwwww + " bytes but received " + (this.f12633Wwwwwwwwwwwwwwwwwwwwww + j));
                }
                try {
                    super.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
                    this.f12633Wwwwwwwwwwwwwwwwwwwwww += j;
                    return;
                } catch (IOException e) {
                    throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
                }
            }
            throw new IllegalStateException("closed");
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f12632Wwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            this.f12632Wwwwwwwwwwwwwwwwwwwww = true;
            long j = this.f12635Wwwwwwwwwwwwwwwwwwwwwwww;
            if (j != -1 && this.f12633Wwwwwwwwwwwwwwwwwwwwww != j) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            } catch (IOException e) {
                throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            }
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e) {
                throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            }
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ!\u0010\u0013\u001a\u00028\u0000\"\n\b\u0000\u0010\u0011*\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00028\u0000¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0018\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0016R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0016\u0010 \u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u001b¨\u0006!"}, d2 = {"Lokhttp3/internal/connection/Exchange$ResponseBodySource;", "Lokio/ForwardingSource;", "Lokio/Source;", "delegate", "", "contentLength", "<init>", "(Lokhttp3/internal/connection/Exchange;Lokio/Source;J)V", "Lokio/Buffer;", "sink", "byteCount", "read", "(Lokio/Buffer;J)J", "", "close", "()V", "Ljava/io/IOException;", ExifInterface.LONGITUDE_EAST, "e", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/IOException;)Ljava/io/IOException;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwww", "bytesReceived", "", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "invokeStartEvent", "Wwwwwwwwwwwwwwwwwwwwww", "completed", "Wwwwwwwwwwwwwwwwwwwww", "closed", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class ResponseBodySource extends ForwardingSource {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12637Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12638Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12639Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f12640Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f12641Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ResponseBodySource(@NotNull Source source, long j) {
            super(source);
            this.f12641Wwwwwwwwwwwwwwwwwwwwwwwww = j;
            this.f12639Wwwwwwwwwwwwwwwwwwwwwww = true;
            if (j == 0) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            }
        }

        public final <E extends IOException> E Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(E e) {
            if (this.f12638Wwwwwwwwwwwwwwwwwwwwww) {
                return e;
            }
            this.f12638Wwwwwwwwwwwwwwwwwwwwww = true;
            if (e == null && this.f12639Wwwwwwwwwwwwwwwwwwwwwww) {
                this.f12639Wwwwwwwwwwwwwwwwwwwwwww = false;
                Exchange.this.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwww(Exchange.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
            return (E) Exchange.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12640Wwwwwwwwwwwwwwwwwwwwwwww, true, false, e);
        }

        @Override // okio.ForwardingSource, okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f12637Wwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            this.f12637Wwwwwwwwwwwwwwwwwwwww = true;
            try {
                super.close();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            } catch (IOException e) {
                throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
            }
        }

        @Override // okio.ForwardingSource, okio.Source
        public long read(@NotNull Buffer buffer, long j) throws IOException {
            if (!this.f12637Wwwwwwwwwwwwwwwwwwwww) {
                try {
                    long read = delegate().read(buffer, j);
                    if (this.f12639Wwwwwwwwwwwwwwwwwwwwwww) {
                        this.f12639Wwwwwwwwwwwwwwwwwwwwwww = false;
                        Exchange.this.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwww(Exchange.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    }
                    if (read == -1) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                        return -1L;
                    }
                    long j2 = this.f12640Wwwwwwwwwwwwwwwwwwwwwwww + read;
                    long j3 = this.f12641Wwwwwwwwwwwwwwwwwwwwwwwww;
                    if (j3 != -1 && j2 > j3) {
                        throw new ProtocolException("expected " + this.f12641Wwwwwwwwwwwwwwwwwwwwwwwww + " bytes but received " + j2);
                    }
                    this.f12640Wwwwwwwwwwwwwwwwwwwwwwww = j2;
                    if (j2 == j3) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
                    }
                    return read;
                } catch (IOException e) {
                    throw Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
                }
            }
            throw new IllegalStateException("closed");
        }
    }

    public Exchange(@NotNull RealCall realCall, @NotNull EventListener eventListener, @NotNull ExchangeFinder exchangeFinder, @NotNull ExchangeCodec exchangeCodec) {
        this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = realCall;
        this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = eventListener;
        this.f12628Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = exchangeFinder;
        this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = exchangeCodec;
        this.f12624Wwwwwwwwwwwwwwwwwwwwwwwwwwww = exchangeCodec.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwww(@NotNull Request request) throws IOException {
        try {
            this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(request);
            this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, request);
        } catch (IOException e) {
            this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
            Wwwwwwwwwwwwww(e);
            throw e;
        }
    }

    public final void Wwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(-1L, true, true, null);
    }

    public final void Wwwwwwwwwwwwww(IOException iOException) {
        this.f12625Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        this.f12628Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(iOException);
        this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kkkkkkkkkkkkkkkkkkkkkkkk(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, iOException);
    }

    public final void Wwwwwwwwwwwwwww() {
        this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwww(@NotNull Response response) {
        this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, response);
    }

    @Nullable
    public final Response.Builder Wwwwwwwwwwwwwwwww(boolean z) throws IOException {
        try {
            Response.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwww(this);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } catch (IOException e) {
            this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
            Wwwwwwwwwwwwww(e);
            throw e;
        }
    }

    @NotNull
    public final ResponseBody Wwwwwwwwwwwwwwwwww(@NotNull Response response) throws IOException {
        try {
            String Kkkkkkkkkkkkkkkkk2 = Response.Kkkkkkkkkkkkkkkkk(response, "Content-Type", null, 2, null);
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response);
            return new RealResponseBody(Kkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new ResponseBodySource(this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)));
        } catch (IOException e) {
            this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
            Wwwwwwwwwwwwww(e);
            throw e;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwww() {
        this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(this, true, false, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwww() {
        this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwww();
    }

    @NotNull
    public final RealWebSocket.Streams Wwwwwwwwwwwwwwwwwwwww() throws SocketException {
        this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwww();
        return this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwww(this);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f12626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwww() {
        return !Intrinsics.areEqual(this.f12628Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(), this.f12624Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12625Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final ExchangeFinder Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12628Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final EventListener Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final RealConnection Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12624Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final RealCall Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        try {
            this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (IOException e) {
            this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
            Wwwwwwwwwwwwww(e);
            throw e;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        try {
            this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } catch (IOException e) {
            this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
            Wwwwwwwwwwwwww(e);
            throw e;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.cancel();
        this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(this, true, true, null);
    }

    @NotNull
    public final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request, boolean z) throws IOException {
        this.f12626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        long contentLength = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().contentLength();
        this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        return new RequestBodySink(this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request, contentLength), contentLength);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f12627Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.cancel();
    }

    public final <E extends IOException> E Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, boolean z, boolean z2, E e) {
        if (e != null) {
            Wwwwwwwwwwwwww(e);
        }
        if (z2) {
            if (e != null) {
                this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
            } else {
                this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, j);
            }
        }
        if (z) {
            if (e != null) {
                this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, e);
            } else {
                this.f12629Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwww(this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, j);
            }
        }
        return (E) this.f12630Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(this, z2, z, e);
    }
}
