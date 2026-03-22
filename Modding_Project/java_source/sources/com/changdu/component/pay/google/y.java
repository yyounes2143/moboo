package com.changdu.component.pay.google;

import android.util.Log;
import com.changdu.component.pay.base.CDPay;
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
public final class y extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f5374a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(String str, Continuation continuation) {
        super(2, continuation);
        this.f5374a = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new y(this.f5374a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        return new y(this.f5374a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            I.a().purchaseOrderDao().deleteByCdOrderId(this.f5374a);
            String str = this.f5374a;
            return Boxing.boxInt(Log.e(CDPay.TAG, "删除订单成功 " + str));
        } catch (Exception unused) {
            return Unit.INSTANCE;
        }
    }
}
