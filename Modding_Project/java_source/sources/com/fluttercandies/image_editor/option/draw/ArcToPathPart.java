package com.fluttercandies.image_editor.option.draw;

import android.graphics.Rect;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0004\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0014\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0010R\u0017\u0010\u0019\u001a\u00020\u00158\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/fluttercandies/image_editor/option/draw/ArcToPathPart;", "Lcom/fluttercandies/image_editor/option/draw/PathPart;", "", "map", "<init>", "(Ljava/util/Map;)V", "Landroid/graphics/Rect;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/graphics/Rect;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/graphics/Rect;", "rect", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Number;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Number;", "start", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "sweep", "", "Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "useCenter", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ArcToPathPart extends PathPart {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f7331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Number f7332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Number f7333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Rect f7334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ArcToPathPart(@NotNull Map<?, ?> map) {
        super(map);
        this.f7334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("rect");
        this.f7333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Number) map.get("start");
        this.f7332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (Number) map.get("sweep");
        this.f7331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Boolean) map.get("useCenter")).booleanValue();
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7331Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Number Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7332Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Number Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7333Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Rect Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7334Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
