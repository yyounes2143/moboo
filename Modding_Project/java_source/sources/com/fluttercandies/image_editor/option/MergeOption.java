package com.fluttercandies.image_editor.option;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0007\u0010\tR\u001d\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0016\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0013\u001a\u0004\b\r\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/fluttercandies/image_editor/option/MergeOption;", "", "", "map", "<init>", "(Ljava/util/Map;)V", "Lcom/fluttercandies/image_editor/option/FormatOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/fluttercandies/image_editor/option/FormatOption;", "()Lcom/fluttercandies/image_editor/option/FormatOption;", "formatOption", "", "Lcom/fluttercandies/image_editor/option/MergeImage;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "images", "", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "width", "height", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class MergeOption {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f7307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<MergeImage> f7308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FormatOption f7309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public MergeOption(@NotNull Map<?, ?> map) {
        this.f7309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new FormatOption((Map) map.get("fmt"));
        this.f7307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Integer) map.get("w")).intValue();
        this.f7306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ((Integer) map.get("h")).intValue();
        ArrayList arrayList = new ArrayList();
        for (Object obj : (List) map.get("images")) {
            if (obj instanceof Map) {
                arrayList.add(new MergeImage((Map) obj));
            }
        }
        this.f7308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7307Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final List<MergeImage> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7308Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7306Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final FormatOption Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7309Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
