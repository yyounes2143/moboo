package com.fluttercandies.image_editor.util;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import androidx.core.app.NotificationCompat;
import com.fluttercandies.image_editor.core.BitmapWrapper;
import com.fluttercandies.image_editor.option.AddTextOpt;
import com.fluttercandies.image_editor.option.ClipOption;
import com.fluttercandies.image_editor.option.ColorOption;
import com.fluttercandies.image_editor.option.FlipOption;
import com.fluttercandies.image_editor.option.FormatOption;
import com.fluttercandies.image_editor.option.MixImageOpt;
import com.fluttercandies.image_editor.option.Option;
import com.fluttercandies.image_editor.option.RotateOption;
import com.fluttercandies.image_editor.option.ScaleOption;
import com.fluttercandies.image_editor.option.Text;
import com.fluttercandies.image_editor.option.draw.DrawOption;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.flutter.plugin.common.MethodCall;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ)\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0015*\u00020\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001f\u001a\u00020\u001e2\u000e\u0010\u001d\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u001cH\u0002¢\u0006\u0004\b\u001f\u0010 J\u001b\u0010#\u001a\u0004\u0018\u00010\"2\b\u0010!\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b#\u0010$J\u0019\u0010&\u001a\u00020%2\b\u0010!\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b&\u0010'J\u0019\u0010)\u001a\u00020(2\b\u0010!\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b)\u0010*J\u0019\u0010,\u001a\u00020+2\b\u0010!\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b,\u0010-J\u0019\u0010/\u001a\u00020.2\b\u0010!\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b/\u00100¨\u00061"}, d2 = {"Lcom/fluttercandies/image_editor/util/ConvertUtils;", "", "<init>", "()V", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lcom/fluttercandies/image_editor/option/FormatOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lio/flutter/plugin/common/MethodCall;)Lcom/fluttercandies/image_editor/option/FormatOption;", "", "optionList", "Lcom/fluttercandies/image_editor/core/BitmapWrapper;", "bitmapWrapper", "Lcom/fluttercandies/image_editor/option/Option;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;Lcom/fluttercandies/image_editor/core/BitmapWrapper;)Ljava/util/List;", "", "type", "Landroid/graphics/PorterDuff$Mode;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;", "T", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Ljava/lang/Object;", "valueMap", "Lcom/fluttercandies/image_editor/option/AddTextOpt;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Lcom/fluttercandies/image_editor/option/AddTextOpt;", "", "v", "Lcom/fluttercandies/image_editor/option/Text;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)Lcom/fluttercandies/image_editor/option/Text;", "optionMap", "Lcom/fluttercandies/image_editor/option/ScaleOption;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Lcom/fluttercandies/image_editor/option/ScaleOption;", "Lcom/fluttercandies/image_editor/option/ColorOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Lcom/fluttercandies/image_editor/option/ColorOption;", "Lcom/fluttercandies/image_editor/option/RotateOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Lcom/fluttercandies/image_editor/option/RotateOption;", "Lcom/fluttercandies/image_editor/option/ClipOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Lcom/fluttercandies/image_editor/option/ClipOption;", "Lcom/fluttercandies/image_editor/option/FlipOption;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Lcom/fluttercandies/image_editor/option/FlipOption;", "image_editor_common_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConvertUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConvertUtils.kt\ncom/fluttercandies/image_editor/util/ConvertUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,193:1\n1563#2:194\n1634#2,3:195\n*S KotlinDebug\n*F\n+ 1 ConvertUtils.kt\ncom/fluttercandies/image_editor/util/ConvertUtils\n*L\n124#1:194\n124#1:195,3\n*E\n"})
/* loaded from: classes4.dex */
public final class ConvertUtils {
    @NotNull
    public static final ConvertUtils INSTANCE = new ConvertUtils();

    public final AddTextOpt Wwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (!(obj instanceof Map)) {
            return null;
        }
        List list = (List) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((Map) obj).get("texts"));
        if (list.isEmpty()) {
            return null;
        }
        AddTextOpt addTextOpt = new AddTextOpt();
        for (Object obj2 : list) {
            if (obj2 instanceof Map) {
                addTextOpt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Map) obj2));
            }
        }
        return addTextOpt;
    }

    public final ScaleOption Wwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (!(obj instanceof Map)) {
            return null;
        }
        Map map = (Map) obj;
        return new ScaleOption(((Integer) map.get("width")).intValue(), ((Integer) map.get("height")).intValue(), ((Boolean) map.get("keepRatio")).booleanValue(), ((Boolean) map.get("keepWidthFirst")).booleanValue());
    }

    public final RotateOption Wwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (!(obj instanceof Map)) {
            return new RotateOption(0);
        }
        return new RotateOption(((Integer) ((Map) obj).get("degree")).intValue());
    }

    @NotNull
    public final FormatOption Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MethodCall methodCall) {
        return new FormatOption((Map) methodCall.argument("fmt"));
    }

    public final FlipOption Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (!(obj instanceof Map)) {
            return new FlipOption(false, false, 3, null);
        }
        Map map = (Map) obj;
        return new FlipOption(((Boolean) map.get("h")).booleanValue(), ((Boolean) map.get("v")).booleanValue());
    }

    public final ColorOption Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        float f;
        if (!(obj instanceof Map)) {
            return ColorOption.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        List list = (List) ((Map) obj).get("matrix");
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (Object obj2 : list) {
            if (obj2 instanceof Double) {
                f = (float) ((Number) obj2).doubleValue();
            } else {
                f = 0.0f;
            }
            arrayList.add(Float.valueOf(f));
        }
        return new ColorOption(CollectionsKt.toFloatArray(arrayList));
    }

    public final ClipOption Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (!(obj instanceof Map)) {
            return new ClipOption(0, 0, -1, -1);
        }
        Map map = (Map) obj;
        return new ClipOption(((Number) map.get("x")).intValue(), ((Number) map.get("y")).intValue(), ((Number) map.get("width")).intValue(), ((Number) map.get("height")).intValue());
    }

    public final Text Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Map<?, ?> map) {
        Paint.Align Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConvertUtilsKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map.get("textAlign"));
        return new Text((String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map.get("text")), ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map.get("x"))).intValue(), ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map.get("y"))).intValue(), ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map.get("size"))).intValue(), ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map.get("r"))).intValue(), ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map.get("g"))).intValue(), ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map.get(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B))).intValue(), ((Number) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map.get("a"))).intValue(), (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(map.get("fontName")), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    @NotNull
    public final PorterDuff.Mode Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        switch (str.hashCode()) {
            case -1954086600:
                if (str.equals("srcATop")) {
                    return PorterDuff.Mode.SRC_ATOP;
                }
                break;
            case -1953637160:
                if (str.equals("srcOver")) {
                    return PorterDuff.Mode.SRC_OVER;
                }
                break;
            case -1338968417:
                if (str.equals("darken")) {
                    return PorterDuff.Mode.DARKEN;
                }
                break;
            case -1322311863:
                if (str.equals("dstOut")) {
                    return PorterDuff.Mode.DST_OUT;
                }
                break;
            case -1091287984:
                if (str.equals("overlay")) {
                    return PorterDuff.Mode.OVERLAY;
                }
                break;
            case -907689876:
                if (str.equals("screen")) {
                    return PorterDuff.Mode.SCREEN;
                }
                break;
            case -894304566:
                if (str.equals("srcOut")) {
                    return PorterDuff.Mode.SRC_OUT;
                }
                break;
            case 99781:
                if (str.equals("dst")) {
                    return PorterDuff.Mode.DST;
                }
                break;
            case 114148:
                if (str.equals("src")) {
                    return PorterDuff.Mode.SRC;
                }
                break;
            case 118875:
                if (str.equals("xor")) {
                    return PorterDuff.Mode.XOR;
                }
                break;
            case 94746189:
                if (str.equals("clear")) {
                    return PorterDuff.Mode.CLEAR;
                }
                break;
            case 95891914:
                if (str.equals("dstIn")) {
                    return PorterDuff.Mode.DST_IN;
                }
                break;
            case 109698601:
                if (str.equals("srcIn")) {
                    return PorterDuff.Mode.SRC_IN;
                }
                break;
            case 170546239:
                if (str.equals("lighten")) {
                    return PorterDuff.Mode.LIGHTEN;
                }
                break;
            case 653829668:
                if (str.equals("multiply")) {
                    return PorterDuff.Mode.MULTIPLY;
                }
                break;
            case 1957556377:
                if (str.equals("dstATop")) {
                    return PorterDuff.Mode.DST_ATOP;
                }
                break;
            case 1958005817:
                if (str.equals("dstOver")) {
                    return PorterDuff.Mode.DST_OVER;
                }
                break;
        }
        return PorterDuff.Mode.SRC_OVER;
    }

    @NotNull
    public final List<Option> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<? extends Object> list, @NotNull BitmapWrapper bitmapWrapper) {
        ArrayList arrayList = new ArrayList();
        if (bitmapWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != 0) {
            arrayList.add(new RotateOption(bitmapWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        }
        if (!bitmapWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            arrayList.add(bitmapWrapper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        for (Object obj : list) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                Object obj2 = map.get("value");
                if (obj2 instanceof Map) {
                    Object obj3 = map.get("type");
                    if (Intrinsics.areEqual(obj3, "flip")) {
                        arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwww(obj2));
                    } else if (Intrinsics.areEqual(obj3, "clip")) {
                        arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj2));
                    } else if (Intrinsics.areEqual(obj3, "rotate")) {
                        arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwww(obj2));
                    } else if (Intrinsics.areEqual(obj3, "color")) {
                        arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj2));
                    } else if (Intrinsics.areEqual(obj3, "scale")) {
                        ScaleOption Wwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwww(obj2);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                    } else if (Intrinsics.areEqual(obj3, "add_text")) {
                        AddTextOpt Wwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwww(obj2);
                        if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                    } else if (Intrinsics.areEqual(obj3, "mix_image")) {
                        arrayList.add(new MixImageOpt((Map) obj2));
                    } else if (Intrinsics.areEqual(obj3, "draw")) {
                        arrayList.add(new DrawOption((Map) obj2));
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Object obj) {
        return obj;
    }
}
