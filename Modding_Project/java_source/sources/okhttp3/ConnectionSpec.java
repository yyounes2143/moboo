package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 -2\u00020\u0001:\u0002.-B9\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000b¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0015\u001a\u00020\u00022\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001c\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u0017\u0010\u0003\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\u0004\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\"\u0010\u001f\u001a\u0004\b#\u0010!R\u001c\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010$R\u001c\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010$R\u0019\u0010)\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&8G¢\u0006\u0006\u001a\u0004\b%\u0010(R\u0019\u0010,\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010&8G¢\u0006\u0006\u001a\u0004\b+\u0010(¨\u0006/"}, d2 = {"Lokhttp3/ConnectionSpec;", "", "", "isTls", "supportsTlsExtensions", "", "", "cipherSuitesAsString", "tlsVersionsAsString", "<init>", "(ZZ[Ljava/lang/String;[Ljava/lang/String;)V", "Ljavax/net/ssl/SSLSocket;", "sslSocket", "isFallback", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;Z)V", "socket", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;)Z", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/ConnectionSpec;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "[Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Lokhttp3/CipherSuite;", "()Ljava/util/List;", "cipherSuites", "Lokhttp3/TlsVersion;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "tlsVersions", "Companion", "Builder", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class ConnectionSpec {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConnectionSpec f12261Wwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConnectionSpec f12262Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConnectionSpec f12263Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConnectionSpec f12264Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CipherSuite[] f12265Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CipherSuite[] f12266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String[] f12267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String[] f12268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f12270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006R\u0010\u0010\f\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lokhttp3/ConnectionSpec$Companion;", "", "()V", "APPROVED_CIPHER_SUITES", "", "Lokhttp3/CipherSuite;", "[Lokhttp3/CipherSuite;", "CLEARTEXT", "Lokhttp3/ConnectionSpec;", "COMPATIBLE_TLS", "MODERN_TLS", "RESTRICTED_CIPHER_SUITES", "RESTRICTED_TLS", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    static {
        CipherSuite cipherSuite = CipherSuite.QQOOOOO;
        CipherSuite cipherSuite2 = CipherSuite.QQOOOO;
        CipherSuite cipherSuite3 = CipherSuite.QQOOO;
        CipherSuite cipherSuite4 = CipherSuite.O0;
        CipherSuite cipherSuite5 = CipherSuite.OO000000;
        CipherSuite cipherSuite6 = CipherSuite.OO000000000;
        CipherSuite cipherSuite7 = CipherSuite.OO00000;
        CipherSuite cipherSuite8 = CipherSuite.QQOOOOOOOO;
        CipherSuite cipherSuite9 = CipherSuite.QQOOOOOOOOO;
        CipherSuite[] cipherSuiteArr = {cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9};
        f12266Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cipherSuiteArr;
        CipherSuite[] cipherSuiteArr2 = {cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9, CipherSuite.IIllllll, CipherSuite.IIlllll, CipherSuite.Illlllllllllllllllllllllll, CipherSuite.Illllllllllllllllllllllll, CipherSuite.f12227Kkkkkkkkkkkkkkkkkkkkkkkkkk, CipherSuite.f12223Kkkkkkkkkkkkkkkkkkkkkk, CipherSuite.f12249Wwwwwwwwwwwwwwwwwwwwwwww};
        f12265Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = cipherSuiteArr2;
        Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Builder(true).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((CipherSuite[]) Arrays.copyOf(cipherSuiteArr, cipherSuiteArr.length));
        TlsVersion tlsVersion = TlsVersion.TLS_1_3;
        TlsVersion tlsVersion2 = TlsVersion.TLS_1_2;
        f12264Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwww(tlsVersion, tlsVersion2).Wwwwwwwwwwwwwwwwwwwwwwwwwww(true).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        f12263Wwwwwwwwwwwwwwwwwwwwwwwwwww = new Builder(true).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, cipherSuiteArr2.length)).Wwwwwwwwwwwwwwwwwwwwwwwww(tlsVersion, tlsVersion2).Wwwwwwwwwwwwwwwwwwwwwwwwwww(true).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        f12262Wwwwwwwwwwwwwwwwwwwwwwwwww = new Builder(true).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, cipherSuiteArr2.length)).Wwwwwwwwwwwwwwwwwwwwwwwww(tlsVersion, tlsVersion2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0).Wwwwwwwwwwwwwwwwwwwwwwwwwww(true).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        f12261Wwwwwwwwwwwwwwwwwwwwwwwww = new Builder(false).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public ConnectionSpec(boolean z, boolean z2, @Nullable String[] strArr, @Nullable String[] strArr2) {
        this.f12270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f12269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        this.f12268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = strArr;
        this.f12267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = strArr2;
    }

    @JvmName(name = "tlsVersions")
    @Nullable
    public final List<TlsVersion> Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        String[] strArr = this.f12267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(TlsVersion.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
        }
        return CollectionsKt.toList(arrayList);
    }

    @JvmName(name = "supportsTlsExtensions")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final ConnectionSpec Wwwwwwwwwwwwwwwwwwwwwwwwwwww(SSLSocket sSLSocket, boolean z) {
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        if (this.f12268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            enabledCipherSuites = Util.Wwww(sSLSocket.getEnabledCipherSuites(), this.f12268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, CipherSuite.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (this.f12267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            enabledProtocols = Util.Wwww(sSLSocket.getEnabledProtocols(), this.f12267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, ComparisonsKt.naturalOrder());
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int Wwwwwwwwwww2 = Util.Wwwwwwwwwww(supportedCipherSuites, "TLS_FALLBACK_SCSV", CipherSuite.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (z && Wwwwwwwwwww2 != -1) {
            enabledCipherSuites = Util.Wwwwwwwwwwwwwwwwwwww(enabledCipherSuites, supportedCipherSuites[Wwwwwwwwwww2]);
        }
        return new Builder(this).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length)).Wwwwwwwwwwwwwwwwwwwwwwwwww((String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmName(name = "isTls")
    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket) {
        if (!this.f12270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return false;
        }
        String[] strArr = this.f12267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (strArr != null && !Util.Wwwwwwwwwwwwww(strArr, sSLSocket.getEnabledProtocols(), ComparisonsKt.naturalOrder())) {
            return false;
        }
        String[] strArr2 = this.f12268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (strArr2 != null && !Util.Wwwwwwwwwwwwww(strArr2, sSLSocket.getEnabledCipherSuites(), CipherSuite.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            return false;
        }
        return true;
    }

    @JvmName(name = "cipherSuites")
    @Nullable
    public final List<CipherSuite> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String[] strArr = this.f12268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(CipherSuite.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
        }
        return CollectionsKt.toList(arrayList);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull SSLSocket sSLSocket, boolean z) {
        ConnectionSpec Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(sSLSocket, z);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            sSLSocket.setEnabledProtocols(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f12267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            sSLSocket.setEnabledCipherSuites(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f12268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ConnectionSpec)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        boolean z = this.f12270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        ConnectionSpec connectionSpec = (ConnectionSpec) obj;
        if (z != connectionSpec.f12270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return false;
        }
        if (z && (!Arrays.equals(this.f12268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, connectionSpec.f12268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) || !Arrays.equals(this.f12267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, connectionSpec.f12267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) || this.f12269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != connectionSpec.f12269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode;
        if (this.f12270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            String[] strArr = this.f12268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int i = 0;
            if (strArr == null) {
                hashCode = 0;
            } else {
                hashCode = Arrays.hashCode(strArr);
            }
            int i2 = (527 + hashCode) * 31;
            String[] strArr2 = this.f12267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (strArr2 != null) {
                i = Arrays.hashCode(strArr2);
            }
            return ((i2 + i) * 31) + (!this.f12269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww ? 1 : 0);
        }
        return 17;
    }

    @NotNull
    public String toString() {
        if (!this.f12270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + ((Object) Objects.toString(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), "[all enabled]")) + ", tlsVersions=" + ((Object) Objects.toString(Wwwwwwwwwwwwwwwwwwwwwwwwww(), "[all enabled]")) + ", supportsTlsExtensions=" + this.f12269Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0011\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ!\u0010\f\u001a\u00020\u00002\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\n¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00002\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\t\"\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00110\t\"\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0015\u001a\u00020\u00002\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\t\"\u00020\u000e¢\u0006\u0004\b\u0015\u0010\u0010J\u0017\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001aR\"\u0010\u0003\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u0005R*\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\t8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R*\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\t8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u001f\u001a\u0004\b$\u0010!\"\u0004\b%\u0010#R\"\u0010\u0016\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001b\u001a\u0004\b&\u0010\u001d\"\u0004\b'\u0010\u0005¨\u0006("}, d2 = {"Lokhttp3/ConnectionSpec$Builder;", "", "", "tls", "<init>", "(Z)V", "Lokhttp3/ConnectionSpec;", "connectionSpec", "(Lokhttp3/ConnectionSpec;)V", "", "Lokhttp3/CipherSuite;", "cipherSuites", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Ljava/lang/String;)Lokhttp3/ConnectionSpec$Builder;", "Lokhttp3/TlsVersion;", "tlsVersions", "Wwwwwwwwwwwwwwwwwwwwwwwww", "([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "supportsTlsExtensions", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)Lokhttp3/ConnectionSpec$Builder;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/ConnectionSpec;", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "setTls$okhttp", "[Ljava/lang/String;", "getCipherSuites$okhttp", "()[Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Ljava/lang/String;)V", "getTlsVersions$okhttp", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "getSupportsTlsExtensions$okhttp", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String[] f12272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String[] f12273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f12274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Builder(boolean z) {
            this.f12274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull TlsVersion... tlsVersionArr) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                ArrayList arrayList = new ArrayList(tlsVersionArr.length);
                for (TlsVersion tlsVersion : tlsVersionArr) {
                    arrayList.add(tlsVersion.javaName());
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    return Wwwwwwwwwwwwwwwwwwwwwwwwww((String[]) Arrays.copyOf(strArr, strArr.length));
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String... strArr) {
            boolean z;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (strArr.length == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww((String[]) strArr.clone());
                    return this;
                }
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }

        @Deprecated(message = "since OkHttp 3.13 all TLS-connections are expected to support TLS extensions.\nIn a future release setting this to true will be unnecessary and setting it to false\nwill have no effect.")
        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
                return this;
            }
            throw new IllegalArgumentException("no TLS extensions for cleartext connections");
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String[] strArr) {
            this.f12272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = strArr;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
            this.f12271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String[] strArr) {
            this.f12273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = strArr;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull CipherSuite... cipherSuiteArr) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                ArrayList arrayList = new ArrayList(cipherSuiteArr.length);
                for (CipherSuite cipherSuite : cipherSuiteArr) {
                    arrayList.add(cipherSuite.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                }
                Object[] array = arrayList.toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String[]) Arrays.copyOf(strArr, strArr.length));
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String... strArr) {
            boolean z;
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (strArr.length == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String[]) strArr.clone());
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }

        @NotNull
        public final ConnectionSpec Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new ConnectionSpec(this.f12274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public Builder(@NotNull ConnectionSpec connectionSpec) {
            this.f12274Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = connectionSpec.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f12273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = connectionSpec.f12268Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f12272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = connectionSpec.f12267Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f12271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = connectionSpec.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
