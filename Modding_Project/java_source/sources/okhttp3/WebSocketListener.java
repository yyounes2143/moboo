package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import kotlin.Metadata;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J'\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0018\u0010\u0017J)\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lokhttp3/WebSocketListener;", "", "<init>", "()V", "Lokhttp3/WebSocket;", "webSocket", "Lokhttp3/Response;", "response", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/WebSocket;Lokhttp3/Response;)V", "", "text", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/WebSocket;Ljava/lang/String;)V", "Lokio/ByteString;", "bytes", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/WebSocket;Lokio/ByteString;)V", "", "code", "reason", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/WebSocket;ILjava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "t", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public abstract class WebSocketListener {
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull WebSocket webSocket, @NotNull Response response) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull WebSocket webSocket, @NotNull ByteString byteString) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull WebSocket webSocket, @NotNull String str) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull WebSocket webSocket, @NotNull Throwable th, @Nullable Response response) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull WebSocket webSocket, int i, @NotNull String str) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull WebSocket webSocket, int i, @NotNull String str) {
    }
}
