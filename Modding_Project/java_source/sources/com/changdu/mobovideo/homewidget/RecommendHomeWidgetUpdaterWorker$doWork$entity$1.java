package com.changdu.mobovideo.homewidget;

import com.changdu.mobovideo.entity.RecommendHomeWidgetEntity;
import com.changdu.mobovideo.utils.ALocalCache;
import com.changdu.mobovideo.utils.AppBizDataManager;
import com.changdu.mobovideo.utils.GsonUtil;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/changdu/mobovideo/entity/RecommendHomeWidgetEntity;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.homewidget.RecommendHomeWidgetUpdaterWorker$doWork$entity$1", f = "RecommendHomeWidgetProvider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class RecommendHomeWidgetUpdaterWorker$doWork$entity$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super RecommendHomeWidgetEntity>, Object> {
    int label;

    public RecommendHomeWidgetUpdaterWorker$doWork$entity$1(Continuation<? super RecommendHomeWidgetUpdaterWorker$doWork$entity$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RecommendHomeWidgetUpdaterWorker$doWork$entity$1(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            ALocalCache Wwwwwwwwwwwwwwwwwwwwwwww2 = AppBizDataManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                str = Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("RecommendCache");
            } else {
                str = null;
            }
            return GsonUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, RecommendHomeWidgetEntity.class);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super RecommendHomeWidgetEntity> continuation) {
        return ((RecommendHomeWidgetUpdaterWorker$doWork$entity$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
