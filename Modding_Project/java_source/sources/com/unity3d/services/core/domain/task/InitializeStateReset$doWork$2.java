package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.domain.task.InitializeStateReset;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/unity3d/services/core/configuration/Configuration;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateReset$doWork$2", f = "InitializeStateReset.kt", i = {}, l = {41}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nInitializeStateReset.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateReset.kt\ncom/unity3d/services/core/domain/task/InitializeStateReset$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,80:1\n24#2:81\n14#2,2:82\n16#2,10:85\n26#2:96\n26#3:84\n1#4:95\n*S KotlinDebug\n*F\n+ 1 InitializeStateReset.kt\ncom/unity3d/services/core/domain/task/InitializeStateReset$doWork$2\n*L\n34#1:81\n34#1:82,2\n34#1:85,10\n34#1:96\n62#1:84\n34#1:95\n*E\n"})
/* loaded from: classes6.dex */
public final class InitializeStateReset$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Configuration>>, Object> {
    final /* synthetic */ InitializeStateReset.Params $params;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ InitializeStateReset this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateReset$doWork$2(InitializeStateReset.Params params, InitializeStateReset initializeStateReset, Continuation<? super InitializeStateReset$doWork$2> continuation) {
        super(2, continuation);
        this.$params = params;
        this.this$0 = initializeStateReset;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new InitializeStateReset$doWork$2(this.$params, this.this$0, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0080 A[Catch: all -> 0x0018, CancellationException -> 0x001b, TryCatch #2 {CancellationException -> 0x001b, all -> 0x0018, blocks: (B:6:0x0014, B:26:0x0063, B:31:0x0071, B:33:0x0080, B:35:0x0086, B:37:0x0094, B:38:0x0096, B:40:0x0099, B:42:0x00a5, B:43:0x00b0, B:44:0x00b2, B:45:0x00bb, B:46:0x00c2, B:47:0x00c3, B:48:0x00ca, B:29:0x0069, B:30:0x0070, B:15:0x002d, B:17:0x003a, B:19:0x003f, B:22:0x0047), top: B:59:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c3 A[Catch: all -> 0x0018, CancellationException -> 0x001b, TryCatch #2 {CancellationException -> 0x001b, all -> 0x0018, blocks: (B:6:0x0014, B:26:0x0063, B:31:0x0071, B:33:0x0080, B:35:0x0086, B:37:0x0094, B:38:0x0096, B:40:0x0099, B:42:0x00a5, B:43:0x00b0, B:44:0x00b2, B:45:0x00bb, B:46:0x00c2, B:47:0x00c3, B:48:0x00ca, B:29:0x0069, B:30:0x0070, B:15:0x002d, B:17:0x003a, B:19:0x003f, B:22:0x0047), top: B:59:0x0008 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateReset$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Result<? extends Configuration>> continuation) {
        return ((InitializeStateReset$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
