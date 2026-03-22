package com.fluttercandies.image_editor.option.draw;

import android.graphics.Point;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/fluttercandies/image_editor/option/draw/MovePathPart;", "Lcom/fluttercandies/image_editor/option/draw/PathPart;", "", "map", "<init>", "(Ljava/util/Map;)V", "Landroid/graphics/Point;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Point;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/Point;", TypedValues.CycleType.S_WAVE_OFFSET, "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class MovePathPart extends PathPart {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Point f7343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public MovePathPart(@NotNull Map<?, ?> map) {
        super(map);
        this.f7343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TypedValues.CycleType.S_WAVE_OFFSET);
    }

    @NotNull
    public final Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7343Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
