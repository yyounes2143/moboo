package okhttp3.internal.platform;

import android.os.Build;
import android.security.NetworkSecurityPolicy;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Protocol;
import okhttp3.internal.SuppressSignatureCheck;
import okhttp3.internal.platform.android.AndroidCertificateChainCleaner;
import okhttp3.internal.platform.android.AndroidSocketAdapter;
import okhttp3.internal.platform.android.BouncyCastleSocketAdapter;
import okhttp3.internal.platform.android.CloseGuard;
import okhttp3.internal.platform.android.ConscryptSocketAdapter;
import okhttp3.internal.platform.android.DeferredSocketAdapter;
import okhttp3.internal.platform.android.SocketAdapter;
import okhttp3.internal.platform.android.StandardAndroidSocketAdapter;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@SuppressSignatureCheck
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 22\u00020\u0001:\u000223B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ4\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0011\u0010\u0014\u001a\r\u0012\t\u0012\u00070\u0012¢\u0006\u0002\b\u00130\u0011H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0019\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ!\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u000f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020!2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010'\u001a\u00020&2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020)2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b*\u0010+R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020,0\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010-R\u0014\u00101\u001a\u00020/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u00100¨\u00064"}, d2 = {"Lokhttp3/internal/platform/AndroidPlatform;", "Lokhttp3/internal/platform/Platform;", "<init>", "()V", "Ljava/net/Socket;", "socket", "Ljava/net/InetSocketAddress;", "address", "", "connectTimeout", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "", "hostname", "", "Lokhttp3/Protocol;", "Lkotlin/jvm/JvmSuppressWildcards;", "protocols", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;", "closer", "", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/Object;", "message", "stackTrace", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Object;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Ljavax/net/ssl/X509TrustManager;", "trustManager", "Lokhttp3/internal/tls/CertificateChainCleaner;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;", "Lokhttp3/internal/tls/TrustRootIndex;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/TrustRootIndex;", "Lokhttp3/internal/platform/android/SocketAdapter;", "Ljava/util/List;", "socketAdapters", "Lokhttp3/internal/platform/android/CloseGuard;", "Lokhttp3/internal/platform/android/CloseGuard;", "closeGuard", "Companion", "CustomTrustRootIndex", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class AndroidPlatform extends Platform {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final boolean f12960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CloseGuard f12961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<SocketAdapter> f12962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lokhttp3/internal/platform/AndroidPlatform$Companion;", "", "<init>", "()V", "Lokhttp3/internal/platform/Platform;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/platform/Platform;", "", "isSupported", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return AndroidPlatform.f12960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Nullable
        public final Platform Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                return new AndroidPlatform();
            }
            return null;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0080\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\n\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lokhttp3/internal/platform/AndroidPlatform$CustomTrustRootIndex;", "Lokhttp3/internal/tls/TrustRootIndex;", "Ljavax/net/ssl/X509TrustManager;", "trustManager", "Ljava/lang/reflect/Method;", "findByIssuerAndSignatureMethod", "<init>", "(Ljavax/net/ssl/X509TrustManager;Ljava/lang/reflect/Method;)V", "Ljava/security/cert/X509Certificate;", "cert", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljavax/net/ssl/X509TrustManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/reflect/Method;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class CustomTrustRootIndex implements TrustRootIndex {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Method f12963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final X509TrustManager f12964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public CustomTrustRootIndex(@NotNull X509TrustManager x509TrustManager, @NotNull Method method) {
            this.f12964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = x509TrustManager;
            this.f12963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = method;
        }

        @Override // okhttp3.internal.tls.TrustRootIndex
        @Nullable
        public X509Certificate Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull X509Certificate x509Certificate) {
            try {
                Object invoke = this.f12963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.invoke(this.f12964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, x509Certificate);
                if (invoke != null) {
                    return ((TrustAnchor) invoke).getTrustedCert();
                }
                throw new NullPointerException("null cannot be cast to non-null type java.security.cert.TrustAnchor");
            } catch (IllegalAccessException e) {
                throw new AssertionError("unable to get issues and signature", e);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CustomTrustRootIndex)) {
                return false;
            }
            CustomTrustRootIndex customTrustRootIndex = (CustomTrustRootIndex) obj;
            if (Intrinsics.areEqual(this.f12964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, customTrustRootIndex.f12964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f12963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, customTrustRootIndex.f12963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f12964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f12963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        @NotNull
        public String toString() {
            return "CustomTrustRootIndex(trustManager=" + this.f12964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", findByIssuerAndSignatureMethod=" + this.f12963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
        }
    }

    static {
        boolean z = false;
        if (Platform.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww() && Build.VERSION.SDK_INT < 30) {
            z = true;
        }
        f12960Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public AndroidPlatform() {
        SocketAdapter[] socketAdapterArr = {StandardAndroidSocketAdapter.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StandardAndroidSocketAdapter.Companion, null, 1, null), new DeferredSocketAdapter(AndroidSocketAdapter.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), new DeferredSocketAdapter(ConscryptSocketAdapter.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), new DeferredSocketAdapter(BouncyCastleSocketAdapter.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())};
        ArrayList arrayList = new ArrayList();
        for (Object obj : CollectionsKt.listOfNotNull((Object[]) socketAdapterArr)) {
            if (((SocketAdapter) obj).isSupported()) {
                arrayList.add(obj);
            }
        }
        this.f12962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
        this.f12961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = CloseGuard.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okhttp3.internal.platform.Platform
    public void Wwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @Nullable Object obj) {
        if (!this.f12961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj)) {
            Platform.Wwwwwwwwwwwwwwwwwwwwwww(this, str, 5, null, 4, null);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        boolean isCleartextTrafficPermitted;
        if (Build.VERSION.SDK_INT >= 24) {
            isCleartextTrafficPermitted = NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
            return isCleartextTrafficPermitted;
        }
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public Object Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return this.f12961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket) {
        Object obj;
        Iterator<T> it = this.f12962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((SocketAdapter) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        SocketAdapter socketAdapter = (SocketAdapter) obj;
        if (socketAdapter == null) {
            return null;
        }
        return socketAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket);
    }

    @Override // okhttp3.internal.platform.Platform
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Socket socket, @NotNull InetSocketAddress inetSocketAddress, int i) throws IOException {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (ClassCastException e) {
            if (Build.VERSION.SDK_INT == 26) {
                throw new IOException("Exception in connect", e);
            }
            throw e;
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<Protocol> list) {
        Object obj;
        Iterator<T> it = this.f12962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((SocketAdapter) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        SocketAdapter socketAdapter = (SocketAdapter) obj;
        if (socketAdapter == null) {
            return;
        }
        socketAdapter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket, str, list);
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public TrustRootIndex Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new CustomTrustRootIndex(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509TrustManager);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public CertificateChainCleaner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull X509TrustManager x509TrustManager) {
        AndroidCertificateChainCleaner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AndroidCertificateChainCleaner.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509TrustManager);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509TrustManager);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
