package com.changdu.mobovideo.plugins;

import com.changdu.mobovideo.utils.AESCBCUtils;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9", f = "CDAppStatePlugin.kt", i = {0}, l = {198, 203, 207}, m = "invokeSuspend", n = {"desContent"}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class CDAppStatePlugin$onMethodCall$9 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MethodCall $call;
    final /* synthetic */ MethodChannel.Result $result;
    Object L$0;
    int label;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$1", f = "CDAppStatePlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MethodCall $call;
        final /* synthetic */ Ref.ObjectRef<String> $desContent;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MethodCall methodCall, Ref.ObjectRef<String> objectRef, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$call = methodCall;
            this.$desContent = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$call, this.$desContent, continuation);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                String str = (String) this.$call.argument("key");
                String str2 = "";
                if (str == null) {
                    str = "";
                }
                String str3 = (String) this.$call.argument("content");
                if (str3 == null) {
                    str3 = "";
                }
                Ref.ObjectRef<String> objectRef = this.$desContent;
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AESCBCUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str3, str3);
                T t = str2;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    t = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
                objectRef.element = t;
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$2", f = "CDAppStatePlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$2  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<String> $desContent;
        final /* synthetic */ MethodChannel.Result $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(MethodChannel.Result result, Ref.ObjectRef<String> objectRef, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$result = result;
            this.$desContent = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$result, this.$desContent, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                this.$result.success(this.$desContent.element);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$3", f = "CDAppStatePlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$3  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Throwable $e;
        final /* synthetic */ MethodChannel.Result $result;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(MethodChannel.Result result, Throwable th, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$result = result;
            this.$e = th;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$result, this.$e, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                this.$result.error(this.$e.toString(), null, null);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDAppStatePlugin$onMethodCall$9(MethodCall methodCall, MethodChannel.Result result, Continuation<? super CDAppStatePlugin$onMethodCall$9> continuation) {
        super(2, continuation);
        this.$call = methodCall;
        this.$result = result;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CDAppStatePlugin$onMethodCall$9(this.$call, this.$result, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r9, r4, r8) == r0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0077, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r1, r3, r8) != r0) goto L8;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L2c
            if (r1 == r4) goto L24
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7a
        L16:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1e:
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L22
            goto L7a
        L22:
            r9 = move-exception
            goto L64
        L24:
            java.lang.Object r1 = r8.L$0
            kotlin.jvm.internal.Ref$ObjectRef r1 = (kotlin.jvm.internal.Ref.ObjectRef) r1
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L22
            goto L4e
        L2c:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$ObjectRef r1 = new kotlin.jvm.internal.Ref$ObjectRef     // Catch: java.lang.Throwable -> L22
            r1.<init>()     // Catch: java.lang.Throwable -> L22
            java.lang.String r9 = ""
            r1.element = r9     // Catch: java.lang.Throwable -> L22
            kotlinx.coroutines.CoroutineDispatcher r9 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Throwable -> L22
            com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$1 r6 = new com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$1     // Catch: java.lang.Throwable -> L22
            io.flutter.plugin.common.MethodCall r7 = r8.$call     // Catch: java.lang.Throwable -> L22
            r6.<init>(r7, r1, r5)     // Catch: java.lang.Throwable -> L22
            r8.L$0 = r1     // Catch: java.lang.Throwable -> L22
            r8.label = r4     // Catch: java.lang.Throwable -> L22
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r9, r6, r8)     // Catch: java.lang.Throwable -> L22
            if (r9 != r0) goto L4e
            goto L79
        L4e:
            kotlinx.coroutines.MainCoroutineDispatcher r9 = kotlinx.coroutines.Dispatchers.getMain()     // Catch: java.lang.Throwable -> L22
            com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$2 r4 = new com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$2     // Catch: java.lang.Throwable -> L22
            io.flutter.plugin.common.MethodChannel$Result r6 = r8.$result     // Catch: java.lang.Throwable -> L22
            r4.<init>(r6, r1, r5)     // Catch: java.lang.Throwable -> L22
            r8.L$0 = r5     // Catch: java.lang.Throwable -> L22
            r8.label = r3     // Catch: java.lang.Throwable -> L22
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r9, r4, r8)     // Catch: java.lang.Throwable -> L22
            if (r9 != r0) goto L7a
            goto L79
        L64:
            kotlinx.coroutines.MainCoroutineDispatcher r1 = kotlinx.coroutines.Dispatchers.getMain()
            com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$3 r3 = new com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9$3
            io.flutter.plugin.common.MethodChannel$Result r4 = r8.$result
            r3.<init>(r4, r9, r5)
            r8.L$0 = r5
            r8.label = r2
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r1, r3, r8)
            if (r9 != r0) goto L7a
        L79:
            return r0
        L7a:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$9.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CDAppStatePlugin$onMethodCall$9) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
