package okhttp3.internal.http2;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 S2\u00020\u0001:\u0001SB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ+\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\b¢\u0006\u0004\b\u0017\u0010\nJ\u001d\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u000f¢\u0006\u0004\b\u001c\u0010\u001dJ/\u0010\"\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010!\u001a\u00020\u000f¢\u0006\u0004\b\"\u0010#J/\u0010&\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\u000f2\b\u0010%\u001a\u0004\u0018\u00010\u001f2\u0006\u0010!\u001a\u00020\u000f¢\u0006\u0004\b&\u0010'J\u0015\u0010)\u001a\u00020\b2\u0006\u0010(\u001a\u00020\u000b¢\u0006\u0004\b)\u0010\u000eJ%\u0010-\u001a\u00020\b2\u0006\u0010*\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020\u000f¢\u0006\u0004\b-\u0010.J%\u00102\u001a\u00020\b2\u0006\u0010/\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u00101\u001a\u000200¢\u0006\u0004\b2\u00103J\u001d\u00106\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u00105\u001a\u000204¢\u0006\u0004\b6\u00107J-\u0010:\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u00108\u001a\u00020\u000f2\u0006\u00109\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020\u000f¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\bH\u0016¢\u0006\u0004\b<\u0010\nJ+\u0010>\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012¢\u0006\u0004\b>\u0010?J\u001f\u0010@\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010!\u001a\u000204H\u0002¢\u0006\u0004\b@\u00107R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u0014\u0010G\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010J\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010L\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010DR\u0017\u0010R\u001a\u00020M8\u0006¢\u0006\f\n\u0004\bN\u0010O\u001a\u0004\bP\u0010Q¨\u0006T"}, d2 = {"Lokhttp3/internal/http2/Http2Writer;", "Ljava/io/Closeable;", "Lokio/BufferedSink;", "sink", "", "client", "<init>", "(Lokio/BufferedSink;Z)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lokhttp3/internal/http2/Settings;", "peerSettings", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/http2/Settings;)V", "", "streamId", "promisedStreamId", "", "Lokhttp3/internal/http2/Header;", "requestHeaders", "Kkkkkkkkkkkkkkkkk", "(IILjava/util/List;)V", "flush", "Lokhttp3/internal/http2/ErrorCode;", "errorCode", "Kkkkkkkkkkkkkkkk", "(ILokhttp3/internal/http2/ErrorCode;)V", "Kkkkkkkkkkkkkkkkkkk", "()I", "outFinished", "Lokio/Buffer;", "source", "byteCount", "Wwwwwwwwwwwwww", "(ZILokio/Buffer;I)V", "flags", "buffer", "Kkkkkkkkkkkkkkkkkkkkkkk", "(IILokio/Buffer;I)V", "settings", "Kkkkkkkkkkkkkkk", "ack", "payload1", "payload2", "Kkkkkkkkkkkkkkkkkk", "(ZII)V", "lastGoodStreamId", "", "debugData", "Kkkkkkkkkkkkkkkkkkkkk", "(ILokhttp3/internal/http2/ErrorCode;[B)V", "", "windowSizeIncrement", "Kkkkkkkkkkkkkk", "(IJ)V", SessionDescription.ATTR_LENGTH, "type", "Kkkkkkkkkkkkkkkkkkkkkk", "(IIII)V", "close", "headerBlock", "Kkkkkkkkkkkkkkkkkkkk", "(ZILjava/util/List;)V", "Kkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSink;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwww", "Lokio/Buffer;", "hpackBuffer", "Wwwwwwwwwwwwwwwwwwwwww", "I", "maxFrameSize", "Wwwwwwwwwwwwwwwwwwwww", "closed", "Lokhttp3/internal/http2/Hpack$Writer;", "Wwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/http2/Hpack$Writer;", "getHpackWriter", "()Lokhttp3/internal/http2/Hpack$Writer;", "hpackWriter", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Http2Writer implements Closeable, AutoCloseable {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Logger f12939Wwwwwwwwwwwwwwwwwww = Logger.getLogger(Http2.class.getName());
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Hpack.Writer f12940Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12941Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12942Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f12943Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12944Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSink f12945Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/http2/Http2Writer$Companion;", "", "()V", "logger", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public Http2Writer(@NotNull BufferedSink bufferedSink, boolean z) {
        this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww = bufferedSink;
        this.f12944Wwwwwwwwwwwwwwwwwwwwwwww = z;
        Buffer buffer = new Buffer();
        this.f12943Wwwwwwwwwwwwwwwwwwwwwww = buffer;
        this.f12942Wwwwwwwwwwwwwwwwwwwwww = 16384;
        this.f12940Wwwwwwwwwwwwwwwwwwww = new Hpack.Writer(0, false, buffer, 3, null);
    }

    public final void Kkkkkkkkkkkkk(int i, long j) throws IOException {
        int i2;
        while (j > 0) {
            long min = Math.min(this.f12942Wwwwwwwwwwwwwwwwwwwwww, j);
            j -= min;
            int i3 = (int) min;
            if (j == 0) {
                i2 = 4;
            } else {
                i2 = 0;
            }
            Kkkkkkkkkkkkkkkkkkkkkk(i, i3, 9, i2);
            this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f12943Wwwwwwwwwwwwwwwwwwwwwww, min);
        }
    }

    public final synchronized void Kkkkkkkkkkkkkk(int i, long j) throws IOException {
        if (!this.f12941Wwwwwwwwwwwwwwwwwwwww) {
            if (j != 0 && j <= 2147483647L) {
                Kkkkkkkkkkkkkkkkkkkkkk(i, 4, 8, 0);
                this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeInt((int) j);
                this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
            } else {
                throw new IllegalArgumentException(Intrinsics.stringPlus("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: ", Long.valueOf(j)).toString());
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void Kkkkkkkkkkkkkkk(@NotNull Settings settings) throws IOException {
        int i;
        try {
            if (!this.f12941Wwwwwwwwwwwwwwwwwwwww) {
                int i2 = 0;
                Kkkkkkkkkkkkkkkkkkkkkk(0, settings.Wwwwwwwwwwwwwwwwwwwwwwwwww() * 6, 4, 0);
                while (i2 < 10) {
                    int i3 = i2 + 1;
                    if (settings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2)) {
                        if (i2 != 4) {
                            if (i2 != 7) {
                                i = i2;
                            } else {
                                i = 4;
                            }
                        } else {
                            i = 3;
                        }
                        this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeShort(i);
                        this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeInt(settings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2));
                    }
                    i2 = i3;
                }
                this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void Kkkkkkkkkkkkkkkk(int i, @NotNull ErrorCode errorCode) throws IOException {
        if (!this.f12941Wwwwwwwwwwwwwwwwwwwww) {
            if (errorCode.getHttpCode() != -1) {
                Kkkkkkkkkkkkkkkkkkkkkk(i, 4, 3, 0);
                this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeInt(errorCode.getHttpCode());
                this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
            } else {
                throw new IllegalArgumentException("Failed requirement.");
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void Kkkkkkkkkkkkkkkkk(int i, int i2, @NotNull List<Header> list) throws IOException {
        int i3;
        if (!this.f12941Wwwwwwwwwwwwwwwwwwwww) {
            this.f12940Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
            long Kk = this.f12943Wwwwwwwwwwwwwwwwwwwwwww.Kk();
            int min = (int) Math.min(this.f12942Wwwwwwwwwwwwwwwwwwwwww - 4, Kk);
            int i4 = min + 4;
            long j = min;
            int i5 = (Kk > j ? 1 : (Kk == j ? 0 : -1));
            if (i5 == 0) {
                i3 = 4;
            } else {
                i3 = 0;
            }
            Kkkkkkkkkkkkkkkkkkkkkk(i, i4, 5, i3);
            this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeInt(i2 & Integer.MAX_VALUE);
            this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f12943Wwwwwwwwwwwwwwwwwwwwwww, j);
            if (i5 > 0) {
                Kkkkkkkkkkkkk(i, Kk - j);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void Kkkkkkkkkkkkkkkkkk(boolean z, int i, int i2) throws IOException {
        if (!this.f12941Wwwwwwwwwwwwwwwwwwwww) {
            Kkkkkkkkkkkkkkkkkkkkkk(0, 8, 6, z ? 1 : 0);
            this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeInt(i);
            this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeInt(i2);
            this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final int Kkkkkkkkkkkkkkkkkkk() {
        return this.f12942Wwwwwwwwwwwwwwwwwwwwww;
    }

    public final synchronized void Kkkkkkkkkkkkkkkkkkkk(boolean z, int i, @NotNull List<Header> list) throws IOException {
        int i2;
        if (!this.f12941Wwwwwwwwwwwwwwwwwwwww) {
            this.f12940Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
            long Kk = this.f12943Wwwwwwwwwwwwwwwwwwwwwww.Kk();
            long min = Math.min(this.f12942Wwwwwwwwwwwwwwwwwwwwww, Kk);
            int i3 = (Kk > min ? 1 : (Kk == min ? 0 : -1));
            if (i3 == 0) {
                i2 = 4;
            } else {
                i2 = 0;
            }
            if (z) {
                i2 |= 1;
            }
            Kkkkkkkkkkkkkkkkkkkkkk(i, (int) min, 1, i2);
            this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f12943Wwwwwwwwwwwwwwwwwwwwwww, min);
            if (i3 > 0) {
                Kkkkkkkkkkkkk(i, Kk - min);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void Kkkkkkkkkkkkkkkkkkkkk(int i, @NotNull ErrorCode errorCode, @NotNull byte[] bArr) throws IOException {
        try {
            if (!this.f12941Wwwwwwwwwwwwwwwwwwwww) {
                if (errorCode.getHttpCode() != -1) {
                    boolean z = false;
                    Kkkkkkkkkkkkkkkkkkkkkk(0, bArr.length + 8, 7, 0);
                    this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeInt(i);
                    this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeInt(errorCode.getHttpCode());
                    if (bArr.length == 0) {
                        z = true;
                    }
                    if (!z) {
                        this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.write(bArr);
                    }
                    this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
                } else {
                    throw new IllegalArgumentException("errorCode.httpCode == -1");
                }
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkk(int i, int i2, int i3, int i4) throws IOException {
        int i5;
        int i6;
        int i7;
        int i8;
        Logger logger = f12939Wwwwwwwwwwwwwwwwwww;
        if (logger.isLoggable(Level.FINE)) {
            i5 = i;
            i6 = i2;
            i7 = i3;
            i8 = i4;
            logger.fine(Http2.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false, i5, i6, i7, i8));
        } else {
            i5 = i;
            i6 = i2;
            i7 = i3;
            i8 = i4;
        }
        if (i6 <= this.f12942Wwwwwwwwwwwwwwwwwwwwww) {
            if ((Integer.MIN_VALUE & i5) == 0) {
                Util.Kkkk(this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww, i6);
                this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeByte(i7 & 255);
                this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeByte(i8 & 255);
                this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.writeInt(Integer.MAX_VALUE & i5);
                return;
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("reserved bit set: ", Integer.valueOf(i5)).toString());
        }
        throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.f12942Wwwwwwwwwwwwwwwwwwwwww + ": " + i6).toString());
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkk(int i, int i2, @Nullable Buffer buffer, int i3) throws IOException {
        Kkkkkkkkkkkkkkkkkkkkkk(i, i3, 0, i2);
        if (i3 > 0) {
            this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, i3);
        }
    }

    public final synchronized void Wwwwwwwwwwwwww(boolean z, int i, @Nullable Buffer buffer, int i2) throws IOException {
        if (!this.f12941Wwwwwwwwwwwwwwwwwwwww) {
            Kkkkkkkkkkkkkkkkkkkkkkk(i, z ? 1 : 0, buffer, i2);
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        try {
            if (!this.f12941Wwwwwwwwwwwwwwwwwwwww) {
                if (!this.f12944Wwwwwwwwwwwwwwwwwwwwwwww) {
                    return;
                }
                Logger logger = f12939Wwwwwwwwwwwwwwwwwww;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Util.Wwwwwwwwwwwwwww(Intrinsics.stringPlus(">> CONNECTION ", Http2.f12794Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hex()), new Object[0]));
                }
                this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwww(Http2.f12794Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
                return;
            }
            throw new IOException("closed");
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Settings settings) throws IOException {
        try {
            if (!this.f12941Wwwwwwwwwwwwwwwwwwwww) {
                this.f12942Wwwwwwwwwwwwwwwwwwwwww = settings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12942Wwwwwwwwwwwwwwwwwwwwww);
                if (settings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
                    this.f12940Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(settings.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                Kkkkkkkkkkkkkkkkkkkkkk(0, 0, 4, 1);
                this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f12941Wwwwwwwwwwwwwwwwwwwww = true;
        this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    public final synchronized void flush() throws IOException {
        if (!this.f12941Wwwwwwwwwwwwwwwwwwwww) {
            this.f12945Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
        } else {
            throw new IOException("closed");
        }
    }
}
