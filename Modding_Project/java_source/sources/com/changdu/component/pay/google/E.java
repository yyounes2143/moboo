package com.changdu.component.pay.google;

import com.changdu.component.pay.google.localdb.PurchaseOrder;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class E extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public Iterator f5346a;
    public PurchaseOrder b;
    public int c;

    public E(Continuation continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new E(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new E((Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0038, code lost:
        if (r10 == r0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a1, code lost:
        if (com.changdu.component.pay.google.I.a(r10, r9) == r0) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008d A[Catch: Exception -> 0x0027, TRY_LEAVE, TryCatch #1 {Exception -> 0x0027, blocks: (B:33:0x0085, B:35:0x008d, B:13:0x0023), top: B:44:0x0023 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0027 -> B:26:0x004e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x004e -> B:26:0x004e). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.c
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L2d
            if (r1 == r4) goto L29
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L17
            java.util.Iterator r1 = r9.f5346a
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L4e
            goto L4e
        L17:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L1f:
            com.changdu.component.pay.google.localdb.PurchaseOrder r1 = r9.b
            java.util.Iterator r4 = r9.f5346a
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> L27
            goto L85
        L27:
            r1 = r4
            goto L4e
        L29:
            kotlin.ResultKt.throwOnFailure(r10)
            goto L3b
        L2d:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlin.Lazy r10 = com.changdu.component.pay.google.I.f5351a
            r9.c = r4
            java.lang.Object r10 = com.changdu.component.pay.google.I.a(r9)
            if (r10 != r0) goto L3b
            goto La3
        L3b:
            java.util.List r10 = (java.util.List) r10
            j$.util.Objects.toString(r10)
            if (r10 == 0) goto La4
            boolean r1 = r10.isEmpty()
            if (r1 == 0) goto L49
            goto La4
        L49:
            java.util.Iterator r10 = r10.iterator()
            r1 = r10
        L4e:
            boolean r10 = r1.hasNext()
            if (r10 == 0) goto La4
            java.lang.Object r10 = r1.next()
            com.changdu.component.pay.google.localdb.PurchaseOrder r10 = (com.changdu.component.pay.google.localdb.PurchaseOrder) r10
            kotlin.Lazy r4 = com.changdu.component.pay.google.I.f5351a     // Catch: java.lang.Exception -> L4e
            java.lang.String r4 = r10.getJumpUrl()     // Catch: java.lang.Exception -> L4e
            java.lang.String r5 = r10.getCdOrderId()     // Catch: java.lang.Exception -> L4e
            com.android.billingclient.api.Purchase r6 = r10.getPurchaseData()     // Catch: java.lang.Exception -> L4e
            java.lang.String r6 = r6.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Exception -> L4e
            com.android.billingclient.api.Purchase r7 = r10.getPurchaseData()     // Catch: java.lang.Exception -> L4e
            java.lang.String r7 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Exception -> L4e
            r9.f5346a = r1     // Catch: java.lang.Exception -> L4e
            r9.b = r10     // Catch: java.lang.Exception -> L4e
            r9.c = r3     // Catch: java.lang.Exception -> L4e
            java.lang.Object r4 = com.changdu.component.pay.google.I.a(r4, r5, r6, r7, r9)     // Catch: java.lang.Exception -> L4e
            if (r4 != r0) goto L81
            goto La3
        L81:
            r8 = r1
            r1 = r10
            r10 = r4
            r4 = r8
        L85:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Exception -> L27
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Exception -> L27
            if (r10 == 0) goto L27
            j$.util.Objects.toString(r1)     // Catch: java.lang.Exception -> L27
            kotlin.Lazy r10 = com.changdu.component.pay.google.I.f5351a     // Catch: java.lang.Exception -> L27
            java.lang.String r10 = r1.getCdOrderId()     // Catch: java.lang.Exception -> L27
            r9.f5346a = r4     // Catch: java.lang.Exception -> L27
            r1 = 0
            r9.b = r1     // Catch: java.lang.Exception -> L27
            r9.c = r2     // Catch: java.lang.Exception -> L27
            java.lang.Object r10 = com.changdu.component.pay.google.I.a(r10, r9)     // Catch: java.lang.Exception -> L27
            if (r10 != r0) goto L27
        La3:
            return r0
        La4:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.E.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
