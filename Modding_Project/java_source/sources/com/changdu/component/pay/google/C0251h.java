package com.changdu.component.pay.google;

import com.android.billingclient.api.ConsumeParams;
import com.android.billingclient.api.Purchase;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* compiled from: Proguard */
/* renamed from: com.changdu.component.pay.google.h  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0251h extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public x f5357a;
    public Purchase b;
    public ConsumeParams c;
    public int d;
    public long e;
    public /* synthetic */ Object f;
    public final /* synthetic */ x g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0251h(x xVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = xVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= Integer.MIN_VALUE;
        return this.g.b((Purchase) null, this);
    }
}
