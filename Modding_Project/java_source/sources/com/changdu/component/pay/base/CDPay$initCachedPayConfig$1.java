package com.changdu.component.pay.base;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.component.pay.base.CDPay$initCachedPayConfig$1", f = "CDPay.kt", i = {}, l = {692, TypedValues.TransitionType.TYPE_DURATION}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDPay$initCachedPayConfig$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;

    public CDPay$initCachedPayConfig$1(Continuation<? super CDPay$initCachedPayConfig$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new CDPay$initCachedPayConfig$1(continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
        if (r5.requestPayConfig(r4) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L20
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L14
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Exception -> L12
            goto L58
        L12:
            r5 = move-exception
            goto L55
        L14:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L1c:
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Exception -> L12
            goto L4a
        L20:
            kotlin.ResultKt.throwOnFailure(r5)
            com.changdu.component.pay.base.CDPay r5 = com.changdu.component.pay.base.CDPay.INSTANCE     // Catch: java.lang.Exception -> L12
            java.lang.String r1 = com.changdu.component.pay.base.CDPay.access$getCachedPayConfigContent(r5)     // Catch: java.lang.Exception -> L12
            com.changdu.component.pay.base.CDPay.access$setMCachedBase64PayConfigContent$p(r1)     // Catch: java.lang.Exception -> L12
            java.lang.String r1 = com.changdu.component.pay.base.CDPay.access$getMCachedBase64PayConfigContent$p()     // Catch: java.lang.Exception -> L12
            if (r1 == 0) goto L4a
            int r1 = r1.length()     // Catch: java.lang.Exception -> L12
            if (r1 != 0) goto L39
            goto L4a
        L39:
            java.lang.String r1 = com.changdu.component.pay.base.CDPay.access$getMCachedBase64PayConfigContent$p()     // Catch: java.lang.Exception -> L12
            java.lang.String r1 = com.changdu.component.pay.base.internal.a.a(r1)     // Catch: java.lang.Exception -> L12
            r4.label = r3     // Catch: java.lang.Exception -> L12
            java.lang.Object r5 = com.changdu.component.pay.base.CDPay.access$parsePayConfigXml(r5, r1, r4)     // Catch: java.lang.Exception -> L12
            if (r5 != r0) goto L4a
            goto L54
        L4a:
            com.changdu.component.pay.base.CDPay r5 = com.changdu.component.pay.base.CDPay.INSTANCE     // Catch: java.lang.Exception -> L12
            r4.label = r2     // Catch: java.lang.Exception -> L12
            java.lang.Object r5 = r5.requestPayConfig(r4)     // Catch: java.lang.Exception -> L12
            if (r5 != r0) goto L58
        L54:
            return r0
        L55:
            r5.printStackTrace()
        L58:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.base.CDPay$initCachedPayConfig$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super Unit> continuation) {
        return ((CDPay$initCachedPayConfig$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
