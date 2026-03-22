package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.domain.task.InitializeStateLoadCache;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache$LoadCacheResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateLoadCache$doWork$2", f = "InitializeStateLoadCache.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nInitializeStateLoadCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitializeStateLoadCache.kt\ncom/unity3d/services/core/domain/task/InitializeStateLoadCache$doWork$2\n+ 2 CoroutineExtensions.kt\ncom/unity3d/services/core/extensions/CoroutineExtensionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n24#2:73\n14#2,12:74\n26#2:87\n1#3:86\n*S KotlinDebug\n*F\n+ 1 InitializeStateLoadCache.kt\ncom/unity3d/services/core/domain/task/InitializeStateLoadCache$doWork$2\n*L\n33#1:73\n33#1:74,12\n33#1:87\n33#1:86\n*E\n"})
/* loaded from: classes6.dex */
public final class InitializeStateLoadCache$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends InitializeStateLoadCache.LoadCacheResult>>, Object> {
    final /* synthetic */ InitializeStateLoadCache.Params $params;
    int label;
    final /* synthetic */ InitializeStateLoadCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateLoadCache$doWork$2(InitializeStateLoadCache initializeStateLoadCache, InitializeStateLoadCache.Params params, Continuation<? super InitializeStateLoadCache$doWork$2> continuation) {
        super(2, continuation);
        this.this$0 = initializeStateLoadCache;
        this.$params = params;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new InitializeStateLoadCache$doWork$2(this.this$0, this.$params, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends InitializeStateLoadCache.LoadCacheResult>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<InitializeStateLoadCache.LoadCacheResult>>) continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        com.unity3d.services.core.log.DeviceLog.info("Unity Ads init: webapp loaded from local cache");
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r6) {
        /*
            r5 = this;
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r5.label
            if (r0 != 0) goto L84
            kotlin.ResultKt.throwOnFailure(r6)
            com.unity3d.services.core.domain.task.InitializeStateLoadCache r6 = r5.this$0
            com.unity3d.services.core.domain.task.InitializeStateLoadCache$Params r0 = r5.$params
            kotlin.Result$Companion r1 = kotlin.Result.Companion     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            java.lang.String r1 = "Unity Ads init: check if webapp can be loaded from local cache"
            com.unity3d.services.core.log.DeviceLog.debug(r1)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            byte[] r6 = com.unity3d.services.core.domain.task.InitializeStateLoadCache.access$getWebViewData(r6)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            r1 = 1
            if (r6 != 0) goto L28
            com.unity3d.services.core.domain.task.InitializeStateLoadCache$LoadCacheResult r6 = new com.unity3d.services.core.domain.task.InitializeStateLoadCache$LoadCacheResult     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            r0 = 2
            r2 = 0
            r6.<init>(r1, r2, r0, r2)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            goto L56
        L24:
            r6 = move-exception
            goto L5b
        L26:
            r6 = move-exception
            goto L83
        L28:
            java.lang.String r2 = com.unity3d.services.core.misc.Utilities.Sha256(r6)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            java.lang.String r3 = "UTF-8"
            java.nio.charset.Charset r3 = java.nio.charset.Charset.forName(r3)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            java.lang.String r4 = new java.lang.String     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            r4.<init>(r6, r3)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            r6 = 0
            if (r2 == 0) goto L4a
            com.unity3d.services.core.configuration.Configuration r0 = r0.getConfig()     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            java.lang.String r0 = r0.getWebViewHash()     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            if (r0 != 0) goto L49
            goto L4a
        L49:
            r1 = r6
        L4a:
            if (r1 != 0) goto L51
            java.lang.String r6 = "Unity Ads init: webapp loaded from local cache"
            com.unity3d.services.core.log.DeviceLog.info(r6)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
        L51:
            com.unity3d.services.core.domain.task.InitializeStateLoadCache$LoadCacheResult r6 = new com.unity3d.services.core.domain.task.InitializeStateLoadCache$LoadCacheResult     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            r6.<init>(r1, r4)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
        L56:
            java.lang.Object r6 = kotlin.Result.m438constructorimpl(r6)     // Catch: java.lang.Throwable -> L24 java.util.concurrent.CancellationException -> L26
            goto L65
        L5b:
            kotlin.Result$Companion r0 = kotlin.Result.Companion
            java.lang.Object r6 = kotlin.ResultKt.createFailure(r6)
            java.lang.Object r6 = kotlin.Result.m438constructorimpl(r6)
        L65:
            boolean r0 = kotlin.Result.m445isSuccessimpl(r6)
            if (r0 == 0) goto L70
            java.lang.Object r6 = kotlin.Result.m438constructorimpl(r6)
            goto L7e
        L70:
            java.lang.Throwable r0 = kotlin.Result.m441exceptionOrNullimpl(r6)
            if (r0 == 0) goto L7e
            java.lang.Object r6 = kotlin.ResultKt.createFailure(r0)
            java.lang.Object r6 = kotlin.Result.m438constructorimpl(r6)
        L7e:
            kotlin.Result r6 = kotlin.Result.m437boximpl(r6)
            return r6
        L83:
            throw r6
        L84:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.InitializeStateLoadCache$doWork$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Result<InitializeStateLoadCache.LoadCacheResult>> continuation) {
        return ((InitializeStateLoadCache$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
