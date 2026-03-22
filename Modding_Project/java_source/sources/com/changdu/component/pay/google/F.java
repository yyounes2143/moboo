package com.changdu.component.pay.google;

import android.util.Log;
import com.android.billingclient.api.Purchase;
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
public final class F extends SuspendLambda implements Function2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f5347a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;
    public final /* synthetic */ String d;
    public final /* synthetic */ Purchase e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F(String str, String str2, String str3, String str4, Purchase purchase, Continuation continuation) {
        super(2, continuation);
        this.f5347a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = purchase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new F(this.f5347a, this.b, this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((F) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        try {
            I.a().purchaseOrderDao().insertPurchaseOrder(new PurchaseOrder(this.f5347a, this.b, this.c, this.d, this.e.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.e, 0));
            String str = this.f5347a;
            Purchase purchase = this.e;
            return Boxing.boxInt(Log.e(CDPay.TAG, "插入新订单成功 " + str + " - " + purchase));
        } catch (Exception unused) {
            return Unit.INSTANCE;
        }
    }
}
