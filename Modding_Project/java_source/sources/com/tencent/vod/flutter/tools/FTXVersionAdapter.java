package com.tencent.vod.flutter.tools;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.rtmp.TXVodPlayConfig;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXVersionAdapter {
    private static final String TAG = "FTXVersionAdapter";

    public static void enableCustomSubtitle(TXVodPlayConfig tXVodPlayConfig, int i) {
        if (tXVodPlayConfig == null) {
            tXVodPlayConfig = new TXVodPlayConfig();
        }
        Map<String, Object> safeGetExtInfo = safeGetExtInfo(tXVodPlayConfig);
        String vodKeyValue = getVodKeyValue("PLAYER_OPTION_KEY_SUBTITLE_OUTPUT_TYPE");
        if (vodKeyValue != null) {
            safeGetExtInfo.put(vodKeyValue, Integer.valueOf(i));
            tXVodPlayConfig.setExtInfo(safeGetExtInfo);
        }
    }

    public static void enableDrmLevel3(TXVodPlayConfig tXVodPlayConfig, boolean z) {
        if (tXVodPlayConfig == null) {
            tXVodPlayConfig = new TXVodPlayConfig();
        }
        Map<String, Object> safeGetExtInfo = safeGetExtInfo(tXVodPlayConfig);
        String vodKeyValue = getVodKeyValue("VOD_USE_DRM_L3");
        if (vodKeyValue != null) {
            safeGetExtInfo.put(vodKeyValue, Boolean.valueOf(z));
            tXVodPlayConfig.setExtInfo(safeGetExtInfo);
        }
    }

    public static String getVodKeyValue(String str) {
        try {
            Field declaredField = TXVodConstants.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            return (String) declaredField.get(null);
        } catch (IllegalAccessException | NoSuchFieldException e) {
            LiteavLog.e(TAG, "vod key obtain failed, maybe version is too low", e);
            return null;
        }
    }

    private static Map<String, Object> safeGetExtInfo(TXVodPlayConfig tXVodPlayConfig) {
        Map<String, Object> extInfoMap = tXVodPlayConfig.getExtInfoMap();
        if (extInfoMap == null) {
            extInfoMap = new HashMap<>();
        }
        return new HashMap(extInfoMap);
    }
}
