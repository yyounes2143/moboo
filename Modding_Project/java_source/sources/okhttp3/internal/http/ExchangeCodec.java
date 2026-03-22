package okhttp3.internal.http;

import com.unity3d.services.core.network.core.OkHttp3Client;
import com.vungle.ads.internal.ui.AdActivity;
import java.io.IOException;
import kotlin.Metadata;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.RealConnection;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u0000  2\u00020\u0001:\u0001 J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH&¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\tH&¢\u0006\u0004\b\u000e\u0010\rJ\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0010\u001a\u00020\u000fH&¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H&¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\u0014H&¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\tH&¢\u0006\u0004\b\u001b\u0010\rR\u0014\u0010\u001f\u001a\u00020\u001c8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lokhttp3/internal/http/ExchangeCodec;", "", "Lokhttp3/Request;", AdActivity.REQUEST_KEY_EXTRA, "", "contentLength", "Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;J)Lokio/Sink;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Request;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "expectContinue", "Lokhttp3/Response$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)Lokhttp3/Response$Builder;", "Lokhttp3/Response;", "response", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)J", "Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Response;)Lokio/Source;", "cancel", "Lokhttp3/internal/connection/RealConnection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/connection/RealConnection;", "connection", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public interface ExchangeCodec {
    @NotNull
    public static final Companion Companion = Companion.f12717Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/http/ExchangeCodec$Companion;", "", "<init>", "()V", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ Companion f12717Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion();
    }

    void Wwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException;

    @Nullable
    Response.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) throws IOException;

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request) throws IOException;

    @NotNull
    Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Request request, long j) throws IOException;

    long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response) throws IOException;

    @NotNull
    RealConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @NotNull
    Source Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Response response) throws IOException;

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws IOException;

    void cancel();
}
