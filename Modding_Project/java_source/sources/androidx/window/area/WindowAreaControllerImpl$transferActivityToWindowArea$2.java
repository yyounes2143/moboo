package androidx.window.area;

import android.app.Activity;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.window.area.WindowAreaControllerImpl$transferActivityToWindowArea$2", f = "WindowAreaControllerImpl.kt", i = {}, l = {224}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class WindowAreaControllerImpl$transferActivityToWindowArea$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ Executor $executor;
    final /* synthetic */ WindowAreaSessionCallback $windowAreaSessionCallback;
    int label;
    final /* synthetic */ WindowAreaControllerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowAreaControllerImpl$transferActivityToWindowArea$2(WindowAreaControllerImpl windowAreaControllerImpl, Activity activity, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback, Continuation<? super WindowAreaControllerImpl$transferActivityToWindowArea$2> continuation) {
        super(2, continuation);
        this.this$0 = windowAreaControllerImpl;
        this.$activity = activity;
        this.$executor = executor;
        this.$windowAreaSessionCallback = windowAreaSessionCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new WindowAreaControllerImpl$transferActivityToWindowArea$2(this.this$0, this.$activity, this.$executor, this.$windowAreaSessionCallback, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            Flow<List<WindowAreaInfo>> windowAreaInfos = this.this$0.getWindowAreaInfos();
            this.label = 1;
            if (FlowKt.first(windowAreaInfos, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        this.this$0.startRearDisplayMode(this.$activity, this.$executor, this.$windowAreaSessionCallback);
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((WindowAreaControllerImpl$transferActivityToWindowArea$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
