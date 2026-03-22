package okhttp3.internal.http;

import androidx.browser.trusted.sharing.ShareTarget;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.services.core.network.core.OkHttp3Client;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\bJ\u0015\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\bJ\u0015\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\b¨\u0006\r"}, d2 = {"Lokhttp3/internal/http/HttpMethod;", "", "<init>", "()V", "", FirebaseAnalytics.Param.METHOD, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class HttpMethod {
    @NotNull
    public static final HttpMethod INSTANCE = new HttpMethod();

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (!Intrinsics.areEqual(str, ShareTarget.METHOD_POST) && !Intrinsics.areEqual(str, "PUT") && !Intrinsics.areEqual(str, "PATCH") && !Intrinsics.areEqual(str, "PROPPATCH") && !Intrinsics.areEqual(str, "REPORT")) {
            return false;
        }
        return true;
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (!Intrinsics.areEqual(str, "GET") && !Intrinsics.areEqual(str, "HEAD")) {
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return Intrinsics.areEqual(str, "PROPFIND");
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return !Intrinsics.areEqual(str, "PROPFIND");
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (!Intrinsics.areEqual(str, ShareTarget.METHOD_POST) && !Intrinsics.areEqual(str, "PATCH") && !Intrinsics.areEqual(str, "PUT") && !Intrinsics.areEqual(str, "DELETE") && !Intrinsics.areEqual(str, "MOVE")) {
            return false;
        }
        return true;
    }
}
