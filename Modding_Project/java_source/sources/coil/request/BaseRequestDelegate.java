package coil.request;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\bH\u0016¢\u0006\u0004\b\f\u0010\nJ\u0017\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcoil/request/BaseRequestDelegate;", "Lcoil/request/RequestDelegate;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Lkotlinx/coroutines/Job;", "job", "<init>", "(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/Job;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/lifecycle/LifecycleOwner;", "owner", "onDestroy", "(Landroidx/lifecycle/LifecycleOwner;)V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/lifecycle/Lifecycle;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lkotlinx/coroutines/Job;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BaseRequestDelegate extends RequestDelegate {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Job f2002Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Lifecycle f2003Wwwwwwwwwwwwwwwwwwwwwwwww;

    public BaseRequestDelegate(@NotNull Lifecycle lifecycle, @NotNull Job job) {
        super(null);
        this.f2003Wwwwwwwwwwwwwwwwwwwwwwwww = lifecycle;
        this.f2002Wwwwwwwwwwwwwwwwwwwwwwww = job;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Job.DefaultImpls.cancel$default(this.f2002Wwwwwwwwwwwwwwwwwwwwwwww, (CancellationException) null, 1, (Object) null);
    }

    @Override // coil.request.RequestDelegate
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f2003Wwwwwwwwwwwwwwwwwwwwwwwww.addObserver(this);
    }

    @Override // coil.request.RequestDelegate
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f2003Wwwwwwwwwwwwwwwwwwwwwwwww.removeObserver(this);
    }

    @Override // coil.request.RequestDelegate, androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner lifecycleOwner) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
