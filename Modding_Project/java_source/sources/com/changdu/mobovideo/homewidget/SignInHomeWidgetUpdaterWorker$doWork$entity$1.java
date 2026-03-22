package com.changdu.mobovideo.homewidget;

import com.changdu.mobovideo.entity.SignInHomeWidgetEntity;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/changdu/mobovideo/entity/SignInHomeWidgetEntity;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.homewidget.SignInHomeWidgetUpdaterWorker$doWork$entity$1", f = "SignInHomeWidgetProvider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class SignInHomeWidgetUpdaterWorker$doWork$entity$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SignInHomeWidgetEntity>, Object> {
    int label;

    public SignInHomeWidgetUpdaterWorker$doWork$entity$1(Continuation<? super SignInHomeWidgetUpdaterWorker$doWork$entity$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SignInHomeWidgetUpdaterWorker$doWork$entity$1(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            GsonUtil gsonUtil = GsonUtil.INSTANCE;
            ALocalCache Wwwwwwwwwwwwwwwwwwwwwwww2 = AppBizDataManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                str = Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("SignInCache");
            } else {
                str = null;
            }
            return gsonUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, SignInHomeWidgetEntity.class);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super SignInHomeWidgetEntity> continuation) {
        return ((SignInHomeWidgetUpdaterWorker$doWork$entity$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
