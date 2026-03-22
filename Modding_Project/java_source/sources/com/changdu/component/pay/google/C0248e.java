package com.changdu.component.pay.google;

import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.Purchase;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* compiled from: Proguard */
/* renamed from: com.changdu.component.pay.google.e  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0248e extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public x f5354a;
    public Purchase b;
    public AcknowledgePurchaseParams c;
    public int d;
    public long e;
    public /* synthetic */ Object f;
    public final /* synthetic */ x g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0248e(x xVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = xVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.a((Purchase) null, this);
    }
}
