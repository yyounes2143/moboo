package com.fluttercandies.image_editor.option.draw;

import android.graphics.Paint;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/fluttercandies/image_editor/option/draw/IHavePaint;", "Lcom/fluttercandies/image_editor/option/draw/ITransferValue;", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public interface IHavePaint extends ITransferValue {

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @NotNull
        public static Paint Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull IHavePaint iHavePaint) {
            return new DrawPaint((Map) iHavePaint.getMap().get("paint")).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
