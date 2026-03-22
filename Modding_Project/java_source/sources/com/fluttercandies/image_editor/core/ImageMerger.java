package com.fluttercandies.image_editor.core;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.fluttercandies.image_editor.option.FormatOption;
import com.fluttercandies.image_editor.option.ImagePosition;
import com.fluttercandies.image_editor.option.MergeImage;
import com.fluttercandies.image_editor.option.MergeOption;
import java.io.ByteArrayOutputStream;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\t¨\u0006\n"}, d2 = {"Lcom/fluttercandies/image_editor/core/ImageMerger;", "", "Lcom/fluttercandies/image_editor/option/MergeOption;", "mergeOption", "<init>", "(Lcom/fluttercandies/image_editor/option/MergeOption;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[B", "Lcom/fluttercandies/image_editor/option/MergeOption;", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ImageMerger {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final MergeOption f7286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ImageMerger(@NotNull MergeOption mergeOption) {
        this.f7286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = mergeOption;
    }

    @Nullable
    public final byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Bitmap.CompressFormat compressFormat;
        Bitmap createBitmap = Bitmap.createBitmap(this.f7286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f7286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        for (MergeImage mergeImage : this.f7286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(mergeImage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, mergeImage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().length);
            ImagePosition Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mergeImage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            canvas.drawBitmap(decodeByteArray, (Rect) null, new Rect(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), (Paint) null);
        }
        FormatOption Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f7286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 1) {
            compressFormat = Bitmap.CompressFormat.JPEG;
        } else {
            compressFormat = Bitmap.CompressFormat.PNG;
        }
        createBitmap.compress(compressFormat, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
