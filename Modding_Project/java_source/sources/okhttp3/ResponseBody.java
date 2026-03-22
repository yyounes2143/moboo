package okhttp3;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.DebugKt;
import okhttp3.MediaType;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b&\u0018\u0000 !2\u00020\u0001:\u0002 !B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u0004J\b\u0010\f\u001a\u00020\rH\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J@\u0010\u0010\u001a\u0002H\u0011\"\b\b\u0000\u0010\u0011*\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u0002H\u00110\u00142\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u0002H\u0011\u0012\u0004\u0012\u00020\u00170\u0014H\u0082\b¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u001aH&J\n\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&J\b\u0010\u001d\u001a\u00020\u0015H&J\u0006\u0010\u001e\u001a\u00020\u001fR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lokhttp3/ResponseBody;", "Ljava/io/Closeable;", "()V", "reader", "Ljava/io/Reader;", "byteStream", "Ljava/io/InputStream;", "byteString", "Lokio/ByteString;", "bytes", "", "charStream", "charset", "Ljava/nio/charset/Charset;", "close", "", "consumeSource", "T", "", "consumer", "Lkotlin/Function1;", "Lokio/BufferedSource;", "sizeMapper", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "contentLength", "", "contentType", "Lokhttp3/MediaType;", "source", TypedValues.Custom.S_STRING, "", "BomAwareReader", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public abstract class ResponseBody implements Closeable, AutoCloseable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable
    private Reader reader;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J'\u0010\r\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lokhttp3/ResponseBody$BomAwareReader;", "Ljava/io/Reader;", "Lokio/BufferedSource;", "source", "Ljava/nio/charset/Charset;", "charset", "<init>", "(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V", "", "cbuf", "", DebugKt.DEBUG_PROPERTY_VALUE_OFF, "len", "read", "([CII)I", "", "close", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/nio/charset/Charset;", "", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "closed", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/io/Reader;", "delegate", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class BomAwareReader extends Reader implements AutoCloseable {
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Reader f12477Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12478Wwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Charset f12479Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final BufferedSource f12480Wwwwwwwwwwwwwwwwwwwwwwwww;

        public BomAwareReader(@NotNull BufferedSource bufferedSource, @NotNull Charset charset) {
            this.f12480Wwwwwwwwwwwwwwwwwwwwwwwww = bufferedSource;
            this.f12479Wwwwwwwwwwwwwwwwwwwwwwww = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            Unit unit;
            this.f12478Wwwwwwwwwwwwwwwwwwwwwww = true;
            Reader reader = this.f12477Wwwwwwwwwwwwwwwwwwwwww;
            if (reader == null) {
                unit = null;
            } else {
                reader.close();
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                this.f12480Wwwwwwwwwwwwwwwwwwwwwwwww.close();
            }
        }

        @Override // java.io.Reader
        public int read(@NotNull char[] cArr, int i, int i2) throws IOException {
            if (!this.f12478Wwwwwwwwwwwwwwwwwwwwwww) {
                Reader reader = this.f12477Wwwwwwwwwwwwwwwwwwwwww;
                if (reader == null) {
                    reader = new InputStreamReader(this.f12480Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkkkk(), Util.Kkkkkkkkkkkkkkkkkkkkkkk(this.f12480Wwwwwwwwwwwwwwwwwwwwwwwww, this.f12479Wwwwwwwwwwwwwwwwwwwwwwww));
                    this.f12477Wwwwwwwwwwwwwwwwwwwwww = reader;
                }
                return reader.read(cArr, i, i2);
            }
            throw new IOException("Stream closed");
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u0007*\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000b\u001a\u00020\u0007*\u00020\n2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000e\u001a\u00020\u0007*\u00020\r2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0013\u001a\u00020\u0007*\u00020\u00102\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0016\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0018\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001a\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0015\u001a\u00020\rH\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ)\u0010\u001c\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lokhttp3/ResponseBody$Companion;", "", "<init>", "()V", "", "Lokhttp3/MediaType;", "contentType", "Lokhttp3/ResponseBody;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "([BLokhttp3/MediaType;)Lokhttp3/ResponseBody;", "Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/ByteString;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;", "Lokio/BufferedSource;", "", "contentLength", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;", "content", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/MediaType;[B)Lokhttp3/ResponseBody;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/ResponseBody;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwww(Companion companion, byte[] bArr, MediaType mediaType, int i, Object obj) {
            if ((i & 1) != 0) {
                mediaType = null;
            }
            return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, mediaType);
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        public final ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Buffer().write(bArr), mediaType, bArr.length);
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        public final ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Buffer().Wwwww(byteString), mediaType, byteString.size());
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        public final ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final BufferedSource bufferedSource, @Nullable final MediaType mediaType, final long j) {
            return new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
                @Override // okhttp3.ResponseBody
                public long contentLength() {
                    return j;
                }

                @Override // okhttp3.ResponseBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.ResponseBody
                @NotNull
                public BufferedSource source() {
                    return bufferedSource;
                }
            };
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
        @JvmStatic
        @NotNull
        public final ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MediaType mediaType, @NotNull byte[] bArr) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, mediaType);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
        @JvmStatic
        @NotNull
        public final ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MediaType mediaType, @NotNull ByteString byteString) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(byteString, mediaType);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
        @JvmStatic
        @NotNull
        public final ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MediaType mediaType, @NotNull String str) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, mediaType);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.asResponseBody(contentType, contentLength)", imports = {"okhttp3.ResponseBody.Companion.asResponseBody"}))
        @JvmStatic
        @NotNull
        public final ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MediaType mediaType, long j, @NotNull BufferedSource bufferedSource) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource, mediaType, j);
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        public final ResponseBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable MediaType mediaType) {
            Charset charset = Charsets.UTF_8;
            if (mediaType != null) {
                Charset Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = MediaType.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, null, 1, null);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    MediaType.Companion companion = MediaType.Companion;
                    mediaType = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType + "; charset=utf-8");
                } else {
                    charset = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
            }
            Buffer Illllllllllllll = new Buffer().Illllllllllllll(str, charset);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllllll, mediaType, Illllllllllllll.Kk());
        }

        public Companion() {
        }
    }

    private final Charset charset() {
        Charset Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        MediaType contentType = contentType();
        if (contentType == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = contentType.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Charsets.UTF_8);
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return Charsets.UTF_8;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.Object] */
    private final <T> T consumeSource(Function1<? super BufferedSource, ? extends T> function1, Function1<? super T, Integer> function12) {
        long contentLength = contentLength();
        if (contentLength <= 2147483647L) {
            BufferedSource source = source();
            try {
                T invoke = function1.invoke(source);
                InlineMarker.finallyStart(1);
                CloseableKt.closeFinally(source, null);
                InlineMarker.finallyEnd(1);
                int intValue = function12.invoke(invoke).intValue();
                if (contentLength != -1 && contentLength != intValue) {
                    throw new IOException("Content-Length (" + contentLength + ") and stream length (" + intValue + ") disagree");
                }
                return invoke;
            } finally {
            }
        } else {
            throw new IOException(Intrinsics.stringPlus("Cannot buffer entire body for content length: ", Long.valueOf(contentLength)));
        }
    }

    @JvmStatic
    @JvmName(name = "create")
    @NotNull
    public static final ResponseBody create(@NotNull String str, @Nullable MediaType mediaType) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, mediaType);
    }

    @NotNull
    public final InputStream byteStream() {
        return source().Kkkkkkkkkkkkkkkkkkkkkkkkk();
    }

    @NotNull
    public final ByteString byteString() throws IOException {
        long contentLength = contentLength();
        if (contentLength <= 2147483647L) {
            BufferedSource source = source();
            try {
                ByteString Wwwwwww2 = source.Wwwwwww();
                CloseableKt.closeFinally(source, null);
                int size = Wwwwwww2.size();
                if (contentLength != -1 && contentLength != size) {
                    throw new IOException("Content-Length (" + contentLength + ") and stream length (" + size + ") disagree");
                }
                return Wwwwwww2;
            } finally {
            }
        } else {
            throw new IOException(Intrinsics.stringPlus("Cannot buffer entire body for content length: ", Long.valueOf(contentLength)));
        }
    }

    @NotNull
    public final byte[] bytes() throws IOException {
        long contentLength = contentLength();
        if (contentLength <= 2147483647L) {
            BufferedSource source = source();
            try {
                byte[] Wwwwwwwwwwwww2 = source.Wwwwwwwwwwwww();
                CloseableKt.closeFinally(source, null);
                int length = Wwwwwwwwwwwww2.length;
                if (contentLength != -1 && contentLength != length) {
                    throw new IOException("Content-Length (" + contentLength + ") and stream length (" + length + ") disagree");
                }
                return Wwwwwwwwwwwww2;
            } finally {
            }
        } else {
            throw new IOException(Intrinsics.stringPlus("Cannot buffer entire body for content length: ", Long.valueOf(contentLength)));
        }
    }

    @NotNull
    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader == null) {
            BomAwareReader bomAwareReader = new BomAwareReader(source(), charset());
            this.reader = bomAwareReader;
            return bomAwareReader;
        }
        return reader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.Wwwwwwwwwwwwwwwwwwwwww(source());
    }

    public abstract long contentLength();

    @Nullable
    public abstract MediaType contentType();

    @NotNull
    public abstract BufferedSource source();

    @NotNull
    public final String string() throws IOException {
        BufferedSource source = source();
        try {
            String Wwwwwwwwww2 = source.Wwwwwwwwww(Util.Kkkkkkkkkkkkkkkkkkkkkkk(source, charset()));
            CloseableKt.closeFinally(source, null);
            return Wwwwwwwwww2;
        } finally {
        }
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.asResponseBody(contentType, contentLength)", imports = {"okhttp3.ResponseBody.Companion.asResponseBody"}))
    @JvmStatic
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, long j, @NotNull BufferedSource bufferedSource) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, j, bufferedSource);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
    @JvmStatic
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull String str) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, str);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
    @JvmStatic
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull ByteString byteString) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, byteString);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toResponseBody(contentType)", imports = {"okhttp3.ResponseBody.Companion.toResponseBody"}))
    @JvmStatic
    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, bArr);
    }

    @JvmStatic
    @JvmName(name = "create")
    @NotNull
    public static final ResponseBody create(@NotNull BufferedSource bufferedSource, @Nullable MediaType mediaType, long j) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource, mediaType, j);
    }

    @JvmStatic
    @JvmName(name = "create")
    @NotNull
    public static final ResponseBody create(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(byteString, mediaType);
    }

    @JvmStatic
    @JvmName(name = "create")
    @NotNull
    public static final ResponseBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, mediaType);
    }
}
