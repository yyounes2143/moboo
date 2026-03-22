package com.fluttercandies.image_editor.option;

import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0007\u0010\tR\u0017\u0010\u000f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\f\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/fluttercandies/image_editor/option/MergeImage;", "", "", "map", "<init>", "(Ljava/util/Map;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[B", "()[B", "byteArray", "Lcom/fluttercandies/image_editor/option/ImagePosition;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/image_editor/option/ImagePosition;", "()Lcom/fluttercandies/image_editor/option/ImagePosition;", "position", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class MergeImage {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImagePosition f7304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte[] f7305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public MergeImage(@NotNull Map<?, ?> map) {
        this.f7305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (byte[]) ((Map) map.get("src")).get("memory");
        this.f7304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ImagePosition((Map) map.get("position"));
    }

    @NotNull
    public final ImagePosition Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
