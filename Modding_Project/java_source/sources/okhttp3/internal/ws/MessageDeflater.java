package okhttp3.internal.ws;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Deflater;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import okio.Buffer;
import okio.ByteString;
import okio.DeflaterSink;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000f\u001a\u00020\u0002*\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lokhttp3/internal/ws/MessageDeflater;", "Ljava/io/Closeable;", "", "noContextTakeover", "<init>", "(Z)V", "Lokio/Buffer;", "buffer", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;)V", "close", "()V", "Lokio/ByteString;", "suffix", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;Lokio/ByteString;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Buffer;", "deflatedBytes", "Ljava/util/zip/Deflater;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/zip/Deflater;", "deflater", "Lokio/DeflaterSink;", "Wwwwwwwwwwwwwwwwwwwwww", "Lokio/DeflaterSink;", "deflaterSink", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class MessageDeflater implements Closeable, AutoCloseable {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DeflaterSink f13011Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Deflater f13012Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f13013Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13014Wwwwwwwwwwwwwwwwwwwwwwwww;

    public MessageDeflater(boolean z) {
        this.f13014Wwwwwwwwwwwwwwwwwwwwwwwww = z;
        Buffer buffer = new Buffer();
        this.f13013Wwwwwwwwwwwwwwwwwwwwwwww = buffer;
        Deflater deflater = new Deflater(-1, true);
        this.f13012Wwwwwwwwwwwwwwwwwwwwwww = deflater;
        this.f13011Wwwwwwwwwwwwwwwwwwwwww = new DeflaterSink((Sink) buffer, deflater);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(Buffer buffer, ByteString byteString) {
        return buffer.Kkkkkkkkkk(buffer.Kk() - byteString.size(), byteString);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer) throws IOException {
        ByteString byteString;
        if (this.f13013Wwwwwwwwwwwwwwwwwwwwwwww.Kk() == 0) {
            if (this.f13014Wwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f13012Wwwwwwwwwwwwwwwwwwwwwww.reset();
            }
            this.f13011Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, buffer.Kk());
            this.f13011Wwwwwwwwwwwwwwwwwwwwww.flush();
            Buffer buffer2 = this.f13013Wwwwwwwwwwwwwwwwwwwwwwww;
            byteString = MessageDeflaterKt.f13015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(buffer2, byteString)) {
                long Kk = this.f13013Wwwwwwwwwwwwwwwwwwwwwwww.Kk() - 4;
                Buffer.UnsafeCursor Kkkkkkk = Buffer.Kkkkkkk(this.f13013Wwwwwwwwwwwwwwwwwwwwwwww, null, 1, null);
                try {
                    Kkkkkkk.Wwwwwwwwwwwwww(Kk);
                    CloseableKt.closeFinally(Kkkkkkk, null);
                } finally {
                }
            } else {
                this.f13013Wwwwwwwwwwwwwwwwwwwwwwww.writeByte(0);
            }
            Buffer buffer3 = this.f13013Wwwwwwwwwwwwwwwwwwwwwwww;
            buffer.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer3, buffer3.Kk());
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13011Wwwwwwwwwwwwwwwwwwwwww.close();
    }
}
