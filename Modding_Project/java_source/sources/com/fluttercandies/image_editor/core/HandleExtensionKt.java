package com.fluttercandies.image_editor.core;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.RectF;
import com.fluttercandies.image_editor.option.draw.ArcToPathPart;
import com.fluttercandies.image_editor.option.draw.BezierPathPart;
import com.fluttercandies.image_editor.option.draw.DrawOption;
import com.fluttercandies.image_editor.option.draw.DrawPart;
import com.fluttercandies.image_editor.option.draw.LineDrawPart;
import com.fluttercandies.image_editor.option.draw.LineToPathPart;
import com.fluttercandies.image_editor.option.draw.MovePathPart;
import com.fluttercandies.image_editor.option.draw.OvalDrawPart;
import com.fluttercandies.image_editor.option.draw.PathDrawPart;
import com.fluttercandies.image_editor.option.draw.PathPart;
import com.fluttercandies.image_editor.option.draw.PointsDrawPart;
import com.fluttercandies.image_editor.option.draw.RectDrawPart;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a!\u0010\u0004\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0019\u0010\b\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t\u001a\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u001d\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u001d\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u001d\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u001f\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroid/graphics/Bitmap;", "", "width", "height", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;", "Lcom/fluttercandies/image_editor/option/draw/DrawOption;", "option", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Bitmap;Lcom/fluttercandies/image_editor/option/draw/DrawOption;)Landroid/graphics/Bitmap;", "Landroid/graphics/Canvas;", "canvas", "Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;", "drawPart", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;)V", "Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;)V", "Lcom/fluttercandies/image_editor/option/draw/OvalDrawPart;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/OvalDrawPart;)V", "Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;)V", "Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/graphics/Canvas;Lcom/fluttercandies/image_editor/option/draw/LineDrawPart;)V", "image_editor_common_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class HandleExtensionKt {
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Canvas canvas, @NotNull RectDrawPart rectDrawPart) {
        canvas.drawRect(rectDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), rectDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Canvas canvas, @NotNull PointsDrawPart pointsDrawPart) {
        List<Point> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pointsDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Paint Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pointsDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        for (Point point : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            canvas.drawPoint(point.x, point.y, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Canvas canvas, @NotNull PathDrawPart pathDrawPart) {
        Path path = new Path();
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = pathDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        for (PathPart pathPart : pathDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            if (pathPart instanceof MovePathPart) {
                MovePathPart movePathPart = (MovePathPart) pathPart;
                path.moveTo(movePathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().x, movePathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().y);
            } else if (pathPart instanceof LineToPathPart) {
                LineToPathPart lineToPathPart = (LineToPathPart) pathPart;
                path.lineTo(lineToPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().x, lineToPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().y);
            } else if (pathPart instanceof ArcToPathPart) {
                ArcToPathPart arcToPathPart = (ArcToPathPart) pathPart;
                path.arcTo(new RectF(arcToPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), arcToPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().floatValue(), arcToPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().floatValue(), arcToPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
            } else if (pathPart instanceof BezierPathPart) {
                BezierPathPart bezierPathPart = (BezierPathPart) pathPart;
                if (bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == 2) {
                    path.quadTo(bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().x, bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().y, bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwww().x, bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwww().y);
                } else if (bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwww() == 3) {
                    path.cubicTo(bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().x, bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().y, bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().x, bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().y, bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwww().x, bezierPathPart.Wwwwwwwwwwwwwwwwwwwwwwwwwww().y);
                }
            }
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
            path.close();
        }
        canvas.drawPath(path, pathDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Canvas canvas, @NotNull OvalDrawPart ovalDrawPart) {
        canvas.drawOval(new RectF(ovalDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()), ovalDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Canvas canvas, LineDrawPart lineDrawPart) {
        canvas.drawLine(lineDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().x, lineDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().y, lineDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().x, lineDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().y, lineDrawPart.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    @NotNull
    public static final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bitmap bitmap, @NotNull DrawOption drawOption) {
        Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bitmap, bitmap.getWidth(), bitmap.getHeight());
        Canvas canvas = new Canvas(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        for (DrawPart drawPart : drawOption.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            if (drawPart instanceof LineDrawPart) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(canvas, (LineDrawPart) drawPart);
            } else if (drawPart instanceof RectDrawPart) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww(canvas, (RectDrawPart) drawPart);
            } else if (drawPart instanceof OvalDrawPart) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(canvas, (OvalDrawPart) drawPart);
            } else if (drawPart instanceof PointsDrawPart) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(canvas, (PointsDrawPart) drawPart);
            } else if (drawPart instanceof PathDrawPart) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(canvas, (PathDrawPart) drawPart);
            }
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @NotNull
    public static final Bitmap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bitmap bitmap, int i, int i2) {
        Bitmap.Config config = bitmap.getConfig();
        if (config != null) {
            return Bitmap.createBitmap(i, i2, config);
        }
        return Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
    }
}
