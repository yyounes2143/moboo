package com.changdu.mobovideo.localpush;

import android.content.Context;
import coil.Coil;
import coil.ImageLoader;
import coil.request.ImageRequest;
import coil.request.ImageResult;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcoil/request/ImageResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.localpush.LocalPushNotificationFactory$loadBitmapFromUrl$result$1", f = "LocalPushNotificationFactory.kt", i = {}, l = {505}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nLocalPushNotificationFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalPushNotificationFactory.kt\ncom/changdu/mobovideo/localpush/LocalPushNotificationFactory$loadBitmapFromUrl$result$1\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n*L\n1#1,551:1\n24#2:552\n*S KotlinDebug\n*F\n+ 1 LocalPushNotificationFactory.kt\ncom/changdu/mobovideo/localpush/LocalPushNotificationFactory$loadBitmapFromUrl$result$1\n*L\n505#1:552\n*E\n"})
/* loaded from: classes3.dex */
public final class LocalPushNotificationFactory$loadBitmapFromUrl$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ImageResult>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ ImageRequest $request;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalPushNotificationFactory$loadBitmapFromUrl$result$1(Context context, ImageRequest imageRequest, Continuation<? super LocalPushNotificationFactory$loadBitmapFromUrl$result$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$request = imageRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalPushNotificationFactory$loadBitmapFromUrl$result$1(this.$context, this.$request, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        ImageLoader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Coil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.$context);
        ImageRequest imageRequest = this.$request;
        this.label = 1;
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(imageRequest, this);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ImageResult> continuation) {
        return ((LocalPushNotificationFactory$loadBitmapFromUrl$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
