package com.tencent.vod.flutter;

import android.text.TextUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.tencent.liteav.txcplayer.model.TXSubtitleRenderModel;
import com.tencent.rtmp.TXLivePlayConfig;
import com.tencent.rtmp.TXVodPlayConfig;
import com.tencent.vod.flutter.messages.FtxMessages;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXTransformation {
    private static boolean doubleIsNotEmpty(Double d) {
        if (d != null && d.doubleValue() > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            return true;
        }
        return false;
    }

    private static boolean floatIsNotEmpty(Float f) {
        if (f != null && f.floatValue() > 0.0f) {
            return true;
        }
        return false;
    }

    private static boolean intIsNotEmpty(Integer num) {
        if (num != null && num.intValue() > 0) {
            return true;
        }
        return false;
    }

    public static TXSubtitleRenderModel transToTitleRenderModel(FtxMessages.SubTitleRenderModelPlayerMsg subTitleRenderModelPlayerMsg) {
        TXSubtitleRenderModel tXSubtitleRenderModel = new TXSubtitleRenderModel();
        if (subTitleRenderModelPlayerMsg.getCanvasWidth() != null) {
            tXSubtitleRenderModel.canvasWidth = subTitleRenderModelPlayerMsg.getCanvasWidth().intValue();
        }
        if (subTitleRenderModelPlayerMsg.getCanvasHeight() != null) {
            tXSubtitleRenderModel.canvasHeight = subTitleRenderModelPlayerMsg.getCanvasHeight().intValue();
        }
        tXSubtitleRenderModel.familyName = subTitleRenderModelPlayerMsg.getFamilyName();
        if (subTitleRenderModelPlayerMsg.getFontSize() != null) {
            tXSubtitleRenderModel.fontSize = subTitleRenderModelPlayerMsg.getFontSize().floatValue();
        }
        if (subTitleRenderModelPlayerMsg.getFontScale() != null) {
            tXSubtitleRenderModel.fontScale = subTitleRenderModelPlayerMsg.getFontScale().floatValue();
        }
        if (subTitleRenderModelPlayerMsg.getFontColor() != null) {
            tXSubtitleRenderModel.fontColor = subTitleRenderModelPlayerMsg.getFontColor().intValue();
        }
        if (subTitleRenderModelPlayerMsg.getIsBondFontStyle() != null) {
            tXSubtitleRenderModel.isBondFontStyle = subTitleRenderModelPlayerMsg.getIsBondFontStyle().booleanValue();
        }
        if (subTitleRenderModelPlayerMsg.getOutlineWidth() != null) {
            tXSubtitleRenderModel.outlineWidth = subTitleRenderModelPlayerMsg.getOutlineWidth().floatValue();
        }
        if (subTitleRenderModelPlayerMsg.getOutlineColor() != null) {
            tXSubtitleRenderModel.outlineColor = subTitleRenderModelPlayerMsg.getOutlineColor().intValue();
        }
        if (subTitleRenderModelPlayerMsg.getLineSpace() != null) {
            tXSubtitleRenderModel.lineSpace = subTitleRenderModelPlayerMsg.getLineSpace().floatValue();
        }
        if (subTitleRenderModelPlayerMsg.getStartMargin() != null) {
            tXSubtitleRenderModel.startMargin = subTitleRenderModelPlayerMsg.getStartMargin().floatValue();
        }
        if (subTitleRenderModelPlayerMsg.getEndMargin() != null) {
            tXSubtitleRenderModel.endMargin = subTitleRenderModelPlayerMsg.getEndMargin().floatValue();
        }
        if (subTitleRenderModelPlayerMsg.getVerticalMargin() != null) {
            tXSubtitleRenderModel.verticalMargin = subTitleRenderModelPlayerMsg.getVerticalMargin().floatValue();
        }
        return tXSubtitleRenderModel;
    }

    public static TXLivePlayConfig transformToLiveConfig(FtxMessages.FTXLivePlayConfigPlayerMsg fTXLivePlayConfigPlayerMsg) {
        TXLivePlayConfig tXLivePlayConfig = new TXLivePlayConfig();
        if (fTXLivePlayConfigPlayerMsg.getCacheTime() != null) {
            tXLivePlayConfig.setCacheTime(fTXLivePlayConfigPlayerMsg.getCacheTime().floatValue());
        }
        if (fTXLivePlayConfigPlayerMsg.getMaxAutoAdjustCacheTime() != null) {
            tXLivePlayConfig.setMaxAutoAdjustCacheTime(fTXLivePlayConfigPlayerMsg.getMaxAutoAdjustCacheTime().floatValue());
        }
        if (fTXLivePlayConfigPlayerMsg.getMinAutoAdjustCacheTime() != null) {
            tXLivePlayConfig.setMinAutoAdjustCacheTime(fTXLivePlayConfigPlayerMsg.getMinAutoAdjustCacheTime().floatValue());
        }
        if (fTXLivePlayConfigPlayerMsg.getVideoBlockThreshold() != null) {
            tXLivePlayConfig.setVideoBlockThreshold(fTXLivePlayConfigPlayerMsg.getVideoBlockThreshold().intValue());
        }
        if (fTXLivePlayConfigPlayerMsg.getConnectRetryCount() != null) {
            tXLivePlayConfig.setConnectRetryCount(fTXLivePlayConfigPlayerMsg.getConnectRetryCount().intValue());
        }
        if (fTXLivePlayConfigPlayerMsg.getConnectRetryInterval() != null) {
            tXLivePlayConfig.setConnectRetryInterval(fTXLivePlayConfigPlayerMsg.getConnectRetryInterval().intValue());
        }
        if (fTXLivePlayConfigPlayerMsg.getAutoAdjustCacheTime() != null) {
            tXLivePlayConfig.setAutoAdjustCacheTime(fTXLivePlayConfigPlayerMsg.getAutoAdjustCacheTime().booleanValue());
        }
        if (fTXLivePlayConfigPlayerMsg.getEnableAec() != null) {
            tXLivePlayConfig.setEnableAEC(fTXLivePlayConfigPlayerMsg.getEnableAec().booleanValue());
        }
        if (fTXLivePlayConfigPlayerMsg.getEnableMessage() != null) {
            tXLivePlayConfig.setEnableMessage(fTXLivePlayConfigPlayerMsg.getEnableMessage().booleanValue());
        }
        if (fTXLivePlayConfigPlayerMsg.getEnableMetaData() != null) {
            tXLivePlayConfig.setEnableMetaData(fTXLivePlayConfigPlayerMsg.getEnableMetaData().booleanValue());
        }
        tXLivePlayConfig.setFlvSessionKey(fTXLivePlayConfigPlayerMsg.getFlvSessionKey());
        return tXLivePlayConfig;
    }

    public static TXVodPlayConfig transformToVodConfig(FtxMessages.FTXVodPlayConfigPlayerMsg fTXVodPlayConfigPlayerMsg) {
        TXVodPlayConfig tXVodPlayConfig = new TXVodPlayConfig();
        if (fTXVodPlayConfigPlayerMsg.getConnectRetryCount() != null) {
            tXVodPlayConfig.setConnectRetryCount(fTXVodPlayConfigPlayerMsg.getConnectRetryCount().intValue());
        }
        if (fTXVodPlayConfigPlayerMsg.getProgressInterval() != null) {
            tXVodPlayConfig.setConnectRetryInterval(fTXVodPlayConfigPlayerMsg.getProgressInterval().intValue());
        }
        if (fTXVodPlayConfigPlayerMsg.getTimeout() != null) {
            tXVodPlayConfig.setTimeout(fTXVodPlayConfigPlayerMsg.getTimeout().intValue());
        }
        if (fTXVodPlayConfigPlayerMsg.getPlayerType() != null) {
            tXVodPlayConfig.setPlayerType(fTXVodPlayConfigPlayerMsg.getPlayerType().intValue());
        }
        tXVodPlayConfig.setHeaders(fTXVodPlayConfigPlayerMsg.getHeaders());
        if (fTXVodPlayConfigPlayerMsg.getEnableAccurateSeek() != null) {
            tXVodPlayConfig.setEnableAccurateSeek(fTXVodPlayConfigPlayerMsg.getEnableAccurateSeek().booleanValue());
        }
        if (fTXVodPlayConfigPlayerMsg.getAutoRotate() != null) {
            tXVodPlayConfig.setAutoRotate(fTXVodPlayConfigPlayerMsg.getAutoRotate().booleanValue());
        }
        if (fTXVodPlayConfigPlayerMsg.getSmoothSwitchBitrate() != null) {
            tXVodPlayConfig.setSmoothSwitchBitrate(fTXVodPlayConfigPlayerMsg.getSmoothSwitchBitrate().booleanValue());
        }
        tXVodPlayConfig.setCacheMp4ExtName(fTXVodPlayConfigPlayerMsg.getCacheMp4ExtName());
        if (fTXVodPlayConfigPlayerMsg.getProgressInterval() != null) {
            tXVodPlayConfig.setProgressInterval(fTXVodPlayConfigPlayerMsg.getProgressInterval().intValue());
        }
        if (fTXVodPlayConfigPlayerMsg.getMaxBufferSize() != null) {
            tXVodPlayConfig.setMaxBufferSize(fTXVodPlayConfigPlayerMsg.getMaxBufferSize().floatValue());
        }
        if (fTXVodPlayConfigPlayerMsg.getMaxPreloadSize() != null) {
            tXVodPlayConfig.setMaxPreloadSize(fTXVodPlayConfigPlayerMsg.getMaxPreloadSize().floatValue());
        }
        if (fTXVodPlayConfigPlayerMsg.getFirstStartPlayBufferTime() != null) {
            tXVodPlayConfig.setFirstStartPlayBufferTime(fTXVodPlayConfigPlayerMsg.getFirstStartPlayBufferTime().intValue());
        }
        if (fTXVodPlayConfigPlayerMsg.getNextStartPlayBufferTime() != null) {
            tXVodPlayConfig.setNextStartPlayBufferTime(fTXVodPlayConfigPlayerMsg.getNextStartPlayBufferTime().intValue());
        }
        tXVodPlayConfig.setOverlayKey(fTXVodPlayConfigPlayerMsg.getOverlayKey());
        tXVodPlayConfig.setOverlayIv(fTXVodPlayConfigPlayerMsg.getOverlayIv());
        tXVodPlayConfig.setExtInfo(fTXVodPlayConfigPlayerMsg.getExtInfoMap());
        if (fTXVodPlayConfigPlayerMsg.getEnableRenderProcess() != null) {
            tXVodPlayConfig.setEnableRenderProcess(fTXVodPlayConfigPlayerMsg.getEnableRenderProcess().booleanValue());
        }
        if (fTXVodPlayConfigPlayerMsg.getPreferredResolution() != null) {
            tXVodPlayConfig.setPreferredResolution(fTXVodPlayConfigPlayerMsg.getPreferredResolution().longValue());
        }
        tXVodPlayConfig.setPreferredAudioTrack(fTXVodPlayConfigPlayerMsg.getPreferAudioTrack());
        tXVodPlayConfig.setMediaType(fTXVodPlayConfigPlayerMsg.getMediaType().intValue());
        tXVodPlayConfig.setEncryptedMp4Level(fTXVodPlayConfigPlayerMsg.getEncryptedMp4Level().intValue());
        return tXVodPlayConfig;
    }

    public static TXLivePlayConfig transformToLiveConfig(Map<Object, Object> map) {
        TXLivePlayConfig tXLivePlayConfig = new TXLivePlayConfig();
        Double d = (Double) map.get("cacheTime");
        if (doubleIsNotEmpty(d)) {
            tXLivePlayConfig.setCacheTime(d.floatValue());
        }
        Double d2 = (Double) map.get("maxAutoAdjustCacheTime");
        if (doubleIsNotEmpty(d2)) {
            tXLivePlayConfig.setMaxAutoAdjustCacheTime(d2.floatValue());
        }
        Double d3 = (Double) map.get("minAutoAdjustCacheTime");
        if (doubleIsNotEmpty(d3)) {
            tXLivePlayConfig.setMinAutoAdjustCacheTime(d3.floatValue());
        }
        Integer num = (Integer) map.get("videoBlockThreshold");
        if (intIsNotEmpty(num)) {
            tXLivePlayConfig.setVideoBlockThreshold(num.intValue());
        }
        Integer num2 = (Integer) map.get("connectRetryCount");
        if (intIsNotEmpty(num2)) {
            tXLivePlayConfig.setConnectRetryCount(num2.intValue());
        }
        Integer num3 = (Integer) map.get("connectRetryInterval");
        if (intIsNotEmpty(num3)) {
            tXLivePlayConfig.setConnectRetryInterval(num3.intValue());
        }
        Boolean bool = (Boolean) map.get("autoAdjustCacheTime");
        if (bool != null) {
            tXLivePlayConfig.setAutoAdjustCacheTime(bool.booleanValue());
        }
        Boolean bool2 = (Boolean) map.get("enableAec");
        if (bool2 != null) {
            tXLivePlayConfig.setEnableAEC(bool2.booleanValue());
        }
        Boolean bool3 = (Boolean) map.get("enableMessage");
        if (bool3 != null) {
            tXLivePlayConfig.setEnableMessage(bool3.booleanValue());
        }
        Boolean bool4 = (Boolean) map.get("enableMetaData");
        if (bool4 != null) {
            tXLivePlayConfig.setEnableMetaData(bool4.booleanValue());
        }
        String str = (String) map.get("flvSessionKey");
        if (!TextUtils.isEmpty(str)) {
            tXLivePlayConfig.setFlvSessionKey(str);
        }
        return tXLivePlayConfig;
    }

    public static TXVodPlayConfig transformToVodConfig(Map<Object, Object> map) {
        TXVodPlayConfig tXVodPlayConfig = new TXVodPlayConfig();
        Integer num = (Integer) map.get("connectRetryCount");
        if (intIsNotEmpty(num)) {
            tXVodPlayConfig.setConnectRetryCount(num.intValue());
        }
        Integer num2 = (Integer) map.get("connectRetryInterval");
        if (intIsNotEmpty(num2)) {
            tXVodPlayConfig.setConnectRetryInterval(num2.intValue());
        }
        Integer num3 = (Integer) map.get("timeout");
        if (intIsNotEmpty(num3)) {
            tXVodPlayConfig.setTimeout(num3.intValue());
        }
        Integer num4 = (Integer) map.get("playerType");
        if (num4 != null) {
            tXVodPlayConfig.setPlayerType(num4.intValue());
        }
        Map<String, String> map2 = (Map) map.get("headers");
        if (map2 == null) {
            map2 = new HashMap<>();
        }
        tXVodPlayConfig.setHeaders(map2);
        Boolean bool = (Boolean) map.get("enableAccurateSeek");
        if (bool != null) {
            tXVodPlayConfig.setEnableAccurateSeek(bool.booleanValue());
        }
        Boolean bool2 = (Boolean) map.get("autoRotate");
        if (bool2 != null) {
            tXVodPlayConfig.setAutoRotate(bool2.booleanValue());
        }
        Boolean bool3 = (Boolean) map.get("smoothSwitchBitrate");
        if (bool3 != null) {
            tXVodPlayConfig.setSmoothSwitchBitrate(bool3.booleanValue());
        }
        String str = (String) map.get("cacheMp4ExtName");
        if (!TextUtils.isEmpty(str)) {
            tXVodPlayConfig.setCacheMp4ExtName(str);
        }
        Integer num5 = (Integer) map.get("progressInterval");
        if (intIsNotEmpty(num5)) {
            tXVodPlayConfig.setProgressInterval(num5.intValue());
        }
        Float f = (Float) map.get("maxBufferSize");
        if (floatIsNotEmpty(f)) {
            tXVodPlayConfig.setMaxBufferSize(f.floatValue());
        }
        Float f2 = (Float) map.get("maxPreloadSize");
        if (floatIsNotEmpty(f2)) {
            tXVodPlayConfig.setMaxPreloadSize(f2.floatValue());
        }
        Integer num6 = (Integer) map.get("firstStartPlayBufferTime");
        if (num6 != null) {
            tXVodPlayConfig.setFirstStartPlayBufferTime(num6.intValue());
        }
        Integer num7 = (Integer) map.get("nextStartPlayBufferTime");
        if (num7 != null) {
            tXVodPlayConfig.setNextStartPlayBufferTime(num7.intValue());
        }
        String str2 = (String) map.get("overlayKey");
        if (!TextUtils.isEmpty(str2)) {
            tXVodPlayConfig.setOverlayKey(str2);
        }
        String str3 = (String) map.get("overlayIv");
        if (!TextUtils.isEmpty(str3)) {
            tXVodPlayConfig.setOverlayIv(str3);
        }
        Map<String, Object> map3 = (Map) map.get("extInfoMap");
        if (map3 == null) {
            map3 = new HashMap<>();
        }
        tXVodPlayConfig.setExtInfo(map3);
        Boolean bool4 = (Boolean) map.get("enableRenderProcess");
        if (bool4 != null) {
            tXVodPlayConfig.setEnableRenderProcess(bool4.booleanValue());
        }
        String str4 = (String) map.get("preferredResolution");
        if (str4 != null) {
            tXVodPlayConfig.setPreferredResolution(Long.parseLong(str4));
        }
        return tXVodPlayConfig;
    }
}
