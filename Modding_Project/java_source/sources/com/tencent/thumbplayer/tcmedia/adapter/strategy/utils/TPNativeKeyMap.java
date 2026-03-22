package com.tencent.thumbplayer.tcmedia.adapter.strategy.utils;

import com.tencent.thumbplayer.tcmedia.api.ITPPlayer;
import com.tencent.thumbplayer.tcmedia.api.TPAudioAVSyncStrategy;
import com.tencent.thumbplayer.tcmedia.api.TPAudioAttributes;
import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.api.TPDrmInfo;
import com.tencent.thumbplayer.tcmedia.api.TPErrorCode;
import com.tencent.thumbplayer.tcmedia.api.TPFeatureType;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerDetailInfo;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMsg;
import com.tencent.thumbplayer.tcmedia.api.TPPropertyID;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.tcmedia.api.TPThreadPriority;
import com.tencent.thumbplayer.tcmedia.api.TPVideoSeiH264Type;
import com.tencent.thumbplayer.tcmedia.api.TPVideoSeiHevcType;
import com.tencent.thumbplayer.tcmedia.api.connection.TPPlayerConnectionConstant;
import com.tencent.thumbplayer.tcmedia.core.common.TPDetailInfo;
import com.tencent.thumbplayer.tcmedia.core.common.TPNativeAudioAttributes;
import com.tencent.thumbplayer.tcmedia.core.player.TPGeneralPlayFlowParams;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* loaded from: classes6.dex */
public class TPNativeKeyMap {
    public static final int INVALID_VALUE = -1;

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = 0, searchClass = TPAudioAVSyncStrategy.class, tpDefValue = 0, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapAudioAVSyncStrategy {
        @TPCommonEnum.InnerAudioAVSyncStrategy
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapAudioCodecType {
        @TPCommonEnum.InnerAudioCodecType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapAudioDecoderType {
        @TPCommonEnum.InnerAudioDecoderType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapAudioSampleFormat {
        @TPCommonEnum.InnerAudioSampleFormat
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = 1, searchClass = TPCommonEnum.class, tpDefValue = 1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapBufferStrategy {
        @TPCommonEnum.InnerBufferStrategy
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = 0, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapCodecType {
        @TPCommonEnum.InnerVideoCodecType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPPlayerConnectionConstant.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapConnectionAction {
        @TPCommonEnum.NativeConnectionAction
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPPlayerConnectionConstant.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapConnectionConfig {
        @TPCommonEnum.NativeConnectionConfig
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapDemuxerType {
        @TPCommonEnum.InnerDemuxerType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPPlayerDetailInfo.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapDetailInfoType {
        @TPDetailInfo.TPDetailInfoType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapDrmType {
        @TPCommonEnum.InnerDrmType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = 1001, searchClass = TPErrorCode.class, tpDefValue = 1001, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapErrorType {
        @TPCommonEnum.NativeErrorType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPFeatureType.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapFeatureType {
        @TPCommonEnum.InnerFeatureType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = 0, searchClass = TPCommonEnum.class, tpDefValue = 0, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapHdrType {
        @TPCommonEnum.InnerHDRType
        int value();
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapInitConfig {
        String keyName();

        @TPCommonEnum.OptionalIdType
        int type();

        @TPCommonEnum.NativeInitConfig
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapMediaType {
        @TPCommonEnum.InnerMediaType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPPlayerMsg.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapMsgInfo {
        @TPCommonEnum.NativeMsgInfo
        int value();
    }

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapOptionalId {
        String keyName();

        @TPCommonEnum.OptionalIdType
        int type();

        @TPCommonEnum.NativeOptionalId
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapPixelFormat {
        @TPCommonEnum.InnerPixelFormat
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPPropertyID.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapPropertyId {
        @TPCommonEnum.NativePropertyId
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = 0, searchClass = TPCommonEnum.class, tpDefValue = 0, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapReduceLantencyType {
        @TPCommonEnum.InnerReduceLantencyType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPDrmInfo.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapReportDrmType {
        @TPGeneralPlayFlowParams.TPDrmType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = 2, searchClass = ITPPlayer.class, tpDefValue = 2, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapSeekMode {
        @TPCommonEnum.NativeSeekMode
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPSubtitleRenderModel.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapSubtitleFontStyle {
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPSubtitleFrameBuffer.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapSubtitleFormat {
        @TPCommonEnum.InnerSubtitleFormat
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPSubtitleRenderModel.class, tpDefValue = -1, valueClass = long.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapSubtitleRenderParams {
        long value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = 0, searchClass = ITPPlayer.class, tpDefValue = 1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapSwitchDefMode {
        @TPCommonEnum.NativeSwitchDefMode
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = 0, searchClass = TPAudioAttributes.class, tpDefValue = 0, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapTPAudioAttributeContentType {
        @TPNativeAudioAttributes.TPNativeAudioAttributeContentType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = 0, searchClass = TPAudioAttributes.class, tpDefValue = 0, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapTPAudioAttributeFlag {
        @TPNativeAudioAttributes.TPNativeAudioAttributeFlag
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPAudioAttributes.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapTPAudioAttributeStreamType {
        @TPNativeAudioAttributes.TPNativeAudioAttributeStreamType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = 0, searchClass = TPAudioAttributes.class, tpDefValue = 0, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapTPAudioAttributeUsage {
        @TPNativeAudioAttributes.TPNativeAudioAttributeUsage
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPThreadPriority.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapThreadPriorityType {
        @TPCommonEnum.InnerThreadPriority
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = 2, searchClass = TPCommonEnum.class, tpDefValue = 2, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapVideoColorSpace {
        @TPCommonEnum.InnerVideoColorSpace
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPCommonEnum.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapVideoDecoderType {
        @TPCommonEnum.InnerVideoDecoderType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPVideoSeiH264Type.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapVideoH264SeiType {
        @TPCommonEnum.InnerVideoH264SeiType
        int value();
    }

    @Target({ElementType.FIELD})
    @SearchConfig(nativeDefValue = -1, searchClass = TPVideoSeiHevcType.class, tpDefValue = -1, valueClass = int.class)
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface MapVideoHevcSeiType {
        @TPCommonEnum.InnerVideoHevcSeiType
        int value();
    }

    @Target({ElementType.ANNOTATION_TYPE})
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes6.dex */
    public @interface SearchConfig {
        long nativeDefValue();

        Class<?> searchClass();

        long tpDefValue();

        Class<? extends Number> valueClass();
    }
}
