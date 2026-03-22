package androidx.window.java.layout;

import android.app.Activity;
import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.java.core.CallbackToFlowAdapter;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.WindowLayoutInfo;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J$\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ$\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0014\u0010\u0012\u001a\u00020\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00142\u0006\u0010\t\u001a\u00020\nH\u0096\u0001J\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00142\u0006\u0010\u0010\u001a\u00020\u0011H\u0096\u0001R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;", "Landroidx/window/layout/WindowInfoTracker;", "tracker", "(Landroidx/window/layout/WindowInfoTracker;)V", "callbackToFlowAdapter", "Landroidx/window/java/core/CallbackToFlowAdapter;", "(Landroidx/window/layout/WindowInfoTracker;Landroidx/window/java/core/CallbackToFlowAdapter;)V", "addWindowLayoutInfoListener", "", "activity", "Landroid/app/Activity;", "executor", "Ljava/util/concurrent/Executor;", "consumer", "Landroidx/core/util/Consumer;", "Landroidx/window/layout/WindowLayoutInfo;", "context", "Landroid/content/Context;", "removeWindowLayoutInfoListener", "windowLayoutInfo", "Lkotlinx/coroutines/flow/Flow;", "window-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WindowInfoTrackerCallbackAdapter implements WindowInfoTracker {
    @NotNull
    private final CallbackToFlowAdapter callbackToFlowAdapter;
    @NotNull
    private final WindowInfoTracker tracker;

    private WindowInfoTrackerCallbackAdapter(WindowInfoTracker windowInfoTracker, CallbackToFlowAdapter callbackToFlowAdapter) {
        this.tracker = windowInfoTracker;
        this.callbackToFlowAdapter = callbackToFlowAdapter;
    }

    public final void addWindowLayoutInfoListener(@NotNull Activity activity, @NotNull Executor executor, @NotNull Consumer<WindowLayoutInfo> consumer) {
        this.callbackToFlowAdapter.connect(executor, consumer, this.tracker.windowLayoutInfo(activity));
    }

    public final void removeWindowLayoutInfoListener(@NotNull Consumer<WindowLayoutInfo> consumer) {
        this.callbackToFlowAdapter.disconnect(consumer);
    }

    @Override // androidx.window.layout.WindowInfoTracker
    @NotNull
    public Flow<WindowLayoutInfo> windowLayoutInfo(@NotNull Activity activity) {
        return this.tracker.windowLayoutInfo(activity);
    }

    public final void addWindowLayoutInfoListener(@NotNull Context context, @NotNull Executor executor, @NotNull Consumer<WindowLayoutInfo> consumer) {
        this.callbackToFlowAdapter.connect(executor, consumer, this.tracker.windowLayoutInfo(context));
    }

    @Override // androidx.window.layout.WindowInfoTracker
    @NotNull
    public Flow<WindowLayoutInfo> windowLayoutInfo(@NotNull Context context) {
        return this.tracker.windowLayoutInfo(context);
    }

    public WindowInfoTrackerCallbackAdapter(@NotNull WindowInfoTracker windowInfoTracker) {
        this(windowInfoTracker, new CallbackToFlowAdapter());
    }
}
