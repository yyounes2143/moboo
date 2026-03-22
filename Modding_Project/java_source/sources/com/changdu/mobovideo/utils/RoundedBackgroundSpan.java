package com.changdu.mobovideo.utils;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.style.ReplacementSpan;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u0015\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001J9\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJW\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001c\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u0004\u0018\u00010 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010&\u001a\u0004\u0018\u00010\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010(\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010\u001eR\u0014\u0010*\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010\u001eR\u0016\u0010.\u001a\u0004\u0018\u00010+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0016\u00100\u001a\u0004\u0018\u00010+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010-R\u0014\u00102\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010\u001eR\u0016\u00104\u001a\u0004\u0018\u00010\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010%¨\u00065"}, d2 = {"Lcom/changdu/mobovideo/utils/RoundedBackgroundSpan;", "Landroid/text/style/ReplacementSpan;", "Landroid/graphics/Paint;", "paint", "", "text", "", "start", "end", "Landroid/graphics/Paint$FontMetricsInt;", "fm", "getSize", "(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I", "Landroid/graphics/Canvas;", "canvas", "", "x", "top", "y", "bottom", "", "draw", "(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Integer;", "backgroundColor", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "textColor", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "F", "cornerRadius", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[I", "gradientColors", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Float;", "textSize", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "paddingHorizontal", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "paddingVertical", "Landroid/graphics/drawable/Drawable;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/drawable/Drawable;", "leadingDrawable", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "trailingDrawable", "Wwwwwwwwwwwwwwwwwwwwwwwww", "drawablePadding", "Wwwwwwwwwwwwwwwwwwwwwwww", "originalTextSize", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RoundedBackgroundSpan extends ReplacementSpan {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Float f5655Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f5656Wwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Drawable f5657Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Drawable f5658Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f5659Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f5660Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Float f5661Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int[] f5662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final float f5663Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Integer f5665Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // android.text.style.ReplacementSpan
    public void draw(@NotNull Canvas canvas, @NotNull CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, @NotNull Paint paint) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float textSize = paint.getTextSize();
        Float f8 = this.f5661Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (f8 != null) {
            paint.setTextSize(f8.floatValue());
        }
        float measureText = paint.measureText(charSequence, i, i2);
        float descent = paint.descent() - paint.ascent();
        Drawable drawable = this.f5658Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (drawable != null) {
            f2 = drawable.getIntrinsicWidth();
        } else {
            f2 = 0.0f;
        }
        Drawable drawable2 = this.f5657Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (drawable2 != null) {
            f3 = drawable2.getIntrinsicWidth();
        } else {
            f3 = 0.0f;
        }
        Drawable drawable3 = this.f5658Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (drawable3 != null) {
            f4 = drawable3.getIntrinsicHeight();
        } else {
            f4 = 0.0f;
        }
        Drawable drawable4 = this.f5657Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (drawable4 != null) {
            f5 = drawable4.getIntrinsicHeight();
        } else {
            f5 = 0.0f;
        }
        float f9 = 2;
        float max = Math.max(descent, Math.max(f4, f5)) + (this.f5659Wwwwwwwwwwwwwwwwwwwwwwwwwwww * f9);
        float ascent = (i4 + paint.ascent()) - ((max - descent) / f9);
        float f10 = max + ascent;
        float f11 = measureText + f + (this.f5660Wwwwwwwwwwwwwwwwwwwwwwwwwwwww * f9) + f3;
        if (f3 > 0.0f) {
            f6 = this.f5656Wwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            f6 = 0.0f;
        }
        RectF rectF = new RectF(f, ascent, f11 + f6, f10);
        if (this.f5662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            paint.setShader(new LinearGradient(rectF.left, rectF.top, rectF.right, rectF.bottom, this.f5662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (float[]) null, Shader.TileMode.CLAMP));
        } else {
            Integer num = this.f5665Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (num != null) {
                paint.setColor(num.intValue());
            }
        }
        float f12 = this.f5663Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        canvas.drawRoundRect(rectF, f12, f12, paint);
        paint.setShader(null);
        Drawable drawable5 = this.f5658Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (drawable5 != null) {
            float centerY = rectF.centerY() - (drawable5.getIntrinsicHeight() / 2);
            float f13 = rectF.left;
            float f14 = this.f5660Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            drawable5.setBounds((int) (f13 + f14), (int) centerY, (int) (f13 + f14 + drawable5.getIntrinsicWidth()), (int) (centerY + drawable5.getIntrinsicHeight()));
            drawable5.draw(canvas);
        }
        float f15 = f + this.f5660Wwwwwwwwwwwwwwwwwwwwwwwwwwwww + f2;
        if (f2 > 0.0f) {
            f7 = this.f5656Wwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            f7 = 0.0f;
        }
        paint.setColor(this.f5664Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        canvas.drawText(charSequence, i, i2, f15 + f7, rectF.centerY() - ((paint.descent() + paint.ascent()) / f9), paint);
        Drawable drawable6 = this.f5657Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (drawable6 != null) {
            float centerY2 = rectF.centerY() - (drawable6.getIntrinsicHeight() / 2);
            float f16 = rectF.right;
            float f17 = this.f5660Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            drawable6.setBounds((int) ((f16 - f3) - f17), (int) centerY2, (int) (f16 - f17), (int) (centerY2 + drawable6.getIntrinsicHeight()));
            drawable6.draw(canvas);
        }
        paint.setTextSize(textSize);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(@NotNull Paint paint, @NotNull CharSequence charSequence, int i, int i2, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        float textSize;
        int i3;
        int i4;
        int i5;
        Float f = this.f5655Wwwwwwwwwwwwwwwwwwwwwwww;
        if (f != null) {
            textSize = f.floatValue();
        } else {
            textSize = paint.getTextSize();
        }
        Float f2 = this.f5661Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (f2 != null) {
            paint.setTextSize(f2.floatValue());
        }
        int measureText = (int) paint.measureText(charSequence, i, i2);
        Drawable drawable = this.f5658Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        int i6 = 0;
        if (drawable != null) {
            i3 = drawable.getIntrinsicWidth();
        } else {
            i3 = 0;
        }
        Drawable drawable2 = this.f5657Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (drawable2 != null) {
            i4 = drawable2.getIntrinsicWidth();
        } else {
            i4 = 0;
        }
        paint.setTextSize(textSize);
        int i7 = measureText + ((int) (2 * this.f5660Wwwwwwwwwwwwwwwwwwwwwwwwwwwww)) + i3 + i4;
        if (i3 > 0) {
            i5 = (int) this.f5656Wwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            if (i4 > 0) {
                i6 = (int) this.f5656Wwwwwwwwwwwwwwwwwwwwwwwww;
            }
            i5 = i6;
        }
        return i7 + i5;
    }
}
