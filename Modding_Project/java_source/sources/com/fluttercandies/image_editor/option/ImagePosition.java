package com.fluttercandies.image_editor.option;

import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u000e\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\f\u0010\b\u001a\u0004\b\r\u0010\nR\u0017\u0010\u000f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\t\u0010\b\u001a\u0004\b\f\u0010\nR\u0017\u0010\u0010\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u0007\u0010\n¨\u0006\u0011"}, d2 = {"Lcom/fluttercandies/image_editor/option/ImagePosition;", "", "", "map", "<init>", "(Ljava/util/Map;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "x", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "y", "width", "height", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ImagePosition {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ImagePosition(@NotNull Map<?, ?> map) {
        this.f7303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Integer) map.get("x")).intValue();
        this.f7302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Integer) map.get("y")).intValue();
        this.f7301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Integer) map.get("w")).intValue();
        this.f7300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Integer) map.get("h")).intValue();
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7300Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
