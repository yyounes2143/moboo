package com.changdu.component.pay.base;

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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.component.pay.base.CDPay$getRandomKey$2", f = "CDPay.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDPay$getRandomKey$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    int label;

    public CDPay$getRandomKey$2(Continuation<? super CDPay$getRandomKey$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final Continuation<Unit> create(@Nullable Object obj, @NotNull Continuation<?> continuation) {
        return new CDPay$getRandomKey$2(continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        r3 = com.changdu.component.pay.base.CDPay.l;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r3) {
        /*
            r2 = this;
            kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r0 = r2.label
            if (r0 != 0) goto L76
            kotlin.ResultKt.throwOnFailure(r3)
            java.lang.String r3 = com.changdu.component.pay.base.CDPay.access$getMRandomKey$p()
            if (r3 == 0) goto L23
            int r3 = r3.length()
            if (r3 != 0) goto L17
            goto L23
        L17:
            java.lang.String r3 = com.changdu.component.pay.base.CDPay.access$getMLocalKey$p()
            if (r3 == 0) goto L23
            int r3 = r3.length()
            if (r3 != 0) goto L71
        L23:
            java.util.Random r3 = new java.util.Random
            r3.<init>()
            long r0 = r3.nextLong()
            java.lang.String r3 = java.lang.String.valueOf(r0)
            int r0 = r3.length()
            r1 = 4
            if (r0 <= r1) goto L3d
            r0 = 0
            java.lang.String r3 = r3.substring(r0, r1)
            goto L3f
        L3d:
            java.lang.String r3 = "xxxx"
        L3f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "46304531443243334234"
            r0.append(r1)
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            java.nio.charset.Charset r0 = kotlin.text.Charsets.UTF_8
            byte[] r1 = r3.getBytes(r0)
            java.lang.String r1 = com.changdu.component.pay.base.internal.b.a(r1)
            com.changdu.component.pay.base.CDPay.access$setMLocalKey$p(r1)
            byte[] r0 = r1.getBytes(r0)     // Catch: java.lang.Exception -> L6a
            byte[] r0 = com.changdu.component.pay.base.internal.b.b(r0)     // Catch: java.lang.Exception -> L6a
            java.lang.String r3 = com.changdu.component.pay.base.internal.b.a(r0)     // Catch: java.lang.Exception -> L6a
            goto L6e
        L6a:
            r0 = move-exception
            r0.printStackTrace()
        L6e:
            com.changdu.component.pay.base.CDPay.access$setMRandomKey$p(r3)
        L71:
            java.lang.String r3 = com.changdu.component.pay.base.CDPay.access$getMRandomKey$p()
            return r3
        L76:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r3.<init>(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.base.CDPay$getRandomKey$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull CoroutineScope coroutineScope, @Nullable Continuation<? super String> continuation) {
        return ((CDPay$getRandomKey$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
