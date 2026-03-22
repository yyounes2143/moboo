package com.fluttercandies.image_editor.core;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.fluttercandies.image_editor.common.font.FontUtils;
import com.fluttercandies.image_editor.option.AddTextOpt;
import com.fluttercandies.image_editor.option.ClipOption;
import com.fluttercandies.image_editor.option.ColorOption;
import com.fluttercandies.image_editor.option.FlipOption;
import com.fluttercandies.image_editor.option.FormatOption;
import com.fluttercandies.image_editor.option.MixImageOpt;
import com.fluttercandies.image_editor.option.Option;
import com.fluttercandies.image_editor.option.RotateOption;
import com.fluttercandies.image_editor.option.ScaleOption;
import com.fluttercandies.image_editor.option.Text;
import com.fluttercandies.image_editor.option.draw.DrawOption;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u001fH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\"H\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020%H\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010)\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020(H\u0002¢\u0006\u0004\b)\u0010*J\u001f\u0010/\u001a\u00020\t2\u0006\u0010,\u001a\u00020+2\u0006\u0010.\u001a\u00020-H\u0002¢\u0006\u0004\b/\u00100J'\u00106\u001a\u0002052\u0006\u0010,\u001a\u00020+2\u0006\u00102\u001a\u0002012\u0006\u00104\u001a\u000203H\u0002¢\u0006\u0004\b6\u00107J\u001f\u0010:\u001a\u00020\t2\u0006\u00109\u001a\u0002082\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b:\u0010;R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010<¨\u0006="}, d2 = {"Lcom/fluttercandies/image_editor/core/ImageHandler;", "", "Landroid/graphics/Bitmap;", "bitmap", "<init>", "(Landroid/graphics/Bitmap;)V", "", "Lcom/fluttercandies/image_editor/option/Option;", "options", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "", "dstPath", "Lcom/fluttercandies/image_editor/option/FormatOption;", "formatOption", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/fluttercandies/image_editor/option/FormatOption;)V", "", "Wwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/image_editor/option/FormatOption;)[B", "Lcom/fluttercandies/image_editor/option/MixImageOpt;", "option", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/image_editor/option/MixImageOpt;)Landroid/graphics/Bitmap;", "Lcom/fluttercandies/image_editor/option/ScaleOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/image_editor/option/ScaleOption;)Landroid/graphics/Bitmap;", "Lcom/fluttercandies/image_editor/option/RotateOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/image_editor/option/RotateOption;)Landroid/graphics/Bitmap;", "Lcom/fluttercandies/image_editor/option/FlipOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/image_editor/option/FlipOption;)Landroid/graphics/Bitmap;", "Lcom/fluttercandies/image_editor/option/ClipOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/image_editor/option/ClipOption;)Landroid/graphics/Bitmap;", "Lcom/fluttercandies/image_editor/option/ColorOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/image_editor/option/ColorOption;)Landroid/graphics/Bitmap;", "Lcom/fluttercandies/image_editor/option/AddTextOpt;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/image_editor/option/AddTextOpt;)Landroid/graphics/Bitmap;", "Lcom/fluttercandies/image_editor/option/Text;", "text", "Landroid/graphics/Canvas;", "canvas", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/image_editor/option/Text;Landroid/graphics/Canvas;)V", "Landroid/text/TextPaint;", "textPaint", "", "width", "Landroid/text/StaticLayout;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/fluttercandies/image_editor/option/Text;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;", "Ljava/io/OutputStream;", "outputStream", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/OutputStream;Lcom/fluttercandies/image_editor/option/FormatOption;)V", "Landroid/graphics/Bitmap;", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ImageHandler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Bitmap f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Paint.Align.values().length];
            try {
                iArr[Paint.Align.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Paint.Align.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ImageHandler(@NotNull Bitmap bitmap) {
        this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = bitmap;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull FormatOption formatOption) {
        Wwwwwwwwwwwwwwwwwwwwwwww(new FileOutputStream(str), formatOption);
    }

    @NotNull
    public final byte[] Wwwwwwwwwwwwwwwwwwwwwww(@NotNull FormatOption formatOption) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Wwwwwwwwwwwwwwwwwwwwwwww(byteArrayOutputStream, formatOption);
        return byteArrayOutputStream.toByteArray();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(OutputStream outputStream, FormatOption formatOption) {
        try {
            if (formatOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 0) {
                this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.compress(Bitmap.CompressFormat.PNG, formatOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), outputStream);
            } else {
                this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.compress(Bitmap.CompressFormat.JPEG, formatOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), outputStream);
            }
            CloseableKt.closeFinally(outputStream, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(outputStream, th);
                throw th2;
            }
        }
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwww(AddTextOpt addTextOpt) {
        Bitmap bitmap = this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = HandleExtensionKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, bitmap.getWidth(), this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getHeight());
        Canvas canvas = new Canvas(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        canvas.drawBitmap(this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0.0f, 0.0f, new Paint());
        Iterator<Text> it = addTextOpt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().iterator();
        while (it.hasNext()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(it.next(), canvas);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwww(ScaleOption scaleOption) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = scaleOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = scaleOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (scaleOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            float width = this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getWidth() / this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getHeight();
            if (scaleOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = (int) (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 / width);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = (int) (width * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Matrix matrix = new Matrix();
        int width2 = this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getWidth();
        int height = this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getHeight();
        if (width2 != Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 || height != Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            matrix.setScale(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 / width2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 / height);
        }
        canvas.drawBitmap(this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, matrix, paint);
        return createBitmap;
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwww(RotateOption rotateOption) {
        Matrix matrix = new Matrix();
        matrix.postRotate(rotateOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Bitmap bitmap = this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getHeight(), matrix, true);
        new Canvas().drawBitmap(createBitmap, matrix, null);
        return createBitmap;
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MixImageOpt mixImageOpt) {
        Bitmap bitmap = this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = HandleExtensionKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, bitmap.getWidth(), this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getHeight());
        Canvas canvas = new Canvas(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        canvas.drawBitmap(this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0.0f, 0.0f, (Paint) null);
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(mixImageOpt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, mixImageOpt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().length);
        Paint paint = new Paint();
        paint.setXfermode(new PorterDuffXfermode(mixImageOpt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        canvas.drawBitmap(decodeByteArray, (Rect) null, new Rect(mixImageOpt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), mixImageOpt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), mixImageOpt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + mixImageOpt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), mixImageOpt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() + mixImageOpt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), paint);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FlipOption flipOption) {
        float f;
        Matrix matrix = new Matrix();
        float f2 = 1.0f;
        if (flipOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            f = -1.0f;
        } else {
            f = 1.0f;
        }
        if (flipOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            f2 = -1.0f;
        }
        matrix.postScale(f, f2);
        Bitmap bitmap = this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getHeight(), matrix, true);
        new Canvas().drawBitmap(createBitmap, matrix, null);
        return createBitmap;
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ColorOption colorOption) {
        Bitmap bitmap = this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = HandleExtensionKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, bitmap.getWidth(), this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getHeight());
        Canvas canvas = new Canvas(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        Paint paint = new Paint();
        paint.setColorFilter(new ColorMatrixColorFilter(colorOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        canvas.drawBitmap(this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0.0f, 0.0f, paint);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ClipOption clipOption) {
        return Bitmap.createBitmap(this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, clipOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), clipOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), clipOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), clipOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Matrix) null, false);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<? extends Option> list) {
        for (Option option : list) {
            if (option instanceof ColorOption) {
                this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ColorOption) option);
            } else if (option instanceof ScaleOption) {
                this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwww((ScaleOption) option);
            } else if (option instanceof FlipOption) {
                this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((FlipOption) option);
            } else if (option instanceof ClipOption) {
                this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ClipOption) option);
            } else if (option instanceof RotateOption) {
                this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwww((RotateOption) option);
            } else if (option instanceof AddTextOpt) {
                this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwww((AddTextOpt) option);
            } else if (option instanceof MixImageOpt) {
                this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwww((MixImageOpt) option);
            } else if (option instanceof DrawOption) {
                this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = HandleExtensionKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f7285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (DrawOption) option);
            }
        }
    }

    public final StaticLayout Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Text text, TextPaint textPaint, int i) {
        return StaticLayout.Builder.obtain(text.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, text.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().length(), textPaint, i).build();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Text text, Canvas canvas) {
        Number valueOf;
        TextPaint textPaint = new TextPaint(1);
        textPaint.setColor(Color.argb(text.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), text.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), text.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), text.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        textPaint.setTextSize(text.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (text.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().length() > 0) {
            try {
                textPaint.setTypeface(FontUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(text.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            } catch (Exception unused) {
            }
        }
        StaticLayout Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(text, textPaint, canvas.getWidth() - text.Wwwwwwwwwwwwwwwwwwwwwwwwww());
        canvas.translate(text.Wwwwwwwwwwwwwwwwwwwwwwwwww(), text.Wwwwwwwwwwwwwwwwwwwwwwwww());
        int lineCount = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getLineCount();
        int i = 0;
        while (i < lineCount) {
            String obj = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getText().subSequence(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getLineStart(i), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getLineEnd(i)).toString();
            float measureText = textPaint.measureText(obj);
            i++;
            int Wwwwwwwwwwwwwwwwwwwwwwwww2 = text.Wwwwwwwwwwwwwwwwwwwwwwwww() + (text.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() * i);
            int i2 = WhenMappings.$EnumSwitchMapping$0[text.Wwwwwwwwwwwwwwwwwwwwwwwwwww().ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    valueOf = Integer.valueOf(text.Wwwwwwwwwwwwwwwwwwwwwwwwww());
                } else {
                    valueOf = Float.valueOf(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getWidth() - measureText);
                }
            } else {
                valueOf = Float.valueOf((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getWidth() - measureText) / 2);
            }
            canvas.drawText(obj, valueOf.floatValue(), Wwwwwwwwwwwwwwwwwwwwwwwww2, textPaint);
        }
        canvas.translate(-text.Wwwwwwwwwwwwwwwwwwwwwwwwww(), -text.Wwwwwwwwwwwwwwwwwwwwwwwww());
    }
}
