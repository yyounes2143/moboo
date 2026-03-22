package okhttp3.internal.connection;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import okhttp3.ConnectionSpec;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017¨\u0006\u001b"}, d2 = {"Lokhttp3/internal/connection/ConnectionSpecSelector;", "", "", "Lokhttp3/ConnectionSpec;", "connectionSpecs", "<init>", "(Ljava/util/List;)V", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;)Lokhttp3/ConnectionSpec;", "Ljava/io/IOException;", "e", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/IOException;)Z", "socket", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;)Z", "Ljava/util/List;", "", "I", "nextModeIndex", "Z", "isFallbackPossible", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "isFallback", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class ConnectionSpecSelector {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12620Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12621Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12622Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ConnectionSpec> f12623Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ConnectionSpecSelector(@NotNull List<ConnectionSpec> list) {
        this.f12623Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SSLSocket sSLSocket) {
        int i = this.f12622Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int size = this.f12623Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        while (i < size) {
            int i2 = i + 1;
            if (this.f12623Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket)) {
                return true;
            }
            i = i2;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull IOException iOException) {
        this.f12620Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        if (!this.f12621Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        if ((!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException) && (iOException instanceof SSLException)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final ConnectionSpec Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket) throws IOException {
        ConnectionSpec connectionSpec;
        int i = this.f12622Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int size = this.f12623Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size();
        while (true) {
            if (i < size) {
                int i2 = i + 1;
                connectionSpec = this.f12623Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i);
                if (connectionSpec.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket)) {
                    this.f12622Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
                    break;
                }
                i = i2;
            } else {
                connectionSpec = null;
                break;
            }
        }
        if (connectionSpec != null) {
            this.f12621Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket);
            connectionSpec.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket, this.f12620Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            return connectionSpec;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f12620Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", modes=" + this.f12623Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }
}
