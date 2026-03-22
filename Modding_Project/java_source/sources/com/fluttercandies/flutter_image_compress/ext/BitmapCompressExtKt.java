package com.fluttercandies.flutter_image_compress.ext;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import com.fluttercandies.flutter_image_compress.ImageCompressPlugin;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a;\u0010\b\u001a\u00020\u0007*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\b\u0010\t\u001aE\u0010\r\u001a\u00020\f*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\r\u0010\u000e\u001a\u0019\u0010\u0011\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u0019\u0010\u0013\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0001¢\u0006\u0004\b\u0013\u0010\u0014\u001a!\u0010\u0016\u001a\u00020\u0015*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0015\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0001¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Landroid/graphics/Bitmap;", "", "minWidth", "minHeight", "quality", "rotate", "format", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;IIIII)[B", "Ljava/io/OutputStream;", "outputStream", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;IIIILjava/io/OutputStream;I)V", "", "any", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;II)F", "type", "Landroid/graphics/Bitmap$CompressFormat;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Landroid/graphics/Bitmap$CompressFormat;", "flutter_image_compress_common_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class BitmapCompressExtKt {
    @NotNull
    public static final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bitmap bitmap, int i) {
        if (i % TXVodDownloadDataSource.QUALITY_360P != 0) {
            Matrix matrix = new Matrix();
            matrix.setRotate(i);
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, false);
        }
        return bitmap;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (ImageCompressPlugin.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            System.out.getClass();
        }
    }

    @NotNull
    public static final Bitmap.CompressFormat Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i != 1) {
            if (i != 3) {
                return Bitmap.CompressFormat.JPEG;
            }
            return Bitmap.CompressFormat.WEBP;
        }
        return Bitmap.CompressFormat.PNG;
    }

    @NotNull
    public static final byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bitmap bitmap, int i, int i2, int i3, int i4, int i5) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, i, i2, i3, i4, byteArrayOutputStream, i5);
        return byteArrayOutputStream.toByteArray();
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bitmap bitmap, int i, int i2, int i3, int i4, @NotNull OutputStream outputStream, int i5) {
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("src width = " + width);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("src height = " + height);
        float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, i, i2);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("scale = " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        float f = width / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        float f2 = height / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("dst width = " + f);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("dst height = " + f2);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap.createScaledBitmap(bitmap, (int) f, (int) f2, true), i4).compress(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i5), i3, outputStream);
    }

    public static final float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bitmap bitmap, int i, int i2) {
        float width = bitmap.getWidth() / i;
        float height = bitmap.getHeight() / i2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("width scale = " + width);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("height scale = " + height);
        return Math.max(1.0f, Math.min(width, height));
    }
}
