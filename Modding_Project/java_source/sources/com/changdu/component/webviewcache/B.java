package com.changdu.component.webviewcache;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class B extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    public CDWebView f5377a;
    public /* synthetic */ Object b;
    public final /* synthetic */ CDJsInterface c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B(CDJsInterface cDJsInterface, Continuation continuation) {
        super(continuation);
        this.c = cDJsInterface;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object responseToWebView;
        this.b = obj;
        this.d |= Integer.MIN_VALUE;
        responseToWebView = this.c.responseToWebView(null, this);
        return responseToWebView;
    }
}
