package coil.network;

import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import coil.network.NetworkObserver;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\b\u0005*\u0001\u0017\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0013\u0010\u0011\u001a\u00020\r*\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0018R\u0014\u0010\u000e\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcoil/network/RealNetworkObserver;", "Lcoil/network/NetworkObserver;", "Landroid/net/ConnectivityManager;", "connectivityManager", "Lcoil/network/NetworkObserver$Listener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Landroid/net/ConnectivityManager;Lcoil/network/NetworkObserver$Listener;)V", "", "shutdown", "()V", "Landroid/net/Network;", "network", "", "isOnline", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Network;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/net/Network;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/net/ConnectivityManager;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/network/NetworkObserver$Listener;", "coil/network/RealNetworkObserver$networkCallback$1", "Lcoil/network/RealNetworkObserver$networkCallback$1;", "networkCallback", "()Z", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
@SuppressLint({"MissingPermission"})
/* loaded from: classes3.dex */
final class RealNetworkObserver implements NetworkObserver {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final RealNetworkObserver$networkCallback$1 f1998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final NetworkObserver.Listener f1999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ConnectivityManager f2000Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.net.ConnectivityManager$NetworkCallback, coil.network.RealNetworkObserver$networkCallback$1] */
    public RealNetworkObserver(@NotNull ConnectivityManager connectivityManager, @NotNull NetworkObserver.Listener listener) {
        this.f2000Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = connectivityManager;
        this.f1999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = listener;
        ?? r4 = new ConnectivityManager.NetworkCallback() { // from class: coil.network.RealNetworkObserver$networkCallback$1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(@NotNull Network network) {
                RealNetworkObserver.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(network, true);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(@NotNull Network network) {
                RealNetworkObserver.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(network, false);
            }
        };
        this.f1998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r4;
        connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), (ConnectivityManager.NetworkCallback) r4);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Network network, boolean z) {
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Network[] allNetworks = this.f2000Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getAllNetworks();
        int length = allNetworks.length;
        boolean z2 = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Network network2 = allNetworks[i];
            if (Intrinsics.areEqual(network2, network)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = z;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(network2);
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                z2 = true;
                break;
            }
            i++;
        }
        this.f1999Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z2);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Network network) {
        NetworkCapabilities networkCapabilities = this.f2000Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getNetworkCapabilities(network);
        if (networkCapabilities != null && networkCapabilities.hasCapability(12)) {
            return true;
        }
        return false;
    }

    @Override // coil.network.NetworkObserver
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        for (Network network : this.f2000Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getAllNetworks()) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(network)) {
                return true;
            }
        }
        return false;
    }

    @Override // coil.network.NetworkObserver
    public void shutdown() {
        this.f2000Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.unregisterNetworkCallback(this.f1998Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
