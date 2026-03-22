package com.fluttercandies.flutter_image_compress.handle.common;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.fluttercandies.flutter_image_compress.exif.ExifKeeper;
import com.fluttercandies.flutter_image_compress.ext.BitmapCompressExtKt;
import com.fluttercandies.flutter_image_compress.handle.FormatHandler;
import com.fluttercandies.flutter_image_compress.logger.LogExtKt;
import com.mbridge.msdk.MBridgeConstans;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005JW\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J_\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJA\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001a\u0010$\u001a\u00020\u00168\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010!\u001a\u0004\b\"\u0010#R\u0014\u0010'\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010&¨\u0006("}, d2 = {"Lcom/fluttercandies/flutter_image_compress/handle/common/CommonHandler;", "Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;", "", "type", "<init>", "(I)V", "Landroid/content/Context;", "context", "", "byteArray", "Ljava/io/OutputStream;", "outputStream", "minWidth", "minHeight", "quality", "rotate", "", "keepExif", "inSampleSize", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;[BLjava/io/OutputStream;IIIIZI)V", "", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "numberOfRetries", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V", "arr", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([BIIIII)[B", "I", "getType", "()I", "Ljava/lang/String;", "getTypeName", "()Ljava/lang/String;", "typeName", "Landroid/graphics/Bitmap$CompressFormat;", "Landroid/graphics/Bitmap$CompressFormat;", "bitmapFormat", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CommonHandler implements FormatHandler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Bitmap.CompressFormat f7271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CommonHandler(int i) {
        String str;
        Bitmap.CompressFormat compressFormat;
        this.f7273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        int type = getType();
        if (type != 1) {
            if (type != 3) {
                str = "jpeg";
            } else {
                str = "webp";
            }
        } else {
            str = "png";
        }
        this.f7272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        int type2 = getType();
        if (type2 != 1) {
            if (type2 != 3) {
                compressFormat = Bitmap.CompressFormat.JPEG;
            } else {
                compressFormat = Bitmap.CompressFormat.WEBP;
            }
        } else {
            compressFormat = Bitmap.CompressFormat.PNG;
        }
        this.f7271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = compressFormat;
    }

    public final byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inSampleSize = i5;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        float width = decodeByteArray.getWidth();
        float height = decodeByteArray.getHeight();
        LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("src width = " + width);
        LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("src height = " + height);
        float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = BitmapCompressExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(decodeByteArray, i, i2);
        LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("scale = " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        float f = width / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        float f2 = height / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("dst width = " + f);
        LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("dst height = " + f2);
        BitmapCompressExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap.createScaledBitmap(decodeByteArray, (int) f, (int) f2, true), i4).compress(this.f7271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i3, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    @Override // com.fluttercandies.flutter_image_compress.handle.FormatHandler
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5, int i6) {
        if (i6 > 0) {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = false;
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                options.inSampleSize = i5;
                byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = BitmapCompressExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.decodeFile(str, options), i, i2, i3, i4, getType());
                if (z && this.f7271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Bitmap.CompressFormat.JPEG) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byteArrayOutputStream.write(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    outputStream.write(new ExifKeeper(str).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, byteArrayOutputStream).toByteArray());
                    return;
                }
                outputStream.write(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            } catch (OutOfMemoryError unused) {
                System.gc();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, outputStream, i, i2, i3, i4, z, i5 * 2, i6 - 1);
            }
        }
    }

    @Override // com.fluttercandies.flutter_image_compress.handle.FormatHandler
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull byte[] bArr, @NotNull OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5) {
        byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i, i2, i3, i4, i5);
        if (z && this.f7271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Bitmap.CompressFormat.JPEG) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            outputStream.write(new ExifKeeper(bArr).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, byteArrayOutputStream).toByteArray());
            return;
        }
        outputStream.write(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    @Override // com.fluttercandies.flutter_image_compress.handle.FormatHandler
    public int getType() {
        return this.f7273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
