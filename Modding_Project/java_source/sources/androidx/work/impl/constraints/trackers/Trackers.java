package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.work.impl.constraints.NetworkState;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001BS\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0007\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0013¨\u0006\u0018"}, d2 = {"Landroidx/work/impl/constraints/trackers/Trackers;", "", "context", "Landroid/content/Context;", "taskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "batteryChargingTracker", "Landroidx/work/impl/constraints/trackers/ConstraintTracker;", "", "batteryNotLowTracker", "Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;", "networkStateTracker", "Landroidx/work/impl/constraints/NetworkState;", "storageNotLowTracker", "<init>", "(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V", "getContext", "()Landroid/content/Context;", "getBatteryChargingTracker", "()Landroidx/work/impl/constraints/trackers/ConstraintTracker;", "getBatteryNotLowTracker", "()Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;", "getNetworkStateTracker", "getStorageNotLowTracker", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class Trackers {
    @NotNull
    private final ConstraintTracker<Boolean> batteryChargingTracker;
    @NotNull
    private final BatteryNotLowTracker batteryNotLowTracker;
    @NotNull
    private final Context context;
    @NotNull
    private final ConstraintTracker<NetworkState> networkStateTracker;
    @NotNull
    private final ConstraintTracker<Boolean> storageNotLowTracker;

    @JvmOverloads
    public Trackers(@NotNull Context context, @NotNull TaskExecutor taskExecutor) {
        this(context, taskExecutor, null, null, null, null, 60, null);
    }

    @NotNull
    public final ConstraintTracker<Boolean> getBatteryChargingTracker() {
        return this.batteryChargingTracker;
    }

    @NotNull
    public final BatteryNotLowTracker getBatteryNotLowTracker() {
        return this.batteryNotLowTracker;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final ConstraintTracker<NetworkState> getNetworkStateTracker() {
        return this.networkStateTracker;
    }

    @NotNull
    public final ConstraintTracker<Boolean> getStorageNotLowTracker() {
        return this.storageNotLowTracker;
    }

    @JvmOverloads
    public Trackers(@NotNull Context context, @NotNull TaskExecutor taskExecutor, @NotNull ConstraintTracker<Boolean> constraintTracker) {
        this(context, taskExecutor, constraintTracker, null, null, null, 56, null);
    }

    @JvmOverloads
    public Trackers(@NotNull Context context, @NotNull TaskExecutor taskExecutor, @NotNull ConstraintTracker<Boolean> constraintTracker, @NotNull BatteryNotLowTracker batteryNotLowTracker) {
        this(context, taskExecutor, constraintTracker, batteryNotLowTracker, null, null, 48, null);
    }

    @JvmOverloads
    public Trackers(@NotNull Context context, @NotNull TaskExecutor taskExecutor, @NotNull ConstraintTracker<Boolean> constraintTracker, @NotNull BatteryNotLowTracker batteryNotLowTracker, @NotNull ConstraintTracker<NetworkState> constraintTracker2) {
        this(context, taskExecutor, constraintTracker, batteryNotLowTracker, constraintTracker2, null, 32, null);
    }

    @JvmOverloads
    public Trackers(@NotNull Context context, @NotNull TaskExecutor taskExecutor, @NotNull ConstraintTracker<Boolean> constraintTracker, @NotNull BatteryNotLowTracker batteryNotLowTracker, @NotNull ConstraintTracker<NetworkState> constraintTracker2, @NotNull ConstraintTracker<Boolean> constraintTracker3) {
        this.context = context;
        this.batteryChargingTracker = constraintTracker;
        this.batteryNotLowTracker = batteryNotLowTracker;
        this.networkStateTracker = constraintTracker2;
        this.storageNotLowTracker = constraintTracker3;
    }

    public /* synthetic */ Trackers(Context context, TaskExecutor taskExecutor, ConstraintTracker constraintTracker, BatteryNotLowTracker batteryNotLowTracker, ConstraintTracker constraintTracker2, ConstraintTracker constraintTracker3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, taskExecutor, (i & 4) != 0 ? new BatteryChargingTracker(context.getApplicationContext(), taskExecutor) : constraintTracker, (i & 8) != 0 ? new BatteryNotLowTracker(context.getApplicationContext(), taskExecutor) : batteryNotLowTracker, (i & 16) != 0 ? NetworkStateTrackerKt.NetworkStateTracker(context.getApplicationContext(), taskExecutor) : constraintTracker2, (i & 32) != 0 ? new StorageNotLowTracker(context.getApplicationContext(), taskExecutor) : constraintTracker3);
    }
}
