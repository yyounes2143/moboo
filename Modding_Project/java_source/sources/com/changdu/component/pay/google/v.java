package com.changdu.component.pay.google;

import java.util.ArrayList;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class v extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList f5371a;
    public /* synthetic */ Object b;
    public final /* synthetic */ x c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(x xVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.c = xVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.b((ArrayList) null, this);
    }
}
