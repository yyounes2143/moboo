package com.fluttercandies.photo_manager.thumb;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.request.FutureTarget;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.signature.ObjectKey;
import com.fluttercandies.photo_manager.core.entity.AssetEntity;
import com.fluttercandies.photo_manager.core.entity.ThumbLoadOption;
import com.fluttercandies.photo_manager.util.ResultHandler;
import com.mbridge.msdk.MBridgeConstans;
import java.io.ByteArrayOutputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JM\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J+\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/fluttercandies/photo_manager/thumb/ThumbnailUtil;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;", "entity", "", "width", "height", "Landroid/graphics/Bitmap$CompressFormat;", "format", "quality", "", TypedValues.AttributesType.S_FRAME, "Lcom/fluttercandies/photo_manager/util/ResultHandler;", "resultHandler", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Lcom/fluttercandies/photo_manager/core/entity/AssetEntity;IILandroid/graphics/Bitmap$CompressFormat;IJLcom/fluttercandies/photo_manager/util/ResultHandler;)V", "", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;", "thumbLoadOption", "Lcom/bumptech/glide/request/FutureTarget;", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Lcom/fluttercandies/photo_manager/core/entity/ThumbLoadOption;)Lcom/bumptech/glide/request/FutureTarget;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "photo_manager_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nThumbnailUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThumbnailUtil.kt\ncom/fluttercandies/photo_manager/thumb/ThumbnailUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"})
/* loaded from: classes4.dex */
public final class ThumbnailUtil {
    @NotNull
    public static final ThumbnailUtil INSTANCE = new ThumbnailUtil();

    @NotNull
    public final FutureTarget<Bitmap> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull ThumbLoadOption thumbLoadOption) {
        return Glide.Wwwwwwwwwwwwww(context).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new RequestOptions().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(thumbLoadOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).Kkkkkkkkkkkkkkkkkkkk(Priority.LOW)).Illlllllllllllllllll(str).Illlllllllllllll(thumbLoadOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), thumbLoadOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull AssetEntity assetEntity, int i, int i2, @NotNull Bitmap.CompressFormat compressFormat, int i3, long j, @NotNull ResultHandler resultHandler) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ((Bitmap) Glide.Wwwwwwwwwwwwww(context).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new RequestOptions().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(j).Kkkkkkkkkkkkkkkkkkkk(Priority.IMMEDIATE)).Illlllllllllllllllllll(assetEntity.Wwwwwwwwwwwwwwwwwwwww()).Kkkkkkkkkkkkkkk(new ObjectKey(Long.valueOf(assetEntity.Wwwwwwwwwwwwwwwwwwwwwwwwww()))).Illlllllllllllll(i, i2).get()).compress(compressFormat, i3, byteArrayOutputStream);
            resultHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(byteArrayOutputStream.toByteArray());
        } catch (Exception e) {
            ResultHandler.Wwwwwwwwwwwwwwwwwwwwwwwww(resultHandler, "Thumbnail request error", e.toString(), null, 4, null);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        Glide.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }
}
