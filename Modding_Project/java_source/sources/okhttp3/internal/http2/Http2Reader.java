package okhttp3.internal.http2;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 32\u00020\u0001:\u0003345B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J/\u0010\u0016\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J5\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ/\u0010\u001d\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001d\u0010\u0017J/\u0010\u001e\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001e\u0010\u0017J\u001f\u0010\u001f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001f\u0010 J/\u0010!\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b!\u0010\u0017J/\u0010\"\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\"\u0010\u0017J/\u0010#\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b#\u0010\u0017J/\u0010$\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b$\u0010\u0017J/\u0010%\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b%\u0010\u0017J/\u0010&\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b&\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010.\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u00102\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101¨\u00066"}, d2 = {"Lokhttp3/internal/http2/Http2Reader;", "Ljava/io/Closeable;", "Lokio/BufferedSource;", "source", "", "client", "<init>", "(Lokio/BufferedSource;Z)V", "Lokhttp3/internal/http2/Http2Reader$Handler;", "handler", "", "Wwwwwwwwwwwwww", "(Lokhttp3/internal/http2/Http2Reader$Handler;)V", "requireSettings", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z", "close", "()V", "", SessionDescription.ATTR_LENGTH, "flags", "streamId", "Kkkkkkkkkkkkkkkkkkkk", "(Lokhttp3/internal/http2/Http2Reader$Handler;III)V", "padding", "", "Lokhttp3/internal/http2/Header;", "Kkkkkkkkkkkkkkkkkkkkk", "(IIII)Ljava/util/List;", "Kkkkkkkkkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkkkk", "(Lokhttp3/internal/http2/Http2Reader$Handler;I)V", "Kkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Z", "Lokhttp3/internal/http2/Http2Reader$ContinuationSource;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/http2/Http2Reader$ContinuationSource;", "continuation", "Lokhttp3/internal/http2/Hpack$Reader;", "Wwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/http2/Hpack$Reader;", "hpackReader", "Companion", "ContinuationSource", "Handler", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Http2Reader implements Closeable, AutoCloseable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Logger f12901Wwwwwwwwwwwwwwwwwwwww = Logger.getLogger(Http2.class.getName());
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Hpack.Reader f12902Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ContinuationSource f12903Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12904Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSource f12905Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J%\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u000b\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$Companion;", "", "<init>", "()V", "", SessionDescription.ATTR_LENGTH, "flags", "padding", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(III)I", "Ljava/util/logging/Logger;", "logger", "Ljava/util/logging/Logger;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/logging/Logger;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3) throws IOException {
            if ((i2 & 8) != 0) {
                i--;
            }
            if (i3 <= i) {
                return i - i3;
            }
            throw new IOException("PROTOCOL_ERROR padding " + i3 + " > remaining length " + i);
        }

        @NotNull
        public final Logger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Http2Reader.f12901Wwwwwwwwwwwwwwwwwwwww;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\r\bf\u0018\u00002\u00020\u0001J/\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0004H&¢\u0006\u0004\b\n\u0010\u000bJ5\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH&¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H&¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H&¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\tH&¢\u0006\u0004\b\u001b\u0010\u001cJ'\u0010 \u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004H&¢\u0006\u0004\b \u0010!J'\u0010%\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010$\u001a\u00020#H&¢\u0006\u0004\b%\u0010&J\u001f\u0010)\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010(\u001a\u00020'H&¢\u0006\u0004\b)\u0010*J/\u0010.\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u0002H&¢\u0006\u0004\b.\u0010/J-\u00102\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u00042\f\u00101\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH&¢\u0006\u0004\b2\u00103¨\u00064"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$Handler;", "", "", "inFinished", "", "streamId", "Lokio/BufferedSource;", "source", SessionDescription.ATTR_LENGTH, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZILokio/BufferedSource;I)V", "associatedStreamId", "", "Lokhttp3/internal/http2/Header;", "headerBlock", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZIILjava/util/List;)V", "Lokhttp3/internal/http2/ErrorCode;", "errorCode", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(ILokhttp3/internal/http2/ErrorCode;)V", "clearPrevious", "Lokhttp3/internal/http2/Settings;", "settings", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZLokhttp3/internal/http2/Settings;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "ack", "payload1", "payload2", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZII)V", "lastGoodStreamId", "Lokio/ByteString;", "debugData", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V", "", "windowSizeIncrement", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IJ)V", "streamDependency", "weight", "exclusive", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(IIIZ)V", "promisedStreamId", "requestHeaders", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(IILjava/util/List;)V", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public interface Handler {
        void Wwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull ErrorCode errorCode, @NotNull ByteString byteString);

        void Wwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull ErrorCode errorCode);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3, boolean z);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, int i, int i2);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, int i, @NotNull BufferedSource bufferedSource, int i2) throws IOException;

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, @NotNull List<Header> list) throws IOException;

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, long j);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, int i, int i2, @NotNull List<Header> list);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, @NotNull Settings settings);
    }

    public Http2Reader(@NotNull BufferedSource bufferedSource, boolean z) {
        this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww = bufferedSource;
        this.f12904Wwwwwwwwwwwwwwwwwwwwwwww = z;
        ContinuationSource continuationSource = new ContinuationSource(bufferedSource);
        this.f12903Wwwwwwwwwwwwwwwwwwwwwww = continuationSource;
        this.f12902Wwwwwwwwwwwwwwwwwwwwww = new Hpack.Reader(continuationSource, 4096, 0, 4, null);
    }

    public final void Kkkkkkkkkkkkk(Handler handler, int i, int i2, int i3) throws IOException {
        if (i == 4) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readInt(), 2147483647L);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
                handler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                return;
            }
            throw new IOException("windowSizeIncrement was 0");
        }
        throw new IOException(Intrinsics.stringPlus("TYPE_WINDOW_UPDATE length !=4: ", Integer.valueOf(i)));
    }

    public final void Kkkkkkkkkkkkkk(Handler handler, int i, int i2, int i3) throws IOException {
        int readInt;
        if (i3 == 0) {
            if ((i2 & 1) != 0) {
                if (i == 0) {
                    handler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                }
                throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
            } else if (i % 6 == 0) {
                Settings settings = new Settings();
                IntProgression step = RangesKt.step(RangesKt.until(0, i), 6);
                int first = step.getFirst();
                int last = step.getLast();
                int step2 = step.getStep();
                if ((step2 > 0 && first <= last) || (step2 < 0 && last <= first)) {
                    while (true) {
                        int i4 = first + step2;
                        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readShort(), 65535);
                        readInt = this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readInt();
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 2) {
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 3) {
                                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 4) {
                                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 5 && (readInt < 16384 || readInt > 16777215)) {
                                        break;
                                    }
                                } else if (readInt >= 0) {
                                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = 7;
                                } else {
                                    throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                                }
                            } else {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = 4;
                            }
                        } else if (readInt != 0 && readInt != 1) {
                            throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                        }
                        settings.Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, readInt);
                        if (first == last) {
                            break;
                        }
                        first = i4;
                    }
                    throw new IOException(Intrinsics.stringPlus("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: ", Integer.valueOf(readInt)));
                }
                handler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false, settings);
                return;
            } else {
                throw new IOException(Intrinsics.stringPlus("TYPE_SETTINGS length % 6 != 0: ", Integer.valueOf(i)));
            }
        }
        throw new IOException("TYPE_SETTINGS streamId != 0");
    }

    public final void Kkkkkkkkkkkkkkk(Handler handler, int i, int i2, int i3) throws IOException {
        if (i == 4) {
            if (i3 != 0) {
                int readInt = this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readInt();
                ErrorCode Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ErrorCode.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readInt);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    handler.Wwwwwwwwwwwwwwwwwwwwwwwwww(i3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    return;
                }
                throw new IOException(Intrinsics.stringPlus("TYPE_RST_STREAM unexpected error code: ", Integer.valueOf(readInt)));
            }
            throw new IOException("TYPE_RST_STREAM streamId == 0");
        }
        throw new IOException("TYPE_RST_STREAM length: " + i + " != 4");
    }

    public final void Kkkkkkkkkkkkkkkk(Handler handler, int i, int i2, int i3) throws IOException {
        int i4;
        if (i3 != 0) {
            if ((i2 & 8) != 0) {
                i4 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255);
            } else {
                i4 = 0;
            }
            handler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3, this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readInt() & Integer.MAX_VALUE, Kkkkkkkkkkkkkkkkkkkkk(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i - 4, i2, i4), i4, i2, i3));
            return;
        }
        throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
    }

    public final void Kkkkkkkkkkkkkkkkk(Handler handler, int i, int i2, int i3) throws IOException {
        if (i == 5) {
            if (i3 != 0) {
                Kkkkkkkkkkkkkkkkkk(handler, i3);
                return;
            }
            throw new IOException("TYPE_PRIORITY streamId == 0");
        }
        throw new IOException("TYPE_PRIORITY length: " + i + " != 5");
    }

    public final void Kkkkkkkkkkkkkkkkkk(Handler handler, int i) throws IOException {
        boolean z;
        int readInt = this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readInt();
        if ((Integer.MIN_VALUE & readInt) != 0) {
            z = true;
        } else {
            z = false;
        }
        handler.Wwwwwwwwwwwwwwwwwwwwwwwwwww(i, readInt & Integer.MAX_VALUE, Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255) + 1, z);
    }

    public final void Kkkkkkkkkkkkkkkkkkk(Handler handler, int i, int i2, int i3) throws IOException {
        if (i == 8) {
            if (i3 == 0) {
                int readInt = this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readInt();
                int readInt2 = this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readInt();
                boolean z = true;
                if ((i2 & 1) == 0) {
                    z = false;
                }
                handler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(z, readInt, readInt2);
                return;
            }
            throw new IOException("TYPE_PING streamId != 0");
        }
        throw new IOException(Intrinsics.stringPlus("TYPE_PING length != 8: ", Integer.valueOf(i)));
    }

    public final void Kkkkkkkkkkkkkkkkkkkk(Handler handler, int i, int i2, int i3) throws IOException {
        boolean z;
        if (i3 != 0) {
            int i4 = 0;
            if ((i2 & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            if ((i2 & 8) != 0) {
                i4 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255);
            }
            if ((i2 & 32) != 0) {
                Kkkkkkkkkkkkkkkkkk(handler, i3);
                i -= 5;
            }
            handler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z, i3, -1, Kkkkkkkkkkkkkkkkkkkkk(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, i4), i4, i2, i3));
            return;
        }
        throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
    }

    public final List<Header> Kkkkkkkkkkkkkkkkkkkkk(int i, int i2, int i3, int i4) throws IOException {
        this.f12903Wwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkk(i);
        ContinuationSource continuationSource = this.f12903Wwwwwwwwwwwwwwwwwwwwwww;
        continuationSource.Kkkkkkkkkkkkkkkkkkkkkk(continuationSource.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        this.f12903Wwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkk(i2);
        this.f12903Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwww(i3);
        this.f12903Wwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkk(i4);
        this.f12902Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww();
        return this.f12902Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkk(Handler handler, int i, int i2, int i3) throws IOException {
        if (i >= 8) {
            if (i3 == 0) {
                int readInt = this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readInt();
                int readInt2 = this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readInt();
                int i4 = i - 8;
                ErrorCode Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ErrorCode.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readInt2);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    ByteString byteString = ByteString.EMPTY;
                    if (i4 > 0) {
                        byteString = this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(i4);
                    }
                    handler.Wwwwwwwwwwwwwwwwwwwwwwwww(readInt, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, byteString);
                    return;
                }
                throw new IOException(Intrinsics.stringPlus("TYPE_GOAWAY unexpected error code: ", Integer.valueOf(readInt2)));
            }
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        throw new IOException(Intrinsics.stringPlus("TYPE_GOAWAY length < 8: ", Integer.valueOf(i)));
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkk(Handler handler, int i, int i2, int i3) throws IOException {
        boolean z;
        if (i3 != 0) {
            int i4 = 0;
            if ((i2 & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            if ((i2 & 32) == 0) {
                if ((i2 & 8) != 0) {
                    i4 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255);
                }
                handler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(z, i3, this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww, Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, i2, i4));
                this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.skip(i4);
                return;
            }
            throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
        }
        throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
    }

    public final void Wwwwwwwwwwwwww(@NotNull Handler handler) throws IOException {
        if (this.f12904Wwwwwwwwwwwwwwwwwwwwwwww) {
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwww(true, handler)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        BufferedSource bufferedSource = this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww;
        ByteString byteString = Http2.f12794Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        ByteString Wwwwwwwwwwwwwww2 = bufferedSource.Wwwwwwwwwwwwwww(byteString.size());
        Logger logger = f12901Wwwwwwwwwwwwwwwwwwwww;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Util.Wwwwwwwwwwwwwww(Intrinsics.stringPlus("<< CONNECTION ", Wwwwwwwwwwwwwww2.hex()), new Object[0]));
        }
        if (Intrinsics.areEqual(byteString, Wwwwwwwwwwwwwww2)) {
            return;
        }
        throw new IOException(Intrinsics.stringPlus("Expected a connection header but was ", Wwwwwwwwwwwwwww2.utf8()));
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, @NotNull Handler handler) throws IOException {
        try {
            this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(9L);
            int Kkkkkkkkkkkkkkkkkkkkkk2 = Util.Kkkkkkkkkkkkkkkkkkkkkk(this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww);
            if (Kkkkkkkkkkkkkkkkkkkkkk2 <= 16384) {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255);
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255);
                int readInt = this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.readInt() & Integer.MAX_VALUE;
                Logger logger = f12901Wwwwwwwwwwwwwwwwwwwww;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Http2.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true, readInt, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3));
                }
                if (z && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 4) {
                    throw new IOException(Intrinsics.stringPlus("Expected a SETTINGS frame but was ", Http2.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)));
                }
                switch (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    case 0:
                        Kkkkkkkkkkkkkkkkkkkkkkk(handler, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, readInt);
                        return true;
                    case 1:
                        Kkkkkkkkkkkkkkkkkkkk(handler, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, readInt);
                        return true;
                    case 2:
                        Kkkkkkkkkkkkkkkkk(handler, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, readInt);
                        return true;
                    case 3:
                        Kkkkkkkkkkkkkkk(handler, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, readInt);
                        return true;
                    case 4:
                        Kkkkkkkkkkkkkk(handler, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, readInt);
                        return true;
                    case 5:
                        Kkkkkkkkkkkkkkkk(handler, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, readInt);
                        return true;
                    case 6:
                        Kkkkkkkkkkkkkkkkkkk(handler, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, readInt);
                        return true;
                    case 7:
                        Kkkkkkkkkkkkkkkkkkkkkk(handler, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, readInt);
                        return true;
                    case 8:
                        Kkkkkkkkkkkkk(handler, Kkkkkkkkkkkkkkkkkkkkkk2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, readInt);
                        return true;
                    default:
                        this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.skip(Kkkkkkkkkkkkkkkkkkkkkk2);
                        return true;
                }
            }
            throw new IOException(Intrinsics.stringPlus("FRAME_SIZE_ERROR: ", Integer.valueOf(Kkkkkkkkkkkkkkkkkkkkkk2)));
        } catch (EOFException unused) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f12905Wwwwwwwwwwwwwwwwwwwwwwwww.close();
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0018\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0011R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010 \u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0017\u001a\u0004\b\u001e\u0010\u0019\"\u0004\b\u001f\u0010\u001bR\"\u0010$\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0017\u001a\u0004\b\"\u0010\u0019\"\u0004\b#\u0010\u001bR\"\u0010(\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u0017\u001a\u0004\b&\u0010\u0019\"\u0004\b'\u0010\u001bR\"\u0010,\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\u0017\u001a\u0004\b*\u0010\u0019\"\u0004\b+\u0010\u001b¨\u0006-"}, d2 = {"Lokhttp3/internal/http2/Http2Reader$ContinuationSource;", "Lokio/Source;", "Lokio/BufferedSource;", "source", "<init>", "(Lokio/BufferedSource;)V", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "I", "getLength", "()I", "Kkkkkkkkkkkkkkkkkkkkkk", "(I)V", SessionDescription.ATTR_LENGTH, "Wwwwwwwwwwwwwwwwwwwwwww", "getFlags", "Wwwwwwwwwwwwww", "flags", "Wwwwwwwwwwwwwwwwwwwwww", "getStreamId", "Kkkkkkkkkkkkkkkkkkkk", "streamId", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkkkk", "left", "Wwwwwwwwwwwwwwwwwwww", "getPadding", "Kkkkkkkkkkkkkkkkkkkkk", "padding", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class ContinuationSource implements Source, AutoCloseable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12906Wwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12907Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12908Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12909Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f12910Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final BufferedSource f12911Wwwwwwwwwwwwwwwwwwwwwwwww;

        public ContinuationSource(@NotNull BufferedSource bufferedSource) {
            this.f12911Wwwwwwwwwwwwwwwwwwwwwwwww = bufferedSource;
        }

        public final void Kkkkkkkkkkkkkkkkkkkk(int i) {
            this.f12908Wwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Kkkkkkkkkkkkkkkkkkkkk(int i) {
            this.f12906Wwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Kkkkkkkkkkkkkkkkkkkkkk(int i) {
            this.f12910Wwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Kkkkkkkkkkkkkkkkkkkkkkk(int i) {
            this.f12907Wwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwwww(int i) {
            this.f12909Wwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
            int i = this.f12908Wwwwwwwwwwwwwwwwwwwwww;
            int Kkkkkkkkkkkkkkkkkkkkkk2 = Util.Kkkkkkkkkkkkkkkkkkkkkk(this.f12911Wwwwwwwwwwwwwwwwwwwwwwwww);
            this.f12907Wwwwwwwwwwwwwwwwwwwww = Kkkkkkkkkkkkkkkkkkkkkk2;
            this.f12910Wwwwwwwwwwwwwwwwwwwwwwww = Kkkkkkkkkkkkkkkkkkkkkk2;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12911Wwwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255);
            this.f12909Wwwwwwwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12911Wwwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255);
            Companion companion = Http2Reader.Companion;
            if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().isLoggable(Level.FINE)) {
                companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().fine(Http2.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(true, this.f12908Wwwwwwwwwwwwwwwwwwwwww, this.f12910Wwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.f12909Wwwwwwwwwwwwwwwwwwwwwww));
            }
            int readInt = this.f12911Wwwwwwwwwwwwwwwwwwwwwwwww.readInt() & Integer.MAX_VALUE;
            this.f12908Wwwwwwwwwwwwwwwwwwwwww = readInt;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 9) {
                if (readInt == i) {
                    return;
                }
                throw new IOException("TYPE_CONTINUATION streamId changed");
            }
            throw new IOException(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " != TYPE_CONTINUATION");
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12907Wwwwwwwwwwwwwwwwwwwww;
        }

        @Override // okio.Source
        public long read(@NotNull Buffer buffer, long j) throws IOException {
            while (true) {
                int i = this.f12907Wwwwwwwwwwwwwwwwwwwww;
                if (i == 0) {
                    this.f12911Wwwwwwwwwwwwwwwwwwwwwwwww.skip(this.f12906Wwwwwwwwwwwwwwwwwwww);
                    this.f12906Wwwwwwwwwwwwwwwwwwww = 0;
                    if ((this.f12909Wwwwwwwwwwwwwwwwwwwwwww & 4) != 0) {
                        return -1L;
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                } else {
                    long read = this.f12911Wwwwwwwwwwwwwwwwwwwwwwwww.read(buffer, Math.min(j, i));
                    if (read == -1) {
                        return -1L;
                    }
                    this.f12907Wwwwwwwwwwwwwwwwwwwww -= (int) read;
                    return read;
                }
            }
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.f12911Wwwwwwwwwwwwwwwwwwwwwwwww.timeout();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }
    }
}
