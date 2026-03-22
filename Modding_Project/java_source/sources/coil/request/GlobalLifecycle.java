package coil.request;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcoil/request/GlobalLifecycle;", "Landroidx/lifecycle/Lifecycle;", "<init>", "()V", "Landroidx/lifecycle/LifecycleObserver;", "observer", "", "addObserver", "(Landroidx/lifecycle/LifecycleObserver;)V", "removeObserver", "Landroidx/lifecycle/Lifecycle$State;", "getCurrentState", "()Landroidx/lifecycle/Lifecycle$State;", "", "toString", "()Ljava/lang/String;", "Landroidx/lifecycle/LifecycleOwner;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroidx/lifecycle/LifecycleOwner;", "owner", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GlobalLifecycle extends Lifecycle {
    @NotNull
    public static final GlobalLifecycle INSTANCE = new GlobalLifecycle();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final LifecycleOwner f2037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new LifecycleOwner() { // from class: coil.request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // androidx.lifecycle.LifecycleOwner
        public final Lifecycle getLifecycle() {
            Lifecycle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = GlobalLifecycle.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
    };

    private GlobalLifecycle() {
    }

    public static final Lifecycle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return INSTANCE;
    }

    @Override // androidx.lifecycle.Lifecycle
    public void addObserver(@NotNull LifecycleObserver lifecycleObserver) {
        if (lifecycleObserver instanceof DefaultLifecycleObserver) {
            DefaultLifecycleObserver defaultLifecycleObserver = (DefaultLifecycleObserver) lifecycleObserver;
            LifecycleOwner lifecycleOwner = f2037Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            defaultLifecycleObserver.onCreate(lifecycleOwner);
            defaultLifecycleObserver.onStart(lifecycleOwner);
            defaultLifecycleObserver.onResume(lifecycleOwner);
            return;
        }
        throw new IllegalArgumentException((lifecycleObserver + " must implement androidx.lifecycle.DefaultLifecycleObserver.").toString());
    }

    @Override // androidx.lifecycle.Lifecycle
    @NotNull
    public Lifecycle.State getCurrentState() {
        return Lifecycle.State.RESUMED;
    }

    @NotNull
    public String toString() {
        return "coil.request.GlobalLifecycle";
    }

    @Override // androidx.lifecycle.Lifecycle
    public void removeObserver(@NotNull LifecycleObserver lifecycleObserver) {
    }
}
