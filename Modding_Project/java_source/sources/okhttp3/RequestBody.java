package okhttp3;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Charsets;
import okhttp3.MediaType;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&¨\u0006\u000f"}, d2 = {"Lokhttp3/RequestBody;", "", "()V", "contentLength", "", "contentType", "Lokhttp3/MediaType;", "isDuplex", "", "isOneShot", "writeTo", "", "sink", "Lokio/BufferedSink;", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public abstract class RequestBody {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u0007*\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000b\u001a\u00020\u0007*\u00020\n2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\u000b\u0010\fJ3\u0010\u0011\u001a\u00020\u0007*\u00020\r2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0014\u001a\u00020\u0007*\u00020\u00132\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u0017\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u0019\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\nH\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ5\u0010\u001b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0016\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ!\u0010\u001e\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001d\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lokhttp3/RequestBody$Companion;", "", "<init>", "()V", "", "Lokhttp3/MediaType;", "contentType", "Lokhttp3/RequestBody;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;", "Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/ByteString;Lokhttp3/MediaType;)Lokhttp3/RequestBody;", "", "", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "Wwwwwwwwwwwwwwwwwwwwww", "([BLokhttp3/MediaType;II)Lokhttp3/RequestBody;", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;", "content", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/MediaType;[BII)Lokhttp3/RequestBody;", "file", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ RequestBody Wwwwwwwwwwwwwwwwwwww(Companion companion, byte[] bArr, MediaType mediaType, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                mediaType = null;
            }
            if ((i3 & 2) != 0) {
                i = 0;
            }
            if ((i3 & 4) != 0) {
                i2 = bArr.length;
            }
            return companion.Wwwwwwwwwwwwwwwwwwwwww(bArr, mediaType, i, i2);
        }

        public static /* synthetic */ RequestBody Wwwwwwwwwwwwwwwwwwwww(Companion companion, MediaType mediaType, byte[] bArr, int i, int i2, int i3, Object obj) {
            if ((i3 & 4) != 0) {
                i = 0;
            }
            if ((i3 & 8) != 0) {
                i2 = bArr.length;
            }
            return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, bArr, i, i2);
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        @JvmOverloads
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwww(@NotNull final byte[] bArr, @Nullable final MediaType mediaType, final int i, final int i2) {
            Util.Wwwwwwwwwwwwwwwwwwwwwww(bArr.length, i, i2);
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$2
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return i2;
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@NotNull BufferedSink bufferedSink) {
                    bufferedSink.write(bArr, i, i2);
                }
            };
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        @JvmOverloads
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwww(@NotNull byte[] bArr, @Nullable MediaType mediaType, int i) {
            return Wwwwwwwwwwwwwwwwwwww(this, bArr, mediaType, i, 0, 4, null);
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        @JvmOverloads
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
            return Wwwwwwwwwwwwwwwwwwww(this, bArr, mediaType, 0, 0, 6, null);
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        @JvmOverloads
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull byte[] bArr) {
            return Wwwwwwwwwwwwwwwwwwww(this, bArr, null, 0, 0, 7, null);
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final ByteString byteString, @Nullable final MediaType mediaType) {
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return byteString.size();
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@NotNull BufferedSink bufferedSink) {
                    bufferedSink.Wwwww(byteString);
                }
            };
        }

        @JvmStatic
        @NotNull
        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @JvmOverloads
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MediaType mediaType, @NotNull byte[] bArr, int i, int i2) {
            return Wwwwwwwwwwwwwwwwwwwwww(bArr, mediaType, i, i2);
        }

        @JvmStatic
        @NotNull
        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @JvmOverloads
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MediaType mediaType, @NotNull byte[] bArr, int i) {
            return Wwwwwwwwwwwwwwwwwwwww(this, mediaType, bArr, i, 0, 8, null);
        }

        @JvmStatic
        @NotNull
        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @JvmOverloads
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MediaType mediaType, @NotNull byte[] bArr) {
            return Wwwwwwwwwwwwwwwwwwwww(this, mediaType, bArr, 0, 0, 12, null);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @JvmStatic
        @NotNull
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MediaType mediaType, @NotNull ByteString byteString) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwww(byteString, mediaType);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
        @JvmStatic
        @NotNull
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MediaType mediaType, @NotNull String str) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, mediaType);
        }

        @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'file' argument first to fix Java", replaceWith = @ReplaceWith(expression = "file.asRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.asRequestBody"}))
        @JvmStatic
        @NotNull
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable MediaType mediaType, @NotNull File file) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file, mediaType);
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable MediaType mediaType) {
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
            byte[] bytes = str.getBytes(charset);
            return Wwwwwwwwwwwwwwwwwwwwww(bytes, mediaType, 0, bytes.length);
        }

        @JvmStatic
        @JvmName(name = "create")
        @NotNull
        public final RequestBody Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final File file, @Nullable final MediaType mediaType) {
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return file.length();
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@NotNull BufferedSink bufferedSink) {
                    Source Wwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwww(file);
                    try {
                        bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2);
                        CloseableKt.closeFinally(Wwwwwwwwwwwwwwwwwwwwwwwww2, null);
                    } finally {
                    }
                }
            };
        }

        public Companion() {
        }
    }

    @JvmStatic
    @JvmName(name = "create")
    @NotNull
    public static final RequestBody create(@NotNull File file, @Nullable MediaType mediaType) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file, mediaType);
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    @Nullable
    public abstract MediaType contentType();

    public boolean isDuplex() {
        return false;
    }

    public boolean isOneShot() {
        return false;
    }

    public abstract void writeTo(@NotNull BufferedSink bufferedSink) throws IOException;

    @JvmStatic
    @JvmName(name = "create")
    @NotNull
    public static final RequestBody create(@NotNull String str, @Nullable MediaType mediaType) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, mediaType);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'file' argument first to fix Java", replaceWith = @ReplaceWith(expression = "file.asRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.asRequestBody"}))
    @JvmStatic
    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull File file) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, file);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull String str) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, str);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmStatic
    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull ByteString byteString) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, byteString);
    }

    @JvmStatic
    @NotNull
    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmOverloads
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, bArr);
    }

    @JvmStatic
    @NotNull
    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmOverloads
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr, int i) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, bArr, i);
    }

    @JvmStatic
    @NotNull
    @Deprecated(level = DeprecationLevel.WARNING, message = "Moved to extension function. Put the 'content' argument first to fix Java", replaceWith = @ReplaceWith(expression = "content.toRequestBody(contentType, offset, byteCount)", imports = {"okhttp3.RequestBody.Companion.toRequestBody"}))
    @JvmOverloads
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr, int i, int i2) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(mediaType, bArr, i, i2);
    }

    @JvmStatic
    @JvmName(name = "create")
    @NotNull
    public static final RequestBody create(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww(byteString, mediaType);
    }

    @JvmStatic
    @JvmName(name = "create")
    @NotNull
    @JvmOverloads
    public static final RequestBody create(@NotNull byte[] bArr) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwww(bArr);
    }

    @JvmStatic
    @JvmName(name = "create")
    @NotNull
    @JvmOverloads
    public static final RequestBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwww(bArr, mediaType);
    }

    @JvmStatic
    @JvmName(name = "create")
    @NotNull
    @JvmOverloads
    public static final RequestBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType, int i) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwww(bArr, mediaType, i);
    }

    @JvmStatic
    @JvmName(name = "create")
    @NotNull
    @JvmOverloads
    public static final RequestBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType, int i, int i2) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwww(bArr, mediaType, i, i2);
    }
}
