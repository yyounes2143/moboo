package com.tencent.thumbplayer.tcmedia.adapter.strategy.utils;

import com.tencent.thumbplayer.tcmedia.adapter.b;
import com.tencent.thumbplayer.tcmedia.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLibraryException;
import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLibraryLoader;
import com.tencent.thumbplayer.tcmedia.core.common.TPThumbplayerCapabilityHelper;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
/* loaded from: classes6.dex */
public class TPStrategyUtils {
    private static final String TAG = "TPStrategyUtils";

    public static boolean enablePlayBySystemPlayer(b bVar) {
        if (bVar.n() == 0) {
            return true;
        }
        return isSupportMediaCodec(bVar);
    }

    public static boolean enablePlayByThumbPlayer(b bVar) {
        if (bVar == null || bVar.n() == 0 || isSupportFFmpegCodec(bVar) || isSupportMediaCodec(bVar)) {
            return true;
        }
        return false;
    }

    public static boolean isSupportFFmpegCodec(b bVar) {
        try {
            return TPThumbplayerCapabilityHelper.isVCodecCapabilitySupport(101, TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapCodecType.class, bVar.n()), (int) bVar.a(), (int) bVar.b(), bVar.e(), bVar.h());
        } catch (TPNativeLibraryException e) {
            TPLogUtil.e(TAG, e);
            return false;
        }
    }

    public static boolean isSupportMediaCodec(b bVar) {
        try {
            return TPThumbplayerCapabilityHelper.isVCodecCapabilitySupport(102, TPNativeKeyMapUtil.toNativeIntValue(TPNativeKeyMap.MapCodecType.class, bVar.n()), (int) bVar.a(), (int) bVar.b(), bVar.e(), bVar.h());
        } catch (TPNativeLibraryException e) {
            TPLogUtil.e(TAG, e);
            return false;
        }
    }

    public static boolean isSystemPlayerEnable() {
        return true;
    }

    public static boolean isTVPlatform() {
        return false;
    }

    public static boolean isThumbPlayerEnable() {
        return TPNativeLibraryLoader.isLibLoadedAndTryToLoad();
    }
}
