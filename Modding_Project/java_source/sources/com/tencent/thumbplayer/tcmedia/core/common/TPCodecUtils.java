package com.tencent.thumbplayer.tcmedia.core.common;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.tencent.thumbplayer.tcmedia.core.common.TPCodecCapability;
import com.tencent.thumbplayer.tcmedia.core.common.TPMediaDecoderInfo;
import com.tencent.thumbplayer.tcmedia.core.thirdparties.LocalCache;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes6.dex */
public class TPCodecUtils {
    public static final int CAP_AUDIO_AAC = 8;
    public static final int CAP_AUDIO_DD = 16;
    public static final int CAP_AUDIO_DDP = 32;
    public static final int CAP_AUDIO_DTS = 128;
    public static final int CAP_AUDIO_FLAC = 64;
    public static final int CAP_VIDEO_AVC = 1;
    public static final int CAP_VIDEO_HEVC = 2;
    public static final int CAP_VIDEO_VP8 = 256;
    public static final int CAP_VIDEO_VP9 = 4;
    public static final int PLAYER_LEVEL_0 = 0;
    public static final int PLAYER_LEVEL_1 = 1;
    public static final int PLAYER_LEVEL_11 = 11;
    public static final int PLAYER_LEVEL_16 = 16;
    public static final int PLAYER_LEVEL_21 = 21;
    public static final int PLAYER_LEVEL_26 = 26;
    public static final int PLAYER_LEVEL_28 = 28;
    public static final int PLAYER_LEVEL_33 = 33;
    public static final int PLAYER_LEVEL_6 = 6;
    public static final int PLAYER_LEVEL_UNKNOWN = -1;
    private static final String TAG = "TPCodecUtils";
    private static final String VVC_SHD_HISI_CPU_NAME = "Kirin9000E";
    private static final String VVC_SHD_MTK_CPU_NAME = "MT6893";
    private static final String VVC_SHD_QUALCOMMN_CPU_NAME = "SM8250";
    private static final String VVC_SHD_SAMSUNG_CPU_NAME = "Exynos2100";
    private static int mAACMaxSupportedBitrate = 510000;
    private static int mAACMaxSupportedChannels = 8;
    private static int mAACMaxSupportedSamplerate = 96000;
    private static TPCodecCapability.TPCodecMaxCapability mAV1SWMaxCapability = null;
    private static TPCodecCapability.TPCodecMaxCapability mAVCSWMaxCapability = null;
    private static TPCodecCapability.TPCodecMaxCapability mAVS3WMaxCapability = null;
    private static int mAvs3DeviceLevel = -1;
    private static HashMap<String, Integer> mCodecCapBlackList = null;
    private static HashMap<String, Integer> mCodecCapWhiteList = null;
    private static Context mContext = null;
    private static int mDDPMaxSupportedBitrate = 6144000;
    private static int mDDPMaxSupportedChannels = 8;
    private static int mDDPMaxSupportedSamplerate = 48000;
    private static int mFLACMaxSupportedBitrate = 21000000;
    private static int mFLACMaxSupportedChannels = 8;
    private static int mFLACMaxSupportedSamplerate = 192000;
    private static TPCodecCapability.TPCodecMaxCapability mHEVCSWMaxCapability = null;
    private static int mHevcDeviceLevel = -1;
    private static boolean mIsFFmpegCapGot = false;
    private static LocalCache mLocalCache = null;
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxACodecHwCapabilityMap = null;
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxACodecSwCapabilityMap = null;
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxVCodecHwCapabilityMap = null;
    private static HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> mMaxVCodecSwCapabilityMap = null;
    private static TPCodecCapability.TPCodecMaxCapability mVP8SWMaxCapability = null;
    private static TPCodecCapability.TPCodecMaxCapability mVP9SWMaxCapability = null;
    private static TPCodecCapability.TPCodecMaxCapability mVVCSWMaxCapability = null;
    private static int mVvcDeviceLevel = -1;
    protected static ArrayList<String> mVMediaCodecCapList = new ArrayList<>();
    protected static ArrayList<String> mAMediaCodecCapList = new ArrayList<>();
    private static ArrayList<String> mVMediaCodecBlackListModel = new ArrayList<>();
    private static ArrayList<String> mAMediaCodecBlackListModel = new ArrayList<>();
    private static ArrayList<String> mAMediaCodecBlackListInstance = new ArrayList<>();
    private static ArrayList<String> mSupportedMediaCodec = new ArrayList<>();
    private static HashMap<Integer, HashMap<String, TPCodecCapability.TPHdrSupportVersionRange>> mHdrWhiteMap = new HashMap<>();
    private static HashMap<Integer, HashMap<String, TPCodecCapability.TPHdrSupportVersionRange>> mHdrBlackMap = new HashMap<>();
    private static HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> mHDRVividSupportVersionMap = new HashMap<>();
    private static HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> mHDRTypeToHDRSoftwareCodecWhiteListMap = new HashMap<>();
    private static HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> mHDRTypeToHDRHardwareCodecWhiteListMap = new HashMap<>();
    private static HashMap<String, String> mAudioMaxCapCodecInstance = new HashMap<>();
    private static ArrayList<String> mWideVineBlackListModel = new ArrayList<>();
    private static HashMap<Integer, ArrayList<String>> mDrmL1BlackList = new HashMap<>();
    private static boolean mIsInitDone = false;
    private static boolean mPreferredSoftwareComponent = false;
    private static int mShdHevcQualcommIndex = 32;
    private static int mHdHevcQualcommIndex = 20;
    private static int mShdHevcMtkIndex = 12;
    private static int mHdHevcMtkIndex = 8;
    private static int mShdHevcHisiIndex = 8;
    private static int mHdHevcHisiIndex = 3;
    private static int mShdHevcSamsungIndex = 8;
    private static int mHdHevcSamsungIndex = 5;
    private static int mFhdAvs3QualcommIndex = 58;
    private static int mShdAvs3QualcommIndex = 55;
    private static int mFhdAvs3HisiIndex = 14;
    private static SparseArray<VideoSwCapabilityModel> mVideoCodecIdToSwCapabilityModel = new SparseArray<>();
    private static HashMap<DefinitionName, Integer> mDefinitionNameToDecodeLevelTable = new HashMap<>();

    /* loaded from: classes6.dex */
    public enum DefinitionName {
        DEFINITION_720P
    }

    /* loaded from: classes6.dex */
    public static class VideoSwCapabilityModel {
        SparseArray<HashMap<DefinitionName, String>> mCpuProducerToAllDefinitionDecTable;

        /* loaded from: classes6.dex */
        public static class Builder {
            private SparseArray<HashMap<DefinitionName, String>> mCpuProducerToAllDefinitionDecCapabilities = new SparseArray<>();

            public Builder addVideoDecCap(int i, DefinitionName definitionName, String str) {
                HashMap<DefinitionName, String> hashMap = this.mCpuProducerToAllDefinitionDecCapabilities.get(i);
                if (hashMap == null) {
                    hashMap = new HashMap<>();
                    this.mCpuProducerToAllDefinitionDecCapabilities.put(i, hashMap);
                }
                hashMap.put(definitionName, str);
                return this;
            }

            public VideoSwCapabilityModel build() {
                VideoSwCapabilityModel videoSwCapabilityModel = new VideoSwCapabilityModel();
                videoSwCapabilityModel.mCpuProducerToAllDefinitionDecTable = this.mCpuProducerToAllDefinitionDecCapabilities;
                return videoSwCapabilityModel;
            }
        }

        private VideoSwCapabilityModel() {
            this.mCpuProducerToAllDefinitionDecTable = new SparseArray<>();
        }
    }

    static {
        HashMap<String, Integer> hashMap = new HashMap<>();
        mCodecCapWhiteList = hashMap;
        hashMap.put("NX511J", 11);
        mCodecCapWhiteList.put("Hi3798MV100", 11);
        mCodecCapWhiteList.put("长虹智能电视", 11);
        mCodecCapWhiteList.put("Android TV on Tcl 901", 11);
        mCodecCapWhiteList.put("xt880b", 11);
        mSupportedMediaCodec.add("video/avc");
        mSupportedMediaCodec.add("video/hevc");
        mSupportedMediaCodec.add("video/x-vnd.on2.vp8");
        mSupportedMediaCodec.add("video/x-vnd.on2.vp9");
        mSupportedMediaCodec.add("video/av01");
        mSupportedMediaCodec.add("audio/mp4a-latm");
        mSupportedMediaCodec.add("audio/ac3");
        mSupportedMediaCodec.add("audio/eac3");
        mSupportedMediaCodec.add("audio/eac3-joc");
        mSupportedMediaCodec.add("audio/flac");
        mSupportedMediaCodec.add("audio/vnd.dts");
        mAMediaCodecBlackListInstance.add("OMX.qti.audio.decoder.flac");
        mVMediaCodecBlackListModel.add("SM-J7008");
        mVMediaCodecBlackListModel.add("SM-J5008");
        mVMediaCodecBlackListModel.add("TCL i806");
        mVMediaCodecBlackListModel.add("NX511J");
        mVMediaCodecBlackListModel.add("vivo Y11i T");
        mVMediaCodecBlackListModel.add("长虹智能电视");
        mVMediaCodecBlackListModel.add("MI 1S");
        mVMediaCodecBlackListModel.add("SP9832A");
        mVMediaCodecBlackListModel.add("SP9830A");
        mVMediaCodecBlackListModel.add("VOTO GT17");
        mVMediaCodecBlackListModel.add("EVA-AL10");
        mHDRVividSupportVersionMap.put("TAS-AL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("TAS-TL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("TAS-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AN00P", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AN00m", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-TL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("LIO-AL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ANA-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ANA-TN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ELS-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ELS-TN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100165, 99, 3));
        mHDRVividSupportVersionMap.put("ELS-AN10", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100166, 99, 3));
        mHDRVividSupportVersionMap.put("MRX-AL09", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-AL19", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W09", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W19", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-AN19", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W29", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("MRX-W39", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 1100150, 99, 5));
        mHDRVividSupportVersionMap.put("OCE-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("OCE-AN10", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("OCE-AL50", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("OCE-AN50", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-NX9", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-AN01", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOH-AL00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("NOP-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AN00", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AN10", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AL50", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-AL60", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-N29", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("JAD-N09", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550B", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550C", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550X", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-550AX", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-560", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-560B", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("HEGE-570", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200187, 99, 0));
        mHDRVividSupportVersionMap.put("PLAT-760", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200172, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350B", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350C", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-350S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-360", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-360S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-370", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-370S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200185, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-359", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200183, 99, 0));
        mHDRVividSupportVersionMap.put("KANT-369", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 200183, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-550", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-560", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-570", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("THAL-580", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("FREG-770", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-220", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250SY", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250SZ", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-250", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260SY", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260SZ", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-260", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200557, 99, 0));
        mHDRVividSupportVersionMap.put("DESC-270", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 10200547, 99, 0));
        mHDRVividSupportVersionMap.put("SOKR-790A", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mHDRVividSupportVersionMap.put("VOLT-350S", new TPCodecCapability.TPHdrSupportVersionRange(9999999, 0, 99, 0));
        mWideVineBlackListModel.add("RVL-AL09");
        mWideVineBlackListModel.add("CLT-L29");
        mWideVineBlackListModel.add("ASUS_Z00AD");
        mDrmL1BlackList.put(0, mWideVineBlackListModel);
        SparseArray<VideoSwCapabilityModel> sparseArray = mVideoCodecIdToSwCapabilityModel;
        VideoSwCapabilityModel.Builder builder = new VideoSwCapabilityModel.Builder();
        DefinitionName definitionName = DefinitionName.DEFINITION_720P;
        sparseArray.put(193, builder.addVideoDecCap(0, definitionName, VVC_SHD_QUALCOMMN_CPU_NAME).addVideoDecCap(1, definitionName, VVC_SHD_MTK_CPU_NAME).addVideoDecCap(2, definitionName, VVC_SHD_HISI_CPU_NAME).addVideoDecCap(3, definitionName, VVC_SHD_SAMSUNG_CPU_NAME).build());
        mDefinitionNameToDecodeLevelTable.put(definitionName, 21);
        mIsFFmpegCapGot = false;
        mAVCSWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mHEVCSWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mVP9SWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mAVS3WMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mAV1SWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mVP8SWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mVVCSWMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, 0, 30);
        mMaxVCodecHwCapabilityMap = new HashMap<>();
        mMaxVCodecSwCapabilityMap = new HashMap<>();
        mMaxACodecHwCapabilityMap = new HashMap<>();
        mMaxACodecSwCapabilityMap = new HashMap<>();
    }

    public static boolean addDRMLevel1Blacklist(int i) {
        if (mDrmL1BlackList.containsKey(Integer.valueOf(i))) {
            ArrayList<String> arrayList = mDrmL1BlackList.get(Integer.valueOf(i));
            if (!arrayList.contains(TPSystemInfo.getDeviceName())) {
                arrayList.add(TPSystemInfo.getDeviceName());
            }
            mDrmL1BlackList.remove(Integer.valueOf(i));
            mDrmL1BlackList.put(Integer.valueOf(i), arrayList);
            return true;
        }
        return true;
    }

    public static boolean addHDRBlackList(int i, String str, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap;
        if (tPHdrSupportVersionRange == null) {
            return false;
        }
        if (mHdrBlackMap.containsKey(Integer.valueOf(i))) {
            hashMap = mHdrBlackMap.get(Integer.valueOf(i));
            mHdrBlackMap.remove(Integer.valueOf(i));
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, tPHdrSupportVersionRange);
            }
            hashMap.remove(str);
        } else {
            hashMap = new HashMap<>();
        }
        hashMap.put(str, tPHdrSupportVersionRange);
        mHdrBlackMap.put(Integer.valueOf(i), hashMap);
        return true;
    }

    private static void addHDRVersionRangeToWhiteList(int i, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange, HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> hashMap) {
        ArrayList<TPCodecCapability.TPHdrSupportVersionRange> arrayList;
        if (hashMap.containsKey(Integer.valueOf(i))) {
            arrayList = hashMap.get(Integer.valueOf(i));
        } else {
            arrayList = new ArrayList<>();
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (isTheSameVersionRange(tPHdrSupportVersionRange, arrayList.get(i2))) {
                return;
            }
        }
        arrayList.add(tPHdrSupportVersionRange);
        hashMap.put(Integer.valueOf(i), arrayList);
    }

    public static boolean addHDRVideoDecoderTypeWhiteList(int i, int i2, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> hashMap;
        if (i2 != 101) {
            if (i2 != 102) {
                TPNativeLog.printLog(3, TAG, "addHDRVideoDecoderTypeWhiteList, decoder not support.");
                return false;
            }
            hashMap = mHDRTypeToHDRHardwareCodecWhiteListMap;
        } else {
            hashMap = mHDRTypeToHDRSoftwareCodecWhiteListMap;
        }
        addHDRVersionRangeToWhiteList(i, tPHdrSupportVersionRange, hashMap);
        return true;
    }

    public static boolean addHDRWhiteList(int i, String str, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange) {
        HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap;
        if (tPHdrSupportVersionRange == null) {
            return false;
        }
        if (mHdrWhiteMap.containsKey(Integer.valueOf(i))) {
            hashMap = mHdrWhiteMap.get(Integer.valueOf(i));
            mHdrWhiteMap.remove(Integer.valueOf(i));
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, tPHdrSupportVersionRange);
            }
            hashMap.remove(str);
        } else {
            hashMap = new HashMap<>();
        }
        hashMap.put(str, tPHdrSupportVersionRange);
        mHdrWhiteMap.put(Integer.valueOf(i), hashMap);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0122  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean checkHDRVividSupportByVersion(java.lang.String r13, java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.checkHDRVividSupportByVersion(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    private static int convertDefinitionNameToDecodeLevel(DefinitionName definitionName) {
        Integer num = mDefinitionNameToDecodeLevelTable.get(definitionName);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public static int convertDolbyVisionToOmxLevel(int i) {
        int i2 = 1 << i;
        if (i2 > 0 && i2 <= 256) {
            TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxLevel dolbyVisionLevel:" + i + " omxLevel:" + i2);
            return i2;
        }
        TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxLevel Unsupported level".concat(String.valueOf(i)));
        return i;
    }

    public static int convertDolbyVisionToOmxProfile(int i) {
        int i2 = 1 << i;
        if (i > 0 && i <= 512) {
            TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxProfile dolbyVisionProfile:" + i + " omxProfile:" + i2);
            return i2;
        }
        TPNativeLog.printLog(2, TAG, "convertDolbyVisionToOmxProfile Unsupported profile".concat(String.valueOf(i)));
        return i;
    }

    public static void enableDrmL3(boolean z) {
        String deviceName = TPSystemInfo.getDeviceName();
        if (z) {
            if (!mWideVineBlackListModel.contains(deviceName)) {
                mWideVineBlackListModel.add(TPSystemInfo.getDeviceName());
            } else {
                return;
            }
        } else if (mWideVineBlackListModel.contains(deviceName)) {
            mWideVineBlackListModel.remove(TPSystemInfo.getDeviceName());
        } else {
            return;
        }
        mDrmL1BlackList.remove(0);
        mDrmL1BlackList.put(0, mWideVineBlackListModel);
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getACodecSWMaxCapabilityMap() {
        synchronized (TPCodecUtils.class) {
            if (!mMaxACodecSwCapabilityMap.isEmpty()) {
                return mMaxACodecSwCapabilityMap;
            }
            try {
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability = new TPCodecCapability.TPCodecMaxCapability(0, 0, mAACMaxSupportedSamplerate, mAACMaxSupportedBitrate, mAACMaxSupportedChannels);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability2 = new TPCodecCapability.TPCodecMaxCapability(0, 0, mFLACMaxSupportedSamplerate, mFLACMaxSupportedBitrate, mFLACMaxSupportedChannels);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability3 = new TPCodecCapability.TPCodecMaxCapability(0, 0, mDDPMaxSupportedSamplerate, mDDPMaxSupportedBitrate, mDDPMaxSupportedChannels);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability4 = new TPCodecCapability.TPCodecMaxCapability(0, 0, mDDPMaxSupportedSamplerate, mDDPMaxSupportedBitrate, mDDPMaxSupportedChannels);
                mMaxACodecSwCapabilityMap.put(5002, tPCodecMaxCapability);
                mMaxACodecSwCapabilityMap.put(5012, tPCodecMaxCapability2);
                mMaxACodecSwCapabilityMap.put(5003, tPCodecMaxCapability3);
                mMaxACodecSwCapabilityMap.put(5040, tPCodecMaxCapability4);
                return mMaxACodecSwCapabilityMap;
            } catch (Exception unused) {
                TPNativeLog.printLog(4, TAG, "getACodecSWMaxCapabilityMap exception");
                return null;
            }
        }
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getAMediaCodecMaxCapabilityMap() {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        synchronized (TPCodecUtils.class) {
            if (!mMaxACodecHwCapabilityMap.isEmpty()) {
                return mMaxACodecHwCapabilityMap;
            }
            try {
                for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
                    String decoderMimeType = tPMediaDecoderInfo.getDecoderMimeType();
                    if (tPMediaDecoderInfo.isAudio() && isSupportedMediaCodec(decoderMimeType) && !isInMediaCodecBlackList(decoderMimeType) && !isAMediaCodecBlackListInstance(tPMediaDecoderInfo.getDecoderName())) {
                        TPMediaDecoderInfo.DecoderProfileLevel maxProfileLevel = tPMediaDecoderInfo.getMaxProfileLevel();
                        TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability = new TPCodecCapability.TPCodecMaxCapability(maxProfileLevel.profile, maxProfileLevel.level, tPMediaDecoderInfo.getMaxAudioSampleRate(), tPMediaDecoderInfo.getMaxAudioBitRate(), tPMediaDecoderInfo.getMaxAudioChannels());
                        if (mMaxACodecHwCapabilityMap.containsKey(Integer.valueOf(getSupportedCodecId(decoderMimeType)))) {
                            if (tPMediaDecoderInfo.getMaxAudioSampleRate() <= mMaxACodecHwCapabilityMap.get(Integer.valueOf(getSupportedCodecId(decoderMimeType))).maxSampleRate && !TextUtils.equals(decoderMimeType, "audio/eac3-joc")) {
                            }
                            replace(Integer.valueOf(getSupportedCodecId(decoderMimeType)), tPCodecMaxCapability, mMaxACodecHwCapabilityMap);
                            replace(decoderMimeType, tPMediaDecoderInfo.getDecoderName(), mAudioMaxCapCodecInstance);
                        } else {
                            replace(Integer.valueOf(getSupportedCodecId(decoderMimeType)), tPCodecMaxCapability, mMaxACodecHwCapabilityMap);
                            replace(decoderMimeType, tPMediaDecoderInfo.getDecoderName(), mAudioMaxCapCodecInstance);
                            mAMediaCodecCapList.add(decoderMimeType);
                        }
                    }
                }
            } catch (Exception e) {
                TPNativeLog.printLog(4, TAG, "getAMediaCodecMaxCapabilityMap failed:" + e.getMessage());
            }
            return mMaxACodecHwCapabilityMap;
        }
    }

    public static int getAV1SWDecodeLevel() {
        return getDecodeLevelByCoresAndFreq();
    }

    public static boolean getAudioMediaCodecPassThroughCap(int i, int i2, int i3) {
        int i4;
        if (i != 5004) {
            return false;
        }
        if (i2 == 20) {
            i4 = 7;
        } else if (i2 != 50 && i2 != 60) {
            i4 = 1;
        } else {
            i4 = 8;
        }
        return TPAudioPassThroughPluginDetector.isAudioPassThroughSupport(i4, i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005d, code lost:
        if (r1 != 3) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0062, code lost:
        if (r2 >= com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mFhdAvs3HisiIndex) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getAvs3SWDecodeLevel() {
        /*
            java.lang.String r0 = com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.getCpuHarewareName()
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.getCpuHWProducter(r0)
            int r2 = com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.getCpuHWProductIndex(r0)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "[getAvs3SWDecodeLevel], mCpuHWProducter = "
            r3.<init>(r4)
            r3.append(r1)
            java.lang.String r4 = ", getMaxCpuFreq() = "
            r3.append(r4)
            long r4 = com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.getMaxCpuFreq()
            r3.append(r4)
            java.lang.String r4 = ", numCores = "
            r3.append(r4)
            int r4 = com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.getNumCores()
            r3.append(r4)
            java.lang.String r4 = ", mCpuHWProductIdx="
            r3.append(r4)
            r3.append(r2)
            java.lang.String r4 = ", hardware="
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r3 = 2
            java.lang.String r4 = "TPCodecUtils"
            com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog.printLog(r3, r4, r0)
            int r0 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mAvs3DeviceLevel
            r4 = -1
            if (r4 == r0) goto L4e
            return r0
        L4e:
            r0 = 0
            com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mAvs3DeviceLevel = r0
            if (r4 == r1) goto L67
            r0 = 26
            if (r1 == 0) goto L6c
            r4 = 1
            if (r1 == r4) goto L67
            if (r1 == r3) goto L60
            r0 = 3
            if (r1 == r0) goto L67
            goto L78
        L60:
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mFhdAvs3HisiIndex
            if (r2 < r1) goto L67
        L64:
            com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mAvs3DeviceLevel = r0
            goto L78
        L67:
            int r0 = getDecodeLevelByCoresAndFreq()
            goto L64
        L6c:
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mFhdAvs3QualcommIndex
            if (r2 < r1) goto L71
            goto L64
        L71:
            int r0 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mShdAvs3QualcommIndex
            if (r2 < r0) goto L67
            r0 = 21
            goto L64
        L78:
            int r0 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mAvs3DeviceLevel
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.getAvs3SWDecodeLevel():int");
    }

    private static int getDecodeLevelByCoresAndFreq() {
        if (TPSystemInfo.getNumCores() >= 8) {
            if (TPSystemInfo.getMaxCpuFreq() / 1000 < 1200) {
                return 16;
            }
            return 21;
        } else if (TPSystemInfo.getNumCores() >= 6) {
            if (TPSystemInfo.getMaxCpuFreq() / 1000 < 1400) {
                return 16;
            }
            return 21;
        } else if (TPSystemInfo.getNumCores() < 4) {
            return 6;
        } else {
            if (TPSystemInfo.getMaxCpuFreq() / 1000 < 1600) {
                return 16;
            }
            return 21;
        }
    }

    public static synchronized void getDecoderMaxCapabilityMapAsync() {
        synchronized (TPCodecUtils.class) {
            if (mIsInitDone) {
                return;
            }
            Thread thread = new Thread(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.1
                @Override // java.lang.Runnable
                public final void run() {
                    TPCodecUtils.getVMediaCodecMaxCapabilityMap();
                    TPCodecUtils.getAMediaCodecMaxCapabilityMap();
                    TPCodecUtils.getVCodecSWMaxCapabilityMap();
                    TPCodecUtils.getACodecSWMaxCapabilityMap();
                    boolean unused = TPCodecUtils.mIsInitDone = true;
                }
            });
            thread.setName("TP_codec_init_thread");
            thread.start();
        }
    }

    public static String getDecoderName(String str, boolean z) {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        if (str.contains("audio")) {
            if (TextUtils.equals(str, "audio/eac3") && mAudioMaxCapCodecInstance.containsKey("audio/eac3-joc")) {
                return mAudioMaxCapCodecInstance.get("audio/eac3-joc");
            }
            if (mAudioMaxCapCodecInstance.containsKey(str)) {
                return mAudioMaxCapCodecInstance.get(str);
            }
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
            if (TextUtils.equals(str, tPMediaDecoderInfo.getDecoderMimeType()) && tPMediaDecoderInfo.isSecureDecoder() == z) {
                arrayList.add(tPMediaDecoderInfo);
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            TPMediaDecoderInfo tPMediaDecoderInfo2 = (TPMediaDecoderInfo) obj;
            if ((tPMediaDecoderInfo2.isVideo() && tPMediaDecoderInfo2.isVideoSofwareDecoder() == mPreferredSoftwareComponent) || (tPMediaDecoderInfo2.isAudio() && tPMediaDecoderInfo2.isAudioSofwareDecoder() == mPreferredSoftwareComponent)) {
                return tPMediaDecoderInfo2.getDecoderName();
            }
        }
        if (!arrayList.isEmpty()) {
            return ((TPMediaDecoderInfo) arrayList.get(0)).getDecoderName();
        }
        return null;
    }

    public static String getDisplayVersion() {
        return null;
    }

    public static String getDolbyVisionDecoderName(String str, int i, int i2, boolean z) {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        if (!TextUtils.equals("video/dolby-vision", str)) {
            return null;
        }
        int convertDolbyVisionToOmxProfile = convertDolbyVisionToOmxProfile(i);
        for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
            TPMediaDecoderInfo.DecoderProfileLevel[] profileLevels = tPMediaDecoderInfo.getProfileLevels();
            if (TextUtils.equals(tPMediaDecoderInfo.getDecoderMimeType(), str)) {
                for (TPMediaDecoderInfo.DecoderProfileLevel decoderProfileLevel : profileLevels) {
                    if (decoderProfileLevel.profile == convertDolbyVisionToOmxProfile) {
                        TPNativeLog.printLog(1, TAG, "getDolbyVisionDecoderName  profile:" + decoderProfileLevel.profile + " dvProfile:" + i + " bSecure:" + z + " name:" + tPMediaDecoderInfo.getDecoderName());
                        if (tPMediaDecoderInfo.isSecureDecoder() == z) {
                            return tPMediaDecoderInfo.getDecoderName();
                        }
                    }
                }
                continue;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x006b, code lost:
        if (r2 >= com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHdHevcSamsungIndex) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0077, code lost:
        if (r2 >= com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHdHevcHisiIndex) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0086, code lost:
        if (r2 >= com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHdHevcMtkIndex) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0090, code lost:
        if (r2 >= com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHdHevcQualcommIndex) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getHevcSWDecodeLevel() {
        /*
            java.lang.String r0 = com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.getCpuHarewareName()
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.getCpuHWProducter(r0)
            int r2 = com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.getCpuHWProductIndex(r0)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "[getHevcSWDecodeLevel], mCpuHWProducter = "
            r3.<init>(r4)
            r3.append(r1)
            java.lang.String r4 = ", getMaxCpuFreq() = "
            r3.append(r4)
            long r4 = com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.getMaxCpuFreq()
            r3.append(r4)
            java.lang.String r4 = ", numCores = "
            r3.append(r4)
            int r4 = com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo.getNumCores()
            r3.append(r4)
            java.lang.String r4 = ", mCpuHWProductIdx="
            r3.append(r4)
            r3.append(r2)
            java.lang.String r4 = ", hardware="
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r3 = 2
            java.lang.String r4 = "TPCodecUtils"
            com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog.printLog(r3, r4, r0)
            int r0 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHevcDeviceLevel
            r4 = -1
            if (r4 == r0) goto L4e
            return r0
        L4e:
            r0 = 0
            com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHevcDeviceLevel = r0
            if (r4 == r1) goto L7a
            r0 = 16
            r4 = 21
            if (r1 == 0) goto L89
            r5 = 1
            if (r1 == r5) goto L7f
            if (r1 == r3) goto L70
            r3 = 3
            if (r1 == r3) goto L62
            goto L93
        L62:
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mShdHevcSamsungIndex
            if (r2 < r1) goto L69
        L66:
            com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHevcDeviceLevel = r4
            goto L93
        L69:
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHdHevcSamsungIndex
            if (r2 < r1) goto L7a
        L6d:
            com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHevcDeviceLevel = r0
            goto L93
        L70:
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mShdHevcHisiIndex
            if (r2 < r1) goto L75
            goto L66
        L75:
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHdHevcHisiIndex
            if (r2 < r1) goto L7a
            goto L6d
        L7a:
            int r0 = getDecodeLevelByCoresAndFreq()
            goto L6d
        L7f:
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mShdHevcMtkIndex
            if (r2 < r1) goto L84
            goto L66
        L84:
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHdHevcMtkIndex
            if (r2 < r1) goto L7a
            goto L6d
        L89:
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mShdHevcQualcommIndex
            if (r2 < r1) goto L8e
            goto L66
        L8e:
            int r1 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHdHevcQualcommIndex
            if (r2 < r1) goto L7a
            goto L6d
        L93:
            int r0 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mHevcDeviceLevel
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.getHevcSWDecodeLevel():int");
    }

    public static int getMaxLumaSample(String str, int i) {
        if (TextUtils.equals(str, "video/avc")) {
            return TPMediaCodecProfileLevel.getAVCMaxLumaSample(i);
        }
        if (TextUtils.equals(str, "video/hevc")) {
            return TPMediaCodecProfileLevel.getHEVCMaxLumaSample(i);
        }
        if (TextUtils.equals(str, "video/x-vnd.on2.vp8")) {
            return TPMediaCodecProfileLevel.getVP8MaxLumaSample(i);
        }
        if (TextUtils.equals(str, "video/x-vnd.on2.vp9")) {
            return TPMediaCodecProfileLevel.getVP9MaxLumaSample(i);
        }
        if (TextUtils.equals(str, "video/av01")) {
            return TPMediaCodecProfileLevel.getAV1MaxLumaSample(i);
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0035, code lost:
        r0 = r3.getDecoderMaxWidth();
        r1 = r3.getDecoderMaxHeight();
        r2 = r3.getDecoderLumaWidth();
        r3 = r3.getDecoderLumaHeight();
        r9 = r3.getDecoderMaxFrameRateForMaxLuma();
        r14 = r3.getDecoderMaxFrameRate();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0056, code lost:
        if (isLimitMaxWidthOrMaxHeight(r0, r1, r2, r3, r16, r17) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0059, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0062, code lost:
        r7 = java.lang.Integer.valueOf(java.lang.Math.min(r14, java.lang.Math.max(1, ((int) ((r0 * r3) / java.lang.Math.max(r16 * r17, 1L))) * r9)));
        com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog.printLog(2, com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.TAG, "getSupportedFrameRatesFor max width:" + r0 + " max height:" + r3 + " max framerate for max resolution:" + r9 + " current width:" + r16 + " height:" + r17 + " max support framerate:" + r7);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized int getMaxSupportedFrameRatesFor(int r14, int r15, int r16, int r17) {
        /*
            java.lang.Class<com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils> r6 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.class
            monitor-enter(r6)
            r0 = 101(0x65, float:1.42E-43)
            r1 = 30
            if (r14 == r0) goto Le1
            r0 = -1
            if (r14 != r0) goto Le
            goto Le1
        Le:
            java.lang.String r14 = getSupportedHWMimeType(r15)     // Catch: java.lang.Throwable -> Lb3
            boolean r0 = r14.isEmpty()     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L1a
            monitor-exit(r6)
            return r1
        L1a:
            java.lang.Integer r7 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> Lb3
            com.tencent.thumbplayer.tcmedia.core.thirdparties.LocalCache r0 = com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.mLocalCache     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            com.tencent.thumbplayer.tcmedia.core.common.TPMediaDecoderInfo[] r0 = com.tencent.thumbplayer.tcmedia.core.common.TPMediaDecoderList.getTPMediaDecoderInfos(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            int r1 = r0.length     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            r8 = 0
            r2 = r8
        L27:
            if (r2 >= r1) goto Ld9
            r3 = r0[r2]     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            java.lang.String r4 = r3.getDecoderMimeType()     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            boolean r4 = r14.equals(r4)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            if (r4 == 0) goto Lb9
            int r0 = r3.getDecoderMaxWidth()     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            int r1 = r3.getDecoderMaxHeight()     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            int r2 = r3.getDecoderLumaWidth()     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            r14 = r3
            int r3 = r14.getDecoderLumaHeight()     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            int r9 = r14.getDecoderMaxFrameRateForMaxLuma()     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            int r14 = r14.getDecoderMaxFrameRate()     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            r4 = r16
            r5 = r17
            boolean r1 = isLimitMaxWidthOrMaxHeight(r0, r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            if (r1 == 0) goto L5a
            monitor-exit(r6)
            return r8
        L5a:
            int r1 = r0 * r3
            long r1 = (long) r1
            int r8 = r4 * r5
            long r10 = (long) r8
            r12 = 1
            long r10 = java.lang.Math.max(r10, r12)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            long r1 = r1 / r10
            int r1 = (int) r1     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            int r1 = r1 * r9
            r2 = 1
            int r1 = java.lang.Math.max(r2, r1)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            int r14 = java.lang.Math.min(r14, r1)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            java.lang.Integer r7 = java.lang.Integer.valueOf(r14)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            java.lang.String r14 = "TPCodecUtils"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            java.lang.String r2 = "getSupportedFrameRatesFor max width:"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            r1.append(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            java.lang.String r0 = " max height:"
            r1.append(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            r1.append(r3)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            java.lang.String r0 = " max framerate for max resolution:"
            r1.append(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            r1.append(r9)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            java.lang.String r0 = " current width:"
            r1.append(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            r1.append(r4)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            java.lang.String r0 = " height:"
            r1.append(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            r1.append(r5)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            java.lang.String r0 = " max support framerate:"
            r1.append(r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            r1.append(r7)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            r1 = 2
            com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog.printLog(r1, r14, r0)     // Catch: java.lang.Throwable -> Lb3 java.lang.Exception -> Lb6
            goto Ld9
        Lb3:
            r0 = move-exception
            r14 = r0
            goto Ldf
        Lb6:
            r0 = move-exception
            r14 = r0
            goto Lc1
        Lb9:
            r4 = r16
            r5 = r17
            int r2 = r2 + 1
            goto L27
        Lc1:
            java.lang.String r0 = "TPCodecUtils"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = "getMaxSupportedFrameRatesFor failed:"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r14 = r14.getMessage()     // Catch: java.lang.Throwable -> Lb3
            r1.append(r14)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r14 = r1.toString()     // Catch: java.lang.Throwable -> Lb3
            r1 = 4
            com.tencent.thumbplayer.tcmedia.core.common.TPNativeLog.printLog(r1, r0, r14)     // Catch: java.lang.Throwable -> Lb3
        Ld9:
            int r14 = r7.intValue()     // Catch: java.lang.Throwable -> Lb3
            monitor-exit(r6)
            return r14
        Ldf:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Lb3
            throw r14
        Le1:
            monitor-exit(r6)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.thumbplayer.tcmedia.core.common.TPCodecUtils.getMaxSupportedFrameRatesFor(int, int, int, int):int");
    }

    private static int getSoftMaxSamples(int i) {
        if (i != 1) {
            if (i != 6) {
                if (i != 11) {
                    if (i != 16) {
                        if (i != 21) {
                            if (i != 26) {
                                if (i != 28) {
                                    if (i != 33) {
                                        return 0;
                                    }
                                    return 8847360;
                                }
                                return 8294400;
                            }
                            return 2073600;
                        }
                        return 921600;
                    }
                    return 480000;
                }
                return 407040;
            }
            return 307200;
        }
        return 129600;
    }

    private static int getSupportedCodecId(String str) {
        if (TextUtils.equals(str, "video/avc")) {
            return 26;
        }
        if (TextUtils.equals(str, "video/hevc")) {
            return 172;
        }
        if (TextUtils.equals(str, "video/x-vnd.on2.vp8")) {
            return 138;
        }
        if (TextUtils.equals(str, "video/x-vnd.on2.vp9")) {
            return 166;
        }
        if (TextUtils.equals(str, "video/av01")) {
            return 1029;
        }
        if (TextUtils.equals(str, "audio/mp4a-latm")) {
            return 5002;
        }
        if (TextUtils.equals(str, "audio/ac3")) {
            return 5003;
        }
        if (!TextUtils.equals(str, "audio/eac3") && !TextUtils.equals(str, "audio/eac3-joc")) {
            if (TextUtils.equals(str, "audio/flac")) {
                return 5012;
            }
            if (TextUtils.equals(str, "audio/vnd.dts")) {
                return 5004;
            }
            return -1;
        }
        return 5040;
    }

    private static String getSupportedHWMimeType(int i) {
        if (i != 26) {
            if (i != 138) {
                if (i != 166) {
                    if (i != 172) {
                        if (i != 1029) {
                            return "";
                        }
                        return "video/av01";
                    }
                    return "video/hevc";
                }
                return "video/x-vnd.on2.vp9";
            }
            return "video/x-vnd.on2.vp8";
        }
        return "video/avc";
    }

    public static String getSystemPatchVersion() {
        return null;
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getVCodecSWMaxCapabilityMap() {
        synchronized (TPCodecUtils.class) {
            if (mIsFFmpegCapGot) {
                return mMaxVCodecSwCapabilityMap;
            }
            try {
                int hevcSWDecodeLevel = getHevcSWDecodeLevel();
                int softMaxSamples = getSoftMaxSamples(hevcSWDecodeLevel);
                int avs3SWDecodeLevel = getAvs3SWDecodeLevel();
                int aV1SWDecodeLevel = getAV1SWDecodeLevel();
                int vvcSWDecodeLevel = getVvcSWDecodeLevel();
                int softMaxSamples2 = getSoftMaxSamples(avs3SWDecodeLevel);
                int softMaxSamples3 = getSoftMaxSamples(aV1SWDecodeLevel);
                int softMaxSamples4 = getSoftMaxSamples(vvcSWDecodeLevel);
                TPNativeLog.printLog(2, "getVCodecSWMaxCapabilityMap, hevcDecodeLevel:" + hevcSWDecodeLevel + ", avs3DecodeLevel:" + avs3SWDecodeLevel + ", AV1DecodeLevel:" + aV1SWDecodeLevel + ", vvcDecodeLevel:" + vvcSWDecodeLevel);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability = mAVCSWMaxCapability;
                tPCodecMaxCapability.maxLumaSamples = softMaxSamples;
                tPCodecMaxCapability.maxProfile = 64;
                tPCodecMaxCapability.maxLevel = 65536;
                mMaxVCodecSwCapabilityMap.put(26, mAVCSWMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability2 = mHEVCSWMaxCapability;
                tPCodecMaxCapability2.maxLumaSamples = softMaxSamples;
                tPCodecMaxCapability2.maxProfile = 2;
                tPCodecMaxCapability2.maxLevel = TPMediaCodecProfileLevel.HEVCHighTierLevel62;
                mMaxVCodecSwCapabilityMap.put(172, mHEVCSWMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability3 = mVP9SWMaxCapability;
                tPCodecMaxCapability3.maxLumaSamples = softMaxSamples;
                tPCodecMaxCapability3.maxProfile = 8;
                tPCodecMaxCapability3.maxLevel = 8192;
                mMaxVCodecSwCapabilityMap.put(166, mVP9SWMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability4 = mVP8SWMaxCapability;
                tPCodecMaxCapability4.maxLumaSamples = softMaxSamples;
                tPCodecMaxCapability4.maxProfile = 1;
                tPCodecMaxCapability4.maxLevel = 8;
                mMaxVCodecSwCapabilityMap.put(138, mVP8SWMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability5 = mAVS3WMaxCapability;
                tPCodecMaxCapability5.maxLumaSamples = softMaxSamples2;
                tPCodecMaxCapability5.maxProfile = 0;
                tPCodecMaxCapability5.maxLevel = 0;
                mMaxVCodecSwCapabilityMap.put(192, mAVS3WMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability6 = mAV1SWMaxCapability;
                tPCodecMaxCapability6.maxLumaSamples = softMaxSamples3;
                tPCodecMaxCapability6.maxProfile = 0;
                tPCodecMaxCapability6.maxLevel = 0;
                mMaxVCodecSwCapabilityMap.put(1029, mAV1SWMaxCapability);
                TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability7 = mVVCSWMaxCapability;
                tPCodecMaxCapability7.maxLumaSamples = softMaxSamples4;
                tPCodecMaxCapability7.maxProfile = 0;
                tPCodecMaxCapability7.maxLevel = 0;
                mMaxVCodecSwCapabilityMap.put(193, mVVCSWMaxCapability);
                TPNativeLog.printLog(2, "getVCodecSWMaxCapabilityMap success, maxHevcLumaSamples:" + softMaxSamples + ", maxAvs3LumaSamples:" + softMaxSamples2 + ", maxAV1LumaSamples:" + softMaxSamples3 + ", maxVvcLumaSamples:" + softMaxSamples4);
                mIsFFmpegCapGot = true;
                return mMaxVCodecSwCapabilityMap;
            } catch (Exception unused) {
                TPNativeLog.printLog(4, TAG, "getVCodecSWMaxCapabilityMap exception");
                return null;
            }
        }
    }

    public static synchronized HashMap<Integer, TPCodecCapability.TPCodecMaxCapability> getVMediaCodecMaxCapabilityMap() {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        synchronized (TPCodecUtils.class) {
            if (!mMaxVCodecHwCapabilityMap.isEmpty()) {
                TPNativeLog.printLog(2, TAG, "return memory stored video max cap map");
                return mMaxVCodecHwCapabilityMap;
            }
            try {
                for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
                    String decoderMimeType = tPMediaDecoderInfo.getDecoderMimeType();
                    if (tPMediaDecoderInfo.isVideo()) {
                        mVMediaCodecCapList.add(decoderMimeType);
                        if (isSupportedMediaCodec(decoderMimeType) && !tPMediaDecoderInfo.isSecureDecoder()) {
                            TPMediaDecoderInfo.DecoderProfileLevel maxProfileLevel = tPMediaDecoderInfo.getMaxProfileLevel();
                            TPCodecCapability.TPCodecMaxCapability tPCodecMaxCapability = new TPCodecCapability.TPCodecMaxCapability(getMaxLumaSample(decoderMimeType, maxProfileLevel.level), maxProfileLevel.profile, maxProfileLevel.level, tPMediaDecoderInfo.getDecoderMaxFrameRateForMaxLuma());
                            if (mMaxVCodecHwCapabilityMap.containsKey(Integer.valueOf(getSupportedCodecId(decoderMimeType))) && maxProfileLevel.level <= mMaxVCodecHwCapabilityMap.get(Integer.valueOf(getSupportedCodecId(decoderMimeType))).maxLevel) {
                            }
                            replace(Integer.valueOf(getSupportedCodecId(decoderMimeType)), tPCodecMaxCapability, mMaxVCodecHwCapabilityMap);
                        }
                    }
                }
            } catch (Exception e) {
                TPNativeLog.printLog(4, TAG, "getVMediaCodecMaxCapabilityMap failed:" + Log.getStackTraceString(e));
            }
            return mMaxVCodecHwCapabilityMap;
        }
    }

    private static int getValueFromSubstring(String str, int i, int i2) {
        if (i < 0) {
            i = 0;
        }
        if (i2 >= str.length()) {
            i2 = str.length() - 1;
        }
        if (i > i2) {
            i = i2;
        }
        return Integer.parseInt(str.substring(i, i2));
    }

    private static int getVvcSWDecodeLevel() {
        String str;
        String valueOf;
        int i = mVvcDeviceLevel;
        if (i != -1) {
            return i;
        }
        String cpuHarewareName = TPSystemInfo.getCpuHarewareName();
        int cpuHWProducter = TPSystemInfo.getCpuHWProducter(cpuHarewareName);
        int cpuHWProductIndex = TPSystemInfo.getCpuHWProductIndex(cpuHarewareName);
        TPNativeLog.printLog(2, TAG, "[getVvcSWDecodeLevel], mCpuHWProducer = " + cpuHWProducter + ", getMaxCpuFreq() = " + TPSystemInfo.getMaxCpuFreq() + ", numCores = " + TPSystemInfo.getNumCores() + ", mCpuHWProductIdx = " + cpuHWProductIndex + ", hardware = " + cpuHarewareName);
        int i2 = 0;
        if (cpuHWProducter == -1) {
            str = "current cpu manufacturer is not listed in the performance list, cpuHwProducer:";
            valueOf = String.valueOf(cpuHWProducter);
        } else if (cpuHWProductIndex == -1) {
            str = "current cpu model is not listed in the performance list, cpuHwProductIdx:";
            valueOf = String.valueOf(cpuHWProductIndex);
        } else {
            int selectBestDecodeLevelFromCapabilityTable = selectBestDecodeLevelFromCapabilityTable(193, cpuHWProducter, cpuHWProductIndex);
            if (selectBestDecodeLevelFromCapabilityTable != -1) {
                i2 = selectBestDecodeLevelFromCapabilityTable;
            }
            mVvcDeviceLevel = i2;
            return i2;
        }
        TPNativeLog.printLog(3, TAG, str.concat(valueOf));
        mVvcDeviceLevel = 0;
        return 0;
    }

    public static synchronized void init(Context context, boolean z) {
        synchronized (TPCodecUtils.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                mContext = applicationContext;
                if (z) {
                    mLocalCache = LocalCache.get(applicationContext);
                }
                getDecoderMaxCapabilityMapAsync();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean isAMediaCodecBlackListInstance(String str) {
        return mAMediaCodecBlackListInstance.contains(str);
    }

    public static boolean isAMediaCodecBlackListModel() {
        return mAMediaCodecBlackListModel.contains(TPSystemInfo.getDeviceName());
    }

    public static boolean isBlackListType(String str) {
        if (Arrays.asList("PRO 7 Plus", "PRO 7-H", "PRO+7+Plus").contains(TPSystemInfo.getDeviceName()) && TextUtils.equals(str, "video/hevc")) {
            return true;
        }
        return false;
    }

    private static synchronized boolean isHDR10Support(int i) {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        synchronized (TPCodecUtils.class) {
            for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
                if (TextUtils.equals(tPMediaDecoderInfo.getDecoderMimeType(), "video/hevc")) {
                    for (TPMediaDecoderInfo.DecoderProfileLevel decoderProfileLevel : tPMediaDecoderInfo.getProfileLevels()) {
                        if (decoderProfileLevel.profile == i) {
                            TPNativeLog.printLog(2, TAG, "support hdr10 ".concat(String.valueOf(i)));
                            return true;
                        }
                    }
                    continue;
                }
            }
            return false;
        }
    }

    private static synchronized boolean isHDRDVSupport(int i, int i2) {
        TPMediaDecoderInfo[] tPMediaDecoderInfos;
        TPMediaDecoderInfo.DecoderProfileLevel[] profileLevels;
        synchronized (TPCodecUtils.class) {
            if (i == 0 && i2 == 0) {
                return mVMediaCodecCapList.contains("video/dolby-vision");
            }
            for (TPMediaDecoderInfo tPMediaDecoderInfo : TPMediaDecoderList.getTPMediaDecoderInfos(mLocalCache)) {
                if (TextUtils.equals(tPMediaDecoderInfo.getDecoderMimeType(), "video/dolby-vision")) {
                    for (TPMediaDecoderInfo.DecoderProfileLevel decoderProfileLevel : tPMediaDecoderInfo.getProfileLevels()) {
                        if (decoderProfileLevel.profile == i && decoderProfileLevel.level == i2) {
                            TPNativeLog.printLog(2, TAG, "support dolbyvision");
                            return true;
                        }
                    }
                    continue;
                }
            }
            return false;
        }
    }

    public static boolean isHDRDecoderTypeSupport(int i, int i2) {
        HashMap<Integer, ArrayList<TPCodecCapability.TPHdrSupportVersionRange>> hashMap;
        String concat;
        if (i2 != 102 && i2 != 101) {
            concat = "isHDRDecodeTypeSupport, not support decoderType, decoderType = ".concat(String.valueOf(i2));
        } else {
            if (i2 == 102) {
                hashMap = mHDRTypeToHDRHardwareCodecWhiteListMap;
            } else {
                hashMap = mHDRTypeToHDRSoftwareCodecWhiteListMap;
            }
            if (!hashMap.containsKey(Integer.valueOf(i))) {
                concat = "isHDRDecodeTypeSupport, not config hdrType whiteList, hdrType = ".concat(String.valueOf(i));
            } else {
                return isInHDRVersionRangeWhiteList(hashMap.get(Integer.valueOf(i)));
            }
        }
        TPNativeLog.printLog(3, TAG, concat);
        return false;
    }

    public static boolean isHDRsupport(int i, int i2, int i3) {
        if (i == 2) {
            return isHDRDVSupport(i2, i3);
        }
        if (i == 0) {
            return isHDR10Support(4096);
        }
        if (i == 1) {
            return isHDR10Support(8192);
        }
        if (i == 4) {
            String displayVersion = getDisplayVersion();
            String systemPatchVersion = getSystemPatchVersion();
            TPNativeLog.printLog(2, TAG, "isHDRsupport(HDRVivid):display version:".concat(String.valueOf(displayVersion)));
            TPNativeLog.printLog(2, TAG, "isHDRsupport(HDRVivid):patch version:".concat(String.valueOf(systemPatchVersion)));
            return checkHDRVividSupportByVersion(TPSystemInfo.getDeviceName(), displayVersion, systemPatchVersion);
        }
        return false;
    }

    public static boolean isInDRMLevel1Blacklist(int i) {
        if (mDrmL1BlackList.containsKey(Integer.valueOf(i))) {
            return mDrmL1BlackList.get(Integer.valueOf(i)).contains(TPSystemInfo.getDeviceName());
        }
        return false;
    }

    private static boolean isInHDRVersionRangeWhiteList(ArrayList<TPCodecCapability.TPHdrSupportVersionRange> arrayList) {
        if (arrayList == null) {
            return false;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange = arrayList.get(i);
            int i2 = Build.VERSION.SDK_INT;
            if (i2 <= tPHdrSupportVersionRange.upperboundAndroidAPILevel && i2 >= tPHdrSupportVersionRange.lowerboundAndroidAPILevel) {
                TPNativeLog.printLog(2, TAG, "inHDRVersionRangeWhiteList!");
                return true;
            }
        }
        return false;
    }

    public static boolean isInHDRVividBlackList(String str, int i, int i2) {
        if (mHdrBlackMap.containsKey(4)) {
            HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap = mHdrBlackMap.get(4);
            if (hashMap.containsKey(str)) {
                TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange = hashMap.get(str);
                if (i <= tPHdrSupportVersionRange.upperboundSystemVersion && i >= tPHdrSupportVersionRange.lowerboundSystemVersion && i2 <= tPHdrSupportVersionRange.upperboundPatchVersion && i2 >= tPHdrSupportVersionRange.lowerboundPatchVersion) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isInHDRVividWhiteList(String str, int i, int i2) {
        if (mHdrWhiteMap.containsKey(4)) {
            HashMap<String, TPCodecCapability.TPHdrSupportVersionRange> hashMap = mHdrWhiteMap.get(4);
            if (hashMap.containsKey(str)) {
                TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange = hashMap.get(str);
                if (i <= tPHdrSupportVersionRange.upperboundSystemVersion && i >= tPHdrSupportVersionRange.lowerboundSystemVersion && i2 <= tPHdrSupportVersionRange.upperboundPatchVersion && i2 >= tPHdrSupportVersionRange.lowerboundPatchVersion) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isInMediaCodecBlackList(String str) {
        HashMap<String, Integer> hashMap;
        String deviceName = TPSystemInfo.getDeviceName();
        if (!TextUtils.isEmpty(deviceName) && (hashMap = mCodecCapBlackList) != null && hashMap.containsKey(deviceName)) {
            Integer num = mCodecCapBlackList.get(deviceName);
            if (TextUtils.equals(str, "video/avc")) {
                if ((num.intValue() & 1) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "video/hevc")) {
                if ((num.intValue() & 2) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "video/x-vnd.on2.vp8")) {
                if ((num.intValue() & 256) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "video/x-vnd.on2.vp9")) {
                if ((num.intValue() & 4) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "audio/mp4a-latm")) {
                if ((num.intValue() & 8) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "audio/ac3")) {
                if ((num.intValue() & 16) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "audio/eac3")) {
                if ((num.intValue() & 32) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "audio/flac")) {
                if ((num.intValue() & 64) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "audio/vnd.dts")) {
                if ((num.intValue() & 128) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "audio/eac3-joc") && (num.intValue() & 32) != 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean isInMediaCodecWhiteList(String str) {
        HashMap<String, Integer> hashMap;
        String deviceName = TPSystemInfo.getDeviceName();
        if (!TextUtils.isEmpty(deviceName) && (hashMap = mCodecCapWhiteList) != null && hashMap.containsKey(deviceName)) {
            Integer num = mCodecCapWhiteList.get(deviceName);
            if (TextUtils.equals(str, "video/avc")) {
                if ((num.intValue() & 1) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "video/hevc")) {
                if ((num.intValue() & 2) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "video/x-vnd.on2.vp8")) {
                if ((num.intValue() & 256) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "video/x-vnd.on2.vp9")) {
                if ((num.intValue() & 4) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "audio/mp4a-latm")) {
                if ((num.intValue() & 8) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "audio/ac3")) {
                if ((num.intValue() & 16) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "audio/eac3")) {
                if ((num.intValue() & 32) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "audio/flac")) {
                if ((num.intValue() & 64) == 0) {
                    return false;
                }
                return true;
            } else if (TextUtils.equals(str, "audio/vnd.dts") && (num.intValue() & 128) != 0) {
                return true;
            }
        }
        return false;
    }

    private static boolean isLimitMaxWidthOrMaxHeight(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        if ((i5 <= i6 || (i5 <= i && i6 <= i4)) && (i5 >= i6 || (i5 <= i3 && i6 <= i2))) {
            return false;
        }
        if (i5 > i6) {
            i7 = i4 * i;
        } else {
            i7 = i3 * i2;
        }
        if (i >= i5 && i2 >= i6 && i7 >= i5 * i6) {
            TPNativeLog.printLog(2, TAG, "getSupportedFrameRatesFor width:" + i5 + " height:" + i6 + " limit maxLumaWidth or maxLumaHeight, but not limit maxLumaSamples, do support! maxWidth:" + i + " maxHeight:" + i2 + " maxLumaSamples:" + i7);
            return false;
        }
        TPNativeLog.printLog(4, TAG, "getSupportedFrameRatesFor width:" + i5 + " height:" + i6 + " do not support! maxWidth:" + i + " maxHeight:" + i2);
        return true;
    }

    public static synchronized boolean isMediaCodecDDPlusSupported() {
        synchronized (TPCodecUtils.class) {
            if (isAMediaCodecBlackListModel()) {
                return false;
            }
            if (!mAMediaCodecCapList.contains("audio/eac3")) {
                if (!mAMediaCodecCapList.contains("audio/eac3-joc")) {
                    return false;
                }
            }
            return true;
        }
    }

    public static synchronized boolean isMediaCodecDolbyDSSupported() {
        synchronized (TPCodecUtils.class) {
            if (isAMediaCodecBlackListModel()) {
                return false;
            }
            return mAMediaCodecCapList.contains("audio/ac3");
        }
    }

    private static boolean isSupportedMediaCodec(String str) {
        return mSupportedMediaCodec.contains(str);
    }

    private static boolean isTheSameVersionRange(TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange, TPCodecCapability.TPHdrSupportVersionRange tPHdrSupportVersionRange2) {
        if (tPHdrSupportVersionRange.lowerboundPatchVersion == tPHdrSupportVersionRange2.lowerboundPatchVersion && tPHdrSupportVersionRange.lowerboundSystemVersion == tPHdrSupportVersionRange2.lowerboundSystemVersion && tPHdrSupportVersionRange.upperboundPatchVersion == tPHdrSupportVersionRange2.upperboundPatchVersion && tPHdrSupportVersionRange.upperboundSystemVersion == tPHdrSupportVersionRange2.upperboundSystemVersion) {
            return true;
        }
        return false;
    }

    public static boolean isVMediaCodecBlackListModel() {
        return mVMediaCodecBlackListModel.contains(TPSystemInfo.getDeviceName());
    }

    private static <K, T> void replace(K k, T t, HashMap<K, T> hashMap) {
        if (hashMap.containsKey(k)) {
            hashMap.remove(k);
            hashMap.put(k, t);
            return;
        }
        hashMap.put(k, t);
    }

    private static int selectBestDecodeLevelFromCapabilityTable(int i, int i2, int i3) {
        String concat;
        DefinitionName[] values;
        VideoSwCapabilityModel videoSwCapabilityModel = mVideoCodecIdToSwCapabilityModel.get(i);
        if (videoSwCapabilityModel == null) {
            concat = "No corresponding codec id found, codecId:".concat(String.valueOf(i));
        } else {
            HashMap<DefinitionName, String> hashMap = videoSwCapabilityModel.mCpuProducerToAllDefinitionDecTable.get(i2);
            if (hashMap != null && !hashMap.isEmpty()) {
                for (DefinitionName definitionName : DefinitionName.values()) {
                    String str = hashMap.get(definitionName);
                    if (!TextUtils.isEmpty(str) && i3 >= TPSystemInfo.getCpuHWProductIndex(i2, str)) {
                        return convertDefinitionNameToDecodeLevel(definitionName);
                    }
                }
                return -1;
            }
            concat = "No corresponding cpu producer found, cpuHwProducer:".concat(String.valueOf(i2));
        }
        TPNativeLog.printLog(3, TAG, concat);
        return -1;
    }

    public static void setMediaCodecPreferredSoftwareComponent(boolean z) {
        mPreferredSoftwareComponent = z;
    }
}
