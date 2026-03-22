package okhttp3.internal.ws;

import androidx.core.app.NotificationCompat;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.util.ArrayDeque;
import kotlin.Metadata;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.ws.RealWebSocket;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"okhttp3/internal/ws/RealWebSocket$connect$1", "Lokhttp3/Callback;", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Response;", "response", "", "onResponse", "(Lokhttp3/Call;Lokhttp3/Response;)V", "Ljava/io/IOException;", "e", "onFailure", "(Lokhttp3/Call;Ljava/io/IOException;)V", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class RealWebSocket$connect$1 implements Callback {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Request f13060Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ RealWebSocket f13061Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // okhttp3.Callback
    public void onFailure(@NotNull Call call, @NotNull IOException iOException) {
        this.f13061Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(iOException, null);
    }

    @Override // okhttp3.Callback
    public void onResponse(@NotNull Call call, @NotNull Response response) {
        boolean Wwwwwwwwwwwwwwwwww2;
        ArrayDeque arrayDeque;
        Exchange Kkkkkkkkkkkkkkkkkkkkk2 = response.Kkkkkkkkkkkkkkkkkkkkk();
        try {
            this.f13061Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(response, Kkkkkkkkkkkkkkkkkkkkk2);
            RealWebSocket.Streams Wwwwwwwwwwwwwwwwwwwww2 = Kkkkkkkkkkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwww();
            WebSocketExtensions Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = WebSocketExtensions.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(response.Kkkkkkkkkkkkkkkk());
            this.f13061Wwwwwwwwwwwwwwwwwwwwwwwww.f13041Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Wwwwwwwwwwwwwwwwww2 = this.f13061Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (!Wwwwwwwwwwwwwwwwww2) {
                RealWebSocket realWebSocket = this.f13061Wwwwwwwwwwwwwwwwwwwwwwwww;
                synchronized (realWebSocket) {
                    arrayDeque = realWebSocket.f13030Wwwwwwwwwwwwwwwwwwww;
                    arrayDeque.clear();
                    realWebSocket.Wwwwwwwwwwwwwwwwwwwwwww(1010, "unexpected Sec-WebSocket-Extensions in response header");
                }
            }
            try {
                this.f13061Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww(Util.f12487Wwwwwwwwwwwwwwwwwwwwwwwwww + " WebSocket " + this.f13060Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwww2);
                this.f13061Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13061Wwwwwwwwwwwwwwwwwwwwwwwww, response);
                this.f13061Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwww();
            } catch (Exception e) {
                this.f13061Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(e, null);
            }
        } catch (IOException e2) {
            if (Kkkkkkkkkkkkkkkkkkkkk2 != null) {
                Kkkkkkkkkkkkkkkkkkkkk2.Wwwwwwwwwwwww();
            }
            this.f13061Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(e2, response);
            Util.Wwwwwwwwwwwwwwwwwwwwww(response);
        }
    }
}
