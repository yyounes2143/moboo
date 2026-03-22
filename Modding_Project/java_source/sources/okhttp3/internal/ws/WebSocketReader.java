package okhttp3.internal.ws;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001@B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u000eJ\u000f\u0010\u0012\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0012\u0010\u000eJ\u000f\u0010\u0013\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0013\u0010\u000eJ\u000f\u0010\u0014\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0014\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u0016R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u0016R\u0016\u0010 \u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u0016R\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010\u0016R\u0016\u0010,\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010\u0016R\u0016\u0010.\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010\u0016R\u0014\u00101\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u00100R\u0014\u00103\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00100R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010;\u001a\u0004\u0018\u0001088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010?\u001a\u0004\u0018\u00010<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>¨\u0006A"}, d2 = {"Lokhttp3/internal/ws/WebSocketReader;", "Ljava/io/Closeable;", "", "isClient", "Lokio/BufferedSource;", "source", "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "frameCallback", "perMessageDeflate", "noContextTakeover", "<init>", "(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;ZZ)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "close", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "getSource", "()Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "closed", "", "Wwwwwwwwwwwwwwwwwww", "I", "opcode", "", "Wwwwwwwwwwwwwwwwww", "J", "frameLength", "Wwwwwwwwwwwwwwwww", "isFinalFrame", "Wwwwwwwwwwwwwwww", "isControlFrame", "Wwwwwwwwwwwwwww", "readingCompressedMessage", "Lokio/Buffer;", "Lokio/Buffer;", "controlFrameBuffer", "Wwwwwwwwwwwww", "messageFrameBuffer", "Lokhttp3/internal/ws/MessageInflater;", "Wwwwwwwwwwww", "Lokhttp3/internal/ws/MessageInflater;", "messageInflater", "", "Wwwwwwwwwww", "[B", "maskKey", "Lokio/Buffer$UnsafeCursor;", "Wwwwwwwwww", "Lokio/Buffer$UnsafeCursor;", "maskCursor", "FrameCallback", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class WebSocketReader implements Closeable, AutoCloseable {
    @Nullable

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public final Buffer.UnsafeCursor f13068Wwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public final byte[] f13069Wwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public MessageInflater f13070Wwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13073Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13074Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13075Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13076Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13077Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13078Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13079Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13080Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FrameCallback f13081Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSource f13082Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13083Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f13072Wwwwwwwwwwwwww = new Buffer();
    @NotNull

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f13071Wwwwwwwwwwwww = new Buffer();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H&¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0007H&¢\u0006\u0004\b\f\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0007H&¢\u0006\u0004\b\r\u0010\nJ\u001f\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0002H&¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "", "", "text", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Lokio/ByteString;", "bytes", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/ByteString;)V", "payload", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "code", "reason", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILjava/lang/String;)V", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public interface FrameCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @NotNull String str);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) throws IOException;

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString) throws IOException;
    }

    public WebSocketReader(boolean z, @NotNull BufferedSource bufferedSource, @NotNull FrameCallback frameCallback, boolean z2, boolean z3) {
        byte[] bArr;
        this.f13083Wwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f13082Wwwwwwwwwwwwwwwwwwwwwwww = bufferedSource;
        this.f13081Wwwwwwwwwwwwwwwwwwwwwww = frameCallback;
        this.f13080Wwwwwwwwwwwwwwwwwwwwww = z2;
        this.f13079Wwwwwwwwwwwwwwwwwwwww = z3;
        if (z) {
            bArr = null;
        } else {
            bArr = new byte[4];
        }
        this.f13069Wwwwwwwwwww = bArr;
        this.f13068Wwwwwwwwww = z ? null : new Buffer.UnsafeCursor();
    }

    public final void Kkkkkkkkkkkkkkkkkkkkk() throws IOException {
        while (!this.f13078Wwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwww();
            if (this.f13074Wwwwwwwwwwwwwwww) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                return;
            }
        }
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkk() throws IOException {
        int i = this.f13077Wwwwwwwwwwwwwwwwwww;
        if (i != 1 && i != 2) {
            throw new ProtocolException(Intrinsics.stringPlus("Unknown opcode: ", Util.Kkkkkkkkkkkkkkk(i)));
        }
        Kkkkkkkkkkkkkkkkkkkkkkk();
        if (this.f13073Wwwwwwwwwwwwwww) {
            MessageInflater messageInflater = this.f13070Wwwwwwwwwwww;
            if (messageInflater == null) {
                messageInflater = new MessageInflater(this.f13079Wwwwwwwwwwwwwwwwwwwww);
                this.f13070Wwwwwwwwwwww = messageInflater;
            }
            messageInflater.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13071Wwwwwwwwwwwww);
        }
        if (i == 1) {
            this.f13081Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13071Wwwwwwwwwwwww.Kkkkk());
        } else {
            this.f13081Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13071Wwwwwwwwwwwww.Wwwwwww());
        }
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkk() throws IOException {
        while (!this.f13078Wwwwwwwwwwwwwwwwwwww) {
            long j = this.f13076Wwwwwwwwwwwwwwwwww;
            if (j > 0) {
                this.f13082Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13071Wwwwwwwwwwwww, j);
                if (!this.f13083Wwwwwwwwwwwwwwwwwwwwwwwww) {
                    this.f13071Wwwwwwwwwwwww.Kkkkkkkk(this.f13068Wwwwwwwwww);
                    this.f13068Wwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkk(this.f13071Wwwwwwwwwwwww.Kk() - this.f13076Wwwwwwwwwwwwwwwwww);
                    WebSocketProtocol.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13068Wwwwwwwwww, this.f13069Wwwwwwwwwww);
                    this.f13068Wwwwwwwwww.close();
                }
            }
            if (this.f13075Wwwwwwwwwwwwwwwww) {
                return;
            }
            Kkkkkkkkkkkkkkkkkkkkk();
            if (this.f13077Wwwwwwwwwwwwwwwwwww != 0) {
                throw new ProtocolException(Intrinsics.stringPlus("Expected continuation opcode. Got: ", Util.Kkkkkkkkkkkkkkk(this.f13077Wwwwwwwwwwwwwwwwwww)));
            }
        }
        throw new IOException("closed");
    }

    public final void Wwwwwwwwwwwwww() throws IOException, ProtocolException {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        String str;
        if (!this.f13078Wwwwwwwwwwwwwwwwwwww) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13082Wwwwwwwwwwwwwwwwwwwwwwww.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f13082Wwwwwwwwwwwwwwwwwwwwwwww.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            try {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13082Wwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255);
                this.f13082Wwwwwwwwwwwwwwwwwwwwwwww.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.NANOSECONDS);
                int i = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 15;
                this.f13077Wwwwwwwwwwwwwwwwwww = i;
                boolean z5 = false;
                if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 128) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.f13075Wwwwwwwwwwwwwwwww = z;
                if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 8) != 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.f13074Wwwwwwwwwwwwwwww = z2;
                if (z2 && !z) {
                    throw new ProtocolException("Control frames must be final.");
                }
                if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 64) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (i != 1 && i != 2) {
                    if (z3) {
                        throw new ProtocolException("Unexpected rsv1 flag");
                    }
                } else {
                    if (z3) {
                        if (this.f13080Wwwwwwwwwwwwwwwwwwwwww) {
                            z4 = true;
                        } else {
                            throw new ProtocolException("Unexpected rsv1 flag");
                        }
                    } else {
                        z4 = false;
                    }
                    this.f13073Wwwwwwwwwwwwwww = z4;
                }
                if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 32) == 0) {
                    if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 & 16) == 0) {
                        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13082Wwwwwwwwwwwwwwwwwwwwwwww.readByte(), 255);
                        if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 & 128) != 0) {
                            z5 = true;
                        }
                        if (z5 == this.f13083Wwwwwwwwwwwwwwwwwwwwwwwww) {
                            if (this.f13083Wwwwwwwwwwwwwwwwwwwwwwwww) {
                                str = "Server-sent frames must not be masked.";
                            } else {
                                str = "Client-sent frames must be masked.";
                            }
                            throw new ProtocolException(str);
                        }
                        long j = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 & 127;
                        this.f13076Wwwwwwwwwwwwwwwwww = j;
                        if (j == 126) {
                            this.f13076Wwwwwwwwwwwwwwwwww = Util.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13082Wwwwwwwwwwwwwwwwwwwwwwww.readShort(), 65535);
                        } else if (j == 127) {
                            long readLong = this.f13082Wwwwwwwwwwwwwwwwwwwwwwww.readLong();
                            this.f13076Wwwwwwwwwwwwwwwwww = readLong;
                            if (readLong < 0) {
                                throw new ProtocolException("Frame length 0x" + Util.Kkkkkkkkkkkkkk(this.f13076Wwwwwwwwwwwwwwwwww) + " > 0x7FFFFFFFFFFFFFFF");
                            }
                        }
                        if (this.f13074Wwwwwwwwwwwwwwww && this.f13076Wwwwwwwwwwwwwwwwww > 125) {
                            throw new ProtocolException("Control frame must be less than 125B.");
                        }
                        if (z5) {
                            this.f13082Wwwwwwwwwwwwwwwwwwwwwwww.readFully(this.f13069Wwwwwwwwwww);
                            return;
                        }
                        return;
                    }
                    throw new ProtocolException("Unexpected rsv3 flag");
                }
                throw new ProtocolException("Unexpected rsv2 flag");
            } catch (Throwable th) {
                this.f13082Wwwwwwwwwwwwwwwwwwwwwwww.timeout().Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, TimeUnit.NANOSECONDS);
                throw th;
            }
        }
        throw new IOException("closed");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        short s;
        String str;
        long j = this.f13076Wwwwwwwwwwwwwwwwww;
        if (j > 0) {
            this.f13082Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13072Wwwwwwwwwwwwww, j);
            if (!this.f13083Wwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f13072Wwwwwwwwwwwwww.Kkkkkkkk(this.f13068Wwwwwwwwww);
                this.f13068Wwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkk(0L);
                WebSocketProtocol.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13068Wwwwwwwwww, this.f13069Wwwwwwwwwww);
                this.f13068Wwwwwwwwww.close();
            }
        }
        switch (this.f13077Wwwwwwwwwwwwwwwwwww) {
            case 8:
                long Kk = this.f13072Wwwwwwwwwwwwww.Kk();
                if (Kk != 1) {
                    if (Kk != 0) {
                        s = this.f13072Wwwwwwwwwwwwww.readShort();
                        str = this.f13072Wwwwwwwwwwwwww.Kkkkk();
                        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = WebSocketProtocol.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(s);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            throw new ProtocolException(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                    } else {
                        s = 1005;
                        str = "";
                    }
                    this.f13081Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(s, str);
                    this.f13078Wwwwwwwwwwwwwwwwwwww = true;
                    return;
                }
                throw new ProtocolException("Malformed close payload length of 1.");
            case 9:
                this.f13081Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13072Wwwwwwwwwwwwww.Wwwwwww());
                return;
            case 10:
                this.f13081Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13072Wwwwwwwwwwwwww.Wwwwwww());
                return;
            default:
                throw new ProtocolException(Intrinsics.stringPlus("Unknown control opcode: ", Util.Kkkkkkkkkkkkkkk(this.f13077Wwwwwwwwwwwwwwwwwww)));
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        Wwwwwwwwwwwwww();
        if (this.f13074Wwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            Kkkkkkkkkkkkkkkkkkkkkk();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        MessageInflater messageInflater = this.f13070Wwwwwwwwwwww;
        if (messageInflater == null) {
            return;
        }
        messageInflater.close();
    }
}
