package com.fluttercandies.image_editor.option.draw;

import android.graphics.Paint;
import android.graphics.Point;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fluttercandies.image_editor.option.draw.IHavePaint;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078F¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/fluttercandies/image_editor/option/draw/PointsDrawPart;", "Lcom/fluttercandies/image_editor/option/draw/DrawPart;", "Lcom/fluttercandies/image_editor/option/draw/IHavePaint;", "", "map", "<init>", "(Ljava/util/Map;)V", "", "Landroid/graphics/Point;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "offsets", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PointsDrawPart extends DrawPart implements IHavePaint {
    public PointsDrawPart(@NotNull Map<?, ?> map) {
        super(map);
    }

    @NotNull
    public Paint Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return IHavePaint.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @NotNull
    public final List<Point> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ArrayList arrayList = new ArrayList();
        for (Object obj : (List) getMap().get(TypedValues.CycleType.S_WAVE_OFFSET)) {
            if (obj instanceof Map) {
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) obj));
            }
        }
        return arrayList;
    }
}
