package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u000eJ\u0017\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR\"\u0010\u0002\u001a\u00020\u00018\u0007@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u001c\u001a\u0004\b\u001d\u0010\u0017\"\u0004\b\u001e\u0010\u0004¨\u0006\u001f"}, d2 = {"Lokio/ForwardingTimeout;", "Lokio/Timeout;", "delegate", "<init>", "(Lokio/Timeout;)V", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Timeout;)Lokio/ForwardingTimeout;", "", "timeout", "Ljava/util/concurrent/TimeUnit;", "unit", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "deadlineNanoTime", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)Lokio/Timeout;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Timeout;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lokio/Timeout;", "Wwwwwwwwwwwwwwwwwwwwwwww", "setDelegate", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public class ForwardingTimeout extends Timeout {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Timeout f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ForwardingTimeout(@NotNull Timeout timeout) {
        this.f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = timeout;
    }

    @NotNull
    public final ForwardingTimeout Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Timeout timeout) {
        this.f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = timeout;
        return this;
    }

    @JvmName(name = "delegate")
    @NotNull
    public final Timeout Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okio.Timeout
    public long Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout Wwwwwwwwwwwwwwwwwwwwwwwwwww(long j, @NotNull TimeUnit timeUnit) {
        return this.f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(j, timeUnit);
    }

    @Override // okio.Timeout
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException {
        this.f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okio.Timeout
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        return this.f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
    }

    @Override // okio.Timeout
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13171Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
