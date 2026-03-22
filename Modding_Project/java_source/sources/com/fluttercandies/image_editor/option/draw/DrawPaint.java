package com.fluttercandies.image_editor.option.draw;

import android.graphics.Paint;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/fluttercandies/image_editor/option/draw/DrawPaint;", "Lcom/fluttercandies/image_editor/option/draw/TransferValue;", "", "map", "<init>", "(Ljava/util/Map;)V", "Landroid/graphics/Paint;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/Paint;", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class DrawPaint extends TransferValue {
    public DrawPaint(@NotNull Map<?, ?> map) {
        super(map);
    }

    @NotNull
    public final Paint Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Paint.Style style;
        Paint paint = new Paint();
        paint.setColor(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("color"));
        paint.setStrokeWidth(((Number) getMap().get("lineWeight")).floatValue());
        if (((Boolean) getMap().get("paintStyleFill")).booleanValue()) {
            style = Paint.Style.FILL;
        } else {
            style = Paint.Style.STROKE;
        }
        paint.setStyle(style);
        return paint;
    }
}
