package okhttp3.internal.ws;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.Closeable;
import java.io.IOException;
import java.util.Random;
import kotlin.Metadata;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0012J\u001f\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u000e¢\u0006\u0004\b\u001b\u0010\u0018J\u000f\u0010\u001c\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u001f\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010!R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010!R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00103\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00100R\u0016\u00105\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010!R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010=\u001a\u0004\u0018\u00010:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010@\u001a\u0004\u0018\u00010>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010?¨\u0006A"}, d2 = {"Lokhttp3/internal/ws/WebSocketWriter;", "Ljava/io/Closeable;", "", "isClient", "Lokio/BufferedSink;", "sink", "Ljava/util/Random;", "random", "perMessageDeflate", "noContextTakeover", "", "minimumDeflateSize", "<init>", "(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V", "Lokio/ByteString;", "payload", "", "Kkkkkkkkkkkkkkkkkkkkkkk", "(Lokio/ByteString;)V", "Kkkkkkkkkkkkkkkkkkkkkk", "", "code", "reason", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ILokio/ByteString;)V", "formatOpcode", "data", "Wwwwwwwwwwwwww", "close", "()V", "opcode", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSink;", "getSink", "()Lokio/BufferedSink;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Random;", "getRandom", "()Ljava/util/Random;", "Wwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwww", "J", "Lokio/Buffer;", "Wwwwwwwwwwwwwwwwwww", "Lokio/Buffer;", "messageBuffer", "Wwwwwwwwwwwwwwwwww", "sinkBuffer", "Wwwwwwwwwwwwwwwww", "writerClosed", "Lokhttp3/internal/ws/MessageDeflater;", "Wwwwwwwwwwwwwwww", "Lokhttp3/internal/ws/MessageDeflater;", "messageDeflater", "", "Wwwwwwwwwwwwwww", "[B", "maskKey", "Lokio/Buffer$UnsafeCursor;", "Lokio/Buffer$UnsafeCursor;", "maskCursor", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class WebSocketWriter implements Closeable, AutoCloseable {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer.UnsafeCursor f13084Wwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte[] f13085Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public MessageDeflater f13086Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13087Wwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f13088Wwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f13089Wwwwwwwwwwwwwwwwwww = new Buffer();

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13090Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13091Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13092Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Random f13093Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final BufferedSink f13094Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13095Wwwwwwwwwwwwwwwwwwwwwwwww;

    public WebSocketWriter(boolean z, @NotNull BufferedSink bufferedSink, @NotNull Random random, boolean z2, boolean z3, long j) {
        byte[] bArr;
        this.f13095Wwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f13094Wwwwwwwwwwwwwwwwwwwwwwww = bufferedSink;
        this.f13093Wwwwwwwwwwwwwwwwwwwwwww = random;
        this.f13092Wwwwwwwwwwwwwwwwwwwwww = z2;
        this.f13091Wwwwwwwwwwwwwwwwwwwww = z3;
        this.f13090Wwwwwwwwwwwwwwwwwwww = j;
        this.f13088Wwwwwwwwwwwwwwwwww = bufferedSink.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (z) {
            bArr = new byte[4];
        } else {
            bArr = null;
        }
        this.f13085Wwwwwwwwwwwwwww = bArr;
        this.f13084Wwwwwwwwwwwwww = z ? new Buffer.UnsafeCursor() : null;
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkk(@NotNull ByteString byteString) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(10, byteString);
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkk(@NotNull ByteString byteString) throws IOException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(9, byteString);
    }

    public final void Wwwwwwwwwwwwww(int i, @NotNull ByteString byteString) throws IOException {
        int i2;
        if (!this.f13087Wwwwwwwwwwwwwwwww) {
            this.f13089Wwwwwwwwwwwwwwwwwww.Wwwww(byteString);
            int i3 = i | 128;
            if (this.f13092Wwwwwwwwwwwwwwwwwwwwww && byteString.size() >= this.f13090Wwwwwwwwwwwwwwwwwwww) {
                MessageDeflater messageDeflater = this.f13086Wwwwwwwwwwwwwwww;
                if (messageDeflater == null) {
                    messageDeflater = new MessageDeflater(this.f13091Wwwwwwwwwwwwwwwwwwwww);
                    this.f13086Wwwwwwwwwwwwwwww = messageDeflater;
                }
                messageDeflater.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13089Wwwwwwwwwwwwwwwwwww);
                i3 = i | 192;
            }
            long Kk = this.f13089Wwwwwwwwwwwwwwwwwww.Kk();
            this.f13088Wwwwwwwwwwwwwwwwww.writeByte(i3);
            if (this.f13095Wwwwwwwwwwwwwwwwwwwwwwwww) {
                i2 = 128;
            } else {
                i2 = 0;
            }
            if (Kk <= 125) {
                this.f13088Wwwwwwwwwwwwwwwwww.writeByte(i2 | ((int) Kk));
            } else if (Kk <= 65535) {
                this.f13088Wwwwwwwwwwwwwwwwww.writeByte(i2 | 126);
                this.f13088Wwwwwwwwwwwwwwwwww.writeShort((int) Kk);
            } else {
                this.f13088Wwwwwwwwwwwwwwwwww.writeByte(i2 | 127);
                this.f13088Wwwwwwwwwwwwwwwwww.Illlllllllllllllll(Kk);
            }
            if (this.f13095Wwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f13093Wwwwwwwwwwwwwwwwwwwwwww.nextBytes(this.f13085Wwwwwwwwwwwwwww);
                this.f13088Wwwwwwwwwwwwwwwwww.write(this.f13085Wwwwwwwwwwwwwww);
                if (Kk > 0) {
                    this.f13089Wwwwwwwwwwwwwwwwwww.Kkkkkkkk(this.f13084Wwwwwwwwwwwwww);
                    this.f13084Wwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkk(0L);
                    WebSocketProtocol.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13084Wwwwwwwwwwwwww, this.f13085Wwwwwwwwwwwwwww);
                    this.f13084Wwwwwwwwwwwwww.close();
                }
            }
            this.f13088Wwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f13089Wwwwwwwwwwwwwwwwwww, Kk);
            this.f13094Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return;
        }
        throw new IOException("closed");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i, ByteString byteString) throws IOException {
        if (!this.f13087Wwwwwwwwwwwwwwwww) {
            int size = byteString.size();
            if (size <= 125) {
                this.f13088Wwwwwwwwwwwwwwwwww.writeByte(i | 128);
                if (this.f13095Wwwwwwwwwwwwwwwwwwwwwwwww) {
                    this.f13088Wwwwwwwwwwwwwwwwww.writeByte(size | 128);
                    this.f13093Wwwwwwwwwwwwwwwwwwwwwww.nextBytes(this.f13085Wwwwwwwwwwwwwww);
                    this.f13088Wwwwwwwwwwwwwwwwww.write(this.f13085Wwwwwwwwwwwwwww);
                    if (size > 0) {
                        long Kk = this.f13088Wwwwwwwwwwwwwwwwww.Kk();
                        this.f13088Wwwwwwwwwwwwwwwwww.Wwwww(byteString);
                        this.f13088Wwwwwwwwwwwwwwwwww.Kkkkkkkk(this.f13084Wwwwwwwwwwwwww);
                        this.f13084Wwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkk(Kk);
                        WebSocketProtocol.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13084Wwwwwwwwwwwwww, this.f13085Wwwwwwwwwwwwwww);
                        this.f13084Wwwwwwwwwwwwww.close();
                    }
                } else {
                    this.f13088Wwwwwwwwwwwwwwwwww.writeByte(size);
                    this.f13088Wwwwwwwwwwwwwwwwww.Wwwww(byteString);
                }
                this.f13094Wwwwwwwwwwwwwwwwwwwwwwww.flush();
                return;
            }
            throw new IllegalArgumentException("Payload size must be less than or equal to 125");
        }
        throw new IOException("closed");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, @Nullable ByteString byteString) throws IOException {
        ByteString byteString2 = ByteString.EMPTY;
        if (i != 0 || byteString != null) {
            if (i != 0) {
                WebSocketProtocol.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
            }
            Buffer buffer = new Buffer();
            buffer.writeShort(i);
            if (byteString != null) {
                buffer.Wwwww(byteString);
            }
            byteString2 = buffer.Wwwwwww();
        }
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwww(8, byteString2);
        } finally {
            this.f13087Wwwwwwwwwwwwwwwww = true;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        MessageDeflater messageDeflater = this.f13086Wwwwwwwwwwwwwwww;
        if (messageDeflater == null) {
            return;
        }
        messageDeflater.close();
    }
}
