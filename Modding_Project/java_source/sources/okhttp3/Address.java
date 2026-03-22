package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import j$.util.Objects;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B{\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0014\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0004H\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u0000H\u0000¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0002H\u0016¢\u0006\u0004\b&\u0010'R\u0017\u0010\u0007\u001a\u00020\u00068\u0007¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0017\u0010\t\u001a\u00020\b8\u0007¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0007¢\u0006\f\n\u0004\b*\u00100\u001a\u0004\b1\u00102R\u0019\u0010\r\u001a\u0004\u0018\u00010\f8\u0007¢\u0006\f\n\u0004\b$\u00103\u001a\u0004\b4\u00105R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0007¢\u0006\f\n\u0004\b4\u00106\u001a\u0004\b(\u00107R\u0017\u0010\u0011\u001a\u00020\u00108\u0007¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0007¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b<\u0010>R\u0017\u0010\u001a\u001a\u00020\u00198\u0007¢\u0006\f\n\u0004\b:\u0010?\u001a\u0004\b@\u0010AR\u0017\u0010F\u001a\u00020B8G¢\u0006\f\n\u0004\b@\u0010C\u001a\u0004\bD\u0010ER\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148G¢\u0006\f\n\u0004\b.\u0010G\u001a\u0004\b8\u0010HR\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00148G¢\u0006\f\n\u0004\b1\u0010G\u001a\u0004\b,\u0010H¨\u0006I"}, d2 = {"Lokhttp3/Address;", "", "", "uriHost", "", "uriPort", "Lokhttp3/Dns;", "dns", "Ljavax/net/SocketFactory;", "socketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "sslSocketFactory", "Ljavax/net/ssl/HostnameVerifier;", "hostnameVerifier", "Lokhttp3/CertificatePinner;", "certificatePinner", "Lokhttp3/Authenticator;", "proxyAuthenticator", "Ljava/net/Proxy;", "proxy", "", "Lokhttp3/Protocol;", "protocols", "Lokhttp3/ConnectionSpec;", "connectionSpecs", "Ljava/net/ProxySelector;", "proxySelector", "<init>", "(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "that", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/Address;)Z", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Dns;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Dns;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljavax/net/SocketFactory;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Ljavax/net/SocketFactory;", "Ljavax/net/ssl/SSLSocketFactory;", "Wwwwwwwwwwwwwwwwwwwwwwww", "()Ljavax/net/ssl/SSLSocketFactory;", "Ljavax/net/ssl/HostnameVerifier;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljavax/net/ssl/HostnameVerifier;", "Lokhttp3/CertificatePinner;", "()Lokhttp3/CertificatePinner;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Authenticator;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/Authenticator;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/net/Proxy;", "()Ljava/net/Proxy;", "Ljava/net/ProxySelector;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/net/ProxySelector;", "Lokhttp3/HttpUrl;", "Lokhttp3/HttpUrl;", "Wwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/HttpUrl;", "url", "Ljava/util/List;", "()Ljava/util/List;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Address {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<ConnectionSpec> f12129Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Protocol> f12130Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HttpUrl f12131Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ProxySelector f12132Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Proxy f12133Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Authenticator f12134Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CertificatePinner f12135Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HostnameVerifier f12136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SSLSocketFactory f12137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SocketFactory f12138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Dns f12139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Address(@NotNull String str, int i, @NotNull Dns dns, @NotNull SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable CertificatePinner certificatePinner, @NotNull Authenticator authenticator, @Nullable Proxy proxy, @NotNull List<? extends Protocol> list, @NotNull List<ConnectionSpec> list2, @NotNull ProxySelector proxySelector) {
        this.f12139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dns;
        this.f12138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = socketFactory;
        this.f12137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sSLSocketFactory;
        this.f12136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = hostnameVerifier;
        this.f12135Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = certificatePinner;
        this.f12134Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = authenticator;
        this.f12133Wwwwwwwwwwwwwwwwwwwwwwwwwwww = proxy;
        this.f12132Wwwwwwwwwwwwwwwwwwwwwwwwwww = proxySelector;
        this.f12131Wwwwwwwwwwwwwwwwwwwwwwwwww = new HttpUrl.Builder().Wwwwwwwwwww(sSLSocketFactory != null ? "https" : "http").Wwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwww(i).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f12130Wwwwwwwwwwwwwwwwwwwwwwwww = Util.Kkkkkkkkkkk(list);
        this.f12129Wwwwwwwwwwwwwwwwwwwwwwww = Util.Kkkkkkkkkkk(list2);
    }

    @JvmName(name = "url")
    @NotNull
    public final HttpUrl Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12131Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "sslSocketFactory")
    @Nullable
    public final SSLSocketFactory Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "socketFactory")
    @NotNull
    public final SocketFactory Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12138Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "proxySelector")
    @NotNull
    public final ProxySelector Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12132Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "proxyAuthenticator")
    @NotNull
    public final Authenticator Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12134Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "proxy")
    @Nullable
    public final Proxy Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12133Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "protocols")
    @NotNull
    public final List<Protocol> Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12130Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "hostnameVerifier")
    @Nullable
    public final HostnameVerifier Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Address address) {
        if (Intrinsics.areEqual(this.f12139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, address.f12139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f12134Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, address.f12134Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f12130Wwwwwwwwwwwwwwwwwwwwwwwww, address.f12130Wwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f12129Wwwwwwwwwwwwwwwwwwwwwwww, address.f12129Wwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f12132Wwwwwwwwwwwwwwwwwwwwwwwwwww, address.f12132Wwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f12133Wwwwwwwwwwwwwwwwwwwwwwwwwwww, address.f12133Wwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f12137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, address.f12137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f12136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, address.f12136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f12135Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, address.f12135Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f12131Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww() == address.f12131Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww()) {
            return true;
        }
        return false;
    }

    @JvmName(name = "dns")
    @NotNull
    public final Dns Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "connectionSpecs")
    @NotNull
    public final List<ConnectionSpec> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12129Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "certificatePinner")
    @Nullable
    public final CertificatePinner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12135Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Address) {
            Address address = (Address) obj;
            if (Intrinsics.areEqual(this.f12131Wwwwwwwwwwwwwwwwwwwwwwwwww, address.f12131Wwwwwwwwwwwwwwwwwwwwwwwwww) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(address)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((((((527 + this.f12131Wwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f12139Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f12134Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f12130Wwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f12129Wwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f12132Wwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + Objects.hashCode(this.f12133Wwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + Objects.hashCode(this.f12137Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + Objects.hashCode(this.f12136Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + Objects.hashCode(this.f12135Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @NotNull
    public String toString() {
        String stringPlus;
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.f12131Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        sb.append(AbstractJsonLexerKt.COLON);
        sb.append(this.f12131Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww());
        sb.append(", ");
        Proxy proxy = this.f12133Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (proxy != null) {
            stringPlus = Intrinsics.stringPlus("proxy=", proxy);
        } else {
            stringPlus = Intrinsics.stringPlus("proxySelector=", this.f12132Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        sb.append(stringPlus);
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }
}
