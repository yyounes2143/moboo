package androidx.work.impl.utils;

import android.net.NetworkRequest;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.work.Logger;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@RequiresApi(28)
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0000¢\u0006\u0002\b\nJ\u001d\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\tH\u0000¢\u0006\u0002\b\rJ\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\u001d\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0002\b\u0014¨\u0006\u0015"}, d2 = {"Landroidx/work/impl/utils/NetworkRequest28;", "", "<init>", "()V", "hasCapability", "", AdActivity.REQUEST_KEY_EXTRA, "Landroid/net/NetworkRequest;", "capability", "", "hasCapability$work_runtime_release", "hasTransport", NotificationCompat.CATEGORY_TRANSPORT, "hasTransport$work_runtime_release", "createNetworkRequest", "capabilities", "", "transports", "createNetworkRequestCompat", "Landroidx/work/impl/utils/NetworkRequestCompat;", "createNetworkRequestCompat$work_runtime_release", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNetworkRequestCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkRequestCompat.kt\nandroidx/work/impl/utils/NetworkRequest28\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,176:1\n13493#2,2:177\n13493#2,2:179\n13493#2,2:181\n*S KotlinDebug\n*F\n+ 1 NetworkRequestCompat.kt\nandroidx/work/impl/utils/NetworkRequest28\n*L\n119#1:177,2\n136#1:179,2\n153#1:181,2\n*E\n"})
/* loaded from: classes3.dex */
public final class NetworkRequest28 {
    @NotNull
    public static final NetworkRequest28 INSTANCE = new NetworkRequest28();

    private NetworkRequest28() {
    }

    @JvmStatic
    @NotNull
    public static final NetworkRequest createNetworkRequest(@NotNull int[] iArr, @NotNull int[] iArr2) {
        int[] iArr3;
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        for (int i : iArr) {
            try {
                builder.addCapability(i);
            } catch (IllegalArgumentException e) {
                Logger.get().warning(NetworkRequestCompat.Companion.getTAG(), "Ignoring adding capability '" + i + '\'', e);
            }
        }
        iArr3 = NetworkRequestCompatKt.defaultCapabilities;
        for (int i2 : iArr3) {
            if (!ArraysKt.contains(iArr, i2)) {
                try {
                    builder.removeCapability(i2);
                } catch (IllegalArgumentException e2) {
                    Logger.get().warning(NetworkRequestCompat.Companion.getTAG(), "Ignoring removing default capability '" + i2 + '\'', e2);
                }
            }
        }
        for (int i3 : iArr2) {
            builder.addTransportType(i3);
        }
        return builder.build();
    }

    @NotNull
    public final NetworkRequestCompat createNetworkRequestCompat$work_runtime_release(@NotNull int[] iArr, @NotNull int[] iArr2) {
        return new NetworkRequestCompat(createNetworkRequest(iArr, iArr2));
    }

    public final boolean hasCapability$work_runtime_release(@NotNull NetworkRequest networkRequest, int i) {
        boolean hasCapability;
        hasCapability = networkRequest.hasCapability(i);
        return hasCapability;
    }

    public final boolean hasTransport$work_runtime_release(@NotNull NetworkRequest networkRequest, int i) {
        boolean hasTransport;
        hasTransport = networkRequest.hasTransport(i);
        return hasTransport;
    }
}
