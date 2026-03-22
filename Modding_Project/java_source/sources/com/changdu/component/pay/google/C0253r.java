package com.changdu.component.pay.google;

import java.util.ArrayList;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* compiled from: Proguard */
/* renamed from: com.changdu.component.pay.google.r  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0253r extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public ArrayList f5367a;
    public /* synthetic */ Object b;
    public final /* synthetic */ x c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0253r(x xVar, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.c = xVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.c.a((ArrayList) null, this);
    }
}
