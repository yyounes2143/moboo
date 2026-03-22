package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes5.dex */
public final class TonalPalette {
    Map<Integer, Integer> cache = new HashMap();
    double chroma;
    double hue;

    private TonalPalette(double d, double d2) {
        this.hue = d;
        this.chroma = d2;
    }

    public static final TonalPalette fromHueAndChroma(double d, double d2) {
        return new TonalPalette(d, d2);
    }

    public static final TonalPalette fromInt(int i) {
        Hct fromInt = Hct.fromInt(i);
        return fromHueAndChroma(fromInt.getHue(), fromInt.getChroma());
    }

    public int tone(int i) {
        Integer num = this.cache.get(Integer.valueOf(i));
        if (num == null) {
            num = Integer.valueOf(Hct.from(this.hue, this.chroma, i).toInt());
            this.cache.put(Integer.valueOf(i), num);
        }
        return num.intValue();
    }
}
