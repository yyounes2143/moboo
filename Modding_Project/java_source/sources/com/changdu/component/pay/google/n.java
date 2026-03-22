package com.changdu.component.pay.google;

import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResult;
import java.util.Iterator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class n extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public x f5363a;
    public Iterator b;
    public Purchase c;
    public AcknowledgePurchaseParams d;
    public int e;
    public long f;
    public /* synthetic */ Object g;
    public final /* synthetic */ x h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(x xVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.h = xVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= Integer.MIN_VALUE;
        return this.h.b((PurchasesResult) null, this);
    }
}
