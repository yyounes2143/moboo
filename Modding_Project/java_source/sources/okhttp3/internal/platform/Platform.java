package okhttp3.internal.platform;

import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.internal.platform.android.AndroidLog;
import okhttp3.internal.tls.BasicCertificateChainCleaner;
import okhttp3.internal.tls.BasicTrustRootIndex;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 =2\u00020\u0001:\u0001=B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ4\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0011\u0010\u0013\u001a\r\u0012\t\u0012\u00070\u0011¢\u0006\u0002\b\u00120\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ'\u0010!\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J-\u0010'\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u00042\b\b\u0002\u0010$\u001a\u00020\u001f2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020)2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b*\u0010+J\u0019\u0010-\u001a\u0004\u0018\u00010\u00012\u0006\u0010,\u001a\u00020\u0004H\u0016¢\u0006\u0004\b-\u0010.J!\u00100\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u00042\b\u0010/\u001a\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00104\u001a\u0002032\u0006\u00102\u001a\u00020\nH\u0016¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u0002062\u0006\u00102\u001a\u00020\nH\u0016¢\u0006\u0004\b7\u00108J\u0017\u0010:\u001a\u0002092\u0006\u00102\u001a\u00020\nH\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0004H\u0016¢\u0006\u0004\b<\u0010\u0006¨\u0006>"}, d2 = {"Lokhttp3/internal/platform/Platform;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Ljavax/net/ssl/SSLContext;", "Wwwwwwwwwwwwwwwwwwwww", "()Ljavax/net/ssl/SSLContext;", "Ljavax/net/ssl/X509TrustManager;", "Wwwwwwwwwwwwwwwwwww", "()Ljavax/net/ssl/X509TrustManager;", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "hostname", "", "Lokhttp3/Protocol;", "Lkotlin/jvm/JvmSuppressWildcards;", "protocols", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;", "Ljava/net/Socket;", "socket", "Ljava/net/InetSocketAddress;", "address", "", "connectTimeout", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V", "message", "level", "", "t", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;ILjava/lang/Throwable;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "closer", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/Object;", "stackTrace", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Object;)V", "trustManager", "Lokhttp3/internal/tls/CertificateChainCleaner;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;", "Lokhttp3/internal/tls/TrustRootIndex;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;", "Ljavax/net/ssl/SSLSocketFactory;", "Wwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;", "toString", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public class Platform {
    @NotNull
    public static final Companion Companion;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Logger f12980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static volatile Platform f12981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000e\u001a\u00020\r2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u000f\u0010\u0012\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0006R\u0011\u0010\u0016\u001a\u00020\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0015R\u0014\u0010\u001c\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0015R\u0014\u0010\u001e\u001a\u00020\u001d8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u001d8\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u001fR\u001c\u0010#\u001a\n \"*\u0004\u0018\u00010!0!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010%\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lokhttp3/internal/platform/Platform$Companion;", "", "<init>", "()V", "Lokhttp3/internal/platform/Platform;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/platform/Platform;", "", "Lokhttp3/Protocol;", "protocols", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)Ljava/util/List;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)[B", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isAndroid", "Wwwwwwwwwwwwwwwwwwwwwwwww", "isConscryptPreferred", "Wwwwwwwwwwwwwwwwwwwwwwww", "isOpenJSSEPreferred", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "isBouncyCastlePreferred", "", "INFO", "I", "WARN", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "logger", "Ljava/util/logging/Logger;", TPDownloadProxyEnum.USER_PLATFORM, "Lokhttp3/internal/platform/Platform;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwww() {
            return Intrinsics.areEqual("OpenJSSE", Security.getProviders()[0].getName());
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww() {
            return Intrinsics.areEqual("Conscrypt", Security.getProviders()[0].getName());
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Intrinsics.areEqual("BC", Security.getProviders()[0].getName());
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Intrinsics.areEqual("Dalvik", System.getProperty("java.vm.name"));
        }

        @JvmStatic
        @NotNull
        public final Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return Platform.f12981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public final Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        public final Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            OpenJSSEPlatform Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            BouncyCastlePlatform Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            ConscryptPlatform Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            if (Wwwwwwwwwwwwwwwwwwwwwwwww() && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConscryptPlatform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwww() && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = BouncyCastlePlatform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwww() && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = OpenJSSEPlatform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            Jdk9Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Jdk9Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
            }
            Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Jdk8WithJettyBootPlatform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5;
            }
            return new Platform();
        }

        public final Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            AndroidLog.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Android10Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return AndroidPlatform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @NotNull
        public final byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<? extends Protocol> list) {
            Buffer buffer = new Buffer();
            for (String str : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list)) {
                buffer.writeByte(str.length());
                buffer.Wwwwwwwwwwwwwwwwwwwwwwwwww(str);
            }
            return buffer.Wwwwwwwwwwwww();
        }

        @NotNull
        public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<? extends Protocol> list) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (((Protocol) obj) != Protocol.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList, 10));
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                arrayList2.add(((Protocol) obj2).toString());
            }
            return arrayList2;
        }

        public Companion() {
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        f12981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        f12980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Logger.getLogger(OkHttpClient.class.getName());
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwww(Platform platform, String str, int i, Throwable th, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                i = 4;
            }
            if ((i2 & 4) != 0) {
                th = null;
            }
            platform.Wwwwwwwwwwwwwwwwwwwwwwww(str, i, th);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: log");
    }

    @NotNull
    public X509TrustManager Wwwwwwwwwwwwwwwwwww() {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                if (trustManager != null) {
                    return (X509TrustManager) trustManager;
                }
                throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
            }
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Unexpected default trust managers: ", Arrays.toString(trustManagers)).toString());
    }

    @NotNull
    public SSLSocketFactory Wwwwwwwwwwwwwwwwwwww(@NotNull X509TrustManager x509TrustManager) {
        try {
            SSLContext Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwww2.init(null, new TrustManager[]{x509TrustManager}, null);
            return Wwwwwwwwwwwwwwwwwwwww2.getSocketFactory();
        } catch (GeneralSecurityException e) {
            throw new AssertionError(Intrinsics.stringPlus("No System TLS: ", e), e);
        }
    }

    @NotNull
    public SSLContext Wwwwwwwwwwwwwwwwwwwww() {
        return SSLContext.getInstance("TLS");
    }

    public void Wwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable Object obj) {
        if (obj == null) {
            str = Intrinsics.stringPlus(str, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        Wwwwwwwwwwwwwwwwwwwwwwww(str, 5, (Throwable) obj);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, int i, @Nullable Throwable th) {
        Level level;
        if (i == 5) {
            level = Level.WARNING;
        } else {
            level = Level.INFO;
        }
        f12980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.log(level, str, th);
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return true;
    }

    @Nullable
    public Object Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (f12980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket) {
        return null;
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return "OkHttp";
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Socket socket, @NotNull InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    @NotNull
    public TrustRootIndex Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull X509TrustManager x509TrustManager) {
        X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
        return new BasicTrustRootIndex((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    @NotNull
    public CertificateChainCleaner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull X509TrustManager x509TrustManager) {
        return new BasicCertificateChainCleaner(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509TrustManager));
    }

    @NotNull
    public String toString() {
        return getClass().getSimpleName();
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket) {
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<Protocol> list) {
    }
}
