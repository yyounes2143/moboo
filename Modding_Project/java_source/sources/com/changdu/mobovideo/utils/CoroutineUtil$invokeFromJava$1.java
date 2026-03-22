package com.changdu.mobovideo.utils;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.utils.CoroutineUtil$invokeFromJava$1", f = "CoroutineUtil.kt", i = {}, l = {57, 68}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class CoroutineUtil$invokeFromJava$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function0<Object> $asyncBizBlock;
    final /* synthetic */ Function1<Throwable, Unit> $onError;
    final /* synthetic */ Function1<Object, Unit> $onSuccess;
    int label;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.changdu.mobovideo.utils.CoroutineUtil$invokeFromJava$1$1", f = "CoroutineUtil.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.changdu.mobovideo.utils.CoroutineUtil$invokeFromJava$1$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Object, Unit> $onSuccess;
        final /* synthetic */ Object $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Function1<Object, Unit> function1, Object obj, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$onSuccess = function1;
            this.$result = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$onSuccess, this.$result, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                this.$onSuccess.invoke(this.$result);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CoroutineUtil$invokeFromJava$1(Function0<Object> function0, Function1<? super Throwable, Unit> function1, Function1<Object, Unit> function12, Continuation<? super CoroutineUtil$invokeFromJava$1> continuation) {
        super(2, continuation);
        this.$asyncBizBlock = function0;
        this.$onError = function1;
        this.$onSuccess = function12;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CoroutineUtil$invokeFromJava$1(this.$asyncBizBlock, this.$onError, this.$onSuccess, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0035, code lost:
        if (r8 == r0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r1, r4, r7) == r0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L1b
            if (r1 != r3) goto L13
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4e
        L13:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1b:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L38
        L1f:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.CoroutineDispatcher r8 = kotlinx.coroutines.Dispatchers.getIO()
            com.changdu.mobovideo.utils.CoroutineUtil$invokeFromJava$1$result$1 r1 = new com.changdu.mobovideo.utils.CoroutineUtil$invokeFromJava$1$result$1
            kotlin.jvm.functions.Function0<java.lang.Object> r5 = r7.$asyncBizBlock
            kotlin.jvm.functions.Function1<java.lang.Throwable, kotlin.Unit> r6 = r7.$onError
            r1.<init>(r5, r6, r2)
            r7.label = r4
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r1, r7)
            if (r8 != r0) goto L38
            goto L4d
        L38:
            if (r8 == 0) goto L4e
            kotlinx.coroutines.MainCoroutineDispatcher r1 = kotlinx.coroutines.Dispatchers.getMain()
            com.changdu.mobovideo.utils.CoroutineUtil$invokeFromJava$1$1 r4 = new com.changdu.mobovideo.utils.CoroutineUtil$invokeFromJava$1$1
            kotlin.jvm.functions.Function1<java.lang.Object, kotlin.Unit> r5 = r7.$onSuccess
            r4.<init>(r5, r8, r2)
            r7.label = r3
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r1, r4, r7)
            if (r8 != r0) goto L4e
        L4d:
            return r0
        L4e:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.utils.CoroutineUtil$invokeFromJava$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CoroutineUtil$invokeFromJava$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
