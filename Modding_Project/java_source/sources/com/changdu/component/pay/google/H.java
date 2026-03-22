package com.changdu.component.pay.google;

import android.util.Log;
import com.changdu.component.pay.base.CDPay;
import com.changdu.component.pay.google.localdb.PurchaseOrder;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class H extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PurchaseOrder f5350a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H(PurchaseOrder purchaseOrder, Continuation continuation) {
        super(2, continuation);
        this.f5350a = purchaseOrder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new H(this.f5350a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new H(this.f5350a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            I.a().purchaseOrderDao().updatePurchaseOrder(this.f5350a);
            PurchaseOrder purchaseOrder = this.f5350a;
            return Boxing.boxInt(Log.e(CDPay.TAG, "更新订单成功 " + purchaseOrder));
        } catch (Exception unused) {
            return Unit.INSTANCE;
        }
    }
}
