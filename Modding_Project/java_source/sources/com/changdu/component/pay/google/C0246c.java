package com.changdu.component.pay.google;

import com.changdu.component.pay.base.service.OnPurchaseMonetizationListener;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* renamed from: com.changdu.component.pay.google.c  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0246c extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public Object f5353a;
    public int b;
    public final /* synthetic */ ArrayList c;
    public final /* synthetic */ ArrayList d;
    public final /* synthetic */ OnPurchaseMonetizationListener e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0246c(ArrayList arrayList, ArrayList arrayList2, OnPurchaseMonetizationListener onPurchaseMonetizationListener, Continuation continuation) {
        super(2, continuation);
        this.c = arrayList;
        this.d = arrayList2;
        this.e = onPurchaseMonetizationListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0246c(this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0246c) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003f, code lost:
        if (r5 == r0) goto L14;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.b
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L26
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            java.lang.Object r0 = r4.f5353a
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L53
        L16:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L1e:
            java.lang.Object r1 = r4.f5353a
            com.changdu.component.pay.google.x r1 = (com.changdu.component.pay.google.x) r1
            kotlin.ResultKt.throwOnFailure(r5)
            goto L42
        L26:
            kotlin.ResultKt.throwOnFailure(r5)
            com.changdu.component.pay.google.d r5 = com.changdu.component.pay.google.x.f
            android.content.Context r1 = com.changdu.component.core.CDComponent.context
            android.content.Context r1 = r1.getApplicationContext()
            com.changdu.component.pay.google.x r1 = r5.a(r1)
            java.util.ArrayList r5 = r4.c
            r4.f5353a = r1
            r4.b = r3
            java.lang.Object r5 = r1.a(r5, r4)
            if (r5 != r0) goto L42
            goto L50
        L42:
            java.util.ArrayList r5 = (java.util.ArrayList) r5
            java.util.ArrayList r3 = r4.d
            r4.f5353a = r5
            r4.b = r2
            java.lang.Object r1 = r1.b(r3, r4)
            if (r1 != r0) goto L51
        L50:
            return r0
        L51:
            r0 = r5
            r5 = r1
        L53:
            java.util.ArrayList r5 = (java.util.ArrayList) r5
            com.changdu.component.pay.base.service.OnPurchaseMonetizationListener r1 = r4.e
            r1.onPurchaseItemMonetizationResult(r0, r5)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.pay.google.C0246c.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
