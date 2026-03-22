package com.changdu.component.pay.google;

import com.changdu.component.pay.base.CDPay;
import com.changdu.component.pay.base.model.PayCreateOrderResult;
import com.changdu.component.pay.base.model.PayReportMessage;
import com.changdu.component.pay.base.model.PayRequestItem;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class o extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ PayRequestItem f5364a;
    public final /* synthetic */ PayCreateOrderResult b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(PayRequestItem payRequestItem, PayCreateOrderResult payCreateOrderResult, Continuation continuation) {
        super(2, continuation);
        this.f5364a = payRequestItem;
        this.b = payCreateOrderResult;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new o(this.f5364a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new o(this.f5364a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CDPay cDPay = CDPay.INSTANCE;
        PayRequestItem payRequestItem = this.f5364a;
        PayCreateOrderResult payCreateOrderResult = this.b;
        cDPay.notifyReceiveReportMessage(new PayReportMessage("PayBizWatch", "发起购买：\npayRequestItem: " + payRequestItem + "\npayCreateOrderResult: " + payCreateOrderResult, null, null, null, null, 60, null));
        return Unit.INSTANCE;
    }
}
