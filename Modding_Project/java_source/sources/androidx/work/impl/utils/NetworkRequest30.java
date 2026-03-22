package androidx.work.impl.utils;

import android.net.NetworkRequest;
import android.net.NetworkSpecifier;
import androidx.annotation.RequiresApi;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@RequiresApi(30)
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Landroidx/work/impl/utils/NetworkRequest30;", "", "<init>", "()V", "getNetworkSpecifier", "Landroid/net/NetworkSpecifier;", AdActivity.REQUEST_KEY_EXTRA, "Landroid/net/NetworkRequest;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class NetworkRequest30 {
    @NotNull
    public static final NetworkRequest30 INSTANCE = new NetworkRequest30();

    private NetworkRequest30() {
    }

    @Nullable
    public final NetworkSpecifier getNetworkSpecifier(@NotNull NetworkRequest networkRequest) {
        NetworkSpecifier networkSpecifier;
        networkSpecifier = networkRequest.getNetworkSpecifier();
        return networkSpecifier;
    }
}
