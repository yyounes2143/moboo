package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"okio/Throttler$sink$1", "Lokio/ForwardingSink;", "Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Throttler$sink$1 extends ForwardingSink {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Throttler f13249Wwwwwwwwwwwwwwwwwwwwwwww;

    @Override // okio.ForwardingSink, okio.Sink
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) throws IOException {
        while (j > 0) {
            try {
                long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13249Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
                super.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                j -= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException("interrupted");
            }
        }
    }
}
