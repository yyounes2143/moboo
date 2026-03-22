package okhttp3.internal.http2;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.time.InstantKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\b\b\u0018\u0000 Ä\u00012\u00020\u0001:\bÅ\u0001Ä\u0001Æ\u0001Ç\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J-\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0015\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0018\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0019\u0010\u0017J\u0017\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001aH\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010\u001e\u001a\u00020\r2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u001e\u0010\u001fJ-\u0010\"\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u000b2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0000¢\u0006\u0004\b\"\u0010#J/\u0010'\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u000b2\b\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010&\u001a\u00020\u001a¢\u0006\u0004\b'\u0010(J\u001f\u0010+\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010*\u001a\u00020)H\u0000¢\u0006\u0004\b+\u0010,J\u001f\u0010.\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010-\u001a\u00020)H\u0000¢\u0006\u0004\b.\u0010,J\u001f\u00100\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u001aH\u0000¢\u0006\u0004\b0\u00101J%\u00105\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u000b2\u0006\u00103\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u0006¢\u0006\u0004\b5\u00106J\r\u00107\u001a\u00020\u0012¢\u0006\u0004\b7\u00108J\u0015\u00109\u001a\u00020\u00122\u0006\u0010-\u001a\u00020)¢\u0006\u0004\b9\u0010:J\u000f\u0010;\u001a\u00020\u0012H\u0016¢\u0006\u0004\b;\u00108J)\u0010?\u001a\u00020\u00122\u0006\u0010<\u001a\u00020)2\u0006\u0010=\u001a\u00020)2\b\u0010>\u001a\u0004\u0018\u00010\u0010H\u0000¢\u0006\u0004\b?\u0010@J#\u0010D\u001a\u00020\u00122\b\b\u0002\u0010A\u001a\u00020\u000b2\b\b\u0002\u0010C\u001a\u00020BH\u0007¢\u0006\u0004\bD\u0010EJ\u0015\u0010G\u001a\u00020\u000b2\u0006\u0010F\u001a\u00020\u001a¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020\u0012H\u0000¢\u0006\u0004\bI\u00108J\u0017\u0010J\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0006H\u0000¢\u0006\u0004\bJ\u0010KJ%\u0010L\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0000¢\u0006\u0004\bL\u0010MJ-\u0010O\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010N\u001a\u00020\u000bH\u0000¢\u0006\u0004\bO\u0010PJ/\u0010S\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010R\u001a\u00020Q2\u0006\u0010&\u001a\u00020\u00062\u0006\u0010N\u001a\u00020\u000bH\u0000¢\u0006\u0004\bS\u0010TJ\u001f\u0010U\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010*\u001a\u00020)H\u0000¢\u0006\u0004\bU\u0010,R\u001a\u0010Z\u001a\u00020\u000b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\u001a\u0010`\u001a\u00020[8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_R&\u0010f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r0a8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bb\u0010c\u001a\u0004\bd\u0010eR\u001a\u0010l\u001a\u00020g8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bh\u0010i\u001a\u0004\bj\u0010kR\"\u0010s\u001a\u00020\u00068\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bm\u0010n\u001a\u0004\bo\u0010p\"\u0004\bq\u0010rR\"\u0010w\u001a\u00020\u00068\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bt\u0010n\u001a\u0004\bu\u0010p\"\u0004\bv\u0010rR\u0016\u0010y\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010WR\u0014\u0010C\u001a\u00020B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bz\u0010{R\u0014\u0010\u007f\u001a\u00020|8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b}\u0010~R\u0016\u0010\u0081\u0001\u001a\u00020|8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0080\u0001\u0010~R\u0016\u0010\u0083\u0001\u001a\u00020|8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010~R\u0018\u0010\u0087\u0001\u001a\u00030\u0084\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0019\u0010\u008a\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R\u0019\u0010\u008c\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u0089\u0001R\u0019\u0010\u008e\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u0089\u0001R\u0019\u0010\u0090\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0089\u0001R\u0019\u0010\u0092\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0089\u0001R\u0019\u0010\u0094\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0089\u0001R\u001d\u0010\u009a\u0001\u001a\u00030\u0095\u00018\u0006¢\u0006\u0010\n\u0006\b\u0096\u0001\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001R*\u0010\u009f\u0001\u001a\u00030\u0095\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009b\u0001\u0010\u0097\u0001\u001a\u0006\b\u009c\u0001\u0010\u0099\u0001\"\u0006\b\u009d\u0001\u0010\u009e\u0001R*\u0010¤\u0001\u001a\u00020\u001a2\u0007\u0010 \u0001\u001a\u00020\u001a8\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b¡\u0001\u0010\u0089\u0001\u001a\u0006\b¢\u0001\u0010£\u0001R*\u0010§\u0001\u001a\u00020\u001a2\u0007\u0010 \u0001\u001a\u00020\u001a8\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b¥\u0001\u0010\u0089\u0001\u001a\u0006\b¦\u0001\u0010£\u0001R*\u0010ª\u0001\u001a\u00020\u001a2\u0007\u0010 \u0001\u001a\u00020\u001a8\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b¨\u0001\u0010\u0089\u0001\u001a\u0006\b©\u0001\u0010£\u0001R*\u0010\u00ad\u0001\u001a\u00020\u001a2\u0007\u0010 \u0001\u001a\u00020\u001a8\u0006@BX\u0086\u000e¢\u0006\u0010\n\u0006\b«\u0001\u0010\u0089\u0001\u001a\u0006\b¬\u0001\u0010£\u0001R \u0010³\u0001\u001a\u00030®\u00018\u0000X\u0080\u0004¢\u0006\u0010\n\u0006\b¯\u0001\u0010°\u0001\u001a\u0006\b±\u0001\u0010²\u0001R\u001d\u0010¹\u0001\u001a\u00030´\u00018\u0006¢\u0006\u0010\n\u0006\bµ\u0001\u0010¶\u0001\u001a\u0006\b·\u0001\u0010¸\u0001R!\u0010¿\u0001\u001a\u00070º\u0001R\u00020\u00008\u0006¢\u0006\u0010\n\u0006\b»\u0001\u0010¼\u0001\u001a\u0006\b½\u0001\u0010¾\u0001R\u001e\u0010Ã\u0001\u001a\t\u0012\u0004\u0012\u00020\u00060À\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÁ\u0001\u0010Â\u0001¨\u0006È\u0001"}, d2 = {"Lokhttp3/internal/http2/Http2Connection;", "Ljava/io/Closeable;", "Lokhttp3/internal/http2/Http2Connection$Builder;", "builder", "<init>", "(Lokhttp3/internal/http2/Http2Connection$Builder;)V", "", "associatedStreamId", "", "Lokhttp3/internal/http2/Header;", "requestHeaders", "", "out", "Lokhttp3/internal/http2/Http2Stream;", "Illlllllllllllllllll", "(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;", "Ljava/io/IOException;", "e", "", "Kkkkkkk", "(Ljava/io/IOException;)V", "id", "Illlllllllllllllllllllllll", "(I)Lokhttp3/internal/http2/Http2Stream;", "streamId", "Illllllllllll", "", "read", "Illll", "(J)V", "Illllllllllllllllll", "(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;", "outFinished", "alternating", "Ill", "(IZLjava/util/List;)V", "Lokio/Buffer;", "buffer", "byteCount", "Illl", "(IZLokio/Buffer;J)V", "Lokhttp3/internal/http2/ErrorCode;", "errorCode", "IIllllllll", "(ILokhttp3/internal/http2/ErrorCode;)V", "statusCode", "IIlllllllll", "unacknowledgedBytesRead", "IIlllllll", "(IJ)V", "reply", "payload1", "payload2", "Il", "(ZII)V", "flush", "()V", "Illlllll", "(Lokhttp3/internal/http2/ErrorCode;)V", "close", "connectionCode", "streamCode", "cause", "Kkkkkkkk", "(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V", "sendConnectionPreface", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "Illllll", "(ZLokhttp3/internal/concurrent/TaskRunner;)V", "nowNs", "Illllllllllllllllllll", "(J)Z", "Illlllllllll", "Illlllllllllll", "(I)Z", "Illlllllllllllll", "(ILjava/util/List;)V", "inFinished", "Illllllllllllllll", "(ILjava/util/List;Z)V", "Lokio/BufferedSource;", "source", "Illlllllllllllllll", "(ILokio/BufferedSource;IZ)V", "Illllllllllllll", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Kkkkkk", "()Z", "client", "Lokhttp3/internal/http2/Http2Connection$Listener;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/http2/Http2Connection$Listener;", "Kkk", "()Lokhttp3/internal/http2/Http2Connection$Listener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "Illllllllllllllllllllllll", "()Ljava/util/Map;", "streams", "", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Kkkkk", "()Ljava/lang/String;", "connectionName", "Wwwwwwwwwwwwwwwwwwwww", "I", "Kkkk", "()I", "Illllllllll", "(I)V", "lastGoodStreamId", "Wwwwwwwwwwwwwwwwwwww", "Kk", "Illlllllll", "nextStreamId", "Wwwwwwwwwwwwwwwwwww", "isShutdown", "Wwwwwwwwwwwwwwwwww", "Lokhttp3/internal/concurrent/TaskRunner;", "Lokhttp3/internal/concurrent/TaskQueue;", "Wwwwwwwwwwwwwwwww", "Lokhttp3/internal/concurrent/TaskQueue;", "writerQueue", "Wwwwwwwwwwwwwwww", "pushQueue", "Wwwwwwwwwwwwwww", "settingsListenerQueue", "Lokhttp3/internal/http2/PushObserver;", "Wwwwwwwwwwwwww", "Lokhttp3/internal/http2/PushObserver;", "pushObserver", "Wwwwwwwwwwwww", "J", "intervalPingsSent", "Wwwwwwwwwwww", "intervalPongsReceived", "Wwwwwwwwwww", "degradedPingsSent", "Wwwwwwwwww", "degradedPongsReceived", "Wwwwwwwww", "awaitPongsReceived", "Wwwwwwww", "degradedPongDeadlineNs", "Lokhttp3/internal/http2/Settings;", "Wwwwwww", "Lokhttp3/internal/http2/Settings;", "Illllllllllllllllllllllllllll", "()Lokhttp3/internal/http2/Settings;", "okHttpSettings", "Wwwwww", "Illlllllllllllllllllllllllll", "Illllllll", "(Lokhttp3/internal/http2/Settings;)V", "peerSettings", "<set-?>", "Wwwww", "getReadBytesTotal", "()J", "readBytesTotal", "Wwww", "getReadBytesAcknowledged", "readBytesAcknowledged", "Www", "Illllllllllllllllllllll", "writeBytesTotal", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "Illlllllllllllllllllllll", "writeBytesMaximum", "Ljava/net/Socket;", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "Ljava/net/Socket;", "Illllllllllllllllllllllllll", "()Ljava/net/Socket;", "socket", "Lokhttp3/internal/http2/Http2Writer;", "Kkkkkkkkkkkkkkkkkkkkkkkk", "Lokhttp3/internal/http2/Http2Writer;", "Illlllllllllllllllllll", "()Lokhttp3/internal/http2/Http2Writer;", "writer", "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "Kkkkkkkkkkkkkkkkkkkkkkk", "Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "getReaderRunnable", "()Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "readerRunnable", "", "Kkkkkkkkkkkkkkkkkkkkkk", "Ljava/util/Set;", "currentPushRequests", "Companion", "Builder", "Listener", "ReaderRunnable", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Http2Connection implements Closeable, AutoCloseable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkk */
    public static final Settings f12795Kkkkkkkkkkkkkkkkkkkkk;
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkk */
    public final Set<Integer> f12796Kkkkkkkkkkkkkkkkkkkkkk;
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkk */
    public final ReaderRunnable f12797Kkkkkkkkkkkkkkkkkkkkkkk;
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkk */
    public final Http2Writer f12798Kkkkkkkkkkkkkkkkkkkkkkkk;
    @NotNull

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkk */
    public final Socket f12799Kkkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Kkkkkkkkkkkkkkkkkkkkkkkkkk */
    public long f12800Kkkkkkkkkkkkkkkkkkkkkkkkkk;

    /* renamed from: Www */
    public long f12801Www;

    /* renamed from: Wwww */
    public long f12802Wwww;

    /* renamed from: Wwwww */
    public long f12803Wwwww;
    @NotNull

    /* renamed from: Wwwwww */
    public Settings f12804Wwwwww;
    @NotNull

    /* renamed from: Wwwwwww */
    public final Settings f12805Wwwwwww;

    /* renamed from: Wwwwwwww */
    public long f12806Wwwwwwww;

    /* renamed from: Wwwwwwwww */
    public long f12807Wwwwwwwww;

    /* renamed from: Wwwwwwwwww */
    public long f12808Wwwwwwwwww;

    /* renamed from: Wwwwwwwwwww */
    public long f12809Wwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwww */
    public long f12810Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwww */
    public long f12811Wwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwww */
    public final PushObserver f12812Wwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwww */
    public final TaskQueue f12813Wwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwww */
    public final TaskQueue f12814Wwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwww */
    public final TaskQueue f12815Wwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww */
    public final TaskRunner f12816Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww */
    public boolean f12817Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww */
    public int f12818Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww */
    public int f12819Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww */
    public final String f12820Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww */
    public final Map<Integer, Http2Stream> f12821Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww */
    public final Listener f12822Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww */
    public final boolean f12823Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J5\u0010\u0010\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cR\"\u0010\u0003\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001e\u0010\"\u001a\u0004\b#\u0010$R\"\u0010\t\u001a\u00020\b8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u00100\u001a\u00020\n8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b%\u0010-\"\u0004\b.\u0010/R\"\u0010\r\u001a\u00020\f8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010\u000f\u001a\u00020\u000e8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\"\u0010\u0013\u001a\u00020\u00128\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b9\u0010=\u001a\u0004\b+\u0010>\"\u0004\b?\u0010@R\"\u0010F\u001a\u00020A8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b'\u0010B\u001a\u0004\b7\u0010C\"\u0004\bD\u0010ER\"\u0010\u0017\u001a\u00020\u00168\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b3\u0010G\u001a\u0004\b1\u0010H\"\u0004\bI\u0010J¨\u0006K"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Builder;", "", "", "client", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(ZLokhttp3/internal/concurrent/TaskRunner;)V", "Ljava/net/Socket;", "socket", "", "peerName", "Lokio/BufferedSource;", "source", "Lokio/BufferedSink;", "sink", "Wwwwwwwwwwwwwwww", "(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$Builder;", "Lokhttp3/internal/http2/Http2Connection$Listener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;", "", "pingIntervalMillis", "Wwwwwwwwwwwwwwwwwwwwwww", "(I)Lokhttp3/internal/http2/Http2Connection$Builder;", "Lokhttp3/internal/http2/Http2Connection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/http2/Http2Connection;", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "setClient$okhttp", "(Z)V", "Lokhttp3/internal/concurrent/TaskRunner;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/concurrent/TaskRunner;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/net/Socket;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/net/Socket;", "Wwwwwwwwwwwwwwwwww", "(Ljava/net/Socket;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "connectionName", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/BufferedSink;", "Wwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSink;)V", "Lokhttp3/internal/http2/Http2Connection$Listener;", "()Lokhttp3/internal/http2/Http2Connection$Listener;", "Wwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/Http2Connection$Listener;)V", "Lokhttp3/internal/http2/PushObserver;", "Lokhttp3/internal/http2/PushObserver;", "()Lokhttp3/internal/http2/PushObserver;", "setPushObserver$okhttp", "(Lokhttp3/internal/http2/PushObserver;)V", "pushObserver", "I", "()I", "Wwwwwwwwwwwwwwwwwwww", "(I)V", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww */
        public int f12881Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public BufferedSink f12884Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public BufferedSource f12885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public String f12886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Socket f12887Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public final TaskRunner f12888Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public boolean f12889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public Listener f12883Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Listener.f12890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww */
        public PushObserver f12882Wwwwwwwwwwwwwwwwwwwwwwwwwww = PushObserver.f12952Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder(boolean z, @NotNull TaskRunner taskRunner) {
            this.f12889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            this.f12888Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = taskRunner;
        }

        @JvmOverloads
        @NotNull
        public final Builder Wwwwwwwwwwwwwwww(@NotNull Socket socket, @NotNull String str, @NotNull BufferedSource bufferedSource, @NotNull BufferedSink bufferedSink) throws IOException {
            String stringPlus;
            Wwwwwwwwwwwwwwwwww(socket);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                stringPlus = Util.f12487Wwwwwwwwwwwwwwwwwwwwwwwwww + ' ' + str;
            } else {
                stringPlus = Intrinsics.stringPlus("MockWebServer ", str);
            }
            Wwwwwwwwwwwwwwwwwwwwww(stringPlus);
            Wwwwwwwwwwwwwwwww(bufferedSource);
            Wwwwwwwwwwwwwwwwwww(bufferedSink);
            return this;
        }

        public final void Wwwwwwwwwwwwwwwww(@NotNull BufferedSource bufferedSource) {
            this.f12885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bufferedSource;
        }

        public final void Wwwwwwwwwwwwwwwwww(@NotNull Socket socket) {
            this.f12887Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = socket;
        }

        public final void Wwwwwwwwwwwwwwwwwww(@NotNull BufferedSink bufferedSink) {
            this.f12884Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = bufferedSink;
        }

        public final void Wwwwwwwwwwwwwwwwwwww(int i) {
            this.f12881Wwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwwwwwwwwwww(@NotNull Listener listener) {
            this.f12883Wwwwwwwwwwwwwwwwwwwwwwwwwwww = listener;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            this.f12886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwww(int i) {
            Wwwwwwwwwwwwwwwwwwww(i);
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Listener listener) {
            Wwwwwwwwwwwwwwwwwwwww(listener);
            return this;
        }

        @NotNull
        public final TaskRunner Wwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12888Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            BufferedSource bufferedSource = this.f12885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (bufferedSource != null) {
                return bufferedSource;
            }
            return null;
        }

        @NotNull
        public final Socket Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            Socket socket = this.f12887Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (socket != null) {
                return socket;
            }
            return null;
        }

        @NotNull
        public final BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            BufferedSink bufferedSink = this.f12884Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (bufferedSink != null) {
                return bufferedSink;
            }
            return null;
        }

        @NotNull
        public final PushObserver Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12882Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12881Wwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Listener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12883Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            String str = this.f12886Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null) {
                return str;
            }
            return null;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Http2Connection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new Http2Connection(this);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0014\u0010\r\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\t8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000b¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Companion;", "", "<init>", "()V", "Lokhttp3/internal/http2/Settings;", "DEFAULT_SETTINGS", "Lokhttp3/internal/http2/Settings;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/http2/Settings;", "", "AWAIT_PING", "I", "DEGRADED_PING", "DEGRADED_PONG_TIMEOUT_NS", "INTERVAL_PING", "OKHTTP_CLIENT_WINDOW_SIZE", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Settings Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Http2Connection.f12795Kkkkkkkkkkkkkkkkkkkkk;
        }

        public Companion() {
        }
    }

    static {
        Settings settings = new Settings();
        settings.Wwwwwwwwwwwwwwwwwwwwwwwwwww(7, 65535);
        settings.Wwwwwwwwwwwwwwwwwwwwwwwwwww(5, 16384);
        f12795Kkkkkkkkkkkkkkkkkkkkk = settings;
    }

    public Http2Connection(@NotNull Builder builder) {
        int i;
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12823Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f12822Wwwwwwwwwwwwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12821Wwwwwwwwwwwwwwwwwwwwwww = new LinkedHashMap();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12820Wwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            i = 3;
        } else {
            i = 2;
        }
        this.f12818Wwwwwwwwwwwwwwwwwwww = i;
        TaskRunner Wwwwwwwwwwwwwwwwwwwwwwwww2 = builder.Wwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12816Wwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwww2;
        TaskQueue Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12815Wwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f12814Wwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12813Wwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12812Wwwwwwwwwwwwww = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Settings settings = new Settings();
        if (builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            settings.Wwwwwwwwwwwwwwwwwwwwwwwwwww(7, 16777216);
        }
        this.f12805Wwwwwww = settings;
        Settings settings2 = f12795Kkkkkkkkkkkkkkkkkkkkk;
        this.f12804Wwwwww = settings2;
        this.f12800Kkkkkkkkkkkkkkkkkkkkkkkkkk = settings2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12799Kkkkkkkkkkkkkkkkkkkkkkkkk = builder.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk = new Http2Writer(builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        this.f12797Kkkkkkkkkkkkkkkkkkkkkkk = new ReaderRunnable(new Http2Reader(builder.Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
        this.f12796Kkkkkkkkkkkkkkkkkkkkkk = new LinkedHashSet();
        if (builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos(builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(Intrinsics.stringPlus(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, " ping"), this, nanos) { // from class: okhttp3.internal.http2.Http2Connection$special$$inlined$schedule$1

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ long f12868Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ Http2Connection f12869Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ String f12870Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(r1, false, 2, null);
                    this.f12870Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                    this.f12869Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                    this.f12868Wwwwwwwwwwwwwwwwwwwwwwwwwwww = nanos;
                }

                @Override // okhttp3.internal.concurrent.Task
                public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                    long j;
                    long j2;
                    boolean z;
                    synchronized (this.f12869Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        long j3 = this.f12869Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.f12810Wwwwwwwwwwww;
                        j = this.f12869Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.f12811Wwwwwwwwwwwww;
                        if (j3 >= j) {
                            j2 = this.f12869Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.f12811Wwwwwwwwwwwww;
                            this.f12869Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.f12811Wwwwwwwwwwwww = j2 + 1;
                            z = false;
                        } else {
                            z = true;
                        }
                    }
                    if (z) {
                        this.f12869Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkk(null);
                        return -1L;
                    }
                    this.f12869Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Il(false, 1, 0);
                    return this.f12868Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
            }, nanos);
        }
    }

    public static /* synthetic */ void Illlll(Http2Connection http2Connection, boolean z, TaskRunner taskRunner, int i, Object obj) throws IOException {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            taskRunner = TaskRunner.INSTANCE;
        }
        http2Connection.Illllll(z, taskRunner);
    }

    public final void IIlllllll(int i, long j) {
        TaskQueue taskQueue = this.f12815Wwwwwwwwwwwwwwwww;
        taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(this.f12820Wwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.BEGIN_LIST + i + "] windowUpdate", true, this, i, j) { // from class: okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ long f12876Wwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ int f12877Wwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Http2Connection f12878Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ boolean f12879Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f12880Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(r1, r2);
                this.f12880Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                this.f12879Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                this.f12878Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                this.f12877Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
                this.f12876Wwwwwwwwwwwwwwwwwwwwwwwwww = j;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                try {
                    this.f12878Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Illlllllllllllllllllll().Kkkkkkkkkkkkkk(this.f12877Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12876Wwwwwwwwwwwwwwwwwwwwwwwwww);
                    return -1L;
                } catch (IOException e) {
                    this.f12878Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkk(e);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void IIllllllll(int i, @NotNull ErrorCode errorCode) {
        TaskQueue taskQueue = this.f12815Wwwwwwwwwwwwwwwww;
        taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(this.f12820Wwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.BEGIN_LIST + i + "] writeSynReset", true, this, i, errorCode) { // from class: okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ ErrorCode f12871Wwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ int f12872Wwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Http2Connection f12873Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ boolean f12874Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f12875Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(r1, r2);
                this.f12875Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                this.f12874Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                this.f12873Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                this.f12872Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
                this.f12871Wwwwwwwwwwwwwwwwwwwwwwwwww = errorCode;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                try {
                    this.f12873Wwwwwwwwwwwwwwwwwwwwwwwwwwww.IIlllllllll(this.f12872Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12871Wwwwwwwwwwwwwwwwwwwwwwwwww);
                    return -1L;
                } catch (IOException e) {
                    this.f12873Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkk(e);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void IIlllllllll(int i, @NotNull ErrorCode errorCode) throws IOException {
        this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk.Kkkkkkkkkkkkkkkk(i, errorCode);
    }

    public final void Il(boolean z, int i, int i2) {
        try {
            this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk.Kkkkkkkkkkkkkkkkkk(z, i, i2);
        } catch (IOException e) {
            Kkkkkkk(e);
        }
    }

    public final void Ill(int i, boolean z, @NotNull List<Header> list) throws IOException {
        this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk.Kkkkkkkkkkkkkkkkkkkk(z, i, list);
    }

    public final void Illl(int i, boolean z, @Nullable Buffer buffer, long j) throws IOException {
        int min;
        long j2;
        boolean z2;
        if (j == 0) {
            this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwww(z, i, buffer, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (Illllllllllllllllllllll() >= Illlllllllllllllllllllll()) {
                    try {
                        try {
                            if (Illllllllllllllllllllllll().containsKey(Integer.valueOf(i))) {
                                wait();
                            } else {
                                throw new IOException("stream closed");
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                min = Math.min((int) Math.min(j, Illlllllllllllllllllllll() - Illllllllllllllllllllll()), Illlllllllllllllllllll().Kkkkkkkkkkkkkkkkkkk());
                j2 = min;
                this.f12801Www = Illllllllllllllllllllll() + j2;
                Unit unit = Unit.INSTANCE;
            }
            j -= j2;
            Http2Writer http2Writer = this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk;
            if (z && j == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            http2Writer.Wwwwwwwwwwwwww(z2, i, buffer, min);
        }
    }

    public final synchronized void Illll(long j) {
        long j2 = this.f12803Wwwww + j;
        this.f12803Wwwww = j2;
        long j3 = j2 - this.f12802Wwww;
        if (j3 >= this.f12805Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() / 2) {
            IIlllllll(0, j3);
            this.f12802Wwww += j3;
        }
    }

    @JvmOverloads
    public final void Illllll(boolean z, @NotNull TaskRunner taskRunner) throws IOException {
        if (z) {
            this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk.Kkkkkkkkkkkkkkk(this.f12805Wwwwwww);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f12805Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 65535) {
                this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk.Kkkkkkkkkkkkkk(0, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - 65535);
            }
        }
        taskRunner.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(this.f12820Wwwwwwwwwwwwwwwwwwwwww, true, this.f12797Kkkkkkkkkkkkkkkkkkkkkkk) { // from class: okhttp3.internal.concurrent.TaskQueue$execute$1

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Function0<Unit> f12606Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ boolean f12607Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f12608Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(r1, r2);
                this.f12608Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                this.f12607Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                this.f12606Wwwwwwwwwwwwwwwwwwwwwwwwwwww = r3;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                this.f12606Wwwwwwwwwwwwwwwwwwwwwwwwwwww.invoke();
                return -1L;
            }
        }, 0L);
    }

    public final void Illlllll(@NotNull ErrorCode errorCode) throws IOException {
        synchronized (this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk) {
            Ref.IntRef intRef = new Ref.IntRef();
            synchronized (this) {
                if (this.f12817Wwwwwwwwwwwwwwwwwww) {
                    return;
                }
                this.f12817Wwwwwwwwwwwwwwwwwww = true;
                intRef.element = Kkkk();
                Unit unit = Unit.INSTANCE;
                Illlllllllllllllllllll().Kkkkkkkkkkkkkkkkkkkkk(intRef.element, errorCode, Util.f12495Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        }
    }

    public final void Illllllll(@NotNull Settings settings) {
        this.f12804Wwwwww = settings;
    }

    public final void Illlllllll(int i) {
        this.f12818Wwwwwwwwwwwwwwwwwwww = i;
    }

    public final void Illllllllll(int i) {
        this.f12819Wwwwwwwwwwwwwwwwwwwww = i;
    }

    public final void Illlllllllll() {
        synchronized (this) {
            long j = this.f12808Wwwwwwwwww;
            long j2 = this.f12809Wwwwwwwwwww;
            if (j < j2) {
                return;
            }
            this.f12809Wwwwwwwwwww = j2 + 1;
            this.f12806Wwwwwwww = System.nanoTime() + ((long) InstantKt.NANOS_PER_SECOND);
            Unit unit = Unit.INSTANCE;
            this.f12815Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(Intrinsics.stringPlus(this.f12820Wwwwwwwwwwwwwwwwwwwwww, " ping"), true, this) { // from class: okhttp3.internal.http2.Http2Connection$sendDegradedPingLater$$inlined$execute$default$1

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ Http2Connection f12865Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ boolean f12866Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ String f12867Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(r1, r2);
                    this.f12867Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                    this.f12866Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                    this.f12865Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                }

                @Override // okhttp3.internal.concurrent.Task
                public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                    this.f12865Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Il(false, 2, 0);
                    return -1L;
                }
            }, 0L);
        }
    }

    @Nullable
    public final synchronized Http2Stream Illllllllllll(int i) {
        Http2Stream remove;
        remove = this.f12821Wwwwwwwwwwwwwwwwwwwwwww.remove(Integer.valueOf(i));
        notifyAll();
        return remove;
    }

    public final boolean Illlllllllllll(int i) {
        if (i != 0 && (i & 1) == 0) {
            return true;
        }
        return false;
    }

    public final void Illllllllllllll(int i, @NotNull ErrorCode errorCode) {
        TaskQueue taskQueue = this.f12814Wwwwwwwwwwwwwwww;
        taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(this.f12820Wwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.BEGIN_LIST + i + "] onReset", true, this, i, errorCode) { // from class: okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ ErrorCode f12860Wwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ int f12861Wwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Http2Connection f12862Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ boolean f12863Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f12864Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(r1, r2);
                this.f12864Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                this.f12863Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                this.f12862Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                this.f12861Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
                this.f12860Wwwwwwwwwwwwwwwwwwwwwwwwww = errorCode;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                PushObserver pushObserver;
                Set set;
                pushObserver = this.f12862Wwwwwwwwwwwwwwwwwwwwwwwwwwww.f12812Wwwwwwwwwwwwww;
                pushObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12861Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12860Wwwwwwwwwwwwwwwwwwwwwwwwww);
                synchronized (this.f12862Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    set = this.f12862Wwwwwwwwwwwwwwwwwwwwwwwwwwww.f12796Kkkkkkkkkkkkkkkkkkkkkk;
                    set.remove(Integer.valueOf(this.f12861Wwwwwwwwwwwwwwwwwwwwwwwwwww));
                    Unit unit = Unit.INSTANCE;
                }
                return -1L;
            }
        }, 0L);
    }

    public final void Illlllllllllllll(int i, @NotNull List<Header> list) {
        Throwable th;
        synchronized (this) {
            try {
                if (this.f12796Kkkkkkkkkkkkkkkkkkkkkk.contains(Integer.valueOf(i))) {
                    try {
                        IIllllllll(i, ErrorCode.PROTOCOL_ERROR);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                this.f12796Kkkkkkkkkkkkkkkkkkkkkk.add(Integer.valueOf(i));
                TaskQueue taskQueue = this.f12814Wwwwwwwwwwwwwwww;
                taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(this.f12820Wwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.BEGIN_LIST + i + "] onRequest", true, this, i, list) { // from class: okhttp3.internal.http2.Http2Connection$pushRequestLater$$inlined$execute$default$1

                    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                    public final /* synthetic */ List f12855Wwwwwwwwwwwwwwwwwwwwwwwwww;

                    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                    public final /* synthetic */ int f12856Wwwwwwwwwwwwwwwwwwwwwwwwwww;

                    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                    public final /* synthetic */ Http2Connection f12857Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

                    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                    public final /* synthetic */ boolean f12858Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                    public final /* synthetic */ String f12859Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(r1, r2);
                        this.f12859Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                        this.f12858Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                        this.f12857Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                        this.f12856Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
                        this.f12855Wwwwwwwwwwwwwwwwwwwwwwwwww = list;
                    }

                    @Override // okhttp3.internal.concurrent.Task
                    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                        PushObserver pushObserver;
                        Set set;
                        pushObserver = this.f12857Wwwwwwwwwwwwwwwwwwwwwwwwwwww.f12812Wwwwwwwwwwwwww;
                        if (pushObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12856Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12855Wwwwwwwwwwwwwwwwwwwwwwwwww)) {
                            try {
                                this.f12857Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Illlllllllllllllllllll().Kkkkkkkkkkkkkkkk(this.f12856Wwwwwwwwwwwwwwwwwwwwwwwwwww, ErrorCode.CANCEL);
                                synchronized (this.f12857Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                                    set = this.f12857Wwwwwwwwwwwwwwwwwwwwwwwwwwww.f12796Kkkkkkkkkkkkkkkkkkkkkk;
                                    set.remove(Integer.valueOf(this.f12856Wwwwwwwwwwwwwwwwwwwwwwwwwww));
                                }
                                return -1L;
                            } catch (IOException unused) {
                                return -1L;
                            }
                        }
                        return -1L;
                    }
                }, 0L);
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public final void Illllllllllllllll(int i, @NotNull List<Header> list, boolean z) {
        TaskQueue taskQueue = this.f12814Wwwwwwwwwwwwwwww;
        taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(this.f12820Wwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.BEGIN_LIST + i + "] onHeaders", true, this, i, list, z) { // from class: okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ boolean f12849Wwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ List f12850Wwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ int f12851Wwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Http2Connection f12852Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ boolean f12853Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f12854Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(r1, r2);
                this.f12854Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                this.f12853Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                this.f12852Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                this.f12851Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
                this.f12850Wwwwwwwwwwwwwwwwwwwwwwwwww = list;
                this.f12849Wwwwwwwwwwwwwwwwwwwwwwwww = z;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                PushObserver pushObserver;
                Set set;
                pushObserver = this.f12852Wwwwwwwwwwwwwwwwwwwwwwwwwwww.f12812Wwwwwwwwwwwwww;
                boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pushObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12851Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12850Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f12849Wwwwwwwwwwwwwwwwwwwwwwwww);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    try {
                        this.f12852Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Illlllllllllllllllllll().Kkkkkkkkkkkkkkkk(this.f12851Wwwwwwwwwwwwwwwwwwwwwwwwwww, ErrorCode.CANCEL);
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 || this.f12849Wwwwwwwwwwwwwwwwwwwwwwwww) {
                    synchronized (this.f12852Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        set = this.f12852Wwwwwwwwwwwwwwwwwwwwwwwwwwww.f12796Kkkkkkkkkkkkkkkkkkkkkk;
                        set.remove(Integer.valueOf(this.f12851Wwwwwwwwwwwwwwwwwwwwwwwwwww));
                    }
                    return -1L;
                }
                return -1L;
            }
        }, 0L);
    }

    public final void Illlllllllllllllll(int i, @NotNull BufferedSource bufferedSource, int i2, boolean z) throws IOException {
        Buffer buffer = new Buffer();
        long j = i2;
        bufferedSource.Wwwwwwwwwwwwwwwwww(j);
        bufferedSource.read(buffer, j);
        this.f12814Wwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(this.f12820Wwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.BEGIN_LIST + i + "] onData", true, this, i, buffer, i2, z) { // from class: okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ boolean f12842Wwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ int f12843Wwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Buffer f12844Wwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ int f12845Wwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ Http2Connection f12846Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ boolean f12847Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public final /* synthetic */ String f12848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(r1, r2);
                this.f12848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                this.f12847Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                this.f12846Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                this.f12845Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
                this.f12844Wwwwwwwwwwwwwwwwwwwwwwwwww = buffer;
                this.f12843Wwwwwwwwwwwwwwwwwwwwwwwww = i2;
                this.f12842Wwwwwwwwwwwwwwwwwwwwwwww = z;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                PushObserver pushObserver;
                Set set;
                try {
                    pushObserver = this.f12846Wwwwwwwwwwwwwwwwwwwwwwwwwwww.f12812Wwwwwwwwwwwwww;
                    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pushObserver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12845Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12844Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f12843Wwwwwwwwwwwwwwwwwwwwwwwww, this.f12842Wwwwwwwwwwwwwwwwwwwwwwww);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        this.f12846Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Illlllllllllllllllllll().Kkkkkkkkkkkkkkkk(this.f12845Wwwwwwwwwwwwwwwwwwwwwwwwwww, ErrorCode.CANCEL);
                    }
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 || this.f12842Wwwwwwwwwwwwwwwwwwwwwwww) {
                        synchronized (this.f12846Wwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                            set = this.f12846Wwwwwwwwwwwwwwwwwwwwwwwwwwww.f12796Kkkkkkkkkkkkkkkkkkkkkk;
                            set.remove(Integer.valueOf(this.f12845Wwwwwwwwwwwwwwwwwwwwwwwwwww));
                        }
                        return -1L;
                    }
                    return -1L;
                } catch (IOException unused) {
                    return -1L;
                }
            }
        }, 0L);
    }

    @NotNull
    public final Http2Stream Illllllllllllllllll(@NotNull List<Header> list, boolean z) throws IOException {
        return Illlllllllllllllllll(0, list, z);
    }

    public final Http2Stream Illlllllllllllllllll(int i, List<Header> list, boolean z) throws IOException {
        Throwable th;
        boolean z2 = true;
        boolean z3 = !z;
        synchronized (this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk) {
            try {
                try {
                    synchronized (this) {
                        try {
                            if (Kk() > 1073741823) {
                                try {
                                    Illlllll(ErrorCode.REFUSED_STREAM);
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            }
                            try {
                                if (!this.f12817Wwwwwwwwwwwwwwwwwww) {
                                    int Kk = Kk();
                                    Illlllllll(Kk() + 2);
                                    Http2Stream http2Stream = new Http2Stream(Kk, this, z3, false, null);
                                    if (z && Illllllllllllllllllllll() < Illlllllllllllllllllllll() && http2Stream.Wwwwwwwwwwwwwwwww() < http2Stream.Wwwwwwwwwwwwwwwwww()) {
                                        z2 = false;
                                    }
                                    if (http2Stream.Wwwwwwwwwwwwww()) {
                                        Illllllllllllllllllllllll().put(Integer.valueOf(Kk), http2Stream);
                                    }
                                    Unit unit = Unit.INSTANCE;
                                    if (i == 0) {
                                        Illlllllllllllllllllll().Kkkkkkkkkkkkkkkkkkkk(z3, Kk, list);
                                    } else if (!Kkkkkk()) {
                                        Illlllllllllllllllllll().Kkkkkkkkkkkkkkkkk(i, Kk, list);
                                    } else {
                                        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                                    }
                                    if (z2) {
                                        this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk.flush();
                                    }
                                    return http2Stream;
                                }
                                throw new ConnectionShutdownException();
                            } catch (Throwable th3) {
                                th = th3;
                                th = th;
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    throw th;
                }
            } catch (Throwable th6) {
                th = th6;
                throw th;
            }
        }
    }

    public final synchronized boolean Illllllllllllllllllll(long j) {
        if (this.f12817Wwwwwwwwwwwwwwwwwww) {
            return false;
        }
        if (this.f12808Wwwwwwwwww < this.f12809Wwwwwwwwwww) {
            if (j >= this.f12806Wwwwwwww) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public final Http2Writer Illlllllllllllllllllll() {
        return this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk;
    }

    public final long Illllllllllllllllllllll() {
        return this.f12801Www;
    }

    public final long Illlllllllllllllllllllll() {
        return this.f12800Kkkkkkkkkkkkkkkkkkkkkkkkkk;
    }

    @NotNull
    public final Map<Integer, Http2Stream> Illllllllllllllllllllllll() {
        return this.f12821Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final synchronized Http2Stream Illlllllllllllllllllllllll(int i) {
        return this.f12821Wwwwwwwwwwwwwwwwwwwwwww.get(Integer.valueOf(i));
    }

    @NotNull
    public final Socket Illllllllllllllllllllllllll() {
        return this.f12799Kkkkkkkkkkkkkkkkkkkkkkkkk;
    }

    @NotNull
    public final Settings Illlllllllllllllllllllllllll() {
        return this.f12804Wwwwww;
    }

    @NotNull
    public final Settings Illllllllllllllllllllllllllll() {
        return this.f12805Wwwwwww;
    }

    public final int Kk() {
        return this.f12818Wwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Listener Kkk() {
        return this.f12822Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Kkkk() {
        return this.f12819Wwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final String Kkkkk() {
        return this.f12820Wwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Kkkkkk() {
        return this.f12823Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Kkkkkkk(IOException iOException) {
        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
        Kkkkkkkk(errorCode, errorCode, iOException);
    }

    public final void Kkkkkkkk(@NotNull ErrorCode errorCode, @NotNull ErrorCode errorCode2, @Nullable IOException iOException) {
        int i;
        Object[] objArr;
        if (Util.f12488Wwwwwwwwwwwwwwwwwwwwwwwwwww && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        try {
            Illlllll(errorCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            try {
                if (!Illllllllllllllllllllllll().isEmpty()) {
                    objArr = Illllllllllllllllllllllll().values().toArray(new Http2Stream[0]);
                    if (objArr != null) {
                        Illllllllllllllllllllllll().clear();
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    }
                } else {
                    objArr = null;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) objArr;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(errorCode2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            Illlllllllllllllllllll().close();
        } catch (IOException unused3) {
        }
        try {
            Illllllllllllllllllllllllll().close();
        } catch (IOException unused4) {
        }
        this.f12815Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
        this.f12814Wwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
        this.f12813Wwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Kkkkkkkk(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void flush() throws IOException {
        this.f12798Kkkkkkkkkkkkkkkkkkkkkkkk.flush();
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0010\b\u0086\u0004\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\b\u0010\tJ/\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J5\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\f2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010 \u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u001d\u0010\"\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\"\u0010!J\u000f\u0010#\u001a\u00020\u0003H\u0016¢\u0006\u0004\b#\u0010\tJ'\u0010'\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020\f2\u0006\u0010&\u001a\u00020\fH\u0016¢\u0006\u0004\b'\u0010(J'\u0010,\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u001f\u00100\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101J/\u00105\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u00102\u001a\u00020\f2\u0006\u00103\u001a\u00020\f2\u0006\u00104\u001a\u00020\nH\u0016¢\u0006\u0004\b5\u00106J-\u00109\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\u0006\u00107\u001a\u00020\f2\f\u00108\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0016¢\u0006\u0004\b9\u0010:R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004¢\u0006\f\n\u0004\b,\u0010;\u001a\u0004\b<\u0010=¨\u0006>"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;", "Lokhttp3/internal/http2/Http2Reader$Handler;", "Lkotlin/Function0;", "", "Lokhttp3/internal/http2/Http2Reader;", "reader", "<init>", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V", "Wwwwwwwwwwwwwwwwwwwwwww", "()V", "", "inFinished", "", "streamId", "Lokio/BufferedSource;", "source", SessionDescription.ATTR_LENGTH, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZILokio/BufferedSource;I)V", "associatedStreamId", "", "Lokhttp3/internal/http2/Header;", "headerBlock", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZIILjava/util/List;)V", "Lokhttp3/internal/http2/ErrorCode;", "errorCode", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(ILokhttp3/internal/http2/ErrorCode;)V", "clearPrevious", "Lokhttp3/internal/http2/Settings;", "settings", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZLokhttp3/internal/http2/Settings;)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "ack", "payload1", "payload2", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZII)V", "lastGoodStreamId", "Lokio/ByteString;", "debugData", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V", "", "windowSizeIncrement", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IJ)V", "streamDependency", "weight", "exclusive", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(IIIZ)V", "promisedStreamId", "requestHeaders", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IILjava/util/List;)V", "Lokhttp3/internal/http2/Http2Reader;", "getReader$okhttp", "()Lokhttp3/internal/http2/Http2Reader;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class ReaderRunnable implements Http2Reader.Handler, Function0<Unit> {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww */
        public final Http2Reader f12892Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ReaderRunnable(@NotNull Http2Reader http2Reader) {
            Http2Connection.this = r1;
            this.f12892Wwwwwwwwwwwwwwwwwwwwwwwww = http2Reader;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwww() {
            ErrorCode errorCode = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    this.f12892Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww(this);
                    while (this.f12892Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(false, this)) {
                    }
                    try {
                        Http2Connection.this.Kkkkkkkk(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
                        Util.Wwwwwwwwwwwwwwwwwwwwww(this.f12892Wwwwwwwwwwwwwwwwwwwwwwwww);
                    } catch (IOException e) {
                        e = e;
                        ErrorCode errorCode2 = ErrorCode.PROTOCOL_ERROR;
                        Http2Connection.this.Kkkkkkkk(errorCode2, errorCode2, e);
                        Util.Wwwwwwwwwwwwwwwwwwwwww(this.f12892Wwwwwwwwwwwwwwwwwwwwwwwww);
                    }
                } catch (Throwable th) {
                    th = th;
                    Http2Connection.this.Kkkkkkkk(errorCode, errorCode, null);
                    Util.Wwwwwwwwwwwwwwwwwwwwww(this.f12892Wwwwwwwwwwwwwwwwwwwwwwwww);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
            } catch (Throwable th2) {
                th = th2;
                Http2Connection.this.Kkkkkkkk(errorCode, errorCode, null);
                Util.Wwwwwwwwwwwwwwwwwwwwww(this.f12892Wwwwwwwwwwwwwwwwwwwwwwwww);
                throw th;
            }
        }

        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v2, types: [T, okhttp3.internal.http2.Settings] */
        /* JADX WARN: Type inference failed for: r13v3 */
        public final void Wwwwwwwwwwwwwwwwwwwwwwww(boolean z, @NotNull Settings settings) {
            ?? r13;
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            int i;
            Http2Stream[] http2StreamArr;
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            Http2Writer Illlllllllllllllllllll = Http2Connection.this.Illlllllllllllllllllll();
            Http2Connection http2Connection = Http2Connection.this;
            synchronized (Illlllllllllllllllllll) {
                synchronized (http2Connection) {
                    Settings Illlllllllllllllllllllllllll = http2Connection.Illlllllllllllllllllllllllll();
                    if (z) {
                        r13 = settings;
                    } else {
                        Settings settings2 = new Settings();
                        settings2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Illlllllllllllllllllllllllll);
                        settings2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(settings);
                        r13 = settings2;
                    }
                    objectRef.element = r13;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = r13.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - Illlllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    i = 0;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 0 && !http2Connection.Illllllllllllllllllllllll().isEmpty()) {
                        Object[] array = http2Connection.Illllllllllllllllllllllll().values().toArray(new Http2Stream[0]);
                        if (array != null) {
                            http2StreamArr = (Http2Stream[]) array;
                            http2Connection.Illllllll((Settings) objectRef.element);
                            http2Connection.f12813Wwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(Intrinsics.stringPlus(http2Connection.Kkkkk(), " onSettings"), true, http2Connection, objectRef) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$applyAndAckSettings$lambda-7$lambda-6$$inlined$execute$default$1

                                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                                public final /* synthetic */ Ref.ObjectRef f12824Wwwwwwwwwwwwwwwwwwwwwwwwwww;

                                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                                public final /* synthetic */ Http2Connection f12825Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

                                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                                public final /* synthetic */ boolean f12826Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                                public final /* synthetic */ String f12827Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(r1, r2);
                                    this.f12827Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                                    this.f12826Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                                    this.f12825Wwwwwwwwwwwwwwwwwwwwwwwwwwww = http2Connection;
                                    this.f12824Wwwwwwwwwwwwwwwwwwwwwwwwwww = objectRef;
                                }

                                @Override // okhttp3.internal.concurrent.Task
                                public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                                    this.f12825Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12825Wwwwwwwwwwwwwwwwwwwwwwwwwwww, (Settings) this.f12824Wwwwwwwwwwwwwwwwwwwwwwwwwww.element);
                                    return -1L;
                                }
                            }, 0L);
                            Unit unit = Unit.INSTANCE;
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                        }
                    }
                    http2StreamArr = null;
                    http2Connection.Illllllll((Settings) objectRef.element);
                    http2Connection.f12813Wwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(Intrinsics.stringPlus(http2Connection.Kkkkk(), " onSettings"), true, http2Connection, objectRef) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$applyAndAckSettings$lambda-7$lambda-6$$inlined$execute$default$1

                        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                        public final /* synthetic */ Ref.ObjectRef f12824Wwwwwwwwwwwwwwwwwwwwwwwwwww;

                        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                        public final /* synthetic */ Http2Connection f12825Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

                        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                        public final /* synthetic */ boolean f12826Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                        public final /* synthetic */ String f12827Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(r1, r2);
                            this.f12827Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                            this.f12826Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                            this.f12825Wwwwwwwwwwwwwwwwwwwwwwwwwwww = http2Connection;
                            this.f12824Wwwwwwwwwwwwwwwwwwwwwwwwwww = objectRef;
                        }

                        @Override // okhttp3.internal.concurrent.Task
                        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                            this.f12825Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12825Wwwwwwwwwwwwwwwwwwwwwwwwwwww, (Settings) this.f12824Wwwwwwwwwwwwwwwwwwwwwwwwwww.element);
                            return -1L;
                        }
                    }, 0L);
                    Unit unit2 = Unit.INSTANCE;
                }
                try {
                    http2Connection.Illlllllllllllllllllll().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Settings) objectRef.element);
                } catch (IOException e) {
                    http2Connection.Kkkkkkk(e);
                }
                Unit unit3 = Unit.INSTANCE;
            }
            if (http2StreamArr != null) {
                int length = http2StreamArr.length;
                while (i < length) {
                    Http2Stream http2Stream = http2StreamArr[i];
                    i++;
                    synchronized (http2Stream) {
                        http2Stream.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        Unit unit4 = Unit.INSTANCE;
                    }
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void Wwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull ErrorCode errorCode, @NotNull ByteString byteString) {
            int i2;
            Object[] array;
            byteString.size();
            Http2Connection http2Connection = Http2Connection.this;
            synchronized (http2Connection) {
                i2 = 0;
                array = http2Connection.Illllllllllllllllllllllll().values().toArray(new Http2Stream[0]);
                if (array != null) {
                    http2Connection.f12817Wwwwwwwwwwwwwwwwwww = true;
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
            }
            Http2Stream[] http2StreamArr = (Http2Stream[]) array;
            int length = http2StreamArr.length;
            while (i2 < length) {
                Http2Stream http2Stream = http2StreamArr[i2];
                i2++;
                if (http2Stream.Wwwwwwwwwwwwwwwwwwwwwwwww() > i && http2Stream.Wwwwwwwwwwwwwww()) {
                    http2Stream.Wwwwwwwwww(ErrorCode.REFUSED_STREAM);
                    Http2Connection.this.Illllllllllll(http2Stream.Wwwwwwwwwwwwwwwwwwwwwwwww());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull ErrorCode errorCode) {
            if (Http2Connection.this.Illlllllllllll(i)) {
                Http2Connection.this.Illllllllllllll(i, errorCode);
                return;
            }
            Http2Stream Illllllllllll = Http2Connection.this.Illllllllllll(i);
            if (Illllllllllll == null) {
                return;
            }
            Illllllllllll.Wwwwwwwwww(errorCode);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, int i, int i2) {
            if (z) {
                Http2Connection http2Connection = Http2Connection.this;
                synchronized (http2Connection) {
                    try {
                        if (i == 1) {
                            http2Connection.f12810Wwwwwwwwwwww++;
                        } else if (i == 2) {
                            http2Connection.f12808Wwwwwwwwww++;
                        } else {
                            if (i == 3) {
                                http2Connection.f12807Wwwwwwwww++;
                                http2Connection.notifyAll();
                            }
                            Unit unit = Unit.INSTANCE;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            }
            Http2Connection.this.f12815Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(Intrinsics.stringPlus(Http2Connection.this.Kkkkk(), " ping"), true, Http2Connection.this, i, i2) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ int f12832Wwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ int f12833Wwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ Http2Connection f12834Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ boolean f12835Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ String f12836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(r1, r2);
                    this.f12836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                    this.f12835Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                    this.f12834Wwwwwwwwwwwwwwwwwwwwwwwwwwww = r3;
                    this.f12833Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
                    this.f12832Wwwwwwwwwwwwwwwwwwwwwwwwww = i2;
                }

                @Override // okhttp3.internal.concurrent.Task
                public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                    this.f12834Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Il(true, this.f12833Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12832Wwwwwwwwwwwwwwwwwwwwwwwwww);
                    return -1L;
                }
            }, 0L);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, int i, @NotNull BufferedSource bufferedSource, int i2) throws IOException {
            if (Http2Connection.this.Illlllllllllll(i)) {
                Http2Connection.this.Illlllllllllllllll(i, bufferedSource, i2, z);
                return;
            }
            Http2Stream Illlllllllllllllllllllllll = Http2Connection.this.Illlllllllllllllllllllllll(i);
            if (Illlllllllllllllllllllllll == null) {
                Http2Connection.this.IIllllllll(i, ErrorCode.PROTOCOL_ERROR);
                long j = i2;
                Http2Connection.this.Illll(j);
                bufferedSource.skip(j);
                return;
            }
            Illlllllllllllllllllllllll.Wwwwwwwwwwww(bufferedSource, i2);
            if (z) {
                Illlllllllllllllllllllllll.Wwwwwwwwwww(Util.f12494Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, true);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, @NotNull List<Header> list) {
            Http2Connection.this.Illlllllllllllll(i2, list);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, long j) {
            if (i == 0) {
                Http2Connection http2Connection = Http2Connection.this;
                synchronized (http2Connection) {
                    http2Connection.f12800Kkkkkkkkkkkkkkkkkkkkkkkkkk = http2Connection.Illlllllllllllllllllllll() + j;
                    http2Connection.notifyAll();
                    Unit unit = Unit.INSTANCE;
                }
                return;
            }
            Http2Stream Illlllllllllllllllllllllll = Http2Connection.this.Illlllllllllllllllllllllll(i);
            if (Illlllllllllllllllllllllll != null) {
                synchronized (Illlllllllllllllllllllllll) {
                    Illlllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                    Unit unit2 = Unit.INSTANCE;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, int i, int i2, @NotNull List<Header> list) {
            if (Http2Connection.this.Illlllllllllll(i)) {
                Http2Connection.this.Illllllllllllllll(i, list, z);
                return;
            }
            Http2Connection http2Connection = Http2Connection.this;
            synchronized (http2Connection) {
                Http2Stream Illlllllllllllllllllllllll = http2Connection.Illlllllllllllllllllllllll(i);
                if (Illlllllllllllllllllllllll == null) {
                    if (http2Connection.f12817Wwwwwwwwwwwwwwwwwww) {
                        return;
                    }
                    if (i <= http2Connection.Kkkk()) {
                        return;
                    }
                    if (i % 2 == http2Connection.Kk() % 2) {
                        return;
                    }
                    Http2Stream http2Stream = new Http2Stream(i, http2Connection, false, z, Util.Kkkkkkkkkkkkkkkk(list));
                    http2Connection.Illllllllll(i);
                    http2Connection.Illllllllllllllllllllllll().put(Integer.valueOf(i), http2Stream);
                    TaskQueue Wwwwwwwwwwwwwwwwwwwwwwwwww2 = http2Connection.f12816Wwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    Wwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(http2Connection.Kkkkk() + AbstractJsonLexerKt.BEGIN_LIST + i + "] onStream", true, http2Connection, http2Stream) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda-2$$inlined$execute$default$1

                        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                        public final /* synthetic */ Http2Stream f12828Wwwwwwwwwwwwwwwwwwwwwwwwwww;

                        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                        public final /* synthetic */ Http2Connection f12829Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

                        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                        public final /* synthetic */ boolean f12830Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                        public final /* synthetic */ String f12831Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(r1, r2);
                            this.f12831Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                            this.f12830Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                            this.f12829Wwwwwwwwwwwwwwwwwwwwwwwwwwww = http2Connection;
                            this.f12828Wwwwwwwwwwwwwwwwwwwwwwwwwww = http2Stream;
                        }

                        @Override // okhttp3.internal.concurrent.Task
                        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                            try {
                                this.f12829Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12828Wwwwwwwwwwwwwwwwwwwwwwwwwww);
                                return -1L;
                            } catch (IOException e) {
                                Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus("Http2Connection.Listener failure for ", this.f12829Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkk()), 4, e);
                                try {
                                    this.f12828Wwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ErrorCode.PROTOCOL_ERROR, e);
                                    return -1L;
                                } catch (IOException unused) {
                                    return -1L;
                                }
                            }
                        }
                    }, 0L);
                    return;
                }
                Unit unit = Unit.INSTANCE;
                Illlllllllllllllllllllllll.Wwwwwwwwwww(Util.Kkkkkkkkkkkkkkkk(list), z);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, @NotNull Settings settings) {
            Http2Connection.this.f12815Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(new Task(Intrinsics.stringPlus(Http2Connection.this.Kkkkk(), " applyAndAckSettings"), true, this, z, settings) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ Settings f12837Wwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ boolean f12838Wwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ Http2Connection.ReaderRunnable f12839Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ boolean f12840Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
                public final /* synthetic */ String f12841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(r1, r2);
                    this.f12841Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r1;
                    this.f12840Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = r2;
                    this.f12839Wwwwwwwwwwwwwwwwwwwwwwwwwwww = this;
                    this.f12838Wwwwwwwwwwwwwwwwwwwwwwwwwww = z;
                    this.f12837Wwwwwwwwwwwwwwwwwwwwwwwwww = settings;
                }

                @Override // okhttp3.internal.concurrent.Task
                public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
                    this.f12839Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(this.f12838Wwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12837Wwwwwwwwwwwwwwwwwwwwwwwwww);
                    return -1L;
                }
            }, 0L);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            Wwwwwwwwwwwwwwwwwwwwwww();
            return Unit.INSTANCE;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3, boolean z) {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener;", "", "<init>", "()V", "Lokhttp3/internal/http2/Http2Stream;", "stream", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/Http2Stream;)V", "Lokhttp3/internal/http2/Http2Connection;", "connection", "Lokhttp3/internal/http2/Settings;", "settings", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static abstract class Listener {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @JvmField
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public static final Listener f12890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Listener() { // from class: okhttp3.internal.http2.Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Http2Stream http2Stream) throws IOException {
                http2Stream.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ErrorCode.REFUSED_STREAM, null);
            }
        };

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/http2/Http2Connection$Listener$Companion;", "", "()V", "REFUSE_INCOMING_STREAMS", "Lokhttp3/internal/http2/Http2Connection$Listener;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes7.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Http2Stream http2Stream) throws IOException;

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Http2Connection http2Connection, @NotNull Settings settings) {
        }
    }
}
