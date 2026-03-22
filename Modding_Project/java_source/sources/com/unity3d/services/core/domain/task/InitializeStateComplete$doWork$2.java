package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.IModuleConfiguration;
import com.unity3d.services.core.domain.task.InitializeStateComplete;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateComplete$doWork$2", f = "InitializeStateComplete.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nInitializeStateComplete.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateComplete.kt\ncom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,27:1\n24#2:28\n14#2,12:29\n26#2:42\n1#3:41\n*S KotlinDebug\n*F\n+ 1 InitializeStateComplete.kt\ncom/unity3d/services/core/domain/task/InitializeStateComplete$doWork$2\n*L\n19#1:28\n19#1:29,12\n19#1:42\n19#1:41\n*E\n"})
/* loaded from: classes6.dex */
public final class InitializeStateComplete$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {
    final /* synthetic */ InitializeStateComplete.Params $params;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateComplete$doWork$2(InitializeStateComplete.Params params, Continuation<? super InitializeStateComplete$doWork$2> continuation) {
        super(2, continuation);
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new InitializeStateComplete$doWork$2(this.$params, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Unit>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<Unit>>) continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object m438constructorimpl;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            InitializeStateComplete.Params params = this.$params;
            try {
                Result.Companion companion = Result.Companion;
                for (Class cls : params.getConfig().getModuleConfigurationList()) {
                    IModuleConfiguration moduleConfiguration = params.getConfig().getModuleConfiguration(cls);
                    if (moduleConfiguration != null) {
                        Boxing.boxBoolean(moduleConfiguration.initCompleteState(params.getConfig()));
                    }
                }
                m438constructorimpl = Result.m438constructorimpl(Unit.INSTANCE);
            } catch (CancellationException e) {
                throw e;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m445isSuccessimpl(m438constructorimpl)) {
                m438constructorimpl = Result.m438constructorimpl(m438constructorimpl);
            } else {
                Throwable m441exceptionOrNullimpl = Result.m441exceptionOrNullimpl(m438constructorimpl);
                if (m441exceptionOrNullimpl != null) {
                    m438constructorimpl = Result.m438constructorimpl(ResultKt.createFailure(m441exceptionOrNullimpl));
                }
            }
            return Result.m437boximpl(m438constructorimpl);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Result<Unit>> continuation) {
        return ((InitializeStateComplete$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
