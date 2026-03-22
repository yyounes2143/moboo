package coil.request;

import android.view.View;
import androidx.annotation.MainThread;
import coil.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0014\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0015\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lcoil/request/ViewTargetRequestManager;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Landroid/view/View;)V", "Lkotlinx/coroutines/Deferred;", "Lcoil/request/ImageResult;", "job", "Lcoil/request/ViewTargetDisposable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lkotlinx/coroutines/Deferred;)Lcoil/request/ViewTargetDisposable;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lcoil/request/ViewTargetRequestDelegate;", AdActivity.REQUEST_KEY_EXTRA, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/request/ViewTargetRequestDelegate;)V", "v", "onViewAttachedToWindow", "onViewDetachedFromWindow", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/view/View;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/ViewTargetDisposable;", "currentDisposable", "Lkotlinx/coroutines/Job;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lkotlinx/coroutines/Job;", "pendingClear", "Wwwwwwwwwwwwwwwwwwwwww", "Lcoil/request/ViewTargetRequestDelegate;", "currentRequest", "", "Wwwwwwwwwwwwwwwwwwwww", "Z", "isRestart", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ViewTargetRequestManager implements View.OnAttachStateChangeListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f2165Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ViewTargetRequestDelegate f2166Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Job f2167Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ViewTargetDisposable f2168Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final View f2169Wwwwwwwwwwwwwwwwwwwwwwwww;

    public ViewTargetRequestManager(@NotNull View view) {
        this.f2169Wwwwwwwwwwwwwwwwwwwwwwwww = view;
    }

    @MainThread
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ViewTargetRequestDelegate viewTargetRequestDelegate) {
        ViewTargetRequestDelegate viewTargetRequestDelegate2 = this.f2166Wwwwwwwwwwwwwwwwwwwwww;
        if (viewTargetRequestDelegate2 != null) {
            viewTargetRequestDelegate2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f2166Wwwwwwwwwwwwwwwwwwwwww = viewTargetRequestDelegate;
    }

    @NotNull
    public final synchronized ViewTargetDisposable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Deferred<? extends ImageResult> deferred) {
        ViewTargetDisposable viewTargetDisposable = this.f2168Wwwwwwwwwwwwwwwwwwwwwwww;
        if (viewTargetDisposable != null && Utils.Wwwwwwwwwwwwwwww() && this.f2165Wwwwwwwwwwwwwwwwwwwww) {
            this.f2165Wwwwwwwwwwwwwwwwwwwww = false;
            viewTargetDisposable.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(deferred);
            return viewTargetDisposable;
        }
        Job job = this.f2167Wwwwwwwwwwwwwwwwwwwwwww;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.f2167Wwwwwwwwwwwwwwwwwwwwwww = null;
        ViewTargetDisposable viewTargetDisposable2 = new ViewTargetDisposable(this.f2169Wwwwwwwwwwwwwwwwwwwwwwwww, deferred);
        this.f2168Wwwwwwwwwwwwwwwwwwwwwwww = viewTargetDisposable2;
        return viewTargetDisposable2;
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Job launch$default;
        try {
            Job job = this.f2167Wwwwwwwwwwwwwwwwwwwwwww;
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
            launch$default = BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain().getImmediate(), null, new ViewTargetRequestManager$dispose$1(this, null), 2, null);
            this.f2167Wwwwwwwwwwwwwwwwwwwwwww = launch$default;
            this.f2168Wwwwwwwwwwwwwwwwwwwwwwww = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    @MainThread
    public void onViewAttachedToWindow(@NotNull View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.f2166Wwwwwwwwwwwwwwwwwwwwww;
        if (viewTargetRequestDelegate == null) {
            return;
        }
        this.f2165Wwwwwwwwwwwwwwwwwwwww = true;
        viewTargetRequestDelegate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    @MainThread
    public void onViewDetachedFromWindow(@NotNull View view) {
        ViewTargetRequestDelegate viewTargetRequestDelegate = this.f2166Wwwwwwwwwwwwwwwwwwwwww;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
