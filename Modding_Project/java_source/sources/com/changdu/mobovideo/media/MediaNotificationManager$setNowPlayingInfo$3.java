package com.changdu.mobovideo.media;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.support.v4.media.MediaMetadataCompat;
import androidx.core.graphics.drawable.DrawableKt;
import coil.Coil;
import coil.ImageLoader;
import coil.request.CachePolicy;
import coil.request.ImageRequest;
import coil.request.ImageResult;
import com.changdu.mobovideo.VideoApplication;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroid/support/v4/media/MediaMetadataCompat$Builder;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.changdu.mobovideo.media.MediaNotificationManager$setNowPlayingInfo$3", f = "MediaNotificationManager.kt", i = {}, l = {115}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nMediaNotificationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaNotificationManager.kt\ncom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n*L\n1#1,365:1\n24#2:366\n*S KotlinDebug\n*F\n+ 1 MediaNotificationManager.kt\ncom/changdu/mobovideo/media/MediaNotificationManager$setNowPlayingInfo$3\n*L\n115#1:366\n*E\n"})
/* loaded from: classes3.dex */
public final class MediaNotificationManager$setNowPlayingInfo$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super MediaMetadataCompat.Builder>, Object> {
    final /* synthetic */ String $imageUrl;
    final /* synthetic */ MediaMetadataCompat.Builder $metadataBuilder;
    int label;
    final /* synthetic */ MediaNotificationManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaNotificationManager$setNowPlayingInfo$3(String str, MediaNotificationManager mediaNotificationManager, MediaMetadataCompat.Builder builder, Continuation<? super MediaNotificationManager$setNowPlayingInfo$3> continuation) {
        super(2, continuation);
        this.$imageUrl = str;
        this.this$0 = mediaNotificationManager;
        this.$metadataBuilder = builder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MediaNotificationManager$setNowPlayingInfo$3(this.$imageUrl, this.this$0, this.$metadataBuilder, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
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
                ImageRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new ImageRequest.Builder(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.$imageUrl).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CachePolicy.ENABLED).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                ImageLoader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Coil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                this.label = 1;
                obj = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            MediaNotificationManager mediaNotificationManager = this.this$0;
            Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = ((ImageResult) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 != null) {
                bitmap = DrawableKt.toBitmap$default(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, 0, 0, null, 7, null);
            } else {
                bitmap = null;
            }
            mediaNotificationManager.f5546Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmap;
            MediaMetadataCompat.Builder builder = this.$metadataBuilder;
            bitmap2 = this.this$0.f5546Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            return builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("android.media.metadata.ALBUM_ART", bitmap2);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super MediaMetadataCompat.Builder> continuation) {
        return ((MediaNotificationManager$setNowPlayingInfo$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
