package com.changdu.component.pay.google;

import com.android.billingclient.api.Purchase;
import com.changdu.component.pay.base.CDPay;
import com.changdu.component.pay.base.model.LocalPurchaseItem;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class k extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ LocalPurchaseItem f5360a;
    public final /* synthetic */ Purchase b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(LocalPurchaseItem localPurchaseItem, Purchase purchase, String str, Continuation continuation) {
        super(2, continuation);
        this.f5360a = localPurchaseItem;
        this.b = purchase;
        this.c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new k(this.f5360a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((k) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CDPay.INSTANCE.notifyGooglePlayPurchaseSuccess(this.f5360a.getCdOrderId(), Intrinsics.areEqual(this.f5360a.getSkuType(), "subs"), this.f5360a.getOrderPrice(), this.f5360a.getItemId(), this.b.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.b.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), this.b.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.b.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.c);
        return Unit.INSTANCE;
    }
}
