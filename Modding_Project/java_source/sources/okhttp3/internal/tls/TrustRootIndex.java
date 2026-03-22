package okhttp3.internal.tls;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.security.cert.X509Certificate;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/tls/TrustRootIndex;", "", "Ljava/security/cert/X509Certificate;", "cert", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public interface TrustRootIndex {
    @Nullable
    X509Certificate Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull X509Certificate x509Certificate);
}
