package com.fluttercandies.image_editor.option.draw;

import android.graphics.Paint;
import com.fluttercandies.image_editor.option.draw.IHavePaint;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0011\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/fluttercandies/image_editor/option/draw/PathDrawPart;", "Lcom/fluttercandies/image_editor/option/draw/DrawPart;", "Lcom/fluttercandies/image_editor/option/draw/IHavePaint;", "", "map", "<init>", "(Ljava/util/Map;)V", "", "Lcom/fluttercandies/image_editor/option/draw/PathPart;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "paths", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "autoClose", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PathDrawPart extends DrawPart implements IHavePaint {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<PathPart> f7345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public PathDrawPart(@NotNull Map<?, ?> map) {
        super(map);
        TransferValue transferValue;
        ArrayList arrayList = new ArrayList();
        for (Object obj : (List) map.get("parts")) {
            if (obj instanceof Map) {
                Map map2 = (Map) obj;
                Object obj2 = map2.get("key");
                Map map3 = (Map) map2.get("value");
                if (Intrinsics.areEqual(obj2, "move")) {
                    transferValue = new MovePathPart(map3);
                } else if (Intrinsics.areEqual(obj2, "lineTo")) {
                    transferValue = new LineToPathPart(map3);
                } else if (Intrinsics.areEqual(obj2, "bezier")) {
                    transferValue = new BezierPathPart(map3);
                } else if (Intrinsics.areEqual(obj2, "arcTo")) {
                    transferValue = new ArcToPathPart(map3);
                } else {
                    transferValue = null;
                }
                if (transferValue != null) {
                    arrayList.add(transferValue);
                }
            }
        }
        this.f7345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
    }

    @NotNull
    public final List<PathPart> Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7345Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public Paint Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return IHavePaint.DefaultImpls.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return ((Boolean) getMap().get("autoClose")).booleanValue();
    }
}
