package com.changdu.mobovideo.homewidget;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.homewidget.FollowHomeWidgetUpdaterWorker", f = "FollowHomeWidgetProvider.kt", i = {1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4}, l = {60, 73, 74, 75, 76}, m = "doWork", n = {"entity", "series1", "series2", "series3", "series4", "entity", "series1", "series2", "series3", "series4", "imageBitmap1", "entity", "series1", "series2", "series3", "series4", "imageBitmap1", "imageBitmap2", "entity", "series1", "series2", "series3", "series4", "imageBitmap1", "imageBitmap2", "imageBitmap3"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7"})
/* loaded from: classes3.dex */
public final class FollowHomeWidgetUpdaterWorker$doWork$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FollowHomeWidgetUpdaterWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FollowHomeWidgetUpdaterWorker$doWork$1(FollowHomeWidgetUpdaterWorker followHomeWidgetUpdaterWorker, Continuation<? super FollowHomeWidgetUpdaterWorker$doWork$1> continuation) {
        super(continuation);
        this.this$0 = followHomeWidgetUpdaterWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.doWork(this);
    }
}
