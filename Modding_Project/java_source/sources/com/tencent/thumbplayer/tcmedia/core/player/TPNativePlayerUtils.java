package com.tencent.thumbplayer.tcmedia.core.player;

import android.view.Surface;
import java.util.Map;
/* loaded from: classes6.dex */
public class TPNativePlayerUtils {
    public static boolean isTPNativePlayerSurface(Surface surface) {
        return surface instanceof TPNativePlayerSurface;
    }

    public static String[] tpMapStringToStringArray(Map<String, String> map) {
        int i = 0;
        if (map != null && !map.isEmpty()) {
            String[] strArr = new String[map.size() * 2];
            for (String str : map.keySet()) {
                int i2 = i * 2;
                strArr[i2] = str;
                strArr[i2 + 1] = map.get(str);
                i++;
            }
            return strArr;
        }
        return new String[0];
    }
}
