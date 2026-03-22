package com.fluttercandies.image_editor.option.draw;

import android.graphics.Paint;
import android.graphics.Rect;
import com.fluttercandies.image_editor.option.draw.IHavePaint;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/fluttercandies/image_editor/option/draw/RectDrawPart;", "Lcom/fluttercandies/image_editor/option/draw/DrawPart;", "Lcom/fluttercandies/image_editor/option/draw/IHavePaint;", "", "map", "<init>", "(Ljava/util/Map;)V", "Landroid/graphics/Rect;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Rect;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/Rect;", "rect", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class RectDrawPart extends DrawPart implements IHavePaint {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Rect f7346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public RectDrawPart(@NotNull Map<?, ?> map) {
        super(map);
        this.f7346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("rect");
    }

    @NotNull
    public final Rect Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7346Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public Paint Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return IHavePaint.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }
}
