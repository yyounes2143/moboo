package okhttp3.internal.ws;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.common.net.HttpHeaders;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import okhttp3.Call;
import okhttp3.Protocol;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.ws.WebSocketReader;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0015\u0018\u0000 k2\u00020\u00012\u00020\u0002:\u0005lkmnoJ\u0013\u0010\u0005\u001a\u00020\u0004*\u00020\u0003H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\tJ!\u0010\u000f\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0007¢\u0006\u0004\b\u0017\u0010\tJ\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001bH\u0016¢\u0006\u0004\b \u0010\u001eJ\u0017\u0010!\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001bH\u0016¢\u0006\u0004\b!\u0010\u001eJ\u001f\u0010%\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u0011H\u0016¢\u0006\u0004\b%\u0010&J!\u0010'\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"2\b\u0010$\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b'\u0010(J'\u0010+\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"2\b\u0010$\u001a\u0004\u0018\u00010\u00112\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0004H\u0000¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0007H\u0000¢\u0006\u0004\b/\u0010\tJ#\u00103\u001a\u00020\u00072\n\u00102\u001a\u000600j\u0002`12\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b3\u00104R\u001a\u00109\u001a\u0002058\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001d\u00106\u001a\u0004\b7\u00108R\u0014\u0010<\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010;R\u0014\u0010>\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010=R\u0018\u0010@\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010?R\u0016\u0010A\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010=R\u0014\u0010D\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0018\u0010L\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010P\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u0018\u0010S\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010RR\u0016\u0010V\u001a\u00020T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010UR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010CR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010WR\u001a\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u001b0X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010YR\u001a\u0010\\\u001a\b\u0012\u0004\u0012\u00020[0X8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u0010YR\u0016\u0010]\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010=R\u0016\u0010_\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010^R\u0016\u0010a\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010`R\u0018\u0010b\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010CR\u0016\u0010c\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010^R\u0016\u0010d\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010`R\u0016\u0010f\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010`R\u0016\u0010h\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010`R\u0016\u0010j\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010^¨\u0006p"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket;", "Lokhttp3/WebSocket;", "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "Lokhttp3/internal/ws/WebSocketExtensions;", "", "Wwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/ws/WebSocketExtensions;)Z", "", "Wwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Response;", "response", "Lokhttp3/internal/connection/Exchange;", "exchange", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;Lokhttp3/internal/connection/Exchange;)V", "", "name", "Lokhttp3/internal/ws/RealWebSocket$Streams;", "streams", "Wwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lokhttp3/internal/ws/RealWebSocket$Streams;)V", "Wwwwwwwwwwwwwwwww", "text", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Lokio/ByteString;", "bytes", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/ByteString;)V", "payload", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "code", "reason", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILjava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwww", "(ILjava/lang/String;)Z", "", "cancelAfterCloseMillis", "Wwwwwwwwwwwwwwwwwwwwww", "(ILjava/lang/String;J)Z", "Wwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwww", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "Wwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Exception;Lokhttp3/Response;)V", "Lokhttp3/WebSocketListener;", "Lokhttp3/WebSocketListener;", "Wwwwwwwwwwwwwwwwwwww", "()Lokhttp3/WebSocketListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Ljava/util/Random;", "Ljava/util/Random;", "random", "J", "pingIntervalMillis", "Lokhttp3/internal/ws/WebSocketExtensions;", "extensions", "minimumDeflateSize", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "key", "Lokhttp3/Call;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/internal/concurrent/Task;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/concurrent/Task;", "writerTask", "Lokhttp3/internal/ws/WebSocketReader;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/ws/WebSocketReader;", "reader", "Lokhttp3/internal/ws/WebSocketWriter;", "Lokhttp3/internal/ws/WebSocketWriter;", "writer", "Lokhttp3/internal/concurrent/TaskQueue;", "Lokhttp3/internal/concurrent/TaskQueue;", "taskQueue", "Lokhttp3/internal/ws/RealWebSocket$Streams;", "Ljava/util/ArrayDeque;", "Ljava/util/ArrayDeque;", "pongQueue", "", "messageAndCloseQueue", "queueSize", "Z", "enqueuedClose", "I", "receivedCloseCode", "receivedCloseReason", "failed", "sentPingCount", "Wwwwwwwwwwwww", "receivedPingCount", "Wwwwwwwwwwww", "receivedPongCount", "Wwwwwwwwwww", "awaitingPong", "Companion", "Close", "Message", "Streams", "WriterTask", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class RealWebSocket implements WebSocket, WebSocketReader.FrameCallback {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public static final List<Protocol> f13020Wwwwwwwwww = CollectionsKt.listOf(Protocol.HTTP_1_1);

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public boolean f13021Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public int f13022Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public int f13023Wwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public int f13024Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13025Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f13026Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13027Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13028Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13029Wwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayDeque<Object> f13030Wwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayDeque<ByteString> f13031Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Streams f13032Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f13033Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public TaskQueue f13034Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public WebSocketWriter f13035Wwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public WebSocketReader f13036Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Task f13037Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Call f13038Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f13039Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public WebSocketExtensions f13041Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Random f13043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WebSocketListener f13044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\f\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0011\u001a\u0004\b\n\u0010\u0012¨\u0006\u0013"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket$Close;", "", "", "code", "Lokio/ByteString;", "reason", "", "cancelAfterCloseMillis", "<init>", "(ILokio/ByteString;J)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/ByteString;", "J", "()J", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Close {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f13051Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ByteString f13052Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13053Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Close(int i, @Nullable ByteString byteString, long j) {
            this.f13053Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f13052Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = byteString;
            this.f13051Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        }

        @Nullable
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13052Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13053Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13051Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket$Companion;", "", "()V", "CANCEL_AFTER_CLOSE_MILLIS", "", "DEFAULT_MINIMUM_DEFLATE_SIZE", "MAX_QUEUE_SIZE", "ONLY_HTTP1", "", "Lokhttp3/Protocol;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\u0003\u0010\n¨\u0006\f"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket$Message;", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "formatOpcode", "Lokio/ByteString;", "Lokio/ByteString;", "()Lokio/ByteString;", "data", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Message {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ByteString f13054Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13055Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13055Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13054Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\b&\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket$Streams;", "Ljava/io/Closeable;", "", "client", "Lokio/BufferedSource;", "source", "Lokio/BufferedSink;", "sink", "<init>", "(ZLokio/BufferedSource;Lokio/BufferedSink;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "Wwwwwwwwwwwwww", "()Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/BufferedSink;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static abstract class Streams implements Closeable {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final BufferedSink f13056Wwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final BufferedSource f13057Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f13058Wwwwwwwwwwwwwwwwwwwwwwwww;

        public Streams(boolean z, @NotNull BufferedSource bufferedSource, @NotNull BufferedSink bufferedSink) {
            this.f13058Wwwwwwwwwwwwwwwwwwwwwwwww = z;
            this.f13057Wwwwwwwwwwwwwwwwwwwwwwww = bufferedSource;
            this.f13056Wwwwwwwwwwwwwwwwwwwwwww = bufferedSink;
        }

        @NotNull
        public final BufferedSource Wwwwwwwwwwwwww() {
            return this.f13057Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13056Wwwwwwwwwwwwwwwwwwwwwww;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13058Wwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket$WriterTask;", "Lokhttp3/internal/concurrent/Task;", "<init>", "(Lokhttp3/internal/ws/RealWebSocket;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class WriterTask extends Task {
        public WriterTask() {
            super(Intrinsics.stringPlus(RealWebSocket.this.f13033Wwwwwwwwwwwwwwwwwwwwwww, " writer"), false, 2, null);
        }

        @Override // okhttp3.internal.concurrent.Task
        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            try {
                if (RealWebSocket.this.Wwwwwwwwwwwwwww()) {
                    return 0L;
                }
                return -1L;
            } catch (IOException e) {
                RealWebSocket.this.Wwwwwwwwwwwwwwwwwwwww(e, null);
                return -1L;
            }
        }
    }

    public final void Wwwwwwwwwwwwww() {
        int i;
        synchronized (this) {
            try {
                if (this.f13025Wwwwwwwwwwwwwww) {
                    return;
                }
                WebSocketWriter webSocketWriter = this.f13035Wwwwwwwwwwwwwwwwwwwwwwwww;
                if (webSocketWriter == null) {
                    return;
                }
                if (this.f13021Wwwwwwwwwww) {
                    i = this.f13024Wwwwwwwwwwwwww;
                } else {
                    i = -1;
                }
                this.f13024Wwwwwwwwwwwwww++;
                this.f13021Wwwwwwwwwww = true;
                Unit unit = Unit.INSTANCE;
                if (i != -1) {
                    Wwwwwwwwwwwwwwwwwwwww(new SocketTimeoutException("sent ping but didn't receive pong within " + this.f13042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "ms (after " + (i - 1) + " successful ping/pongs)"), null);
                    return;
                }
                try {
                    webSocketWriter.Kkkkkkkkkkkkkkkkkkkkkkk(ByteString.EMPTY);
                } catch (IOException e) {
                    Wwwwwwwwwwwwwwwwwwwww(e, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean Wwwwwwwwwwwwwww() throws IOException {
        String str;
        WebSocketReader webSocketReader;
        WebSocketWriter webSocketWriter;
        int i;
        Streams streams;
        synchronized (this) {
            try {
                if (this.f13025Wwwwwwwwwwwwwww) {
                    return false;
                }
                WebSocketWriter webSocketWriter2 = this.f13035Wwwwwwwwwwwwwwwwwwwwwwwww;
                ByteString poll = this.f13031Wwwwwwwwwwwwwwwwwwwww.poll();
                Message message = null;
                if (poll == null) {
                    Object poll2 = this.f13030Wwwwwwwwwwwwwwwwwwww.poll();
                    if (poll2 instanceof Close) {
                        i = this.f13027Wwwwwwwwwwwwwwwww;
                        str = this.f13026Wwwwwwwwwwwwwwww;
                        if (i != -1) {
                            streams = this.f13032Wwwwwwwwwwwwwwwwwwwwww;
                            this.f13032Wwwwwwwwwwwwwwwwwwwwww = null;
                            webSocketReader = this.f13036Wwwwwwwwwwwwwwwwwwwwwwwwww;
                            this.f13036Wwwwwwwwwwwwwwwwwwwwwwwwww = null;
                            webSocketWriter = this.f13035Wwwwwwwwwwwwwwwwwwwwwwwww;
                            this.f13035Wwwwwwwwwwwwwwwwwwwwwwwww = null;
                            this.f13034Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
                        } else {
                            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ((Close) poll2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            TaskQueue taskQueue = this.f13034Wwwwwwwwwwwwwwwwwwwwwwww;
                            final String stringPlus = Intrinsics.stringPlus(this.f13033Wwwwwwwwwwwwwwwwwwwwwww, " cancel");
                            taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(stringPlus, true, this) { // from class: okhttp3.internal.ws.RealWebSocket$writeOneFrame$lambda-8$$inlined$execute$default$1

                                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                                public final /* synthetic */ RealWebSocket f13048Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

                                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                                public final /* synthetic */ boolean f13049Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                                public final /* synthetic */ String f13050Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(stringPlus, r2);
                                    this.f13050Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = stringPlus;
                                    this.f13049Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                                    this.f13048Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                                }

                                @Override // okhttp3.internal.concurrent.Task
                                public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                                    this.f13048Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww();
                                    return -1L;
                                }
                            }, TimeUnit.MILLISECONDS.toNanos(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
                            streams = null;
                            webSocketReader = null;
                            webSocketWriter = null;
                        }
                    } else if (poll2 == null) {
                        return false;
                    } else {
                        str = null;
                        webSocketReader = null;
                        webSocketWriter = null;
                        i = -1;
                        streams = null;
                    }
                    message = poll2;
                } else {
                    str = null;
                    webSocketReader = null;
                    webSocketWriter = null;
                    i = -1;
                    streams = null;
                }
                Unit unit = Unit.INSTANCE;
                try {
                    if (poll != null) {
                        webSocketWriter2.Kkkkkkkkkkkkkkkkkkkkkk(poll);
                    } else if (message instanceof Message) {
                        Message message2 = message;
                        webSocketWriter2.Wwwwwwwwwwwwww(message2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), message2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        synchronized (this) {
                            this.f13029Wwwwwwwwwwwwwwwwwww -= message2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().size();
                        }
                    } else if (message instanceof Close) {
                        Close close = (Close) message;
                        webSocketWriter2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(close.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), close.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        if (streams != null) {
                            this.f13044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i, str);
                        }
                    } else {
                        throw new AssertionError();
                    }
                    if (streams != null) {
                        Util.Wwwwwwwwwwwwwwwwwwwwww(streams);
                    }
                    if (webSocketReader != null) {
                        Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketReader);
                    }
                    if (webSocketWriter == null) {
                        return true;
                    }
                    Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketWriter);
                    return true;
                } catch (Throwable th) {
                    if (streams != null) {
                        Util.Wwwwwwwwwwwwwwwwwwwwww(streams);
                    }
                    if (webSocketReader != null) {
                        Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketReader);
                    }
                    if (webSocketWriter != null) {
                        Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketWriter);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void Wwwwwwwwwwwwwwww() {
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        Task task = this.f13037Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (task != null) {
            TaskQueue.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f13034Wwwwwwwwwwwwwwwwwwwwwwww, task, 0L, 2, null);
        }
    }

    public final void Wwwwwwwwwwwwwwwww() throws IOException {
        while (this.f13027Wwwwwwwwwwwwwwwww == -1) {
            this.f13036Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwww(WebSocketExtensions webSocketExtensions) {
        if (webSocketExtensions.f13062Wwwwwwwwwwwwwwwwwwwwwwwwwwwww || webSocketExtensions.f13066Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return false;
        }
        if (webSocketExtensions.f13064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null && !new IntRange(8, 15).contains(webSocketExtensions.f13064Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.intValue())) {
            return false;
        }
        return true;
    }

    public final void Wwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Streams streams) throws IOException {
        Throwable th;
        WebSocketExtensions webSocketExtensions = this.f13041Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (this) {
            try {
                this.f13033Wwwwwwwwwwwwwwwwwwwwwww = str;
                this.f13032Wwwwwwwwwwwwwwwwwwwwww = streams;
                this.f13035Wwwwwwwwwwwwwwwwwwwwwwwww = new WebSocketWriter(streams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), streams.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f13043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, webSocketExtensions.f13067Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, webSocketExtensions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(streams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), this.f13040Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                this.f13037Wwwwwwwwwwwwwwwwwwwwwwwwwww = new WriterTask();
                long j = this.f13042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (j != 0) {
                    try {
                        final long nanos = TimeUnit.MILLISECONDS.toNanos(j);
                        TaskQueue taskQueue = this.f13034Wwwwwwwwwwwwwwwwwwwwwwww;
                        final String stringPlus = Intrinsics.stringPlus(str, " ping");
                        taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(stringPlus, this, nanos) { // from class: okhttp3.internal.ws.RealWebSocket$initReaderAndWriter$lambda-3$$inlined$schedule$1

                            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                            public final /* synthetic */ long f13045Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

                            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                            public final /* synthetic */ RealWebSocket f13046Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                            public final /* synthetic */ String f13047Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(stringPlus, false, 2, null);
                                this.f13047Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = stringPlus;
                                this.f13046Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                                this.f13045Wwwwwwwwwwwwwwwwwwwwwwwwwwww = nanos;
                            }

                            @Override // okhttp3.internal.concurrent.Task
                            public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                                this.f13046Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww();
                                return this.f13045Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            }
                        }, nanos);
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                if (!this.f13030Wwwwwwwwwwwwwwwwwwww.isEmpty()) {
                    Wwwwwwwwwwwwwwww();
                }
                Unit unit = Unit.INSTANCE;
                this.f13036Wwwwwwwwwwwwwwwwwwwwwwwwww = new WebSocketReader(streams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), streams.Wwwwwwwwwwwwww(), this, webSocketExtensions.f13067Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, webSocketExtensions.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(!streams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    @NotNull
    public final WebSocketListener Wwwwwwwwwwwwwwwwwwww() {
        return this.f13044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(@NotNull Exception exc, @Nullable Response response) {
        synchronized (this) {
            if (this.f13025Wwwwwwwwwwwwwww) {
                return;
            }
            this.f13025Wwwwwwwwwwwwwww = true;
            Streams streams = this.f13032Wwwwwwwwwwwwwwwwwwwwww;
            this.f13032Wwwwwwwwwwwwwwwwwwwwww = null;
            WebSocketReader webSocketReader = this.f13036Wwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13036Wwwwwwwwwwwwwwwwwwwwwwwwww = null;
            WebSocketWriter webSocketWriter = this.f13035Wwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13035Wwwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f13034Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
            Unit unit = Unit.INSTANCE;
            try {
                this.f13044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, exc, response);
                if (streams != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwwww(streams);
                }
                if (webSocketReader != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketReader);
                }
                if (webSocketWriter == null) {
                    return;
                }
                Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketWriter);
            } catch (Throwable th) {
                if (streams != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwwww(streams);
                }
                if (webSocketReader != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketReader);
                }
                if (webSocketWriter != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketWriter);
                }
                throw th;
            }
        }
    }

    public final synchronized boolean Wwwwwwwwwwwwwwwwwwwwww(int i, @Nullable String str, long j) {
        ByteString byteString;
        try {
            WebSocketProtocol.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
            if (str != null) {
                byteString = ByteString.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                if (byteString.size() > 123) {
                    throw new IllegalArgumentException(Intrinsics.stringPlus("reason.size() > 123: ", str).toString());
                }
            } else {
                byteString = null;
            }
            if (!this.f13025Wwwwwwwwwwwwwww && !this.f13028Wwwwwwwwwwwwwwwwww) {
                this.f13028Wwwwwwwwwwwwwwwwww = true;
                this.f13030Wwwwwwwwwwwwwwwwwwww.add(new Close(i, byteString, j));
                Wwwwwwwwwwwwwwww();
                return true;
            }
            return false;
        } finally {
        }
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwww(int i, @Nullable String str) {
        return Wwwwwwwwwwwwwwwwwwwwww(i, str, 60000L);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response, @Nullable Exchange exchange) throws IOException {
        if (response.Kkkkkkkkkkkkkkkkkkkkkk() == 101) {
            String Kkkkkkkkkkkkkkkkk2 = Response.Kkkkkkkkkkkkkkkkk(response, "Connection", null, 2, null);
            if (StringsKt.equals(HttpHeaders.UPGRADE, Kkkkkkkkkkkkkkkkk2, true)) {
                String Kkkkkkkkkkkkkkkkk3 = Response.Kkkkkkkkkkkkkkkkk(response, HttpHeaders.UPGRADE, null, 2, null);
                if (StringsKt.equals("websocket", Kkkkkkkkkkkkkkkkk3, true)) {
                    String Kkkkkkkkkkkkkkkkk4 = Response.Kkkkkkkkkkkkkkkkk(response, HttpHeaders.SEC_WEBSOCKET_ACCEPT, null, 2, null);
                    String base64 = ByteString.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus(this.f13039Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11")).sha1().base64();
                    if (Intrinsics.areEqual(base64, Kkkkkkkkkkkkkkkkk4)) {
                        if (exchange != null) {
                            return;
                        }
                        throw new ProtocolException("Web Socket exchange missing: bad interceptor?");
                    }
                    throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + base64 + "' but was '" + ((Object) Kkkkkkkkkkkkkkkkk4) + '\'');
                }
                throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + ((Object) Kkkkkkkkkkkkkkkkk3) + '\'');
            }
            throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + ((Object) Kkkkkkkkkkkkkkkkk2) + '\'');
        }
        throw new ProtocolException("Expected HTTP 101 response but was '" + response.Kkkkkkkkkkkkkkkkkkkkkk() + ' ' + response.Kkkkkkkkkkkkkk() + '\'');
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f13038Wwwwwwwwwwwwwwwwwwwwwwwwwwww.cancel();
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull String str) {
        Streams streams;
        WebSocketReader webSocketReader;
        WebSocketWriter webSocketWriter;
        if (i != -1) {
            synchronized (this) {
                try {
                    if (this.f13027Wwwwwwwwwwwwwwwww == -1) {
                        this.f13027Wwwwwwwwwwwwwwwww = i;
                        this.f13026Wwwwwwwwwwwwwwww = str;
                        streams = null;
                        if (this.f13028Wwwwwwwwwwwwwwwwww && this.f13030Wwwwwwwwwwwwwwwwwwww.isEmpty()) {
                            Streams streams2 = this.f13032Wwwwwwwwwwwwwwwwwwwwww;
                            this.f13032Wwwwwwwwwwwwwwwwwwwwww = null;
                            webSocketReader = this.f13036Wwwwwwwwwwwwwwwwwwwwwwwwww;
                            this.f13036Wwwwwwwwwwwwwwwwwwwwwwwwww = null;
                            webSocketWriter = this.f13035Wwwwwwwwwwwwwwwwwwwwwwwww;
                            this.f13035Wwwwwwwwwwwwwwwwwwwwwwwww = null;
                            this.f13034Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
                            streams = streams2;
                        } else {
                            webSocketReader = null;
                            webSocketWriter = null;
                        }
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new IllegalStateException("already closed");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            try {
                this.f13044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i, str);
                if (streams != null) {
                    this.f13044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i, str);
                }
                if (streams != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwwww(streams);
                }
                if (webSocketReader != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketReader);
                }
                if (webSocketWriter == null) {
                    return;
                }
                Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketWriter);
                return;
            } catch (Throwable th2) {
                if (streams != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwwww(streams);
                }
                if (webSocketReader != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketReader);
                }
                if (webSocketWriter != null) {
                    Util.Wwwwwwwwwwwwwwwwwwwwww(webSocketWriter);
                }
                throw th2;
            }
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString) {
        this.f13022Wwwwwwwwwwww++;
        this.f13021Wwwwwwwwwww = false;
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString) {
        try {
            if (!this.f13025Wwwwwwwwwwwwwww && (!this.f13028Wwwwwwwwwwwwwwwwww || !this.f13030Wwwwwwwwwwwwwwwwwwww.isEmpty())) {
                this.f13031Wwwwwwwwwwwwwwwwwwwww.add(byteString);
                Wwwwwwwwwwwwwwww();
                this.f13023Wwwwwwwwwwwww++;
            }
        } finally {
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) throws IOException {
        this.f13044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, str);
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString) throws IOException {
        this.f13044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, byteString);
    }
}
