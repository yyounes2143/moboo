package com.tencent.vod.flutter.tools;

import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.vod.flutter.messages.FtxMessages;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXCommonUtil {
    private static final Map<String, Object> CACHE_MAP = new HashMap();
    static final Map<Integer, Integer> DOWNLOAD_STATE_MAP = new HashMap<Integer, Integer>() { // from class: com.tencent.vod.flutter.tools.TXCommonUtil.1
        {
            put(0, 301);
            put(1, 302);
            put(4, 304);
            put(2, 303);
            put(3, 305);
        }
    };
    private static final String KEY_IS_MIUI = "is_miui";
    private static final String KEY_MAX_BRIGHTNESS = "max_brightness";
    private static final String TAG = "TXCommonUtil";

    public static FtxMessages.BoolMsg boolMsgWith(Boolean bool) {
        FtxMessages.BoolMsg boolMsg = new FtxMessages.BoolMsg();
        boolMsg.setValue(bool);
        return boolMsg;
    }

    public static FtxMessages.DoubleMsg doubleMsgWith(Double d) {
        FtxMessages.DoubleMsg doubleMsg = new FtxMessages.DoubleMsg();
        doubleMsg.setValue(d);
        return doubleMsg;
    }

    public static float getBrightnessMax() {
        Map<String, Object> map = CACHE_MAP;
        if (map.containsKey(KEY_MAX_BRIGHTNESS)) {
            return ((Float) map.get(KEY_MAX_BRIGHTNESS)).floatValue();
        }
        float f = 255.0f;
        try {
            Resources system = Resources.getSystem();
            int identifier = system.getIdentifier("config_screenBrightnessSettingMaximum", TypedValues.Custom.S_INT, "android");
            if (identifier != 0) {
                f = system.getInteger(identifier);
            }
        } catch (Exception e) {
            LiteavLog.e(TAG, "getBrightnessMax error", e);
        }
        if (isMIUI() && Build.VERSION.SDK_INT >= 33) {
            f = 128.0f;
        }
        CACHE_MAP.put(KEY_MAX_BRIGHTNESS, Float.valueOf(f));
        return f;
    }

    public static int getDownloadEventByState(int i) {
        Integer num = DOWNLOAD_STATE_MAP.get(Integer.valueOf(i));
        if (num != null) {
            return num.intValue();
        }
        return 305;
    }

    public static Map<String, Object> getParams(int i, Bundle bundle) {
        HashMap hashMap = new HashMap();
        if (i != 0) {
            hashMap.put("event", Integer.valueOf(i));
        }
        if (bundle != null && !bundle.isEmpty()) {
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj != null) {
                    hashMap.put(str, obj);
                }
            }
        }
        return hashMap;
    }

    public static FtxMessages.IntMsg intMsgWith(Long l) {
        FtxMessages.IntMsg intMsg = new FtxMessages.IntMsg();
        intMsg.setValue(l);
        return intMsg;
    }

    public static boolean isBlankStr(String str) {
        if (str == null) {
            return false;
        }
        return str.trim().isEmpty();
    }

    public static boolean isMIUI() {
        Map<String, Object> map = CACHE_MAP;
        if (map.containsKey(KEY_IS_MIUI)) {
            return ((Boolean) map.get(KEY_IS_MIUI)).booleanValue();
        }
        boolean equals = TextUtils.equals(Build.MANUFACTURER, "Xiaomi");
        map.put(KEY_IS_MIUI, Boolean.valueOf(equals));
        return equals;
    }

    public static FtxMessages.ListMsg listMsgWith(List<Object> list) {
        FtxMessages.ListMsg listMsg = new FtxMessages.ListMsg();
        listMsg.setValue(list);
        return listMsg;
    }

    public static FtxMessages.PlayerMsg playerMsgWith(Long l) {
        FtxMessages.PlayerMsg playerMsg = new FtxMessages.PlayerMsg();
        playerMsg.setPlayerId(l);
        return playerMsg;
    }

    public static FtxMessages.StringMsg stringMsgWith(String str) {
        FtxMessages.StringMsg stringMsg = new FtxMessages.StringMsg();
        stringMsg.setValue(str);
        return stringMsg;
    }

    public static Map<String, Object> transToMap(Bundle bundle) {
        HashMap hashMap = new HashMap();
        if (bundle != null && !bundle.isEmpty()) {
            for (String str : bundle.keySet()) {
                hashMap.put(str, bundle.get(str));
            }
        }
        return hashMap;
    }

    public static FtxMessages.UInt8ListMsg uInt8ListMsg(byte[] bArr) {
        FtxMessages.UInt8ListMsg uInt8ListMsg = new FtxMessages.UInt8ListMsg();
        uInt8ListMsg.setValue(bArr);
        return uInt8ListMsg;
    }
}
