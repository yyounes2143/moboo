package com.changdu.mobovideo.homewidget;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.homewidget.SignInHomeWidgetUpdaterWorker", f = "SignInHomeWidgetProvider.kt", i = {0, 0}, l = {63}, m = "doWork", n = {"provider", "remoteViews"}, s = {"L$0", "L$1"})
/* loaded from: classes3.dex */
public final class SignInHomeWidgetUpdaterWorker$doWork$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SignInHomeWidgetUpdaterWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignInHomeWidgetUpdaterWorker$doWork$1(SignInHomeWidgetUpdaterWorker signInHomeWidgetUpdaterWorker, Continuation<? super SignInHomeWidgetUpdaterWorker$doWork$1> continuation) {
        super(continuation);
        this.this$0 = signInHomeWidgetUpdaterWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.doWork(this);
    }
}
