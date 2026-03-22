package com.tencent.thumbplayer.tcmedia.core.common;

import android.content.Context;
import com.tencent.thumbplayer.tcmedia.core.common.TPCodecCapability;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class TPThumbplayerCapabilityHelper {
    public static boolean addACodecBlacklist(int i, int i2, TPCodecCapability.TPACodecPropertyRange tPACodecPropertyRange) {
        return TPPlayerDecoderCapability.addACodecBlacklist(i, i2, tPACodecPropertyRange);
    }

    public static boolean addACodecWhitelist(int i, int i2, TPCodecCapability.TPACodecPropertyRange tPACodecPropertyRange) {
        return TPPlayerDecoderCapability.addACodecWhitelist(i, i2, tPACodecPropertyRange);
    }

    public static boolean addDRMLevel1Blacklist(int i) {
        return TPPlayerDecoderCapability.addDRMLevel1Blacklist(i);
    }

    public static boolean addHDRBlackList(int i, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        return TPPlayerDecoderCapability.addHDRBlackList(i, tPHdrSupportVersionRange);
    }

    public static boolean addHDRVideoDecoderTypeWhiteList(int i, int i2, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        return TPPlayerDecoderCapability.addHDRVideoDecoderTypeWhiteList(i, i2, tPHdrSupportVersionRange);
    }

    public static boolean addHDRWhiteList(int i, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        return TPPlayerDecoderCapability.addHDRWhiteList(i, tPHdrSupportVersionRange);
    }

    public static boolean addVCodecBlacklist(int i, int i2, TPCodecCapability.TPVCodecPropertyRange tPVCodecPropertyRange) {
        return TPPlayerDecoderCapability.addVCodecBlacklist(i, i2, tPVCodecPropertyRange);
    }

    public static boolean addVCodecWhitelist(int i, int i2, TPCodecCapability.TPVCodecPropertyRange tPVCodecPropertyRange) {
        return TPPlayerDecoderCapability.addVCodecWhitelist(i, i2, tPVCodecPropertyRange);
    }

    public static int[] getDRMCapabilities() {
        return TPDrm.getDRMCapabilities();
    }

    public static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getVCodecDecoderMaxCapabilityMap(int i) {
        return TPPlayerDecoderCapability.getVCodecDecoderMaxCapabilityMap(i);
    }

    public static TPCodecCapability.TPCodecMaxCapability getVCodecMaxCapability(int i) {
        TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability;
        TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability2;
        TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability3 = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> vCodecDecoderMaxCapabilityMap = TPPlayerDecoderCapability.getVCodecDecoderMaxCapabilityMap(102);
        HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> vCodecDecoderMaxCapabilityMap2 = TPPlayerDecoderCapability.getVCodecDecoderMaxCapabilityMap(101);
        if (vCodecDecoderMaxCapabilityMap != null && (tPCodecMaxCapability2 = vCodecDecoderMaxCapabilityMap.get(Integer.valueOf(i))) != null) {
            tPCodecMaxCapability3 = tPCodecMaxCapability2;
        }
        if (vCodecDecoderMaxCapabilityMap2 != null && (tPCodecMaxCapability = vCodecDecoderMaxCapabilityMap2.get(Integer.valueOf(i))) != null && tPCodecMaxCapability.maxLumaSamples > tPCodecMaxCapability3.maxLumaSamples) {
            return tPCodecMaxCapability;
        }
        return tPCodecMaxCapability3;
    }

    public static synchronized void init(Context context, boolean z) {
        synchronized (TPThumbplayerCapabilityHelper.class) {
            TPPlayerDecoderCapability.init(context, z);
        }
    }

    public static boolean isACodecCapabilityCanSupport(int i, int i2, int i3, int i4, int i5, int i6) {
        if (isACodecCapabilitySupport(1, i, i2, i3, i4, i5, i6)) {
            return true;
        }
        return isACodecCapabilitySupport(102, i, i2, i3, i4, i5, i6);
    }

    public static boolean isACodecCapabilitySupport(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return TPPlayerDecoderCapability.isACodecCapabilitySupport(i, i2, i3, i4, i5, i6, i7);
    }

    public static boolean isDDPlusSupported() {
        return TPPlayerDecoderCapability.isDDPlusSupported();
    }

    public static boolean isDDSupported() {
        return TPPlayerDecoderCapability.isDDPlusSupported();
    }

    public static boolean isDRMsupport(int i) {
        int[] dRMCapabilities = getDRMCapabilities();
        if (dRMCapabilities.length == 0) {
            return false;
        }
        for (int i2 : dRMCapabilities) {
            if (i == i2) {
                return true;
            }
        }
        return false;
    }

    public static boolean isDolbyDSSupported() {
        return TPPlayerDecoderCapability.isDolbyDSSupported();
    }

    public static boolean isFeatureSupport(int i) {
        return TPFeatureCapability.isFeatureSupport(i);
    }

    public static boolean isHDRsupport(int i, int i2, int i3) {
        return TPPlayerDecoderCapability.isHDRsupport(i, i2, i3);
    }

    public static boolean isSupportMediaCodecRotateInternal() {
        return true;
    }

    public static boolean isSupportNativeMediaCodec() {
        return true;
    }

    public static boolean isSupportSetOutputSurfaceApi() {
        return true;
    }

    @Deprecated
    public static boolean isVCodecCapabilityCanSupport(int i, int i2, int i3, int i4, int i5) {
        return isVCodecCapabilityCanSupport(i, i2, i3, i4, i5, 30);
    }

    @Deprecated
    public static boolean isVCodecCapabilitySupport(int i, int i2, int i3, int i4, int i5, int i6) {
        return isVCodecCapabilitySupport(i, i2, i3, i4, i5, i6, 30);
    }

    public static void setMediaCodecPreferredSoftwareComponent(boolean z) {
        TPPlayerDecoderCapability.setMediaCodecPreferredSoftwareComponent(z);
    }

    public static boolean isVCodecCapabilityCanSupport(int i, int i2, int i3, int i4, int i5, int i6) {
        if (isVCodecCapabilitySupport(101, i, i2, i3, i4, i5, i6)) {
            return true;
        }
        return isVCodecCapabilitySupport(102, i, i2, i3, i4, i5, i6);
    }

    public static boolean isVCodecCapabilitySupport(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        return TPPlayerDecoderCapability.isVCodecCapabilitySupport(i, i2, i3, i4, i5, i6, i7);
    }
}
