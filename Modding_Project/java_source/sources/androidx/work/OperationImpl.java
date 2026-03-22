package androidx.work;

import androidx.lifecycle.LiveData;
import androidx.work.Operation;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/work/OperationImpl;", "Landroidx/work/Operation;", "state", "Landroidx/lifecycle/LiveData;", "Landroidx/work/Operation$State;", "future", "Lcom/google/common/util/concurrent/ListenableFuture;", "Landroidx/work/Operation$State$SUCCESS;", "<init>", "(Landroidx/lifecycle/LiveData;Lcom/google/common/util/concurrent/ListenableFuture;)V", "getState", "getResult", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
final class OperationImpl implements Operation {
    @NotNull
    private final ListenableFuture<Operation.State.SUCCESS> future;
    @NotNull
    private final LiveData<Operation.State> state;

    public OperationImpl(@NotNull LiveData<Operation.State> liveData, @NotNull ListenableFuture<Operation.State.SUCCESS> listenableFuture) {
        this.state = liveData;
        this.future = listenableFuture;
    }

    @Override // androidx.work.Operation
    @NotNull
    public ListenableFuture<Operation.State.SUCCESS> getResult() {
        return this.future;
    }

    @Override // androidx.work.Operation
    @NotNull
    public LiveData<Operation.State> getState() {
        return this.state;
    }
}
