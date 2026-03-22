package coil.network;

import androidx.annotation.MainThread;
import kotlin.Metadata;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b`\u0018\u00002\u00020\u0001:\u0001\tJ\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00058&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcoil/network/NetworkObserver;", "", "", "shutdown", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "isOnline", "Listener", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface NetworkObserver {

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcoil/network/NetworkObserver$Listener;", "", "", "isOnline", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public interface Listener {
        @MainThread
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z);
    }

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    void shutdown();
}
