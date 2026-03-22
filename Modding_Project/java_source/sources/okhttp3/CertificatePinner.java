package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\u0018\u0000 '2\u00020\u0001:\u0003(')B#\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u000f\u0010\u0010J+\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\t2\u0012\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u000b0\u0011H\u0000¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010!\u001a\u0004\b\"\u0010#R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0014\u0010$\u001a\u0004\b%\u0010&¨\u0006*"}, d2 = {"Lokhttp3/CertificatePinner;", "", "", "Lokhttp3/CertificatePinner$Pin;", "pins", "Lokhttp3/internal/tls/CertificateChainCleaner;", "certificateChainCleaner", "<init>", "(Ljava/util/Set;Lokhttp3/internal/tls/CertificateChainCleaner;)V", "", "hostname", "", "Ljava/security/cert/Certificate;", "peerCertificates", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/List;)V", "Lkotlin/Function0;", "Ljava/security/cert/X509Certificate;", "cleanedPeerCertificatesFn", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/CertificatePinner;", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Ljava/util/Set;", "getPins", "()Ljava/util/Set;", "Lokhttp3/internal/tls/CertificateChainCleaner;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/internal/tls/CertificateChainCleaner;", "Companion", "Builder", "Pin", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class CertificatePinner {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final CertificatePinner f12200Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Builder().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final CertificateChainCleaner f12201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<Pin> f12202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u001d\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lokhttp3/CertificatePinner$Builder;", "", "<init>", "()V", "Lokhttp3/CertificatePinner;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokhttp3/CertificatePinner;", "", "Lokhttp3/CertificatePinner$Pin;", "Ljava/util/List;", "getPins", "()Ljava/util/List;", "pins", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Builder {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final List<Pin> f12203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

        @NotNull
        public final CertificatePinner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new CertificatePinner(CollectionsKt.toSet(this.f12203Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), null, 2, null);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0006\u001a\u00020\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\b\u001a\u00020\u0005*\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\u0007J\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lokhttp3/CertificatePinner$Companion;", "", "<init>", "()V", "Ljava/security/cert/X509Certificate;", "Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/security/cert/X509Certificate;)Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/security/cert/Certificate;", "certificate", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/security/cert/Certificate;)Ljava/lang/String;", "Lokhttp3/CertificatePinner;", "DEFAULT", "Lokhttp3/CertificatePinner;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull X509Certificate x509Certificate) {
            return ByteString.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(ByteString.Companion, x509Certificate.getPublicKey().getEncoded(), 0, 0, 3, null).sha256();
        }

        @JvmStatic
        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull X509Certificate x509Certificate) {
            return ByteString.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwww(ByteString.Companion, x509Certificate.getPublicKey().getEncoded(), 0, 0, 3, null).sha1();
        }

        @JvmStatic
        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Certificate certificate) {
            if (certificate instanceof X509Certificate) {
                return Intrinsics.stringPlus("sha256/", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((X509Certificate) certificate).base64());
            }
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0017\u0010\u0012\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\bR\u0017\u0010\u0014\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0013\u0010\bR\u0017\u0010\u0018\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u000f\u0010\u0017¨\u0006\u0019"}, d2 = {"Lokhttp3/CertificatePinner$Pin;", "", "", "hostname", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "toString", "()Ljava/lang/String;", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getPattern", "pattern", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "hashAlgorithm", "Lokio/ByteString;", "Lokio/ByteString;", "()Lokio/ByteString;", "hash", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Pin {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ByteString f12204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f12205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f12206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            if (StringsKt.startsWith$default(this.f12206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "**.", false, 2, (Object) null)) {
                int length = this.f12206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length() - 3;
                int length2 = str.length() - length;
                if (!StringsKt.regionMatches$default(str, str.length() - length, this.f12206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 3, length, false, 16, (Object) null) || (length2 != 0 && str.charAt(length2 - 1) != '.')) {
                    return false;
                }
                return true;
            } else if (StringsKt.startsWith$default(this.f12206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, "*.", false, 2, (Object) null)) {
                int length3 = this.f12206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length() - 1;
                int length4 = str.length() - length3;
                if (!StringsKt.regionMatches$default(str, str.length() - length3, this.f12206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 1, length3, false, 16, (Object) null) || StringsKt.lastIndexOf$default((CharSequence) str, '.', length4 - 1, false, 4, (Object) null) != -1) {
                    return false;
                }
                return true;
            } else {
                return Intrinsics.areEqual(str, this.f12206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        }

        @NotNull
        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f12204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pin)) {
                return false;
            }
            Pin pin = (Pin) obj;
            if (Intrinsics.areEqual(this.f12206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pin.f12206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f12205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pin.f12205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(this.f12204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, pin.f12204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f12206Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * 31) + this.f12205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f12204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
        }

        @NotNull
        public String toString() {
            return this.f12205Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + '/' + this.f12204Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.base64();
        }
    }

    public CertificatePinner(@NotNull Set<Pin> set, @Nullable CertificateChainCleaner certificateChainCleaner) {
        this.f12202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = set;
        this.f12201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = certificateChainCleaner;
    }

    @NotNull
    public final CertificatePinner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull CertificateChainCleaner certificateChainCleaner) {
        if (Intrinsics.areEqual(this.f12201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, certificateChainCleaner)) {
            return this;
        }
        return new CertificatePinner(this.f12202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, certificateChainCleaner);
    }

    @Nullable
    public final CertificateChainCleaner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<Pin> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        Set<Pin> set = this.f12202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        List<Pin> emptyList = CollectionsKt.emptyList();
        for (Object obj : set) {
            if (((Pin) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                TypeIntrinsics.asMutableList(emptyList).add(obj);
            }
        }
        return emptyList;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Function0<? extends List<? extends X509Certificate>> function0) {
        List<Pin> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            List<? extends X509Certificate> invoke = function0.invoke();
            for (X509Certificate x509Certificate : invoke) {
                ByteString byteString = null;
                ByteString byteString2 = null;
                for (Pin pin : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "sha256")) {
                        if (byteString == null) {
                            byteString = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509Certificate);
                        }
                        if (Intrinsics.areEqual(pin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), byteString)) {
                            return;
                        }
                    } else if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "sha1")) {
                        if (byteString2 == null) {
                            byteString2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509Certificate);
                        }
                        if (Intrinsics.areEqual(pin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), byteString2)) {
                            return;
                        }
                    } else {
                        throw new AssertionError(Intrinsics.stringPlus("unsupported hashAlgorithm: ", pin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("Certificate pinning failure!");
            sb.append("\n  Peer certificate chain:");
            for (X509Certificate x509Certificate2 : invoke) {
                sb.append("\n    ");
                sb.append(Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509Certificate2));
                sb.append(": ");
                sb.append(x509Certificate2.getSubjectDN().getName());
            }
            sb.append("\n  Pinned certificates for ");
            sb.append(str);
            sb.append(":");
            for (Pin pin2 : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                sb.append("\n    ");
                sb.append(pin2);
            }
            throw new SSLPeerUnverifiedException(sb.toString());
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final String str, @NotNull final List<? extends Certificate> list) throws SSLPeerUnverifiedException {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, new Function0<List<? extends X509Certificate>>() { // from class: okhttp3.CertificatePinner$check$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<? extends X509Certificate> invoke() {
                CertificateChainCleaner Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = CertificatePinner.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                List<Certificate> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null ? null : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list, str);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = list;
                }
                List<Certificate> list2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                for (Certificate certificate : list2) {
                    arrayList.add((X509Certificate) certificate);
                }
                return arrayList;
            }
        });
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof CertificatePinner) {
            CertificatePinner certificatePinner = (CertificatePinner) obj;
            if (Intrinsics.areEqual(certificatePinner.f12202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(certificatePinner.f12201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int hashCode = (1517 + this.f12202Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 41;
        CertificateChainCleaner certificateChainCleaner = this.f12201Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (certificateChainCleaner != null) {
            i = certificateChainCleaner.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }

    public /* synthetic */ CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(set, (i & 2) != 0 ? null : certificateChainCleaner);
    }
}
