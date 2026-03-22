package okhttp3.internal.cache;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0011R#\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lokhttp3/internal/cache/FaultHidingSink;", "Lokio/ForwardingSink;", "Lokio/Sink;", "delegate", "Lkotlin/Function1;", "Ljava/io/IOException;", "", "onException", "<init>", "(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V", "Lokio/Buffer;", "source", "", "byteCount", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "close", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lkotlin/jvm/functions/Function1;", "getOnException", "()Lkotlin/jvm/functions/Function1;", "", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "hasErrors", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public class FaultHidingSink extends ForwardingSink {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12576Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Function1<IOException, Unit> f12577Wwwwwwwwwwwwwwwwwwwwwwww;

    /* JADX WARN: Multi-variable type inference failed */
    public FaultHidingSink(@NotNull Sink sink, @NotNull Function1<? super IOException, Unit> function1) {
        super(sink);
        this.f12577Wwwwwwwwwwwwwwwwwwwwwwww = function1;
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) {
        if (this.f12576Wwwwwwwwwwwwwwwwwwwwwww) {
            buffer.skip(j);
            return;
        }
        try {
            super.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
        } catch (IOException e) {
            this.f12576Wwwwwwwwwwwwwwwwwwwwwww = true;
            this.f12577Wwwwwwwwwwwwwwwwwwwwwwww.invoke(e);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f12576Wwwwwwwwwwwwwwwwwwwwwww) {
            try {
                super.close();
            } catch (IOException e) {
                this.f12576Wwwwwwwwwwwwwwwwwwwwwww = true;
                this.f12577Wwwwwwwwwwwwwwwwwwwwwwww.invoke(e);
            }
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (!this.f12576Wwwwwwwwwwwwwwwwwwwwwww) {
            try {
                super.flush();
            } catch (IOException e) {
                this.f12576Wwwwwwwwwwwwwwwwwwwwwww = true;
                this.f12577Wwwwwwwwwwwwwwwwwwwwwwww.invoke(e);
            }
        }
    }
}
