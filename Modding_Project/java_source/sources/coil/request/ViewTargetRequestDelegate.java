package coil.request;

import androidx.annotation.MainThread;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import coil.ImageLoader;
import coil.target.ViewTarget;
import coil.util.Lifecycles;
import coil.util.Utils;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0010J\u0017\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcoil/request/ViewTargetRequestDelegate;", "Lcoil/request/RequestDelegate;", "Lcoil/ImageLoader;", "imageLoader", "Lcoil/request/ImageRequest;", "initialRequest", "Lcoil/target/ViewTarget;", TypedValues.AttributesType.S_TARGET, "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Lcoil/ImageLoader;Lcoil/request/ImageRequest;Lcoil/target/ViewTarget;Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/lifecycle/LifecycleOwner;", "owner", "onDestroy", "(Landroidx/lifecycle/LifecycleOwner;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/ImageLoader;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/ImageRequest;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcoil/target/ViewTarget;", "Wwwwwwwwwwwwwwwwwwwwww", "Landroidx/lifecycle/Lifecycle;", "Wwwwwwwwwwwwwwwwwwwww", "Lkotlinx/coroutines/Job;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ViewTargetRequestDelegate extends RequestDelegate {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Job f2160Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lifecycle f2161Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ViewTarget<?> f2162Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageRequest f2163Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageLoader f2164Wwwwwwwwwwwwwwwwwwwwwwwww;

    public ViewTargetRequestDelegate(@NotNull ImageLoader imageLoader, @NotNull ImageRequest imageRequest, @NotNull ViewTarget<?> viewTarget, @NotNull Lifecycle lifecycle, @NotNull Job job) {
        super(null);
        this.f2164Wwwwwwwwwwwwwwwwwwwwwwwww = imageLoader;
        this.f2163Wwwwwwwwwwwwwwwwwwwwwwww = imageRequest;
        this.f2162Wwwwwwwwwwwwwwwwwwwwwww = viewTarget;
        this.f2161Wwwwwwwwwwwwwwwwwwwwww = lifecycle;
        this.f2160Wwwwwwwwwwwwwwwwwwwww = job;
    }

    @MainThread
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f2164Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2163Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Job.DefaultImpls.cancel$default(this.f2160Wwwwwwwwwwwwwwwwwwwww, (CancellationException) null, 1, (Object) null);
        ViewTarget<?> viewTarget = this.f2162Wwwwwwwwwwwwwwwwwwwwwww;
        if (viewTarget instanceof LifecycleObserver) {
            this.f2161Wwwwwwwwwwwwwwwwwwwwww.removeObserver((LifecycleObserver) viewTarget);
        }
        this.f2161Wwwwwwwwwwwwwwwwwwwwww.removeObserver(this);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.view.View] */
    @Override // coil.request.RequestDelegate
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f2161Wwwwwwwwwwwwwwwwwwwwww.addObserver(this);
        ViewTarget<?> viewTarget = this.f2162Wwwwwwwwwwwwwwwwwwwwwww;
        if (viewTarget instanceof LifecycleObserver) {
            Lifecycles.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f2161Wwwwwwwwwwwwwwwwwwwwww, (LifecycleObserver) viewTarget);
        }
        Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f2162Wwwwwwwwwwwwwwwwwwwwwww.getView()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View] */
    @Override // coil.request.RequestDelegate
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f2162Wwwwwwwwwwwwwwwwwwwwwww.getView().isAttachedToWindow()) {
            return;
        }
        Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f2162Wwwwwwwwwwwwwwwwwwwwwww.getView()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        throw new CancellationException("'ViewTarget.view' must be attached to a window.");
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [android.view.View] */
    @Override // coil.request.RequestDelegate, androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner lifecycleOwner) {
        Utils.Wwwwwwwwwwwwwwwwwwwwww(this.f2162Wwwwwwwwwwwwwwwwwwwwwww.getView()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
