package com.fluttercandies.image_editor.option.draw;

import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u001f\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/fluttercandies/image_editor/option/draw/ITransferValue;", "", "", "map", "Landroid/graphics/Point;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)Landroid/graphics/Point;", "getMap", "()Ljava/util/Map;", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public interface ITransferValue {

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        @NotNull
        public static Rect Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ITransferValue iTransferValue, @NotNull String str) {
            Map map = (Map) iTransferValue.getMap().get(str);
            int intValue = ((Integer) map.get("left")).intValue();
            int intValue2 = ((Integer) map.get("top")).intValue();
            return new Rect(intValue, intValue2, ((Integer) map.get("width")).intValue() + intValue, ((Integer) map.get("height")).intValue() + intValue2);
        }

        @NotNull
        public static Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ITransferValue iTransferValue, @NotNull String str) {
            return iTransferValue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) iTransferValue.getMap().get(str));
        }

        public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ITransferValue iTransferValue, @NotNull String str) {
            Map map = (Map) iTransferValue.getMap().get("color");
            return Color.argb(((Integer) map.get("a")).intValue(), ((Integer) map.get("r")).intValue(), ((Integer) map.get("g")).intValue(), ((Integer) map.get(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B)).intValue());
        }

        @NotNull
        public static Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ITransferValue iTransferValue, @NotNull Map<?, ?> map) {
            return new Point(((Integer) map.get("x")).intValue(), ((Integer) map.get("y")).intValue());
        }
    }

    @NotNull
    Point Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Map<?, ?> map);

    @NotNull
    Map<?, ?> getMap();
}
