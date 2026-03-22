package com.changdu.mobovideo.plugins;

import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$11", f = "CDAppStatePlugin.kt", i = {}, l = {234, 242}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDAppStatePlugin$onMethodCall$11 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $artist;
    final /* synthetic */ double $duration;
    final /* synthetic */ String $imageUrl;
    final /* synthetic */ float $playbackRate;
    final /* synthetic */ double $position;
    final /* synthetic */ MethodChannel.Result $result;
    final /* synthetic */ String $title;
    int label;
    final /* synthetic */ CDAppStatePlugin this$0;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$11$1", f = "CDAppStatePlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$11$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MethodChannel.Result $result;
        final /* synthetic */ Boolean $success;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MethodChannel.Result result, Boolean bool, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = result;
            this.$success = bool;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$result, this.$success, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                this.$result.success(this.$success);
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
    public CDAppStatePlugin$onMethodCall$11(CDAppStatePlugin cDAppStatePlugin, String str, String str2, double d, double d2, float f, String str3, MethodChannel.Result result, Continuation<? super CDAppStatePlugin$onMethodCall$11> continuation) {
        super(2, continuation);
        this.this$0 = cDAppStatePlugin;
        this.$title = str;
        this.$artist = str2;
        this.$duration = d;
        this.$position = d2;
        this.$playbackRate = f;
        this.$imageUrl = str3;
        this.$result = result;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CDAppStatePlugin$onMethodCall$11(this.this$0, this.$title, this.$artist, this.$duration, this.$position, this.$playbackRate, this.$imageUrl, this.$result, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
        if (r0 == r10) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
        if (kotlinx.coroutines.BuildersKt.withContext(r1, r2, r14) != r10) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005e, code lost:
        return r10;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            java.lang.Object r10 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r14.label
            r11 = 0
            r12 = 2
            r1 = 1
            if (r0 == 0) goto L20
            if (r0 == r1) goto L1b
            if (r0 != r12) goto L13
            kotlin.ResultKt.throwOnFailure(r15)
            goto L5f
        L13:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L1b:
            kotlin.ResultKt.throwOnFailure(r15)
            r0 = r15
            goto L47
        L20:
            kotlin.ResultKt.throwOnFailure(r15)
            com.changdu.mobovideo.plugins.CDAppStatePlugin r0 = r14.this$0
            com.changdu.mobovideo.media.MediaNotificationManager r0 = com.changdu.mobovideo.plugins.CDAppStatePlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)
            if (r0 == 0) goto L4a
            java.lang.String r2 = r14.$title
            r3 = r2
            java.lang.String r2 = r14.$artist
            r5 = r3
            double r3 = r14.$duration
            r7 = r5
            double r5 = r14.$position
            r8 = r7
            float r7 = r14.$playbackRate
            r13 = r8
            java.lang.String r8 = r14.$imageUrl
            r14.label = r1
            r9 = r14
            r1 = r13
            java.lang.Object r0 = r0.Wwwwwwwwwwwwwwwww(r1, r2, r3, r5, r7, r8, r9)
            if (r0 != r10) goto L47
            goto L5e
        L47:
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            goto L4b
        L4a:
            r0 = r11
        L4b:
            kotlinx.coroutines.MainCoroutineDispatcher r1 = kotlinx.coroutines.Dispatchers.getMain()
            com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$11$1 r2 = new com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$11$1
            io.flutter.plugin.common.MethodChannel$Result r3 = r14.$result
            r2.<init>(r3, r0, r11)
            r14.label = r12
            java.lang.Object r0 = kotlinx.coroutines.BuildersKt.withContext(r1, r2, r14)
            if (r0 != r10) goto L5f
        L5e:
            return r10
        L5f:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.mobovideo.plugins.CDAppStatePlugin$onMethodCall$11.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CDAppStatePlugin$onMethodCall$11) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
