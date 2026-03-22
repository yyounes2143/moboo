package coil.request;

import android.view.View;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;
import kotlinx.coroutines.Deferred;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR(\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\t\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcoil/request/ViewTargetDisposable;", "Lcoil/request/Disposable;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lkotlinx/coroutines/Deferred;", "Lcoil/request/ImageResult;", "job", "<init>", "(Landroid/view/View;Lkotlinx/coroutines/Deferred;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/view/View;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlinx/coroutines/Deferred;", "getJob", "()Lkotlinx/coroutines/Deferred;", "(Lkotlinx/coroutines/Deferred;)V", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ViewTargetDisposable implements Disposable {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile Deferred<? extends ImageResult> f2158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final View f2159Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ViewTargetDisposable(@NotNull View view, @NotNull Deferred<? extends ImageResult> deferred) {
        this.f2159Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = view;
        this.f2158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = deferred;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Deferred<? extends ImageResult> deferred) {
        this.f2158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = deferred;
    }
}
