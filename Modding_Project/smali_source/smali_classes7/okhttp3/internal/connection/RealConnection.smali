.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.source "Proguard"

# interfaces
.implements Lokhttp3/Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/RealConnection$Companion;,
        Lokhttp3/internal/connection/RealConnection$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ee\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\t\u0018\u0000 \u009f\u00012\u00020\u00012\u00020\u0002:\u0002\u009f\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J7\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J/\u0010\u0014\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J/\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ1\u0010#\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u001fH\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u001d\u0010*\u001a\u00020)2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00050\'H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u0017\u0010,\u001a\u00020)2\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u001f\u00100\u001a\u00020)2\u0006\u0010\"\u001a\u00020!2\u0006\u0010/\u001a\u00020.H\u0002\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u0011H\u0000\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u0011H\u0000\u00a2\u0006\u0004\u00084\u00103J\u000f\u00105\u001a\u00020\u0011H\u0000\u00a2\u0006\u0004\u00085\u00103JE\u00107\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u00106\u001a\u00020)2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u00087\u00108J\'\u0010<\u001a\u00020)2\u0006\u0010:\u001a\u0002092\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\'H\u0000\u00a2\u0006\u0004\u0008<\u0010=J\u001f\u0010C\u001a\u00020B2\u0006\u0010?\u001a\u00020>2\u0006\u0010A\u001a\u00020@H\u0000\u00a2\u0006\u0004\u0008C\u0010DJ\u0017\u0010H\u001a\u00020G2\u0006\u0010F\u001a\u00020EH\u0000\u00a2\u0006\u0004\u0008H\u0010IJ\u000f\u0010J\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\r\u0010L\u001a\u00020\u0011\u00a2\u0006\u0004\u0008L\u00103J\u000f\u0010N\u001a\u00020MH\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u0015\u0010Q\u001a\u00020)2\u0006\u0010P\u001a\u00020)\u00a2\u0006\u0004\u0008Q\u0010RJ\u0017\u0010U\u001a\u00020\u00112\u0006\u0010T\u001a\u00020SH\u0016\u00a2\u0006\u0004\u0008U\u0010VJ\u001f\u0010[\u001a\u00020\u00112\u0006\u0010X\u001a\u00020W2\u0006\u0010Z\u001a\u00020YH\u0016\u00a2\u0006\u0004\u0008[\u0010\\J\u0011\u0010]\u001a\u0004\u0018\u00010.H\u0016\u00a2\u0006\u0004\u0008]\u0010^J\'\u0010b\u001a\u00020\u00112\u0006\u0010?\u001a\u00020>2\u0006\u0010_\u001a\u00020\u00052\u0006\u0010a\u001a\u00020`H\u0000\u00a2\u0006\u0004\u0008b\u0010cJ!\u0010f\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020d2\u0008\u0010e\u001a\u0004\u0018\u00010`H\u0000\u00a2\u0006\u0004\u0008f\u0010gJ\u000f\u0010i\u001a\u00020hH\u0016\u00a2\u0006\u0004\u0008i\u0010jJ\u000f\u0010l\u001a\u00020kH\u0016\u00a2\u0006\u0004\u0008l\u0010mR\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008[\u0010n\u001a\u0004\u0008o\u0010pR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008U\u0010qR\u0018\u0010t\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010sR\u0018\u0010u\u001a\u0004\u0018\u00010M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010sR\u0018\u0010/\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010vR\u0018\u0010x\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u0010wR\u0018\u0010z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008b\u0010yR\u0018\u0010}\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010|R\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u007fR(\u0010\u0086\u0001\u001a\u00020)8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0012\u0010\u0081\u0001\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u0018\u0010\u0087\u0001\u001a\u00020)8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008#\u0010\u0081\u0001R\'\u0010\u008c\u0001\u001a\u00020\t8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0016\n\u0005\u0008%\u0010\u0088\u0001\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001\"\u0005\u0008\u008b\u0001\u0010\u001cR\u0018\u0010\u008d\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0019\u0010\u0088\u0001R\u0019\u0010\u008f\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u0088\u0001R\u0019\u0010\u0091\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0001\u0010\u0088\u0001R*\u0010\u0096\u0001\u001a\u0010\u0012\u000b\u0012\t\u0012\u0004\u0012\u00020d0\u0093\u00010\u0092\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0082\u0001\u0010\u0094\u0001\u001a\u0006\u0008\u008e\u0001\u0010\u0095\u0001R*\u0010\u009c\u0001\u001a\u00030\u0097\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0089\u0001\u0010\u0098\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0099\u0001\"\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u0017\u0010\u009e\u0001\u001a\u00020)8@X\u0080\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u009d\u0001\u0010\u0083\u0001\u00a8\u0006\u00a0\u0001"
    }
    d2 = {
        "Lokhttp3/internal/connection/RealConnection;",
        "Lokhttp3/internal/http2/Http2Connection$Listener;",
        "Lokhttp3/Connection;",
        "Lokhttp3/internal/connection/RealConnectionPool;",
        "connectionPool",
        "Lokhttp3/Route;",
        "route",
        "<init>",
        "(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V",
        "",
        "connectTimeout",
        "readTimeout",
        "writeTimeout",
        "Lokhttp3/Call;",
        "call",
        "Lokhttp3/EventListener;",
        "eventListener",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(IIILokhttp3/Call;Lokhttp3/EventListener;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "(IILokhttp3/Call;Lokhttp3/EventListener;)V",
        "Lokhttp3/internal/connection/ConnectionSpecSelector;",
        "connectionSpecSelector",
        "pingIntervalMillis",
        "Wwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/Call;Lokhttp3/EventListener;)V",
        "Kkkkkkkkkkkkkkkkkkkkkkkkkk",
        "(I)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/internal/connection/ConnectionSpecSelector;)V",
        "Lokhttp3/Request;",
        "tunnelRequest",
        "Lokhttp3/HttpUrl;",
        "url",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "()Lokhttp3/Request;",
        "",
        "candidates",
        "",
        "Wwwwww",
        "(Ljava/util/List;)Z",
        "Kkkkkkkkkkkkkkkkkkkkkkkkk",
        "(Lokhttp3/HttpUrl;)Z",
        "Lokhttp3/Handshake;",
        "handshake",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/HttpUrl;Lokhttp3/Handshake;)Z",
        "Wwwwwwww",
        "()V",
        "Wwwwwwwww",
        "Wwwwwwwwwwwwwww",
        "connectionRetryEnabled",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V",
        "Lokhttp3/Address;",
        "address",
        "routes",
        "Wwwwwwwwwwwwww",
        "(Lokhttp3/Address;Ljava/util/List;)Z",
        "Lokhttp3/OkHttpClient;",
        "client",
        "Lokhttp3/internal/http/RealInterceptorChain;",
        "chain",
        "Lokhttp3/internal/http/ExchangeCodec;",
        "Wwwwwwwwwww",
        "(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/ExchangeCodec;",
        "Lokhttp3/internal/connection/Exchange;",
        "exchange",
        "Lokhttp3/internal/ws/RealWebSocket$Streams;",
        "Wwwwwwwwww",
        "(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/ws/RealWebSocket$Streams;",
        "Wwwwwww",
        "()Lokhttp3/Route;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/net/Socket;",
        "Www",
        "()Ljava/net/Socket;",
        "doExtensiveChecks",
        "Wwwwwwwwwwwww",
        "(Z)Z",
        "Lokhttp3/internal/http2/Http2Stream;",
        "stream",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/internal/http2/Http2Stream;)V",
        "Lokhttp3/internal/http2/Http2Connection;",
        "connection",
        "Lokhttp3/internal/http2/Settings;",
        "settings",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V",
        "Wwwwwwwwwwwwwwww",
        "()Lokhttp3/Handshake;",
        "failedRoute",
        "Ljava/io/IOException;",
        "failure",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V",
        "Lokhttp3/internal/connection/RealCall;",
        "e",
        "Kkkkkkkkkkkkkkkkkkkkkkkk",
        "(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V",
        "Lokhttp3/Protocol;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lokhttp3/Protocol;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lokhttp3/internal/connection/RealConnectionPool;",
        "getConnectionPool",
        "()Lokhttp3/internal/connection/RealConnectionPool;",
        "Lokhttp3/Route;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/net/Socket;",
        "rawSocket",
        "socket",
        "Lokhttp3/Handshake;",
        "Lokhttp3/Protocol;",
        "protocol",
        "Lokhttp3/internal/http2/Http2Connection;",
        "http2Connection",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSource;",
        "source",
        "Lokio/BufferedSink;",
        "Lokio/BufferedSink;",
        "sink",
        "Z",
        "Wwwwwwwwwwwwwwwwww",
        "()Z",
        "Wwww",
        "(Z)V",
        "noNewExchanges",
        "noCoalescedConnections",
        "I",
        "Wwwwwwwwwwwwwwwww",
        "()I",
        "setRouteFailureCount$okhttp",
        "routeFailureCount",
        "successCount",
        "Wwwwwwwwwwwwwwwwwwww",
        "refusedStreamCount",
        "Wwwwwwwwwwwwwwwwwww",
        "allocationLimit",
        "",
        "Ljava/lang/ref/Reference;",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "calls",
        "",
        "J",
        "()J",
        "Wwwww",
        "(J)V",
        "idleAtNs",
        "Wwwwwwwwwwww",
        "isMultiplexed",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/connection/RealConnection$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public Wwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lokhttp3/internal/connection/RealCall;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Protocol;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Handshake;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealConnectionPool;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/internal/connection/RealConnection$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RealConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokhttp3/internal/connection/RealConnection;->Companion:Lokhttp3/internal/connection/RealConnection$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;)V
    .locals 0
    .param p1    # Lokhttp3/internal/connection/RealConnectionPool;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Route;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/connection/RealConnectionPool;

    .line 5
    .line 6
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 17
    .line 18
    const-wide p1, 0x7fffffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwww:J

    .line 24
    .line 25
    return-void
.end method

.method public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/connection/RealConnection;)Lokhttp3/Handshake;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Handshake;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized Kkkkkkkkkkkkkkkkkkkkkkkk(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 3
    .param p1    # Lokhttp3/internal/connection/RealCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    instance-of v0, p2, Lokhttp3/internal/http2/StreamResetException;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    check-cast v0, Lokhttp3/internal/http2/StreamResetException;

    .line 9
    .line 10
    iget-object v0, v0, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 11
    .line 12
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    .line 13
    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    iget p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    add-int/2addr p1, v1

    .line 19
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwww:I

    .line 20
    .line 21
    if-le p1, v1, :cond_5

    .line 22
    .line 23
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 24
    .line 25
    iget p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    add-int/2addr p1, v1

    .line 28
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    check-cast p2, Lokhttp3/internal/http2/StreamResetException;

    .line 34
    .line 35
    iget-object p2, p2, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    .line 36
    .line 37
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    .line 38
    .line 39
    if-ne p2, v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealCall;->isCanceled()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 49
    .line 50
    iget p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 51
    .line 52
    add-int/2addr p1, v1

    .line 53
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwww()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    instance-of v0, p2, Lokhttp3/internal/http2/ConnectionShutdownException;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    :cond_3
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 67
    .line 68
    iget v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealCall;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/OkHttpClient;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 79
    .line 80
    invoke-virtual {p0, p1, v0, p2}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 84
    .line 85
    add-int/2addr p1, v1

    .line 86
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwww:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    :cond_5
    :goto_0
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p1
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkkk(Lokhttp3/HttpUrl;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "Thread "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " MUST hold lock on "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 52
    .line 53
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const/4 v3, 0x0

    .line 70
    if-eq v1, v2, :cond_2

    .line 71
    .line 72
    return v3

    .line 73
    :cond_2
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/4 v1, 0x1

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    return v1

    .line 89
    :cond_3
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwww:Z

    .line 90
    .line 91
    if-nez v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Handshake;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/HttpUrl;Lokhttp3/Handshake;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    return v1

    .line 104
    :cond_4
    return v3
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkkkk(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 4
    .line 5
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 9
    .line 10
    .line 11
    new-instance v4, Lokhttp3/internal/http2/Http2Connection$Builder;

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    sget-object v6, Lokhttp3/internal/concurrent/TaskRunner;->INSTANCE:Lokhttp3/internal/concurrent/TaskRunner;

    .line 15
    .line 16
    invoke-direct {v4, v5, v6}, Lokhttp3/internal/http2/Http2Connection$Builder;-><init>(ZLokhttp3/internal/concurrent/TaskRunner;)V

    .line 17
    .line 18
    .line 19
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 20
    .line 21
    invoke-virtual {v5}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v4, v0, v5, v1, v2}, Lokhttp3/internal/http2/Http2Connection$Builder;->Wwwwwwwwwwwwwwww(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lokhttp3/internal/http2/Http2Connection$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->Wwwwwwwwwwwwwwwwwwwwwww(I)Lokhttp3/internal/http2/Http2Connection$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Connection$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/http2/Http2Connection;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 50
    .line 51
    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->Companion:Lokhttp3/internal/http2/Http2Connection$Companion;

    .line 52
    .line 53
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/http2/Settings;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwww:I

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    const/4 v1, 0x3

    .line 65
    invoke-static {p1, v3, v0, v1, v0}, Lokhttp3/internal/http2/Http2Connection;->Illlll(Lokhttp3/internal/http2/Http2Connection;ZLokhttp3/internal/concurrent/TaskRunner;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public Www()Ljava/net/Socket;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwww(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return-void
.end method

.method public final Wwwww(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-void
.end method

.method public final Wwwwww(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;)Z"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    instance-of v0, p1, Ljava/util/Collection;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    move-object v0, p1

    .line 9
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lokhttp3/Route;

    .line 33
    .line 34
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/Proxy;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 43
    .line 44
    if-ne v2, v3, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 47
    .line 48
    invoke-virtual {v2}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/Proxy;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-ne v2, v3, :cond_1

    .line 57
    .line 58
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 59
    .line 60
    invoke-virtual {v2}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/InetSocketAddress;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/InetSocketAddress;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :cond_2
    return v1
.end method

.method public Wwwwwww()Lokhttp3/Route;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized Wwwwwwww()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public final declared-synchronized Wwwwwwwww()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public final Wwwwwwwwww(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/ws/RealWebSocket$Streams;
    .locals 4
    .param p1    # Lokhttp3/internal/connection/Exchange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 4
    .line 5
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwww()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, p1}, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;-><init>(Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/internal/connection/Exchange;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final Wwwwwwwwwww(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/ExchangeCodec;
    .locals 6
    .param p1    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/internal/http/RealInterceptorChain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 4
    .line 5
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 6
    .line 7
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    new-instance v0, Lokhttp3/internal/http2/Http2ExchangeCodec;

    .line 12
    .line 13
    invoke-direct {v0, p1, p0, p2, v3}, Lokhttp3/internal/http2/Http2ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p2}, Lokhttp3/internal/http/RealInterceptorChain;->Wwwwwwwwwwwwwwwwwwwwwww()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2}, Lokhttp3/internal/http/RealInterceptorChain;->Wwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    int-to-long v3, v3

    .line 33
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    .line 35
    invoke-virtual {v0, v3, v4, v5}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2}, Lokhttp3/internal/http/RealInterceptorChain;->Wwwwwwwwwwwwwwwwwwwwwwww()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    int-to-long v3, p2

    .line 47
    invoke-virtual {v0, v3, v4, v5}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 48
    .line 49
    .line 50
    new-instance p2, Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 51
    .line 52
    invoke-direct {p2, p1, p0, v1, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 53
    .line 54
    .line 55
    return-object p2
.end method

.method public final Wwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final Wwwwwwwwwwwww(Z)Z
    .locals 7

    .line 1
    sget-boolean v0, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "Thread "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " MUST NOT hold lock on "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 56
    .line 57
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 58
    .line 59
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_5

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_5

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_5

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->Illllllllllllllllllll(J)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    return p1

    .line 95
    :cond_3
    monitor-enter p0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwww()J

    .line 97
    .line 98
    .line 99
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    sub-long/2addr v0, v5

    .line 101
    monitor-exit p0

    .line 102
    const-wide v5, 0x2540be400L

    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    cmp-long v0, v0, v5

    .line 108
    .line 109
    if-ltz v0, :cond_4

    .line 110
    .line 111
    if-eqz p1, :cond_4

    .line 112
    .line 113
    invoke-static {v3, v4}, Lokhttp3/internal/Util;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(Ljava/net/Socket;Lokio/BufferedSource;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    return p1

    .line 118
    :cond_4
    const/4 p1, 0x1

    .line 119
    return p1

    .line 120
    :catchall_0
    move-exception p1

    .line 121
    monitor-exit p0

    .line 122
    throw p1

    .line 123
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 124
    return p1
.end method

.method public final Wwwwwwwwwwwwww(Lokhttp3/Address;Ljava/util/List;)Z
    .locals 3
    .param p1    # Lokhttp3/Address;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Address;",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "Thread "

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, " MUST hold lock on "

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwww:I

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    if-ge v0, v1, :cond_9

    .line 61
    .line 62
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 68
    .line 69
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Address;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    return v2

    .line 80
    :cond_3
    invoke-virtual {p1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->Wwwwwww()Lokhttp3/Route;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/4 v1, 0x1

    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    return v1

    .line 112
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 113
    .line 114
    if-nez v0, :cond_5

    .line 115
    .line 116
    return v2

    .line 117
    :cond_5
    if-eqz p2, :cond_9

    .line 118
    .line 119
    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/RealConnection;->Wwwwww(Ljava/util/List;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-nez p2, :cond_6

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    invoke-virtual {p1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljavax/net/ssl/HostnameVerifier;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 131
    .line 132
    if-eq p2, v0, :cond_7

    .line 133
    .line 134
    return v2

    .line 135
    :cond_7
    invoke-virtual {p1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/RealConnection;->Kkkkkkkkkkkkkkkkkkkkkkkkk(Lokhttp3/HttpUrl;)Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-nez p2, :cond_8

    .line 144
    .line 145
    return v2

    .line 146
    :cond_8
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CertificatePinner;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwww()Lokhttp3/Handshake;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lokhttp3/Handshake;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p2, p1, v0}, Lokhttp3/CertificatePinner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    return v1

    .line 170
    :catch_0
    :cond_9
    :goto_1
    return v2
.end method

.method public final declared-synchronized Wwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwww:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwww:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw v0
.end method

.method public Wwwwwwwwwwwwwwww()Lokhttp3/Handshake;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Handshake;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwww()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwww()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lokhttp3/internal/connection/RealCall;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljavax/net/ssl/SSLSocketFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 14
    .line 15
    invoke-virtual {p1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object p3, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    .line 24
    .line 25
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 32
    .line 33
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 34
    .line 35
    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Protocol;

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/RealConnection;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 42
    .line 43
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 44
    .line 45
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 46
    .line 47
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Protocol;

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-virtual {p4, p3}, Lokhttp3/EventListener;->Wwwwww(Lokhttp3/Call;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/connection/ConnectionSpecSelector;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Handshake;

    .line 57
    .line 58
    invoke-virtual {p4, p3, p1}, Lokhttp3/EventListener;->Wwwwwww(Lokhttp3/Call;Lokhttp3/Handshake;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Protocol;

    .line 62
    .line 63
    sget-object p3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    .line 64
    .line 65
    if-ne p1, p3, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/RealConnection;->Kkkkkkkkkkkkkkkkkkkkkkkkkk(I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lokhttp3/Request$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 7
    .line 8
    invoke-virtual {v1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwww(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "CONNECT"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 28
    .line 29
    invoke-virtual {v1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-static {v1, v2}, Lokhttp3/internal/Util;->Kkkkkkkkkkkkk(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "Host"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "Proxy-Connection"

    .line 49
    .line 50
    const-string v2, "Keep-Alive"

    .line 51
    .line 52
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "User-Agent"

    .line 57
    .line 58
    const-string v2, "okhttp/4.11.0"

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v1, Lokhttp3/Response$Builder;

    .line 69
    .line 70
    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwww(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/16 v2, 0x197

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lokhttp3/Response$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "Preemptive Authenticate"

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    sget-object v2, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/ResponseBody;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-wide/16 v2, -0x1

    .line 102
    .line 103
    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwww(J)Lokhttp3/Response$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwww(J)Lokhttp3/Response$Builder;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v2, "Proxy-Authenticate"

    .line 112
    .line 113
    const-string v3, "OkHttp-Preemptive"

    .line 114
    .line 115
    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 124
    .line 125
    invoke-virtual {v2}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Authenticator;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 134
    .line 135
    invoke-interface {v2, v3, v1}, Lokhttp3/Authenticator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    if-nez v1, :cond_0

    .line 140
    .line 141
    return-object v0

    .line 142
    :cond_0
    return-object v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CONNECT "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p4, v1}, Lokhttp3/internal/Util;->Kkkkkkkkkkkkk(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p4, " HTTP/1.1"

    .line 20
    .line 21
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 29
    .line 30
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 31
    .line 32
    new-instance v3, Lokhttp3/internal/http1/Http1ExchangeCodec;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-direct {v3, v4, p0, v0, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/connection/RealConnection;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    int-to-long v6, p1

    .line 43
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    invoke-virtual {v5, v6, v7, v8}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 46
    .line 47
    .line 48
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    int-to-long v6, p2

    .line 53
    invoke-virtual {v5, v6, v7, v8}, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Headers;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v3, v5, p4}, Lokhttp3/internal/http1/Http1ExchangeCodec;->Wwwwwwww(Lokhttp3/Headers;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lokhttp3/internal/http1/Http1ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 64
    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-virtual {v3, v5}, Lokhttp3/internal/http1/Http1ExchangeCodec;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)Lokhttp3/Response$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5, p3}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwww(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p3}, Lokhttp3/Response$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Response;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-virtual {v3, p3}, Lokhttp3/internal/http1/Http1ExchangeCodec;->Wwwwwwwww(Lokhttp3/Response;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const/16 v5, 0xc8

    .line 87
    .line 88
    if-eq v3, v5, :cond_3

    .line 89
    .line 90
    const/16 v0, 0x197

    .line 91
    .line 92
    if-ne v3, v0, :cond_2

    .line 93
    .line 94
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 95
    .line 96
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Authenticator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 105
    .line 106
    invoke-interface {v0, v2, p3}, Lokhttp3/Authenticator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    const-string v2, "Connection"

    .line 113
    .line 114
    const/4 v3, 0x2

    .line 115
    invoke-static {p3, v2, v4, v3, v4}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkk(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p3

    .line 119
    const-string v2, "close"

    .line 120
    .line 121
    invoke-static {v2, p3, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    if-eqz p3, :cond_0

    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_0
    move-object p3, v0

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 131
    .line 132
    const-string p2, "Failed to authenticate with proxy"

    .line 133
    .line 134
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 139
    .line 140
    invoke-virtual {p3}, Lokhttp3/Response;->Kkkkkkkkkkkkkkkkkkkkkk()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const-string p3, "Unexpected response code for CONNECT: "

    .line 149
    .line 150
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_3
    invoke-interface {v0}, Lokio/BufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lokio/Buffer;->Wwwwwwwwwwww()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_4

    .line 167
    .line 168
    invoke-interface {v2}, Lokio/BufferedSink;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lokio/Buffer;->Wwwwwwwwwwww()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_4

    .line 177
    .line 178
    return-object v4

    .line 179
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 180
    .line 181
    const-string p2, "TLS tunnel buffered too many bytes!"

    .line 182
    .line 183
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(IIILokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Request;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokhttp3/Request;->Wwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    const/16 v3, 0x15

    .line 11
    .line 12
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p4, p5}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwww(IILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2, p3, v0, v1}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwww(IILokhttp3/Request;Lokhttp3/HttpUrl;)Lokhttp3/Request;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 27
    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {v3}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;)V

    .line 32
    .line 33
    .line 34
    :goto_1
    const/4 v3, 0x0

    .line 35
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 36
    .line 37
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 38
    .line 39
    iput-object v3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 40
    .line 41
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 42
    .line 43
    invoke-virtual {v4}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/InetSocketAddress;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    iget-object v5, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 48
    .line 49
    invoke-virtual {v5}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/Proxy;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {p5, p4, v4, v5, v3}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :goto_2
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/connection/ConnectionSpecSelector;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljavax/net/ssl/SSLSocketFactory;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 13
    .line 14
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v5}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v6, 0x1

    .line 31
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_5

    .line 36
    .line 37
    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .line 39
    :try_start_1
    invoke-virtual {p1, v1}, Lokhttp3/internal/connection/ConnectionSpecSelector;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lokhttp3/ConnectionSpec;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    sget-object v3, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    .line 50
    .line 51
    invoke-virtual {v3}, Lokhttp3/internal/platform/Platform$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/platform/Platform;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v3, v1, v4, v5}, Lokhttp3/internal/platform/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    move-object v2, v1

    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    sget-object v4, Lokhttp3/Handshake;->Companion:Lokhttp3/Handshake$Companion;

    .line 83
    .line 84
    invoke-virtual {v4, v3}, Lokhttp3/Handshake$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljavax/net/ssl/HostnameVerifier;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-interface {v5, v7, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_2

    .line 105
    .line 106
    invoke-virtual {v4}, Lokhttp3/Handshake;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    move-object v3, p1

    .line 111
    check-cast v3, Ljava/util/Collection;

    .line 112
    .line 113
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_1

    .line 118
    .line 119
    const/4 v3, 0x0

    .line 120
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 125
    .line 126
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 127
    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v5, "\n              |Hostname "

    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v0, " not verified:\n              |    certificate: "

    .line 150
    .line 151
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    sget-object v0, Lokhttp3/CertificatePinner;->Companion:Lokhttp3/CertificatePinner$Companion;

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Lokhttp3/CertificatePinner$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/security/cert/Certificate;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, "\n              |    DN: "

    .line 164
    .line 165
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, "\n              |    subjectAltNames: "

    .line 180
    .line 181
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 185
    .line 186
    invoke-virtual {v0, p1}, Lokhttp3/internal/tls/OkHostnameVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string p1, "\n              "

    .line 194
    .line 195
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-static {p1, v2, v6, v2}, Lkotlin/text/StringsKt;->trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-direct {v3, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v3

    .line 210
    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string v3, "Hostname "

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v0, " not verified (no certificates)"

    .line 234
    .line 235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw p1

    .line 246
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CertificatePinner;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    new-instance v5, Lokhttp3/Handshake;

    .line 251
    .line 252
    invoke-virtual {v4}, Lokhttp3/Handshake;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/TlsVersion;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-virtual {v4}, Lokhttp3/Handshake;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CipherSuite;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    invoke-virtual {v4}, Lokhttp3/Handshake;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    new-instance v9, Lokhttp3/internal/connection/RealConnection$connectTls$1;

    .line 265
    .line 266
    invoke-direct {v9, v3, v4, v0}, Lokhttp3/internal/connection/RealConnection$connectTls$1;-><init>(Lokhttp3/CertificatePinner;Lokhttp3/Handshake;Lokhttp3/Address;)V

    .line 267
    .line 268
    .line 269
    invoke-direct {v5, v6, v7, v8, v9}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 270
    .line 271
    .line 272
    iput-object v5, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Handshake;

    .line 273
    .line 274
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    new-instance v4, Lokhttp3/internal/connection/RealConnection$connectTls$2;

    .line 283
    .line 284
    invoke-direct {v4, p0}, Lokhttp3/internal/connection/RealConnection$connectTls$2;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, v0, v4}, Lokhttp3/CertificatePinner;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Lokhttp3/ConnectionSpec;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_3

    .line 295
    .line 296
    sget-object p1, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    .line 297
    .line 298
    invoke-virtual {p1}, Lokhttp3/internal/platform/Platform$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/platform/Platform;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-virtual {p1, v1}, Lokhttp3/internal/platform/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    :cond_3
    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 307
    .line 308
    invoke-static {v1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;)Lokio/Source;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-static {p1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)Lokio/BufferedSource;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 317
    .line 318
    invoke-static {v1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;)Lokio/Sink;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    invoke-static {p1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 327
    .line 328
    if-eqz v2, :cond_4

    .line 329
    .line 330
    sget-object p1, Lokhttp3/Protocol;->Companion:Lokhttp3/Protocol$Companion;

    .line 331
    .line 332
    invoke-virtual {p1, v2}, Lokhttp3/Protocol$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokhttp3/Protocol;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    goto :goto_1

    .line 337
    :cond_4
    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 338
    .line 339
    :goto_1
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Protocol;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    .line 341
    sget-object p1, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    .line 342
    .line 343
    invoke-virtual {p1}, Lokhttp3/internal/platform/Platform$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/platform/Platform;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {p1, v1}, Lokhttp3/internal/platform/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljavax/net/ssl/SSLSocket;)V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :catchall_1
    move-exception p1

    .line 352
    goto :goto_2

    .line 353
    :cond_5
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 354
    .line 355
    const-string v0, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    .line 356
    .line 357
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 361
    :goto_2
    if-eqz v2, :cond_6

    .line 362
    .line 363
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    .line 364
    .line 365
    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/platform/Platform;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    invoke-virtual {v0, v2}, Lokhttp3/internal/platform/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljavax/net/ssl/SSLSocket;)V

    .line 370
    .line 371
    .line 372
    :cond_6
    if-nez v2, :cond_7

    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_7
    invoke-static {v2}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;)V

    .line 376
    .line 377
    .line 378
    :goto_3
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(IILokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/Proxy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 8
    .line 9
    invoke-virtual {v1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v3, Lokhttp3/internal/connection/RealConnection$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    aget v2, v3, v2

    .line 28
    .line 29
    :goto_0
    const/4 v3, 0x1

    .line 30
    if-eq v2, v3, :cond_1

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    if-eq v2, v3, :cond_1

    .line 34
    .line 35
    new-instance v1, Ljava/net/Socket;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {v1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwww()Ljavax/net/SocketFactory;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :goto_1
    iput-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 50
    .line 51
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 52
    .line 53
    invoke-virtual {v2}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/InetSocketAddress;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p4, p3, v2, v0}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 61
    .line 62
    .line 63
    :try_start_0
    sget-object p2, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    .line 64
    .line 65
    invoke-virtual {p2}, Lokhttp3/internal/platform/Platform$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/platform/Platform;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iget-object p3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 70
    .line 71
    invoke-virtual {p3}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/InetSocketAddress;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-virtual {p2, v1, p3, p1}, Lokhttp3/internal/platform/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .line 77
    .line 78
    :try_start_1
    invoke-static {v1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;)Lokio/Source;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)Lokio/BufferedSource;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 87
    .line 88
    invoke-static {v1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;)Lokio/Sink;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Sink;)Lokio/BufferedSink;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    return-void

    .line 99
    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const-string p3, "throw with null exception"

    .line 105
    .line 106
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-nez p2, :cond_2

    .line 111
    .line 112
    return-void

    .line 113
    :cond_2
    new-instance p2, Ljava/io/IOException;

    .line 114
    .line 115
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    throw p2

    .line 119
    :catch_1
    move-exception p1

    .line 120
    new-instance p2, Ljava/net/ConnectException;

    .line 121
    .line 122
    iget-object p3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 123
    .line 124
    invoke-virtual {p3}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/InetSocketAddress;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    const-string p4, "Failed to connect to "

    .line 129
    .line 130
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    .line 139
    .line 140
    throw p2
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V
    .locals 3
    .param p1    # Lokhttp3/OkHttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Route;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/Proxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/ProxySelector;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwww()Ljava/net/URI;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p2}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/Proxy;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v0, v2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->Wwwwwwwwwwwww()Lokhttp3/internal/connection/RouteDatabase;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Lokhttp3/internal/connection/RouteDatabase;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Route;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(IIIIZLokhttp3/Call;Lokhttp3/EventListener;)V
    .locals 12
    .param p6    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lokhttp3/EventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Protocol;

    .line 2
    .line 3
    if-nez v0, :cond_c

    .line 4
    .line 5
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 6
    .line 7
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v7, Lokhttp3/internal/connection/ConnectionSpecSelector;

    .line 16
    .line 17
    invoke-direct {v7, v0}, Lokhttp3/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 21
    .line 22
    invoke-virtual {v1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljavax/net/ssl/SSLSocketFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    sget-object v1, Lokhttp3/ConnectionSpec;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/ConnectionSpec;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 41
    .line 42
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v1, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    .line 55
    .line 56
    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/internal/platform/Platform;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Lokhttp3/internal/platform/Platform;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Lokhttp3/internal/connection/RouteException;

    .line 68
    .line 69
    new-instance p2, Ljava/net/UnknownServiceException;

    .line 70
    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "CLEARTEXT communication to "

    .line 77
    .line 78
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, " not permitted by network security policy"

    .line 85
    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-direct {p1, p2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_1
    new-instance p1, Lokhttp3/internal/connection/RouteException;

    .line 101
    .line 102
    new-instance p2, Ljava/net/UnknownServiceException;

    .line 103
    .line 104
    const-string p3, "CLEARTEXT communication not enabled for client"

    .line 105
    .line 106
    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p1, p2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 110
    .line 111
    .line 112
    throw p1

    .line 113
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 114
    .line 115
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    .line 124
    .line 125
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_b

    .line 130
    .line 131
    :goto_0
    const/4 v8, 0x0

    .line 132
    move-object v9, v8

    .line 133
    :goto_1
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 134
    .line 135
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 136
    .line 137
    .line 138
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    move-object v1, p0

    .line 142
    move v2, p1

    .line 143
    move v3, p2

    .line 144
    move v4, p3

    .line 145
    move-object/from16 v5, p6

    .line 146
    .line 147
    move-object/from16 v6, p7

    .line 148
    .line 149
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwww(IIILokhttp3/Call;Lokhttp3/EventListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    move v10, v3

    .line 153
    move-object v2, v5

    .line 154
    move-object v1, v6

    .line 155
    :try_start_2
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 156
    .line 157
    if-nez v0, :cond_3

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_3
    :goto_2
    move/from16 v11, p4

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :goto_3
    move/from16 v11, p4

    .line 165
    .line 166
    :goto_4
    move-object v6, v0

    .line 167
    goto :goto_8

    .line 168
    :catch_1
    move-exception v0

    .line 169
    move v10, v3

    .line 170
    move-object v2, v5

    .line 171
    move-object v1, v6

    .line 172
    goto :goto_3

    .line 173
    :cond_4
    move v10, p2

    .line 174
    move-object/from16 v2, p6

    .line 175
    .line 176
    move-object/from16 v1, p7

    .line 177
    .line 178
    invoke-virtual {p0, p1, p2, v2, v1}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwww(IILokhttp3/Call;Lokhttp3/EventListener;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :goto_5
    :try_start_3
    invoke-virtual {p0, v7, v11, v2, v1}, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/connection/ConnectionSpecSelector;ILokhttp3/Call;Lokhttp3/EventListener;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 186
    .line 187
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/InetSocketAddress;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-object v3, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 192
    .line 193
    invoke-virtual {v3}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/Proxy;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Protocol;

    .line 198
    .line 199
    invoke-virtual {v1, v2, v0, v3, v4}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 200
    .line 201
    .line 202
    :goto_6
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 203
    .line 204
    invoke-virtual {p1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_6

    .line 209
    .line 210
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 211
    .line 212
    if-eqz p1, :cond_5

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_5
    new-instance p1, Lokhttp3/internal/connection/RouteException;

    .line 216
    .line 217
    new-instance p2, Ljava/net/ProtocolException;

    .line 218
    .line 219
    const-string p3, "Too many tunnel connections attempted: 21"

    .line 220
    .line 221
    invoke-direct {p2, p3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {p1, p2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :cond_6
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 229
    .line 230
    .line 231
    move-result-wide p1

    .line 232
    iput-wide p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwww:J

    .line 233
    .line 234
    return-void

    .line 235
    :catch_2
    move-exception v0

    .line 236
    goto :goto_4

    .line 237
    :catch_3
    move-exception v0

    .line 238
    move v10, p2

    .line 239
    move/from16 v11, p4

    .line 240
    .line 241
    move-object/from16 v2, p6

    .line 242
    .line 243
    move-object/from16 v1, p7

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :goto_8
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 247
    .line 248
    if-nez v0, :cond_7

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_7
    invoke-static {v0}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;)V

    .line 252
    .line 253
    .line 254
    :goto_9
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 255
    .line 256
    if-nez v0, :cond_8

    .line 257
    .line 258
    goto :goto_a

    .line 259
    :cond_8
    invoke-static {v0}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;)V

    .line 260
    .line 261
    .line 262
    :goto_a
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 263
    .line 264
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 265
    .line 266
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSource;

    .line 267
    .line 268
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/BufferedSink;

    .line 269
    .line 270
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Handshake;

    .line 271
    .line 272
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Protocol;

    .line 273
    .line 274
    iput-object v8, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/internal/http2/Http2Connection;

    .line 275
    .line 276
    const/4 v0, 0x1

    .line 277
    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwww:I

    .line 278
    .line 279
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 280
    .line 281
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/InetSocketAddress;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 286
    .line 287
    invoke-virtual {v0}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/Proxy;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    const/4 v5, 0x0

    .line 292
    invoke-virtual/range {v1 .. v6}, Lokhttp3/EventListener;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    .line 293
    .line 294
    .line 295
    if-nez v9, :cond_9

    .line 296
    .line 297
    new-instance v9, Lokhttp3/internal/connection/RouteException;

    .line 298
    .line 299
    invoke-direct {v9, v6}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 300
    .line 301
    .line 302
    goto :goto_b

    .line 303
    :cond_9
    invoke-virtual {v9, v6}, Lokhttp3/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    .line 304
    .line 305
    .line 306
    :goto_b
    if-eqz p5, :cond_a

    .line 307
    .line 308
    invoke-virtual {v7, v6}, Lokhttp3/internal/connection/ConnectionSpecSelector;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/IOException;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_a

    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_a
    throw v9

    .line 317
    :cond_b
    new-instance p1, Lokhttp3/internal/connection/RouteException;

    .line 318
    .line 319
    new-instance p2, Ljava/net/UnknownServiceException;

    .line 320
    .line 321
    const-string p3, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    .line 322
    .line 323
    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-direct {p1, p2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    .line 327
    .line 328
    .line 329
    throw p1

    .line 330
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 331
    .line 332
    const-string p2, "already connected"

    .line 333
    .line 334
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/HttpUrl;Lokhttp3/Handshake;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lokhttp3/Handshake;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 16
    .line 17
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_0
    return v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/Socket;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lokhttp3/internal/Util;->Wwwwwwwwwwwwwwwwwwwww(Ljava/net/Socket;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 2
    .param p1    # Lokhttp3/internal/http2/Http2Stream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public declared-synchronized Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V
    .locals 0
    .param p1    # Lokhttp3/internal/http2/Http2Connection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/internal/http2/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/internal/http2/Settings;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwww:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Protocol;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Protocol;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Connection{"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 12
    .line 13
    invoke-virtual {v1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x3a

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 34
    .line 35
    invoke-virtual {v1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/Address;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lokhttp3/Address;->Wwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/HttpUrl;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->Wwwwwwwwwwwwwwwwwwwww()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", proxy="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 56
    .line 57
    invoke-virtual {v1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/Proxy;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " hostAddress="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Route;

    .line 70
    .line 71
    invoke-virtual {v1}, Lokhttp3/Route;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/InetSocketAddress;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, " cipherSuite="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Handshake;

    .line 84
    .line 85
    const-string v2, "none"

    .line 86
    .line 87
    if-nez v1, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v1}, Lokhttp3/Handshake;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokhttp3/CipherSuite;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    move-object v2, v1

    .line 98
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, " protocol="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokhttp3/Protocol;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x7d

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    return-object v0
.end method
