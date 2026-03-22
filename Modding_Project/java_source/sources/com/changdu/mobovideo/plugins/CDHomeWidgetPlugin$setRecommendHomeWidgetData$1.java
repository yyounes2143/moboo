package com.changdu.mobovideo.plugins;

import com.changdu.mobovideo.utils.ALocalCache;
import com.changdu.mobovideo.utils.AppBizDataManager;
import io.flutter.plugin.common.MethodCall;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.plugins.CDHomeWidgetPlugin$setRecommendHomeWidgetData$1", f = "CDHomeWidgetPlugin.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class CDHomeWidgetPlugin$setRecommendHomeWidgetData$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MethodCall $call;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CDHomeWidgetPlugin$setRecommendHomeWidgetData$1(MethodCall methodCall, Continuation<? super CDHomeWidgetPlugin$setRecommendHomeWidgetData$1> continuation) {
        super(2, continuation);
        this.$call = methodCall;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CDHomeWidgetPlugin$setRecommendHomeWidgetData$1(this.$call, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            Object obj2 = this.$call.arguments;
            if (obj2 instanceof String) {
                str = (String) obj2;
            } else {
                str = null;
            }
            if (str != null) {
                ALocalCache Wwwwwwwwwwwwwwwwwwwwwwww2 = AppBizDataManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("RecommendCache", str);
                }
            } else {
                ALocalCache Wwwwwwwwwwwwwwwwwwwwwwww3 = AppBizDataManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                    Boxing.boxBoolean(Wwwwwwwwwwwwwwwwwwwwwwww3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("RecommendCache"));
                }
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CDHomeWidgetPlugin$setRecommendHomeWidgetData$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
