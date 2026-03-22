package okhttp3.internal.platform.android;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import okhttp3.Protocol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001:\u0001\u001cB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ/\u0010\u0013\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00012\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0019R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u001a¨\u0006\u001d"}, d2 = {"Lokhttp3/internal/platform/android/DeferredSocketAdapter;", "Lokhttp3/internal/platform/android/SocketAdapter;", "Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;", "socketAdapterFactory", "<init>", "(Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;)V", "", "isSupported", "()Z", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;)Z", "", "hostname", "", "Lokhttp3/Protocol;", "protocols", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/platform/android/SocketAdapter;", "Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;", "Lokhttp3/internal/platform/android/SocketAdapter;", "delegate", "Factory", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class DeferredSocketAdapter implements SocketAdapter {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public SocketAdapter f12998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Factory f12999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/internal/platform/android/DeferredSocketAdapter$Factory;", "", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;)Z", "Lokhttp3/internal/platform/android/SocketAdapter;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/platform/android/SocketAdapter;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public interface Factory {
        @NotNull
        SocketAdapter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket);

        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket);
    }

    public DeferredSocketAdapter(@NotNull Factory factory) {
        this.f12999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = factory;
    }

    public final synchronized SocketAdapter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SSLSocket sSLSocket) {
        try {
            if (this.f12998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null && this.f12999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket)) {
                this.f12998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f12999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f12998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<? extends Protocol> list) {
        SocketAdapter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket, str, list);
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket) {
        SocketAdapter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket);
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket) {
        return this.f12999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket);
    }

    @Override // okhttp3.internal.platform.android.SocketAdapter
    public boolean isSupported() {
        return true;
    }
}
