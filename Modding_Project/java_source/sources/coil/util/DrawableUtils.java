package coil.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.WorkerThread;
import coil.decode.DecodeUtils;
import coil.size.Scale;
import coil.size.Size;
import coil.size.Sizes;
import kotlin.Metadata;
import kotlin.math.MathKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J/\u0010\u0014\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcoil/util/DrawableUtils;", "", "<init>", "()V", "Landroid/graphics/drawable/Drawable;", "drawable", "Landroid/graphics/Bitmap$Config;", "config", "Lcoil/size/Size;", "size", "Lcoil/size/Scale;", "scale", "", "allowInexactSize", "Landroid/graphics/Bitmap;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;", "bitmap", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(ZLandroid/graphics/Bitmap;Lcoil/size/Size;Lcoil/size/Scale;)Z", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DrawableUtils {
    @NotNull
    public static final DrawableUtils INSTANCE = new DrawableUtils();

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, Bitmap bitmap, Size size, Scale scale) {
        int Wwwwwwww2;
        int Wwwwwwww3;
        if (z) {
            return true;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (Sizes.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(size)) {
            Wwwwwwww2 = bitmap.getWidth();
        } else {
            Wwwwwwww2 = Utils.Wwwwwwww(size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), scale);
        }
        if (Sizes.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(size)) {
            Wwwwwwww3 = bitmap.getHeight();
        } else {
            Wwwwwwww3 = Utils.Wwwwwwww(size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), scale);
        }
        if (DecodeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(width, height, Wwwwwwww2, Wwwwwwww3, scale) == 1.0d) {
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap, Bitmap.Config config) {
        if (bitmap.getConfig() == Bitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(config)) {
            return true;
        }
        return false;
    }

    @WorkerThread
    @NotNull
    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Drawable drawable, @NotNull Bitmap.Config config, @NotNull Size size, @NotNull Scale scale, boolean z) {
        int Wwwwwwww2;
        int Wwwwwwww3;
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, config) && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z, bitmap, size, scale)) {
                return bitmap;
            }
        }
        Drawable mutate = drawable.mutate();
        int Wwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwww(mutate);
        int i = 512;
        if (Wwwwwwwwwwwwwwwwww2 <= 0) {
            Wwwwwwwwwwwwwwwwww2 = 512;
        }
        int Wwwwwwwwwwwwwwwwwwwwwwwww2 = Utils.Wwwwwwwwwwwwwwwwwwwwwwwww(mutate);
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
            i = Wwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        if (Sizes.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(size)) {
            Wwwwwwww2 = Wwwwwwwwwwwwwwwwww2;
        } else {
            Wwwwwwww2 = Utils.Wwwwwwww(size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), scale);
        }
        if (Sizes.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(size)) {
            Wwwwwwww3 = i;
        } else {
            Wwwwwwww3 = Utils.Wwwwwwww(size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), scale);
        }
        double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DecodeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwww2, i, Wwwwwwww2, Wwwwwwww3, scale);
        int roundToInt = MathKt.roundToInt(Wwwwwwwwwwwwwwwwww2 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        int roundToInt2 = MathKt.roundToInt(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 * i);
        Bitmap createBitmap = Bitmap.createBitmap(roundToInt, roundToInt2, Bitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(config));
        Rect bounds = mutate.getBounds();
        int i2 = bounds.left;
        int i3 = bounds.top;
        int i4 = bounds.right;
        int i5 = bounds.bottom;
        mutate.setBounds(0, 0, roundToInt, roundToInt2);
        mutate.draw(new Canvas(createBitmap));
        mutate.setBounds(i2, i3, i4, i5);
        return createBitmap;
    }
}
