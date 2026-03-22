package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0013\u0018\u0000 &2\u00020\u0001:\u0001&B;\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0012\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\t¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0005\u001a\u00020\u00048\u0007¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0017\u0010\u001dR\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0007¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001e\u0010 R!\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068GX\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b!\u0010 R\u0018\u0010%\u001a\u00020\u0014*\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010$¨\u0006'"}, d2 = {"Lokhttp3/Handshake;", "", "Lokhttp3/TlsVersion;", "tlsVersion", "Lokhttp3/CipherSuite;", "cipherSuite", "", "Ljava/security/cert/Certificate;", "localCertificates", "Lkotlin/Function0;", "peerCertificatesFn", "<init>", "(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/TlsVersion;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/TlsVersion;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/CipherSuite;", "()Lokhttp3/CipherSuite;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "()Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlin/Lazy;", "peerCertificates", "(Ljava/security/cert/Certificate;)Ljava/lang/String;", "name", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Handshake {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lazy f12308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Certificate> f12309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CipherSuite f12310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TlsVersion f12311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J;\u0010\u0010\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\f*\f\u0012\u0006\b\u0001\u0012\u00020\r\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lokhttp3/Handshake$Companion;", "", "<init>", "()V", "Ljavax/net/ssl/SSLSession;", "Lokhttp3/Handshake;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;", "Lokhttp3/TlsVersion;", "tlsVersion", "Lokhttp3/CipherSuite;", "cipherSuite", "", "Ljava/security/cert/Certificate;", "peerCertificates", "localCertificates", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lokhttp3/Handshake;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Ljava/security/cert/Certificate;)Ljava/util/List;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List<Certificate> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Certificate[] certificateArr) {
            if (certificateArr != null) {
                return Util.Wwwwwwwwwwww(Arrays.copyOf(certificateArr, certificateArr.length));
            }
            return CollectionsKt.emptyList();
        }

        @JvmStatic
        @NotNull
        public final Handshake Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull TlsVersion tlsVersion, @NotNull CipherSuite cipherSuite, @NotNull List<? extends Certificate> list, @NotNull List<? extends Certificate> list2) {
            final List Kkkkkkkkkkk2 = Util.Kkkkkkkkkkk(list);
            return new Handshake(tlsVersion, cipherSuite, Util.Kkkkkkkkkkk(list2), new Function0<List<? extends Certificate>>() { // from class: okhttp3.Handshake$Companion$get$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final List<? extends Certificate> invoke() {
                    return Kkkkkkkkkkk2;
                }
            });
        }

        @JvmStatic
        @JvmName(name = "get")
        @NotNull
        public final Handshake Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSession sSLSession) throws IOException {
            boolean areEqual;
            final List<Certificate> emptyList;
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite != null) {
                if (Intrinsics.areEqual(cipherSuite, "TLS_NULL_WITH_NULL_NULL")) {
                    areEqual = true;
                } else {
                    areEqual = Intrinsics.areEqual(cipherSuite, "SSL_NULL_WITH_NULL_NULL");
                }
                if (!areEqual) {
                    CipherSuite Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CipherSuite.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cipherSuite);
                    String protocol = sSLSession.getProtocol();
                    if (protocol != null) {
                        if (!Intrinsics.areEqual("NONE", protocol)) {
                            TlsVersion Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = TlsVersion.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(protocol);
                            try {
                                emptyList = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSession.getPeerCertificates());
                            } catch (SSLPeerUnverifiedException unused) {
                                emptyList = CollectionsKt.emptyList();
                            }
                            return new Handshake(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSession.getLocalCertificates()), new Function0<List<? extends Certificate>>() { // from class: okhttp3.Handshake$Companion$handshake$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                @NotNull
                                public final List<? extends Certificate> invoke() {
                                    return emptyList;
                                }
                            });
                        }
                        throw new IOException("tlsVersion == NONE");
                    }
                    throw new IllegalStateException("tlsVersion == null");
                }
                throw new IOException(Intrinsics.stringPlus("cipherSuite == ", cipherSuite));
            }
            throw new IllegalStateException("cipherSuite == null");
        }

        public Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Handshake(@NotNull TlsVersion tlsVersion, @NotNull CipherSuite cipherSuite, @NotNull List<? extends Certificate> list, @NotNull final Function0<? extends List<? extends Certificate>> function0) {
        this.f12311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = tlsVersion;
        this.f12310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cipherSuite;
        this.f12309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list;
        this.f12308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = LazyKt.lazy(new Function0<List<? extends Certificate>>() { // from class: okhttp3.Handshake$peerCertificates$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends Certificate> invoke() {
                try {
                    return function0.invoke();
                } catch (SSLPeerUnverifiedException unused) {
                    return CollectionsKt.emptyList();
                }
            }
        });
    }

    @JvmName(name = "tlsVersion")
    @NotNull
    public final TlsVersion Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "peerCertificates")
    @NotNull
    public final List<Certificate> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return (List) this.f12308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getValue();
    }

    @JvmName(name = "localCertificates")
    @NotNull
    public final List<Certificate> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        return certificate.getType();
    }

    @JvmName(name = "cipherSuite")
    @NotNull
    public final CipherSuite Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Handshake) {
            Handshake handshake = (Handshake) obj;
            if (handshake.f12311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == this.f12311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Intrinsics.areEqual(handshake.f12310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(handshake.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) && Intrinsics.areEqual(handshake.f12309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return ((((((527 + this.f12311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f12310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().hashCode()) * 31) + this.f12309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NotNull
    public String toString() {
        List<Certificate> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 10));
        for (Certificate certificate : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(certificate));
        }
        String obj = arrayList.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("Handshake{tlsVersion=");
        sb.append(this.f12311Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        sb.append(" cipherSuite=");
        sb.append(this.f12310Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        sb.append(" peerCertificates=");
        sb.append(obj);
        sb.append(" localCertificates=");
        List<Certificate> list = this.f12309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (Certificate certificate2 : list) {
            arrayList2.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(certificate2));
        }
        sb.append(arrayList2);
        sb.append(AbstractJsonLexerKt.END_OBJ);
        return sb.toString();
    }
}
