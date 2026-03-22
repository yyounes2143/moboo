package coil.transform;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Px;
import coil.decode.DecodeUtils;
import coil.size.Dimension;
import coil.size.Scale;
import coil.size.Size;
import coil.size.Sizes;
import coil.util.Bitmaps;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.math.MathKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B/\u0012\b\b\u0003\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0096\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J+\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00140\u00172\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001bR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u001bR\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001bR\u001a\u0010!\u001a\u00020\u001d8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001a\u0010 \u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"Lcoil/transform/RoundedCornersTransformation;", "Lcoil/transform/Transformation;", "", "topLeft", "topRight", "bottomLeft", "bottomRight", "<init>", "(FFFF)V", "Landroid/graphics/Bitmap;", "input", "Lcoil/size/Size;", "size", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;Lcoil/size/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "Lkotlin/Pair;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;Lcoil/size/Size;)Lkotlin/Pair;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "F", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "()Ljava/lang/String;", "cacheKey", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RoundedCornersTransformation implements Transformation {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f2185Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f2186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f2187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f2188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f2189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public RoundedCornersTransformation() {
        this(0.0f, 0.0f, 0.0f, 0.0f, 15, null);
    }

    public final Pair<Integer, Integer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bitmap bitmap, Size size) {
        int i;
        if (Sizes.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(size)) {
            return TuplesKt.to(Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()));
        }
        Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Dimension.Pixels) && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Dimension.Pixels)) {
            return TuplesKt.to(Integer.valueOf(((Dimension.Pixels) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).f2170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), Integer.valueOf(((Dimension.Pixels) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).f2170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int i2 = Integer.MIN_VALUE;
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Dimension.Pixels) {
            i = ((Dimension.Pixels) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).f2170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            i = Integer.MIN_VALUE;
        }
        Dimension Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = size.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Dimension.Pixels) {
            i2 = ((Dimension.Pixels) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).f2170Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        double Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = DecodeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(width, height, i, i2, Scale.FILL);
        return TuplesKt.to(Integer.valueOf(MathKt.roundToInt(bitmap.getWidth() * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)), Integer.valueOf(MathKt.roundToInt(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 * bitmap.getHeight())));
    }

    @Override // coil.transform.Transformation
    @Nullable
    public Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bitmap bitmap, @NotNull Size size, @NotNull Continuation<? super Bitmap> continuation) {
        Paint paint = new Paint(3);
        Pair<Integer, Integer> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, size);
        int intValue = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.component1().intValue();
        int intValue2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.component2().intValue();
        Bitmap createBitmap = Bitmap.createBitmap(intValue, intValue2, Bitmaps.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap));
        Canvas canvas = new Canvas(createBitmap);
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        Matrix matrix = new Matrix();
        float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = (float) DecodeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap.getWidth(), bitmap.getHeight(), intValue, intValue2, Scale.FILL);
        float f = 2;
        matrix.setTranslate((intValue - (bitmap.getWidth() * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) / f, (intValue2 - (bitmap.getHeight() * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3)) / f);
        matrix.preScale(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        float f2 = this.f2189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        float f3 = this.f2188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        float f4 = this.f2186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        float f5 = this.f2187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        float[] fArr = {f2, f2, f3, f3, f4, f4, f5, f5};
        RectF rectF = new RectF(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        Path path = new Path();
        path.addRoundRect(rectF, fArr, Path.Direction.CW);
        canvas.drawPath(path, paint);
        return createBitmap;
    }

    @Override // coil.transform.Transformation
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f2185Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RoundedCornersTransformation) {
            RoundedCornersTransformation roundedCornersTransformation = (RoundedCornersTransformation) obj;
            if (this.f2189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == roundedCornersTransformation.f2189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f2188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == roundedCornersTransformation.f2188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f2187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == roundedCornersTransformation.f2187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f2186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == roundedCornersTransformation.f2186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return (((((Float.floatToIntBits(this.f2189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) * 31) + Float.floatToIntBits(this.f2188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + Float.floatToIntBits(this.f2187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) * 31) + Float.floatToIntBits(this.f2186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public RoundedCornersTransformation(@Px float f, @Px float f2, @Px float f3, @Px float f4) {
        this.f2189Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f;
        this.f2188Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f2;
        this.f2187Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f3;
        this.f2186Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f4;
        if (f >= 0.0f && f2 >= 0.0f && f3 >= 0.0f && f4 >= 0.0f) {
            this.f2185Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = RoundedCornersTransformation.class.getName() + '-' + f + AbstractJsonLexerKt.COMMA + f2 + AbstractJsonLexerKt.COMMA + f3 + AbstractJsonLexerKt.COMMA + f4;
            return;
        }
        throw new IllegalArgumentException("All radii must be >= 0.");
    }

    public /* synthetic */ RoundedCornersTransformation(float f, float f2, float f3, float f4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2, (i & 4) != 0 ? 0.0f : f3, (i & 8) != 0 ? 0.0f : f4);
    }
}
