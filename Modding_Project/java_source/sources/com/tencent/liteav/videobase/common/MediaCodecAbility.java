package com.tencent.liteav.videobase.common;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.util.Range;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
/* compiled from: Proguard */
@JNINamespace("liteav::video")
/* loaded from: classes6.dex */
public class MediaCodecAbility {
    private static final String TAG = "MediaCodecAbility";

    public static int getMediaCodecDecoderSupportLowResolution() {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        if (LiteavSystemInfo.getSystemOSVersionInt() < 21) {
            return 0;
        }
        try {
            MediaCodecInfo.CodecCapabilities capabilitiesForType = MediaCodec.createDecoderByType("video/avc").getCodecInfo().getCapabilitiesForType("video/avc");
            if (capabilitiesForType == null || (videoCapabilities = capabilitiesForType.getVideoCapabilities()) == null) {
                return 0;
            }
            Range<Integer> supportedWidths = videoCapabilities.getSupportedWidths();
            Range<Integer> supportedHeights = videoCapabilities.getSupportedHeights();
            if (supportedWidths != null && supportedHeights != null) {
                return Math.max(supportedWidths.getLower().intValue(), supportedHeights.getLower().intValue());
            }
            return 0;
        } catch (Throwable th) {
            LiteavLog.e(TAG, "get low resolution error:".concat(String.valueOf(th)));
            return 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
        com.tencent.liteav.base.util.LiteavLog.i(com.tencent.liteav.videobase.common.MediaCodecAbility.TAG, "got hevc decoder:%s", r7.getName());
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x004b, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isDecoderSupportHevc() {
        /*
            r0 = 1
            java.lang.String r1 = "MediaCodecAbility"
            int r2 = com.tencent.liteav.base.system.LiteavSystemInfo.getSystemOSVersionInt()
            r3 = 21
            r4 = 0
            if (r2 >= r3) goto Ld
            return r4
        Ld:
            android.media.MediaCodecList r2 = new android.media.MediaCodecList     // Catch: java.lang.Throwable -> L4e
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L4e
            android.media.MediaCodecInfo[] r2 = r2.getCodecInfos()     // Catch: java.lang.Throwable -> L4e
            int r3 = r2.length     // Catch: java.lang.Throwable -> L4e
            r5 = r4
            r6 = r5
        L19:
            if (r5 >= r3) goto L4d
            r7 = r2[r5]     // Catch: java.lang.Throwable -> L48
            java.lang.String[] r8 = r7.getSupportedTypes()     // Catch: java.lang.Throwable -> L48
            boolean r9 = r7.isEncoder()     // Catch: java.lang.Throwable -> L48
            if (r9 != 0) goto L4b
            int r9 = r8.length     // Catch: java.lang.Throwable -> L48
            r10 = r4
        L29:
            if (r10 >= r9) goto L4b
            r11 = r8[r10]     // Catch: java.lang.Throwable -> L48
            java.lang.String r12 = "video/hevc"
            boolean r11 = r11.contains(r12)     // Catch: java.lang.Throwable -> L48
            if (r11 == 0) goto L46
            java.lang.String r6 = "got hevc decoder:%s"
            java.lang.String r7 = r7.getName()     // Catch: java.lang.Throwable -> L44
            java.lang.Object[] r8 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L44
            r8[r4] = r7     // Catch: java.lang.Throwable -> L44
            com.tencent.liteav.base.util.LiteavLog.i(r1, r6, r8)     // Catch: java.lang.Throwable -> L44
            r6 = r0
            goto L4b
        L44:
            r2 = move-exception
            goto L50
        L46:
            int r10 = r10 + r0
            goto L29
        L48:
            r2 = move-exception
            r0 = r6
            goto L50
        L4b:
            int r5 = r5 + r0
            goto L19
        L4d:
            return r6
        L4e:
            r2 = move-exception
            r0 = r4
        L50:
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r3 = "get hevc decode error:"
            java.lang.String r2 = r3.concat(r2)
            com.tencent.liteav.base.util.LiteavLog.e(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.videobase.common.MediaCodecAbility.isDecoderSupportHevc():boolean");
    }

    public static boolean isEncoderSupportHevc() {
        MediaCodecInfo[] codecInfos;
        if (LiteavSystemInfo.getSystemOSVersionInt() < 21) {
            return false;
        }
        try {
            for (MediaCodecInfo mediaCodecInfo : new MediaCodecList(1).getCodecInfos()) {
                if (mediaCodecInfo.isEncoder()) {
                    for (String str : mediaCodecInfo.getSupportedTypes()) {
                        if (str.contains("video/hevc")) {
                            LiteavLog.i(TAG, "get hevc encoder");
                            return true;
                        }
                    }
                    continue;
                }
            }
        } catch (Throwable th) {
            LiteavLog.w(TAG, "failed to get hevc encoder:".concat(String.valueOf(th)));
        }
        LiteavLog.w(TAG, "not got hevc encoder");
        return false;
    }

    public static boolean isMediaCodecDecodeSupportSWHevc() {
        MediaCodecInfo[] codecInfos;
        if (LiteavSystemInfo.getSystemOSVersionInt() < 21) {
            return false;
        }
        try {
            for (MediaCodecInfo mediaCodecInfo : new MediaCodecList(0).getCodecInfos()) {
                String[] supportedTypes = mediaCodecInfo.getSupportedTypes();
                if (!mediaCodecInfo.isEncoder()) {
                    for (String str : supportedTypes) {
                        if (str.contains("video/hevc") && isSoftOnlyDecoder(mediaCodecInfo)) {
                            LiteavLog.i(TAG, "got soft only hevc decoder:%s", mediaCodecInfo.getName());
                            return true;
                        }
                    }
                    continue;
                }
            }
        } catch (Throwable th) {
            LiteavLog.e(TAG, "get hevc decode error:".concat(String.valueOf(th)));
        }
        return false;
    }

    public static boolean isSoftOnlyDecoder(MediaCodecInfo mediaCodecInfo) {
        boolean isSoftwareOnly;
        if (LiteavSystemInfo.getSystemOSVersionInt() > 29) {
            isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
            return isSoftwareOnly;
        } else if (!mediaCodecInfo.getName().contains("android") && !mediaCodecInfo.getName().contains(AndroidStaticDeviceInfoDataSource.STORE_GOOGLE)) {
            return false;
        } else {
            return true;
        }
    }
}
