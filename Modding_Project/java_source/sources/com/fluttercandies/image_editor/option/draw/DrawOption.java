package com.fluttercandies.image_editor.option.draw;

import com.fluttercandies.image_editor.option.Option;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/fluttercandies/image_editor/option/draw/DrawOption;", "Lcom/fluttercandies/image_editor/option/draw/TransferValue;", "Lcom/fluttercandies/image_editor/option/Option;", "", "map", "<init>", "(Ljava/util/Map;)V", "", "Lcom/fluttercandies/image_editor/option/draw/DrawPart;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/List;", "drawPart", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class DrawOption extends TransferValue implements Option {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<DrawPart> f7339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DrawOption(@NotNull Map<?, ?> map) {
        super(map);
        IHavePaint iHavePaint;
        ArrayList arrayList = new ArrayList();
        for (Object obj : (List) map.get("parts")) {
            if (obj instanceof Map) {
                Map map2 = (Map) obj;
                Object obj2 = map2.get("key");
                Map map3 = (Map) map2.get("value");
                if (Intrinsics.areEqual(obj2, "rect")) {
                    iHavePaint = new RectDrawPart(map3);
                } else if (Intrinsics.areEqual(obj2, "oval")) {
                    iHavePaint = new OvalDrawPart(map3);
                } else if (Intrinsics.areEqual(obj2, "line")) {
                    iHavePaint = new LineDrawPart(map3);
                } else if (Intrinsics.areEqual(obj2, "point")) {
                    iHavePaint = new PointsDrawPart(map3);
                } else if (Intrinsics.areEqual(obj2, MBridgeConstans.DYNAMIC_VIEW_WX_PATH)) {
                    iHavePaint = new PathDrawPart(map3);
                } else {
                    iHavePaint = null;
                }
                if (iHavePaint != null) {
                    arrayList.add(iHavePaint);
                }
            }
        }
        this.f7339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
    }

    @NotNull
    public final List<DrawPart> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f7339Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
