package com.changdu.component.pay.google;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class u extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public int f5370a;
    public final /* synthetic */ x b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(x xVar, Continuation continuation) {
        super(2, continuation);
        this.b = xVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new u(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new u(this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
        if (r8 == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
        if (r1.a((com.android.billingclient.api.PurchasesResult) r8, r7) == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006f, code lost:
        if (r8 == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
        if (r1.b((com.android.billingclient.api.PurchasesResult) r8, r7) == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007e, code lost:
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
            int r1 = r7.f5370a
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L2c
            if (r1 == r5) goto L28
            if (r1 == r4) goto L24
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            kotlin.ResultKt.throwOnFailure(r8)
            goto L7f
        L18:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L20:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L72
        L24:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L57
        L28:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4a
        L2c:
            kotlin.ResultKt.throwOnFailure(r8)
            com.changdu.component.pay.google.x r8 = r7.b
            com.android.billingclient.api.BillingClient r8 = r8.f5373a
            com.android.billingclient.api.QueryPurchasesParams$Builder r1 = com.android.billingclient.api.QueryPurchasesParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            java.lang.String r6 = "inapp"
            com.android.billingclient.api.QueryPurchasesParams$Builder r1 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r6)
            com.android.billingclient.api.QueryPurchasesParams r1 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r7.f5370a = r5
            java.lang.Object r8 = com.android.billingclient.api.BillingClientKotlinKt.Wwwwwwwwwwwwwwwwww(r8, r1, r7)
            if (r8 != r0) goto L4a
            goto L7e
        L4a:
            com.android.billingclient.api.PurchasesResult r8 = (com.android.billingclient.api.PurchasesResult) r8
            com.changdu.component.pay.google.x r1 = r7.b
            r7.f5370a = r4
            java.lang.Object r8 = r1.a(r8, r7)
            if (r8 != r0) goto L57
            goto L7e
        L57:
            com.changdu.component.pay.google.x r8 = r7.b
            com.android.billingclient.api.BillingClient r8 = r8.f5373a
            com.android.billingclient.api.QueryPurchasesParams$Builder r1 = com.android.billingclient.api.QueryPurchasesParams.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            java.lang.String r4 = "subs"
            com.android.billingclient.api.QueryPurchasesParams$Builder r1 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r4)
            com.android.billingclient.api.QueryPurchasesParams r1 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r7.f5370a = r3
            java.lang.Object r8 = com.android.billingclient.api.BillingClientKotlinKt.Wwwwwwwwwwwwwwwwww(r8, r1, r7)
            if (r8 != r0) goto L72
            goto L7e
        L72:
            com.android.billingclient.api.PurchasesResult r8 = (com.android.billingclient.api.PurchasesResult) r8
            com.changdu.component.pay.google.x r1 = r7.b
            r7.f5370a = r2
            java.lang.Object r8 = r1.b(r8, r7)
            if (r8 != r0) goto L7f
        L7e:
            return r0
        L7f:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.u.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
