package okio;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\b\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lokio/SocketAsyncTimeout;", "Lokio/AsyncTimeout;", "Ljava/net/Socket;", "socket", "<init>", "(Ljava/net/Socket;)V", "Ljava/io/IOException;", "cause", "Wwwwwwwww", "(Ljava/io/IOException;)Ljava/io/IOException;", "", "Wwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/net/Socket;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class SocketAsyncTimeout extends AsyncTimeout {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Socket f13242Wwwwwwwwwwwwwwwwwwwwww;

    public SocketAsyncTimeout(@NotNull Socket socket) {
        this.f13242Wwwwwwwwwwwwwwwwwwwwww = socket;
    }

    @Override // okio.AsyncTimeout
    public void Wwwww() {
        Logger logger;
        Logger logger2;
        try {
            this.f13242Wwwwwwwwwwwwwwwwwwwwww.close();
        } catch (AssertionError e) {
            if (Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e)) {
                logger2 = Okio__JvmOkioKt.f13195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                Level level = Level.WARNING;
                logger2.log(level, "Failed to close timed out socket " + this.f13242Wwwwwwwwwwwwwwwwwwwwww, (Throwable) e);
                return;
            }
            throw e;
        } catch (Exception e2) {
            logger = Okio__JvmOkioKt.f13195Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            Level level2 = Level.WARNING;
            logger.log(level2, "Failed to close timed out socket " + this.f13242Wwwwwwwwwwwwwwwwwwwwww, (Throwable) e2);
        }
    }

    @Override // okio.AsyncTimeout
    @NotNull
    public IOException Wwwwwwwww(@Nullable IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }
}
