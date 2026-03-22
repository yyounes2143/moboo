package coil.decode;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.exifinterface.media.ExifInterface;
import coil.util.Bitmaps;
import kotlin.Metadata;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\u000b\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcoil/decode/ExifUtils;", "", "<init>", "()V", "", "mimeType", "Lokio/BufferedSource;", "source", "Lcoil/decode/ExifOrientationPolicy;", "policy", "Lcoil/decode/ExifData;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lokio/BufferedSource;Lcoil/decode/ExifOrientationPolicy;)Lcoil/decode/ExifData;", "Landroid/graphics/Bitmap;", "inBitmap", "exifData", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;Lcoil/decode/ExifData;)Landroid/graphics/Bitmap;", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "PAINT", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ExifUtils {
    @NotNull
    public static final ExifUtils INSTANCE = new ExifUtils();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Paint f1827Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Paint(3);

    @NotNull
    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bitmap bitmap, @NotNull ExifData exifData) {
        Bitmap createBitmap;
        if (!exifData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && !ExifUtilsKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exifData)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width = bitmap.getWidth() / 2.0f;
        float height = bitmap.getHeight() / 2.0f;
        if (exifData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            matrix.postScale(-1.0f, 1.0f, width, height);
        }
        if (ExifUtilsKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exifData)) {
            matrix.postRotate(exifData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), width, height);
        }
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        float f = rectF.left;
        if (f != 0.0f || rectF.top != 0.0f) {
            matrix.postTranslate(-f, -rectF.top);
        }
        if (ExifUtilsKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exifData)) {
            createBitmap = Bitmap.createBitmap(bitmap.getHeight(), bitmap.getWidth(), Bitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap));
        } else {
            createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap));
        }
        new Canvas(createBitmap).drawBitmap(bitmap, matrix, f1827Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        bitmap.recycle();
        return createBitmap;
    }

    @NotNull
    public final ExifData Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @NotNull BufferedSource bufferedSource, @NotNull ExifOrientationPolicy exifOrientationPolicy) {
        if (ExifUtilsKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(exifOrientationPolicy, str)) {
            ExifInterface exifInterface = new ExifInterface(new ExifInterfaceInputStream(bufferedSource.peek().Kkkkkkkkkkkkkkkkkkkkkkkkk()));
            return new ExifData(exifInterface.isFlipped(), exifInterface.getRotationDegrees());
        }
        return ExifData.f1822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
