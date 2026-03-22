package com.changdu.mobovideo.homewidget;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.DrawableKt;
import coil.Coil;
import coil.ImageLoader;
import coil.request.CachePolicy;
import coil.request.ImageRequest;
import coil.request.ImageResult;
import com.changdu.mobovideo.VideoApplication;
import com.changdu.mobovideo.plugins.BitmapUtils;
import com.changdu.mobovideo.utils.BizKtExtKt;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroid/graphics/Bitmap;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.homewidget.FollowHomeWidgetUpdaterWorker$loadImage$2", f = "FollowHomeWidgetProvider.kt", i = {}, l = {234}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nFollowHomeWidgetProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FollowHomeWidgetProvider.kt\ncom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n*L\n1#1,250:1\n24#2:251\n*S KotlinDebug\n*F\n+ 1 FollowHomeWidgetProvider.kt\ncom/changdu/mobovideo/homewidget/FollowHomeWidgetUpdaterWorker$loadImage$2\n*L\n234#1:251\n*E\n"})
/* loaded from: classes3.dex */
public final class FollowHomeWidgetUpdaterWorker$loadImage$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Bitmap>, Object> {
    final /* synthetic */ String $imageUrl;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FollowHomeWidgetUpdaterWorker$loadImage$2(String str, Continuation<? super FollowHomeWidgetUpdaterWorker$loadImage$2> continuation) {
        super(2, continuation);
        this.$imageUrl = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FollowHomeWidgetUpdaterWorker$loadImage$2(this.$imageUrl, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Bitmap bitmap;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                VideoApplication.Companion companion = VideoApplication.Companion;
                ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new ImageRequest.Builder(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.$imageUrl).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CachePolicy.DISABLED).Wwwwwwwwwwwwwwwwwwwwwwww(BizKtExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(69), BizKtExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(92)).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                ImageLoader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Coil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                this.label = 1;
                obj = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = ((ImageResult) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                bitmap = DrawableKt.toBitmap$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, 0, 0, null, 7, null);
            } else {
                bitmap = null;
            }
            Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = BitmapUtils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, BizKtExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(8));
            if (bitmap != null) {
                bitmap.recycle();
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Bitmap> continuation) {
        return ((FollowHomeWidgetUpdaterWorker$loadImage$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
