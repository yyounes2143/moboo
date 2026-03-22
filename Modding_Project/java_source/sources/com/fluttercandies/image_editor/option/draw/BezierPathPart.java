package com.fluttercandies.image_editor.option.draw;

import android.graphics.Point;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0014\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0010R\u0019\u0010\u0016\u001a\u0004\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0015\u0010\u0010¨\u0006\u0017"}, d2 = {"Lcom/fluttercandies/image_editor/option/draw/BezierPathPart;", "Lcom/fluttercandies/image_editor/option/draw/PathPart;", "", "map", "<init>", "(Ljava/util/Map;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "kind", "Landroid/graphics/Point;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Point;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/Point;", TypedValues.AttributesType.S_TARGET, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "control1", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "control2", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class BezierPathPart extends PathPart {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Point f7335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Point f7336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Point f7337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public BezierPathPart(@NotNull Map<?, ?> map) {
        super(map);
        Point point;
        int intValue = ((Integer) map.get("kind")).intValue();
        this.f7338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = intValue;
        this.f7337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TypedValues.AttributesType.S_TARGET);
        this.f7336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("c1");
        if (intValue == 3) {
            point = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("c2");
        } else {
            point = null;
        }
        this.f7335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = point;
    }

    @NotNull
    public final Point Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7337Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7338Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
