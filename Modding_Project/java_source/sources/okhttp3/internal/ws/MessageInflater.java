package okhttp3.internal.ws;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import kotlin.Metadata;
import okio.Buffer;
import okio.InflaterSource;
import okio.Source;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lokhttp3/internal/ws/MessageInflater;", "Ljava/io/Closeable;", "", "noContextTakeover", "<init>", "(Z)V", "Lokio/Buffer;", "buffer", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;)V", "close", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Buffer;", "deflatedBytes", "Ljava/util/zip/Inflater;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/zip/Inflater;", "inflater", "Lokio/InflaterSource;", "Wwwwwwwwwwwwwwwwwwwwww", "Lokio/InflaterSource;", "inflaterSource", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class MessageInflater implements Closeable, AutoCloseable {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InflaterSource f13016Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Inflater f13017Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f13018Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13019Wwwwwwwwwwwwwwwwwwwwwwwww;

    public MessageInflater(boolean z) {
        this.f13019Wwwwwwwwwwwwwwwwwwwwwwwww = z;
        Buffer buffer = new Buffer();
        this.f13018Wwwwwwwwwwwwwwwwwwwwwwww = buffer;
        Inflater inflater = new Inflater(true);
        this.f13017Wwwwwwwwwwwwwwwwwwwwwww = inflater;
        this.f13016Wwwwwwwwwwwwwwwwwwwwww = new InflaterSource((Source) buffer, inflater);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer) throws IOException {
        if (this.f13018Wwwwwwwwwwwwwwwwwwwwwwww.Kk() == 0) {
            if (this.f13019Wwwwwwwwwwwwwwwwwwwwwwwww) {
                this.f13017Wwwwwwwwwwwwwwwwwwwwwww.reset();
            }
            this.f13018Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(buffer);
            this.f13018Wwwwwwwwwwwwwwwwwwwwwwww.writeInt(65535);
            long bytesRead = this.f13017Wwwwwwwwwwwwwwwwwwwwwww.getBytesRead() + this.f13018Wwwwwwwwwwwwwwwwwwwwwwww.Kk();
            do {
                this.f13016Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer, Long.MAX_VALUE);
            } while (this.f13017Wwwwwwwwwwwwwwwwwwwwwww.getBytesRead() < bytesRead);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13016Wwwwwwwwwwwwwwwwwwwwww.close();
    }
}
