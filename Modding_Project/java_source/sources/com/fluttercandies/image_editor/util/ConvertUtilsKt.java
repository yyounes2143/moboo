package com.fluttercandies.image_editor.util;

import android.graphics.Paint;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"", "Landroid/graphics/Paint$Align;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;)Landroid/graphics/Paint$Align;", "image_editor_common_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ConvertUtilsKt {
    public static final Paint.Align Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (Intrinsics.areEqual(obj, "left")) {
            return Paint.Align.LEFT;
        }
        if (Intrinsics.areEqual(obj, "center")) {
            return Paint.Align.CENTER;
        }
        if (Intrinsics.areEqual(obj, "right")) {
            return Paint.Align.RIGHT;
        }
        return Paint.Align.LEFT;
    }
}
