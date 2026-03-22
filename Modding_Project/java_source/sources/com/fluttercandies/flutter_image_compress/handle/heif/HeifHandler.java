package com.fluttercandies.flutter_image_compress.handle.heif;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.heifwriter.HeifWriter;
import com.fluttercandies.flutter_image_compress.ext.BitmapCompressExtKt;
import com.fluttercandies.flutter_image_compress.handle.FormatHandler;
import com.fluttercandies.flutter_image_compress.logger.LogExtKt;
import com.fluttercandies.flutter_image_compress.util.TmpFileUtil;
import com.mbridge.msdk.MBridgeConstans;
import java.io.File;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JW\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J_\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0018\u0010\u0019JI\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJI\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u0011\u001a\u00020\nH\u0002¢\u0006\u0004\b!\u0010\"J?\u0010%\u001a\u00020\u00122\u0006\u0010$\u001a\u00020#2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b%\u0010&R\u0014\u0010)\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lcom/fluttercandies/flutter_image_compress/handle/heif/HeifHandler;", "Lcom/fluttercandies/flutter_image_compress/handle/FormatHandler;", "<init>", "()V", "Landroid/content/Context;", "context", "", "byteArray", "Ljava/io/OutputStream;", "outputStream", "", "minWidth", "minHeight", "quality", "rotate", "", "keepExif", "inSampleSize", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;[BLjava/io/OutputStream;IIIIZI)V", "", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "numberOfRetries", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/io/OutputStream;IIIIZII)V", "arr", "targetPath", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([BIIIIILjava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;IIIIILjava/lang/String;)V", "Landroid/graphics/BitmapFactory$Options;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Landroid/graphics/BitmapFactory$Options;", "Landroid/graphics/Bitmap;", "bitmap", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;IIILjava/lang/String;I)V", "getType", "()I", "type", "flutter_image_compress_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class HeifHandler implements FormatHandler {
    public final BitmapFactory.Options Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = false;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inSampleSize = i;
        return options;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap, int i, int i2, int i3, String str, int i4) {
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("src width = " + width);
        LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("src height = " + height);
        float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = BitmapCompressExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, i, i2);
        LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("scale = " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        float f = width / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        float f2 = height / Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("dst width = " + f);
        LogExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("dst height = " + f2);
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = BitmapCompressExtKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap.createScaledBitmap(bitmap, (int) f, (int) f2, true), i3);
        HeifWriter build = new HeifWriter.Builder(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getWidth(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getHeight(), 2).setQuality(i4).setMaxImages(1).build();
        build.start();
        build.addBitmap(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        build.stop(5000L);
        build.close();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, int i2, int i3, int i4, int i5, String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.decodeByteArray(bArr, 0, bArr.length, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i5)), i, i2, i4, str, i3);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2, int i3, int i4, int i5, String str2) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(BitmapFactory.decodeFile(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(i5)), i, i2, i4, str2, i3);
    }

    @Override // com.fluttercandies.flutter_image_compress.handle.FormatHandler
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5, int i6) {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = TmpFileUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, i, i2, i3, i4, i5, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getAbsolutePath());
        outputStream.write(FilesKt.readBytes(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
    }

    @Override // com.fluttercandies.flutter_image_compress.handle.FormatHandler
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull byte[] bArr, @NotNull OutputStream outputStream, int i, int i2, int i3, int i4, boolean z, int i5) {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = TmpFileUtil.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i, i2, i3, i4, i5, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getAbsolutePath());
        outputStream.write(FilesKt.readBytes(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
    }

    @Override // com.fluttercandies.flutter_image_compress.handle.FormatHandler
    public int getType() {
        return 2;
    }
}
