package okhttp3.logging;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSource;
import okio.GzipSource;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0002\"#B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0015R\u001c\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R*\u0010!\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b8\u0006@GX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b\u0018\u0010 ¨\u0006$"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "logger", "<init>", "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "Lokhttp3/Headers;", "headers", "", CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;I)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Headers;)Z", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Set;", "headersToRedact", "Lokhttp3/logging/HttpLoggingInterceptor$Level;", "<set-?>", "Lokhttp3/logging/HttpLoggingInterceptor$Level;", "getLevel", "()Lokhttp3/logging/HttpLoggingInterceptor$Level;", "(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V", "level", "Level", "Logger", "okhttp-logging-interceptor"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile Level f13096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile Set<String> f13097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Logger f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor$Level;", "", "(Ljava/lang/String;I)V", "NONE", "BASIC", "HEADERS", "BODY", "okhttp-logging-interceptor"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\bæ\u0080\u0001\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "", "", "message", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Companion", "okhttp-logging-interceptor"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public interface Logger {
        @NotNull
        public static final Companion Companion = Companion.f13100Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @JvmField
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Logger f13099Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion.DefaultLogger();

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0001¨\u0006\u0006"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion;", "", "()V", "DEFAULT", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "DefaultLogger", "okhttp-logging-interceptor"}, k = 1, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes7.dex */
        public static final class Companion {

            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
            public static final /* synthetic */ Companion f13100Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion();

            /* compiled from: Proguard */
            @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "<init>", "()V", "", "message", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "okhttp-logging-interceptor"}, k = 1, mv = {1, 6, 0}, xi = 48)
            /* loaded from: classes7.dex */
            public static final class DefaultLogger implements Logger {
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
                    Platform.Wwwwwwwwwwwwwwwwwwwwwww(Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), str, 0, null, 6, null);
                }
            }
        }

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str);
    }

    @JvmOverloads
    public HttpLoggingInterceptor() {
        this(null, 1, null);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Headers headers, int i) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (this.f13097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i))) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = "██";
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwww(i);
        }
        Logger logger = this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i) + ": " + Wwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    @JvmName(name = "level")
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Level level) {
        this.f13096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = level;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Headers headers) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Encoding");
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "identity", true) || StringsKt.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "gzip", true)) {
            return false;
        }
        return true;
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        String str;
        long j;
        Response response;
        boolean z;
        char c;
        String sb;
        Charset charset;
        Long l;
        Level level = this.f13096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (level == Level.NONE) {
            return chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        boolean z2 = level == Level.BODY;
        boolean z3 = z2 || level == Level.HEADERS;
        RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Connection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--> ");
        sb2.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
        sb2.append(' ');
        sb2.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww());
        sb2.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null ? Intrinsics.stringPlus(" ", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) : "");
        String sb3 = sb2.toString();
        if (!z3 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != 0) {
            sb3 = sb3 + " (" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.contentLength() + "-byte body)";
        }
        this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sb3);
        if (z3) {
            Headers Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            j = -1;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                MediaType contentType = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.contentType();
                if (contentType != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Type") == null) {
                    this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus("Content-Type: ", contentType));
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.contentLength() != -1 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Length") == null) {
                    this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus("Content-Length: ", Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.contentLength())));
                }
            }
            int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
            for (int i = 0; i < size; i++) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i);
            }
            if (!z2 || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
                str = "";
                this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus("--> END ", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww()));
            } else {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                    this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("--> END " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww() + " (encoded body omitted)");
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.isDuplex()) {
                    this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("--> END " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww() + " (duplex request body omitted)");
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.isOneShot()) {
                    this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("--> END " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww() + " (one-shot body omitted)");
                } else {
                    Buffer buffer = new Buffer();
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.writeTo(buffer);
                    MediaType contentType2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.contentType();
                    Charset Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = contentType2 == null ? null : contentType2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StandardCharsets.UTF_8);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = StandardCharsets.UTF_8;
                    }
                    this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("");
                    if (Utf8Kt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer)) {
                        this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer.Wwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3));
                        this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("--> END " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww() + " (" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.contentLength() + "-byte body)");
                    } else {
                        Logger logger = this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("--> END ");
                        sb4.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
                        sb4.append(" (binary ");
                        str = "";
                        sb4.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.contentLength());
                        sb4.append("-byte body omitted)");
                        logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sb4.toString());
                    }
                }
                str = "";
            }
        } else {
            str = "";
            j = -1;
        }
        long nanoTime = System.nanoTime();
        try {
            Response Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            long contentLength = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.contentLength();
            String str2 = contentLength != j ? contentLength + "-byte" : "unknown-length";
            Logger logger2 = this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            StringBuilder sb5 = new StringBuilder();
            sb5.append("<-- ");
            sb5.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkk());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkk().length() == 0) {
                response = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                z = z3;
                sb = str;
                c = ' ';
            } else {
                String Kkkkkkkkkkkkkk2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkk();
                response = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                StringBuilder sb6 = new StringBuilder();
                z = z3;
                c = ' ';
                sb6.append(' ');
                sb6.append(Kkkkkkkkkkkkkk2);
                sb = sb6.toString();
            }
            sb5.append(sb);
            sb5.append(c);
            sb5.append(response.Kkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwww());
            sb5.append(" (");
            sb5.append(millis);
            sb5.append("ms");
            sb5.append(z ? str : ", " + str2 + " body");
            sb5.append(')');
            logger2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sb5.toString());
            if (z) {
                Headers Kkkkkkkkkkkkkkkk2 = response.Kkkkkkkkkkkkkkkk();
                int size2 = Kkkkkkkkkkkkkkkk2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkk2, i2);
                }
                if (z2 && HttpHeaders.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response)) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response.Kkkkkkkkkkkkkkkk())) {
                        this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("<-- END HTTP (encoded body omitted)");
                        return response;
                    }
                    BufferedSource source = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.source();
                    source.Wwwwwwwwwwwwwwwwwwwwwww(Long.MAX_VALUE);
                    Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = source.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (StringsKt.equals("gzip", Kkkkkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Content-Encoding"), true)) {
                        l = Long.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kk());
                        GzipSource gzipSource = new GzipSource(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.clone());
                        try {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = new Buffer();
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Wwwwwwwwwwwwwwwwwwwwwwww(gzipSource);
                            charset = null;
                            CloseableKt.closeFinally(gzipSource, null);
                        } finally {
                        }
                    } else {
                        charset = null;
                        l = null;
                    }
                    MediaType contentType3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.contentType();
                    Charset Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = contentType3 == null ? charset : contentType3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StandardCharsets.UTF_8);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 == null) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = StandardCharsets.UTF_8;
                    }
                    if (!Utf8Kt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4)) {
                        this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
                        this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("<-- END HTTP (binary " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kk() + "-byte body omitted)");
                        return response;
                    }
                    String str3 = str;
                    if (contentLength != 0) {
                        this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3);
                        this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.clone().Wwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5));
                    }
                    if (l != null) {
                        this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("<-- END HTTP (" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kk() + "-byte, " + l + "-gzipped-byte body)");
                        return response;
                    }
                    this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("<-- END HTTP (" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.Kk() + "-byte body)");
                    return response;
                }
                this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("<-- END HTTP");
            }
            return response;
        } catch (Exception e) {
            this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Intrinsics.stringPlus("<-- HTTP FAILED: ", e));
            throw e;
        }
    }

    @JvmOverloads
    public HttpLoggingInterceptor(@NotNull Logger logger) {
        this.f13098Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = logger;
        this.f13097Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = SetsKt.emptySet();
        this.f13096Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Level.NONE;
    }

    public /* synthetic */ HttpLoggingInterceptor(Logger logger, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Logger.f13099Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww : logger);
    }
}
