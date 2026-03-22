package okhttp3.internal.tls;

import androidx.webkit.ProxyConfig;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okio.Utf8;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\r\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0013\u0010\u000eJ\u001f\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0015\u0010\u000eJ\u0013\u0010\u0016\u001a\u00020\u0004*\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\b*\u00020\u0004H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J#\u0010\u001b\u001a\u00020\b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00042\b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ%\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lokhttp3/internal/tls/OkHostnameVerifier;", "Ljavax/net/ssl/HostnameVerifier;", "<init>", "()V", "", "host", "Ljavax/net/ssl/SSLSession;", "session", "", "verify", "(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z", "Ljava/security/cert/X509Certificate;", "certificate", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/security/cert/X509Certificate;)Ljava/util/List;", "ipAddress", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "hostname", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "pattern", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Z", "", "type", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/security/cert/X509Certificate;I)Ljava/util/List;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class OkHostnameVerifier implements HostnameVerifier {
    @NotNull
    public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str, X509Certificate x509Certificate) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = HostnamesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509Certificate, 7);
        if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Collection) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            return false;
        }
        for (String str2 : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            if (Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, HostnamesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2))) {
                return true;
            }
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, X509Certificate x509Certificate) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509Certificate, 2);
        if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Collection) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEmpty()) {
            return false;
        }
        for (String str2 : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            if (INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str2)) {
                return true;
            }
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        if (str != null && str.length() != 0 && !StringsKt.startsWith$default(str, ".", false, 2, (Object) null) && !StringsKt.endsWith$default(str, "..", false, 2, (Object) null) && str2 != null && str2.length() != 0 && !StringsKt.startsWith$default(str2, ".", false, 2, (Object) null) && !StringsKt.endsWith$default(str2, "..", false, 2, (Object) null)) {
            if (!StringsKt.endsWith$default(str, ".", false, 2, (Object) null)) {
                str = Intrinsics.stringPlus(str, ".");
            }
            String str3 = str;
            if (!StringsKt.endsWith$default(str2, ".", false, 2, (Object) null)) {
                str2 = Intrinsics.stringPlus(str2, ".");
            }
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
            if (!StringsKt.contains$default((CharSequence) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, (CharSequence) ProxyConfig.MATCH_ALL_SCHEMES, false, 2, (Object) null)) {
                return Intrinsics.areEqual(str3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            if (!StringsKt.startsWith$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, "*.", false, 2, (Object) null) || StringsKt.indexOf$default((CharSequence) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, '*', 1, false, 4, (Object) null) != -1 || str3.length() < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length() || Intrinsics.areEqual("*.", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                return false;
            }
            String substring = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.substring(1);
            if (!StringsKt.endsWith$default(str3, substring, false, 2, (Object) null)) {
                return false;
            }
            int length = str3.length() - substring.length();
            if (length > 0 && StringsKt.lastIndexOf$default((CharSequence) str3, '.', length - 1, false, 4, (Object) null) != -1) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull X509Certificate x509Certificate) {
        if (Util.Wwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww(str, x509Certificate);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str, x509Certificate);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str.length() != ((int) Utf8.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, 0, 0, 3, null))) {
            return false;
        }
        return true;
    }

    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(X509Certificate x509Certificate, int i) {
        Object obj;
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && Intrinsics.areEqual(list.get(0), Integer.valueOf(i)) && (obj = list.get(1)) != null) {
                    arrayList.add((String) obj);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return CollectionsKt.emptyList();
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
            return str.toLowerCase(Locale.US);
        }
        return str;
    }

    @NotNull
    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull X509Certificate x509Certificate) {
        return CollectionsKt.plus((Collection) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509Certificate, 7), (Iterable) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(x509Certificate, 2));
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(@NotNull String str, @NotNull SSLSession sSLSession) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
            return false;
        }
        try {
            Certificate certificate = sSLSession.getPeerCertificates()[0];
            if (certificate != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, (X509Certificate) certificate);
            }
            throw new NullPointerException("null cannot be cast to non-null type java.security.cert.X509Certificate");
        } catch (SSLException unused) {
            return false;
        }
    }
}
