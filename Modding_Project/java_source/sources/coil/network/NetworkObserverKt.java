package coil.network;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.core.content.ContextCompat;
import coil.network.NetworkObserver;
import coil.util.Contexts;
import coil.util.Logger;
import coil.util.Logs;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a)\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroid/content/Context;", "context", "Lcoil/network/NetworkObserver$Listener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcoil/util/Logger;", "logger", "Lcoil/network/NetworkObserver;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcoil/network/NetworkObserver$Listener;Lcoil/util/Logger;)Lcoil/network/NetworkObserver;", "coil-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class NetworkObserverKt {
    @NotNull
    public static final NetworkObserver Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull NetworkObserver.Listener listener, @Nullable Logger logger) {
        ConnectivityManager connectivityManager = (ConnectivityManager) ContextCompat.getSystemService(context, ConnectivityManager.class);
        if (connectivityManager != null && Contexts.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, "android.permission.ACCESS_NETWORK_STATE")) {
            try {
                return new RealNetworkObserver(connectivityManager, listener);
            } catch (Exception e) {
                if (logger != null) {
                    Logs.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(logger, "NetworkObserver", new RuntimeException("Failed to register network observer.", e));
                }
                return new EmptyNetworkObserver();
            }
        }
        if (logger != null && logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 5) {
            logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("NetworkObserver", 5, "Unable to register network observer.", null);
        }
        return new EmptyNetworkObserver();
    }
}
