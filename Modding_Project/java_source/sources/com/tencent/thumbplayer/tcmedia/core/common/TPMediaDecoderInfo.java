package com.tencent.thumbplayer.tcmedia.core.common;

import android.media.MediaCodecInfo;
import android.util.Range;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes6.dex */
public final class TPMediaDecoderInfo implements Serializable {
    private static final int DEFAULT_MAX_BITRATE = 960000;
    private static final int DEFAULT_MAX_CHANNELNUM = 2;
    private static final int DEFAULT_MAX_HEIGHT = 720;
    private static final int DEFAULT_MAX_SAMPLERATE = 48000;
    private static final int DEFAULT_MAX_WIDTH = 1280;
    private static final int DEFAULT_MIN_BITRATE = 8000;
    private static final String TAG = "TPCodecUtils";
    private static final ArrayList<String> mAudioDecoderWhiteList;
    private static final ArrayList<String> mVideoSoftwareDecoderWhiteList;
    private boolean adaptiveDec;
    private int[] colorFormats;
    private String decMimeType;
    private String decName;
    private int maxBitRate;
    private int maxChannels;
    private int maxFrameRate;
    private int maxHeight;
    private int maxLumaFrameRate;
    private int maxLumaHeight;
    private int maxLumaWidth;
    private int maxSampleRate;
    private int maxSupportedInstances;
    private int maxWidth;
    private DecoderProfileLevel[] profileLevels;
    private boolean secureDec;
    private boolean softwareAudioDec;
    private boolean softwareVideoDec;
    private boolean tunnelingDec;

    /* loaded from: classes6.dex */
    public final class DecoderProfileLevel implements Serializable {
        public int level;
        public int profile;

        public DecoderProfileLevel(int i, int i2) {
            this.profile = i;
            this.level = i2;
        }
    }

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        mVideoSoftwareDecoderWhiteList = arrayList;
        arrayList.add("c2.android.vp9.decoder");
        arrayList.add("OMX.google.vp9.decoder");
        arrayList.add("c2.android.vp8.decoder");
        arrayList.add("OMX.google.vp8.decoder");
        arrayList.add("c2.android.av1.decoder");
        mAudioDecoderWhiteList = new ArrayList<>();
    }

    public TPMediaDecoderInfo(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        MediaCodecInfo.AudioCapabilities audioCapabilities;
        int[] iArr;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr2;
        reset();
        this.decName = str2;
        this.decMimeType = str;
        boolean z5 = true;
        if (isVideo() && isVideoSoftwareOnly(str2)) {
            z = true;
        } else {
            z = false;
        }
        this.softwareVideoDec = z;
        if (isAudio() && isAudioSoftwareOnly(str2)) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.softwareAudioDec = z2;
        if (codecCapabilities != null && isAdaptive(codecCapabilities)) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.adaptiveDec = z3;
        if (codecCapabilities != null && isTunneling(codecCapabilities)) {
            z4 = true;
        } else {
            z4 = false;
        }
        this.tunnelingDec = z4;
        this.secureDec = (codecCapabilities == null || !isSecure(codecCapabilities)) ? false : z5;
        if (codecCapabilities != null && (codecProfileLevelArr = codecCapabilities.profileLevels) != null && codecProfileLevelArr.length > 0) {
            ArrayList arrayList = new ArrayList();
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecCapabilities.profileLevels) {
                arrayList.add(new DecoderProfileLevel(codecProfileLevel.profile, codecProfileLevel.level));
            }
            this.profileLevels = (DecoderProfileLevel[]) arrayList.toArray(new DecoderProfileLevel[arrayList.size()]);
        } else {
            this.profileLevels = new DecoderProfileLevel[0];
        }
        if (codecCapabilities != null && (iArr = codecCapabilities.colorFormats) != null && iArr.length > 0) {
            this.colorFormats = Arrays.copyOf(iArr, iArr.length);
        } else {
            this.colorFormats = new int[0];
        }
        this.maxSupportedInstances = getMaxSupportedInstances(codecCapabilities);
        if (str.contains("video") && codecCapabilities != null) {
            MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
            if (videoCapabilities != null) {
                this.maxWidth = getMaxWidth(videoCapabilities);
                this.maxHeight = getMaxHeight(videoCapabilities);
                this.maxLumaFrameRate = getMaxSupportedFrameRate(videoCapabilities);
                this.maxFrameRate = videoCapabilities.getSupportedFrameRates().getUpper().intValue();
            }
        } else if (str.contains("audio") && codecCapabilities != null && (audioCapabilities = codecCapabilities.getAudioCapabilities()) != null) {
            this.maxSampleRate = getMaxSampleRate(audioCapabilities);
            this.maxBitRate = getMaxBitRate(audioCapabilities);
            this.maxChannels = getMaxChannels(audioCapabilities);
        }
    }

    private int getMaxBitRate(MediaCodecInfo.AudioCapabilities audioCapabilities) {
        Range<Integer> range;
        if (audioCapabilities != null) {
            range = audioCapabilities.getBitrateRange();
        } else {
            range = new Range<>(8000, Integer.valueOf((int) DEFAULT_MAX_BITRATE));
        }
        return range.getUpper().intValue();
    }

    private int getMaxChannels(MediaCodecInfo.AudioCapabilities audioCapabilities) {
        if (audioCapabilities != null) {
            return audioCapabilities.getMaxInputChannelCount();
        }
        return 2;
    }

    private int getMaxHeight(MediaCodecInfo.VideoCapabilities videoCapabilities) {
        Range<Integer> range;
        if (videoCapabilities != null) {
            range = videoCapabilities.getSupportedHeights();
        } else {
            range = new Range<>(0, 720);
        }
        return range.getUpper().intValue();
    }

    private int getMaxSampleRate(MediaCodecInfo.AudioCapabilities audioCapabilities) {
        Range<Integer>[] rangeArr;
        if (audioCapabilities != null) {
            rangeArr = audioCapabilities.getSupportedSampleRateRanges();
        } else {
            rangeArr = null;
        }
        if (rangeArr != null && rangeArr.length > 0) {
            return rangeArr[rangeArr.length - 1].getUpper().intValue();
        }
        return 48000;
    }

    private final int getMaxSupportedFrameRate(MediaCodecInfo.VideoCapabilities videoCapabilities) {
        if (videoCapabilities == null) {
            return 30;
        }
        this.maxLumaWidth = videoCapabilities.getSupportedWidthsFor(this.maxHeight).getUpper().intValue();
        int intValue = videoCapabilities.getSupportedHeightsFor(this.maxWidth).getUpper().intValue();
        this.maxLumaHeight = intValue;
        return videoCapabilities.getSupportedFrameRatesFor(this.maxWidth, intValue).getUpper().intValue();
    }

    private int getMaxWidth(MediaCodecInfo.VideoCapabilities videoCapabilities) {
        Range<Integer> range;
        if (videoCapabilities != null) {
            range = videoCapabilities.getSupportedWidths();
        } else {
            range = new Range<>(0, 1280);
        }
        return range.getUpper().intValue();
    }

    private boolean isAdaptive(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (codecCapabilities.isFeatureSupported("adaptive-playback")) {
            return true;
        }
        return false;
    }

    private boolean isAudioSoftwareOnly(String str) {
        String lowerCase;
        if (str == null) {
            lowerCase = "";
        } else {
            lowerCase = str.toLowerCase();
        }
        if (!lowerCase.startsWith("omx.google.") && !lowerCase.startsWith("c2.android.") && !lowerCase.startsWith("c2.google.")) {
            return false;
        }
        return true;
    }

    private boolean isSecure(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (codecCapabilities.isFeatureSupported("secure-playback")) {
            return true;
        }
        return false;
    }

    private boolean isTunneling(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (codecCapabilities.isFeatureSupported("tunneled-playback")) {
            return true;
        }
        return false;
    }

    private boolean isVideoSoftwareOnly(String str) {
        String lowerCase;
        if (str == null) {
            lowerCase = "";
        } else {
            lowerCase = str.toLowerCase();
        }
        if (!lowerCase.startsWith("omx.google.") && !lowerCase.startsWith("omx.ffmpeg.")) {
            if ((!lowerCase.startsWith("omx.sec.") || !lowerCase.contains(".sw.")) && !lowerCase.equals("omx.qcom.video.decoder.hevcswvdec")) {
                if ((!lowerCase.startsWith("omx.qti.video.decoder") || !lowerCase.contains("sw")) && !lowerCase.startsWith("c2.android.") && !lowerCase.startsWith("c2.google.")) {
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    private void reset() {
        this.decName = "";
        this.decMimeType = "";
        this.softwareVideoDec = false;
        this.adaptiveDec = false;
        this.tunnelingDec = false;
        this.secureDec = false;
        this.profileLevels = null;
        this.colorFormats = null;
        this.maxSupportedInstances = 0;
        this.maxLumaFrameRate = 30;
        this.maxFrameRate = 30;
        this.maxWidth = 1280;
        this.maxHeight = 720;
        this.maxLumaWidth = 1280;
        this.maxLumaHeight = 720;
        this.maxSampleRate = 48000;
        this.maxBitRate = DEFAULT_MAX_BITRATE;
        this.maxChannels = 2;
    }

    public final int[] getColorFormats() {
        return this.colorFormats;
    }

    public final int getDecoderLumaHeight() {
        return this.maxLumaHeight;
    }

    public final int getDecoderLumaWidth() {
        return this.maxLumaWidth;
    }

    public final int getDecoderMaxFrameRate() {
        return this.maxFrameRate;
    }

    public final int getDecoderMaxFrameRateForMaxLuma() {
        return this.maxLumaFrameRate;
    }

    public final int getDecoderMaxHeight() {
        return this.maxHeight;
    }

    public final int getDecoderMaxWidth() {
        return this.maxWidth;
    }

    public final String getDecoderMimeType() {
        return this.decMimeType;
    }

    public final String getDecoderName() {
        return this.decName;
    }

    public final int getMaxAudioBitRate() {
        return this.maxBitRate;
    }

    public final int getMaxAudioChannels() {
        return this.maxChannels;
    }

    public final int getMaxAudioSampleRate() {
        return this.maxSampleRate;
    }

    public final DecoderProfileLevel getMaxProfileLevel() {
        DecoderProfileLevel[] decoderProfileLevelArr;
        DecoderProfileLevel decoderProfileLevel = new DecoderProfileLevel(0, 0);
        int i = 0;
        for (DecoderProfileLevel decoderProfileLevel2 : this.profileLevels) {
            int i2 = decoderProfileLevel2.level;
            if (i2 >= i) {
                decoderProfileLevel = decoderProfileLevel2;
                i = i2;
            }
        }
        return decoderProfileLevel;
    }

    public final int getMaxSupportedInstances() {
        return this.maxSupportedInstances;
    }

    public final DecoderProfileLevel[] getProfileLevels() {
        return this.profileLevels;
    }

    public final boolean isAudio() {
        String str = this.decMimeType;
        if (str == null) {
            return false;
        }
        return str.startsWith("audio/");
    }

    public final boolean isAudioSofwareDecoder() {
        return this.softwareAudioDec;
    }

    public final boolean isSecureDecoder() {
        return this.secureDec;
    }

    public final boolean isValidDecoder() {
        if (isVideo()) {
            if (!this.softwareVideoDec || mVideoSoftwareDecoderWhiteList.contains(this.decName)) {
                return true;
            }
            return false;
        } else if (!isAudio()) {
            return false;
        } else {
            if (this.softwareAudioDec || mAudioDecoderWhiteList.contains(this.decName)) {
                return true;
            }
            return false;
        }
    }

    public final boolean isVideo() {
        String str = this.decMimeType;
        if (str == null) {
            return false;
        }
        return str.startsWith("video/");
    }

    public final boolean isVideoSofwareDecoder() {
        return this.softwareVideoDec;
    }

    private int getMaxSupportedInstances(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (codecCapabilities != null) {
            return codecCapabilities.getMaxSupportedInstances();
        }
        return 1;
    }
}
