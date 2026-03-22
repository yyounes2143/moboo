package okhttp3;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.net.InetSocketAddress;
import java.net.Proxy;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000e\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0003\u001a\u00020\u00028\u0007¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0016\u0010\u0018R\u0017\u0010\u0005\u001a\u00020\u00048\u0007¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0019\u0010\u001bR\u0017\u0010\u0007\u001a\u00020\u00068\u0007¢\u0006\f\n\u0004\b\u000b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lokhttp3/Route;", "", "Lokhttp3/Address;", "address", "Ljava/net/Proxy;", "proxy", "Ljava/net/InetSocketAddress;", "socketAddress", "<init>", "(Lokhttp3/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/Address;", "()Lokhttp3/Address;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/net/Proxy;", "()Ljava/net/Proxy;", "Ljava/net/InetSocketAddress;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/net/InetSocketAddress;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Route {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InetSocketAddress f12484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Proxy f12485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Address f12486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public Route(@NotNull Address address, @NotNull Proxy proxy, @NotNull InetSocketAddress inetSocketAddress) {
        this.f12486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = address;
        this.f12485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = proxy;
        this.f12484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = inetSocketAddress;
    }

    @JvmName(name = "socketAddress")
    @NotNull
    public final InetSocketAddress Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f12486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww() != null && this.f12485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.type() == Proxy.Type.HTTP) {
            return true;
        }
        return false;
    }

    @JvmName(name = "proxy")
    @NotNull
    public final Proxy Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @JvmName(name = "address")
    @NotNull
    public final Address Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Route) {
            Route route = (Route) obj;
            if (Intrinsics.areEqual(route.f12486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(route.f12485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && Intrinsics.areEqual(route.f12484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f12484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f12486Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f12485Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode()) * 31) + this.f12484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode();
    }

    @NotNull
    public String toString() {
        return "Route{" + this.f12484Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + AbstractJsonLexerKt.END_OBJ;
    }
}
