package com.tencent.liteav.thumbplayer;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.media3.common.C;
import com.appsflyer.AppsFlyerProperties;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.SoLoader;
import com.tencent.liteav.sdk.common.LicenseChecker;
import com.tencent.liteav.txcplayer.a;
import com.tencent.liteav.txcplayer.b;
import com.tencent.liteav.txcplayer.c;
import com.tencent.liteav.txcplayer.e;
import com.tencent.liteav.txcplayer.model.TXSubtitleRenderModel;
import com.tencent.liteav.txcplayer.model.c;
import com.tencent.liteav.txcvodplayer.b.c;
import com.tencent.liteav.txcvodplayer.hlsencoder.TXCHLSEncoder;
import com.tencent.rtmp.TXVodConstants;
import com.tencent.thumbplayer.tcmedia.api.ITPModuleLoader;
import com.tencent.thumbplayer.tcmedia.api.ITPPlayer;
import com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener;
import com.tencent.thumbplayer.tcmedia.api.TPAudioFrameBuffer;
import com.tencent.thumbplayer.tcmedia.api.TPOptionalParam;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerFactory;
import com.tencent.thumbplayer.tcmedia.api.TPPlayerMgr;
import com.tencent.thumbplayer.tcmedia.api.TPProgramInfo;
import com.tencent.thumbplayer.tcmedia.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.tcmedia.api.TPTrackInfo;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAsset;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetExtraParam;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaAssetOrderedMap;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaDRMAsset;
import com.tencent.thumbplayer.tcmedia.api.composition.ITPMediaUrlAsset;
import com.tencent.thumbplayer.tcmedia.api.composition.TPMediaCompositionFactory;
import com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig;
import com.tencent.thumbplayer.tcmedia.core.common.TPSystemInfo;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.ITPDownloadProxy;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDLProxyInitParam;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyFactory;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ThumbMediaPlayer extends a implements b {
    private static int MODE_PHONE = 0;
    private static int MODE_TV = 1;
    private static final String THUMB_PLAYER_GUID = "liteav_tbplayer_android_";
    private static final int THUMB_PLAYER_PLATFORM_ID = 2330303;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public static final /* synthetic */ int f10288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
    private static volatile boolean mSDKInited = false;
    private e mConfig;
    private Context mContext;
    private String mDataSource;
    private boolean mIsLooping;
    private boolean mIsPlayerReleased;
    private Map<String, Object> mPrivateConfig;
    private float mRate;
    private boolean mReuseSurfaceTexture;
    private boolean mScreenOnWhilePlaying;
    private Surface mSurface;
    private SurfaceHolder mSurfaceHolder;
    private SurfaceTexture mSurfaceTexture;
    private c mSurfaceTextureHost;
    private volatile ITPPlayer mTPPPlayer;
    private final String TAG = ThumbMediaPlayer.class.getName();
    private boolean mEnableAccurateSeek = false;
    private PowerManager.WakeLock mWakeLock = null;
    private int mBitrateIndex = -1000;
    private long mCachedBytes = 0;
    private long mBitrate = 0;
    private long mTcpSpeed = 0;
    private long mTotalFileSize = 0;
    private boolean mHasReceiveFirstVideoRenderEvent = false;
    private Object mTrtcCloud = null;
    private boolean mIsSetDefaultBufferSize = false;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class TRTCCloudClassInvokeHelper {
        private static final String TAG = "com.tencent.liteav.thumbplayer.ThumbMediaPlayer$TRTCCloudClassInvokeHelper";
        private static TRTCCloudClassInvokeHelper mInstance;
        private Class mClazzTRTCAudioFrame;
        private Class mClazzTRTCCloud;
        private Field mFieldChannel;
        private Field mFieldData;
        private Field mFieldSampleRate;
        private Method mMethodMixExternalAudioFrame;

        private TRTCCloudClassInvokeHelper(Object obj) {
            if (obj != null) {
                try {
                    this.mClazzTRTCCloud = obj.getClass();
                    Class<?> cls = Class.forName("com.tencent.trtc.TRTCCloudDef$TRTCAudioFrame");
                    this.mClazzTRTCAudioFrame = cls;
                    this.mFieldData = cls.getDeclaredField("data");
                    this.mFieldSampleRate = this.mClazzTRTCAudioFrame.getDeclaredField("sampleRate");
                    this.mFieldChannel = this.mClazzTRTCAudioFrame.getDeclaredField(AppsFlyerProperties.CHANNEL);
                    this.mMethodMixExternalAudioFrame = this.mClazzTRTCCloud.getDeclaredMethod("mixExternalAudioFrame", this.mClazzTRTCAudioFrame);
                } catch (Exception e) {
                    String str = TAG;
                    LiteavLog.e(str, "init TRTCCloudClassInvokeWrapper error: " + e.getMessage());
                }
            }
        }

        public static TRTCCloudClassInvokeHelper getInstance(Object obj) {
            if (mInstance == null) {
                mInstance = new TRTCCloudClassInvokeHelper(obj);
            }
            return mInstance;
        }

        public void mixExternalAudioFrame(Object obj, TPAudioFrameBuffer tPAudioFrameBuffer) {
            if (obj != null) {
                try {
                    Object newInstance = this.mClazzTRTCAudioFrame.newInstance();
                    this.mFieldData.set(newInstance, tPAudioFrameBuffer.data[0]);
                    this.mFieldSampleRate.set(newInstance, Integer.valueOf(tPAudioFrameBuffer.sampleRate));
                    this.mFieldChannel.set(newInstance, Integer.valueOf(tPAudioFrameBuffer.channels));
                    this.mMethodMixExternalAudioFrame.invoke(obj, newInstance);
                } catch (Exception e) {
                    LiteavLog.e(TAG, "mixExternalAudioFrame method error ", e);
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class TXSDKModuleLoader implements ITPModuleLoader {
        private TXSDKModuleLoader() {
        }

        @Override // com.tencent.thumbplayer.tcmedia.api.ITPModuleLoader
        public void loadLibrary(String str, String str2) {
            SoLoader.loadLibrary(str);
        }
    }

    public ThumbMediaPlayer(Context context) {
        synchronized (ThumbMediaPlayer.class) {
            try {
                if (!mSDKInited) {
                    setTPSystemInfo();
                    setTPPLibCustomLoader();
                    TPPlayerMgr.initSdk(context, THUMB_PLAYER_GUID + context.getPackageName(), THUMB_PLAYER_PLATFORM_ID);
                    TPPlayerMgr.setDebugEnable(false);
                    mSDKInited = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.mTPPPlayer == null) {
            TPPlayerMgr.setDebugEnable(false);
            this.mTPPPlayer = TPPlayerFactory.createTPPlayer(context);
            ThumbMediaPlayerListener thumbMediaPlayerListener = new ThumbMediaPlayerListener(this);
            thumbMediaPlayerListener.attachToPlayer();
            innerLogI("[ITPPlayer:" + this.mTPPPlayer.hashCode() + "][ThumbMediaPlayerListener:" + thumbMediaPlayerListener.hashCode() + "], new ThumbMediaPlayer");
        }
        this.mContext = context;
    }

    private int checkDlType() {
        e eVar = this.mConfig;
        if (eVar == null) {
            return 0;
        }
        int i = eVar.D;
        if (i == 1) {
            return 3;
        }
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    return 0;
                }
                return 19;
            }
            return 10;
        }
        return 5;
    }

    public static boolean clearAllOnlineCache(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        ITPDownloadProxy tPDownloadProxy = TPDownloadProxyFactory.getTPDownloadProxy(THUMB_PLAYER_PLATFORM_ID);
        tPDownloadProxy.init(context, new TPDLProxyInitParam(THUMB_PLAYER_PLATFORM_ID, "1.0.0", THUMB_PLAYER_GUID + context.getPackageName(), str));
        if (tPDownloadProxy.clearCache(str, "", 8, -1L) != 0) {
            return false;
        }
        return true;
    }

    private TPSubtitleRenderModel convertToTPSubtitleRenderModel(TXSubtitleRenderModel tXSubtitleRenderModel) {
        int i;
        TPSubtitleRenderModel tPSubtitleRenderModel = new TPSubtitleRenderModel();
        int i2 = tXSubtitleRenderModel.canvasHeight;
        if (i2 != 0 && (i = tXSubtitleRenderModel.canvasWidth) != 0) {
            tPSubtitleRenderModel.canvasWidth = i;
            tPSubtitleRenderModel.canvasHeight = i2;
            long j = tPSubtitleRenderModel.paramFlags;
            tPSubtitleRenderModel.paramFlags = 3 | j;
            float f = tXSubtitleRenderModel.fontSize;
            if (f != 0.0f) {
                tPSubtitleRenderModel.fontSize = f;
                tPSubtitleRenderModel.paramFlags = j | 7;
            }
            float f2 = tXSubtitleRenderModel.outlineWidth;
            if (f2 != 0.0f) {
                tPSubtitleRenderModel.outlineWidth = f2;
                tPSubtitleRenderModel.paramFlags |= 16;
            }
            float f3 = tXSubtitleRenderModel.lineSpace;
            if (f3 != 0.0f) {
                tPSubtitleRenderModel.lineSpace = f3;
                tPSubtitleRenderModel.paramFlags |= 64;
            }
        }
        float f4 = tXSubtitleRenderModel.fontScale;
        if (f4 != 0.0f) {
            tPSubtitleRenderModel.fontScale = f4;
            tPSubtitleRenderModel.paramFlags |= 2048;
        }
        String str = tXSubtitleRenderModel.familyName;
        if (str != null) {
            tPSubtitleRenderModel.familyName = str;
        }
        int i3 = tXSubtitleRenderModel.fontColor;
        if (i3 != 0) {
            tPSubtitleRenderModel.fontColor = i3;
            tPSubtitleRenderModel.paramFlags |= 8;
        }
        if (tXSubtitleRenderModel.isBondFontStyle) {
            tPSubtitleRenderModel.fontStyleFlags |= 1;
            tPSubtitleRenderModel.paramFlags |= 1024;
        }
        int i4 = tXSubtitleRenderModel.outlineColor;
        if (i4 != 0) {
            tPSubtitleRenderModel.outlineColor = i4;
            tPSubtitleRenderModel.paramFlags |= 32;
        }
        float f5 = tXSubtitleRenderModel.startMargin;
        if (f5 != 0.0f) {
            tPSubtitleRenderModel.lineSpace = f5;
            tPSubtitleRenderModel.paramFlags |= 128;
        }
        float f6 = tXSubtitleRenderModel.endMargin;
        if (f6 != 0.0f) {
            tPSubtitleRenderModel.endMargin = f6;
            tPSubtitleRenderModel.paramFlags |= 256;
        }
        float f7 = tXSubtitleRenderModel.verticalMargin;
        if (f7 != 0.0f) {
            tPSubtitleRenderModel.verticalMargin = f7;
            tPSubtitleRenderModel.paramFlags |= 512;
        }
        return tPSubtitleRenderModel;
    }

    private ITPMediaAsset handleDRMAsset(String str) {
        Map<String, Object> map = this.mPrivateConfig;
        if (map != null) {
            Object obj = map.get("TXC_DRM_ENABLE");
            if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                Object obj2 = this.mPrivateConfig.get("TXC_DRM_KEY_URL");
                Object obj3 = this.mPrivateConfig.get("TXC_DRM_PROVISION_URL");
                if ((obj2 instanceof String) && (obj3 instanceof String)) {
                    String str2 = (String) obj2;
                    if (!TextUtils.isEmpty(str2)) {
                        String str3 = (String) obj3;
                        if (!TextUtils.isEmpty(str3)) {
                            ITPMediaDRMAsset createMediaDRMAsset = TPMediaCompositionFactory.createMediaDRMAsset(0, str);
                            createMediaDRMAsset.setDrmProperty(ITPMediaDRMAsset.TP_PLAYER_DRM_PROPERTY_PROVISION_URL, str3);
                            createMediaDRMAsset.setDrmProperty(ITPMediaDRMAsset.TP_PLAYER_DRM_PROPERTY_LICENSE_URL, str2);
                            createMediaDRMAsset.setDrmProperty(ITPMediaDRMAsset.TP_PLAYER_DRM_PROPERTY_LICENSE_STANDARDIZATION, "1");
                            return createMediaDRMAsset;
                        }
                    }
                }
                Object obj4 = this.mPrivateConfig.get("TXC_DRM_SIMPLE_AES_URL");
                if (obj4 instanceof String) {
                    String str4 = (String) obj4;
                    if (!TextUtils.isEmpty(str4)) {
                        return TPMediaCompositionFactory.createMediaUrlAsset(str4);
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    private ITPMediaUrlAsset handleUrlAsset(String str) {
        e eVar = this.mConfig;
        if (eVar != null && eVar.g == 1) {
            int i = eVar.r;
            long resolveAdaptivePreferredResolution = resolveAdaptivePreferredResolution(eVar.v);
            String str2 = getConfig().E;
            ITPMediaUrlAsset createMediaUrlAsset = TPMediaCompositionFactory.createMediaUrlAsset(str);
            ITPMediaAssetExtraParam createMediaAssetExtraParam = TPMediaCompositionFactory.createMediaAssetExtraParam();
            if (i > 0 || resolveAdaptivePreferredResolution > 0) {
                ITPMediaAssetOrderedMap createMediaAssetOrderedMap = TPMediaCompositionFactory.createMediaAssetOrderedMap();
                String a2 = com.tencent.liteav.txcplayer.a.a.a(str);
                if (!TextUtils.isEmpty(a2)) {
                    if (a2.toLowerCase().endsWith("m3u8")) {
                        if (i > 0) {
                            createMediaAssetOrderedMap.addKeyValue(ITPMediaAssetOrderedMap.TP_PLAYER_EXTRA_PARAM_HLS_TRACK_BANDWIDTH, String.valueOf(i));
                        } else {
                            createMediaAssetOrderedMap.addKeyValue(ITPMediaAssetOrderedMap.TP_PLAYER_EXTRA_PARAM_HLS_TRACK_LUMA_SAMPLES, String.valueOf(resolveAdaptivePreferredResolution));
                        }
                    } else if (a2.toLowerCase().endsWith("mpd")) {
                        if (i > 0) {
                            createMediaAssetOrderedMap.addKeyValue(ITPMediaAssetOrderedMap.TP_PLAYER_EXTRA_PARAM_DASH_TRACK_BANDWIDTH, String.valueOf(i));
                        } else {
                            createMediaAssetOrderedMap.addKeyValue(ITPMediaAssetOrderedMap.TP_PLAYER_EXTRA_PARAM_DASH_TRACK_LUMA_SAMPLES, String.valueOf(resolveAdaptivePreferredResolution));
                        }
                    }
                    createMediaAssetExtraParam.setExtraObject(ITPMediaAssetExtraParam.TP_PLAYER_EXTRA_PARAM_PREFERRED_VIDEO, createMediaAssetOrderedMap);
                }
            }
            if (!TextUtils.isEmpty(str2) && com.tencent.liteav.txcplayer.common.c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
                ITPMediaAssetOrderedMap createMediaAssetOrderedMap2 = TPMediaCompositionFactory.createMediaAssetOrderedMap();
                createMediaAssetOrderedMap2.addKeyValue(ITPMediaAssetOrderedMap.TP_PLAYER_EXTRA_PARAM_HLS_TRACK_NAME, str2);
                createMediaAssetExtraParam.setExtraObject(ITPMediaAssetExtraParam.TP_PLAYER_EXTRA_PARAM_PREFERRED_AUDIO, createMediaAssetOrderedMap2);
            }
            createMediaUrlAsset.setExtraParam(createMediaAssetExtraParam);
            return createMediaUrlAsset;
        }
        return null;
    }

    private void innerLogE(String str) {
        String str2 = this.TAG;
        LiteavLog.e(str2, "[" + hashCode() + "], " + str);
    }

    private void innerLogI(String str) {
        String str2 = this.TAG;
        LiteavLog.i(str2, "[" + hashCode() + "], " + str);
    }

    private boolean isAssetFile(String str) {
        if (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("asset://")) {
            return true;
        }
        return false;
    }

    private boolean isContentUri(String str) {
        if (!TextUtils.isEmpty(str) && str.toLowerCase().startsWith("content://")) {
            return true;
        }
        return false;
    }

    private boolean isOfflinePlay(String str) {
        if (!TextUtils.isEmpty(str) && str.contains("?") && !str.startsWith("http")) {
            String d = com.tencent.liteav.txcplayer.a.a.d(str.substring(str.indexOf("?") + 1));
            if (!TextUtils.isEmpty(d)) {
                if (str.contains(d + "?")) {
                    return true;
                }
            }
        }
        return false;
    }

    public static /* synthetic */ void lambda$checkSubtitle$0(ThumbMediaPlayer thumbMediaPlayer) {
        TPTrackInfo[] trackInfo = thumbMediaPlayer.getTrackInfo();
        if (trackInfo != null && trackInfo.length != 0) {
            for (int i = 0; i < trackInfo.length; i++) {
                TPTrackInfo tPTrackInfo = trackInfo[i];
                if (tPTrackInfo.trackType == 3 && tPTrackInfo.isInternal && tPTrackInfo.isSelected) {
                    thumbMediaPlayer.deselectTrack(i);
                }
            }
        }
    }

    private void parseExtraConfig(Map<String, Object> map) {
        long longValue;
        float floatValue;
        if (map != null && map.size() != 0) {
            for (String str : map.keySet()) {
                Object obj = map.get(str);
                if (str.equals(TXVodConstants.VOD_USE_DOWNLOADER) && (obj instanceof Boolean)) {
                    TPPlayerConfig.setP2PEnable(((Boolean) obj).booleanValue());
                } else if (str.equals(TXVodConstants.VOD_USE_DRM_L3) && (obj instanceof Boolean)) {
                    this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(510, ((Boolean) obj).booleanValue()));
                } else {
                    try {
                        int parseInt = Integer.parseInt(str);
                        if (obj instanceof Boolean) {
                            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(parseInt, ((Boolean) obj).booleanValue()));
                        } else {
                            if (!(obj instanceof Long) && !(obj instanceof Integer)) {
                                if (!(obj instanceof Float) && !(obj instanceof Double)) {
                                    if (obj instanceof String) {
                                        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildString(parseInt, (String) obj));
                                    } else {
                                        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildObject(parseInt, obj));
                                    }
                                }
                                ITPPlayer iTPPlayer = this.mTPPPlayer;
                                TPOptionalParam tPOptionalParam = new TPOptionalParam();
                                if (obj instanceof Float) {
                                    floatValue = ((Float) obj).floatValue();
                                } else {
                                    floatValue = ((Double) obj).floatValue();
                                }
                                iTPPlayer.setPlayerOptionalParam(tPOptionalParam.buildFloat(parseInt, floatValue));
                            }
                            ITPPlayer iTPPlayer2 = this.mTPPPlayer;
                            TPOptionalParam tPOptionalParam2 = new TPOptionalParam();
                            if (obj instanceof Long) {
                                longValue = ((Long) obj).longValue();
                            } else {
                                longValue = ((Integer) obj).longValue();
                            }
                            iTPPlayer2.setPlayerOptionalParam(tPOptionalParam2.buildLong(parseInt, longValue));
                        }
                    } catch (Exception unused) {
                        innerLogE("key " + str + " is not id!");
                    }
                }
            }
        }
    }

    private long resolveAdaptivePreferredResolution(long j) {
        if (this.mBitrateIndex == -1 && j <= 0) {
            long j2 = this.mConfig.t;
            if (j2 > 0) {
                return j2;
            }
        }
        return j;
    }

    private void setEnableMixExternalAudioFrame() {
        innerLogI("setEnableMixExternalAudioFrame");
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(404, -1L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(120, true));
        this.mTPPPlayer.setOnAudioFrameOutputListener(new ITPPlayerListener.IOnAudioFrameOutputListener() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.2
            {
                ThumbMediaPlayer.this = this;
            }

            @Override // com.tencent.thumbplayer.tcmedia.api.ITPPlayerListener.IOnAudioFrameOutputListener
            public void onAudioFrameOut(ITPPlayer iTPPlayer, TPAudioFrameBuffer tPAudioFrameBuffer) {
                if (ThumbMediaPlayer.this.mTrtcCloud != null) {
                    TRTCCloudClassInvokeHelper.getInstance(ThumbMediaPlayer.this.mTrtcCloud).mixExternalAudioFrame(ThumbMediaPlayer.this.mTrtcCloud, tPAudioFrameBuffer);
                }
            }
        });
    }

    private void setMp4EncryptionInfo(String str, boolean z) {
        boolean z2 = true;
        if (this.mConfig.u == 1 && str != null && !str.isEmpty() && com.tencent.liteav.txcplayer.common.c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
            String d = com.tencent.liteav.txcplayer.a.a.d(str);
            com.tencent.liteav.txcvodplayer.c.a a2 = com.tencent.liteav.txcvodplayer.c.a.a();
            synchronized (a2.b) {
                a2.c.add(d);
            }
            c.b a3 = com.tencent.liteav.txcvodplayer.c.a.a().a(666, d);
            if (a3 != null && !TextUtils.isEmpty(a3.f10327a)) {
                z2 = false;
            } else {
                a3 = new c.b();
                a3.f10327a = TXCHLSEncoder.a();
                a3.b = TXCHLSEncoder.a();
            }
            if (TextUtils.isEmpty(a3.c)) {
                a3.c = TXCHLSEncoder.a(a3.f10327a);
                a3.d = TXCHLSEncoder.a(a3.b);
            }
            if (!TextUtils.isEmpty(a3.c) && !TextUtils.isEmpty(a3.d)) {
                this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildString(184, a3.f10327a));
                this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildString(185, a3.b));
                Map<String, String> map = this.mConfig.h;
                if (map == null) {
                    map = new HashMap<>();
                }
                map.put("X-Request-CipheredOverlayKey", a3.c);
                map.put("X-Request-CipheredOverlayIV", a3.d);
                map.put("X-Request-CipheredOverlayVersion", "v2");
                this.mConfig.h = map;
                if (z2 && z) {
                    com.tencent.liteav.txcvodplayer.c.a.a().a(666, d, a3, str);
                }
            }
        }
    }

    private void setSurfaceToPlayer(Surface surface) {
        this.mSurfaceHolder = null;
        this.mSurface = surface;
        this.mTPPPlayer.setSurface(surface);
        innerLogI("setSurfaceToPlayer: " + this.mSurface);
    }

    private void setTPPLibCustomLoader() {
        try {
            if (!TextUtils.isEmpty(SoLoader.getLibraryPath())) {
                TPPlayerMgr.setLibLoader(new TXSDKModuleLoader());
            }
        } catch (Throwable th) {
            innerLogE("setTPPLibCustomLoader, ex = " + th.getMessage());
        }
    }

    private void setTPSystemInfo() {
        TPSystemInfo.setProperty(TPSystemInfo.KEY_PROPERTY_MODEL, LiteavSystemInfo.getModel());
        TPSystemInfo.setProperty(TPSystemInfo.KEY_PROPERTY_MANUFACTURER, LiteavSystemInfo.getManufacturer());
        TPSystemInfo.setProperty(TPSystemInfo.KEY_PROPERTY_VERSION_RELEASE, LiteavSystemInfo.getSystemOSVersion());
        TPSystemInfo.setProperty(TPSystemInfo.KEY_PROPERTY_BOARD, LiteavSystemInfo.getBoard());
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setVideoInfo(java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.setVideoInfo(java.lang.String):void");
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void addSubtitleSource(String str, String str2, String str3) {
        this.mTPPPlayer.addSubtitleSource(str, str3, str2);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void attachTRTC(Object obj) {
        this.mTrtcCloud = obj;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = Boolean.TYPE;
                cls.getDeclaredMethod("enableMixExternalAudioFrame", cls2, cls2).invoke(this.mTrtcCloud, Boolean.FALSE, Boolean.TRUE);
                innerLogI("attachTRTC enableMixExternalAudioFrame");
                setEnableMixExternalAudioFrame();
            } catch (Exception e) {
                innerLogE("attachTRTC exception : " + Log.getStackTraceString(e));
            }
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void checkSubtitle() {
        com.tencent.liteav.txcplayer.common.a.a().execute(ThumbMediaPlayer$$Lambda$1.lambdaFactory$(this));
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void deselectTrack(int i) {
        this.mTPPPlayer.deselectTrack(i, i);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void detachTRTC() {
        innerLogI("detachTRTC");
        Object obj = this.mTrtcCloud;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("enableMixExternalAudioFrame", cls2, cls2);
                Object obj2 = this.mTrtcCloud;
                Boolean bool = Boolean.FALSE;
                declaredMethod.invoke(obj2, bool, bool);
            } catch (Exception e) {
                innerLogE("detachTRTC exception : " + Log.getStackTraceString(e));
            }
            this.mTrtcCloud = null;
            TRTCCloudClassInvokeHelper unused = TRTCCloudClassInvokeHelper.mInstance = null;
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void enableAdaptiveBitrate() {
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(504, 1L));
        this.mBitrateIndex = -1;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getBitrateIndex() {
        int i = this.mBitrateIndex;
        if (i == -1) {
            return i;
        }
        TPProgramInfo[] programInfo = this.mTPPPlayer.getProgramInfo();
        if (programInfo != null && programInfo.length > 0) {
            int length = programInfo.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                TPProgramInfo tPProgramInfo = programInfo[i2];
                if (tPProgramInfo.actived && !TextUtils.isEmpty(tPProgramInfo.resolution)) {
                    this.mBitrateIndex = tPProgramInfo.programId;
                    break;
                }
                i2++;
            }
        }
        innerLogI("getBitrateIndex ：" + this.mBitrateIndex);
        return this.mBitrateIndex;
    }

    public e getConfig() {
        return this.mConfig;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getCurrentPosition() {
        return this.mTPPPlayer.getCurrentPositionMs();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getDuration() {
        ITPPlayer iTPPlayer = this.mTPPPlayer;
        if (!this.mIsPlayerReleased && iTPPlayer != null) {
            return iTPPlayer.getDurationMs();
        }
        return 0L;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public com.tencent.liteav.txcplayer.model.b getMediaInfo() {
        String[] split;
        innerLogI("getMediaInfo");
        com.tencent.liteav.txcplayer.model.b bVar = new com.tencent.liteav.txcplayer.model.b();
        bVar.f10295a = "thumbplayer";
        bVar.f = new com.tencent.liteav.txcplayer.model.c();
        String propertyString = this.mTPPPlayer.getPropertyString(0);
        if (propertyString != null && propertyString.length() > 0 && (split = propertyString.split("\\n")) != null && split.length > 0) {
            bVar.f.b = getSupportedBitrates();
            int i = this.mBitrateIndex;
            if (i == -1000) {
                i = 0;
            }
            bVar.f.e = new c.a(i);
            bVar.f.d = new c.a(i);
            com.tencent.liteav.txcplayer.model.c cVar = bVar.f;
            cVar.c.add(cVar.e);
            com.tencent.liteav.txcplayer.model.c cVar2 = bVar.f;
            cVar2.c.add(cVar2.d);
            for (String str : split) {
                if (str != null) {
                    String trim = str.substring(str.indexOf("=") + 1, str.length()).trim();
                    if (str.contains("ContainerFormat=")) {
                        bVar.f.f10296a = trim;
                    } else if (str.contains("VideoCodec=")) {
                        bVar.b = "avcodec";
                        bVar.c = trim;
                        bVar.f.d.b = trim;
                    } else if (str.contains("VideoProfile=")) {
                        bVar.f.d.c = trim;
                    } else if (str.contains("Width=")) {
                        bVar.f.d.e = Integer.valueOf(trim).intValue();
                    } else if (str.contains("Height=")) {
                        bVar.f.d.f = Integer.valueOf(trim).intValue();
                    } else if (str.contains("VideoBitRate=")) {
                        bVar.f.d.d = Integer.valueOf(trim).intValue();
                    } else if (str.contains("AudioCodec=")) {
                        bVar.d = "avcodec";
                        bVar.e = trim;
                        bVar.f.e.b = trim;
                    } else if (str.contains("AudioProfile=")) {
                        bVar.f.e.c = trim;
                    } else if (str.contains("AudioBitRate=")) {
                        bVar.f.e.d = Integer.valueOf(trim).intValue();
                    } else if (str.contains("SampleRate=")) {
                        bVar.f.e.g = Integer.valueOf(trim).intValue();
                    }
                }
            }
        }
        return bVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getPdtTimeMs(long j) {
        return this.mTPPPlayer.getPdtTimeMs(j);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getPlayableDurationMs() {
        return this.mTPPPlayer.getPlayableDurationMs();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getPositionMs(long j) {
        return this.mTPPPlayer.getPositionMs(j);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public long getPropertyLong(int i) throws IllegalStateException {
        int i2 = 208;
        if (i != 208) {
            i2 = 209;
            if (i != 209) {
                switch (i) {
                    case 100:
                        i = 100;
                        break;
                    case 101:
                        i = 101;
                        break;
                    case 102:
                        i = 102;
                        break;
                    case 103:
                        i = 103;
                        break;
                    default:
                        switch (i) {
                            case 201:
                                i = 201;
                                break;
                            case 202:
                                i = 202;
                                break;
                            case 203:
                                i = 203;
                                break;
                            case 204:
                                i = 204;
                                break;
                            case 205:
                                i = 205;
                                break;
                            case 206:
                                i = 206;
                                break;
                            default:
                                switch (i) {
                                    case 301:
                                        return this.mBitrate;
                                    case 302:
                                        long playableDurationMs = ((this.mBitrate * (this.mTPPPlayer.getPlayableDurationMs() - this.mTPPPlayer.getCurrentPositionMs())) / 1000) / 8;
                                        if (playableDurationMs < 0) {
                                            return 0L;
                                        }
                                        return playableDurationMs;
                                    case 303:
                                        return this.mTcpSpeed;
                                }
                        }
                }
                return this.mTPPPlayer.getPropertyLong(i);
            }
        }
        i = i2;
        return this.mTPPPlayer.getPropertyLong(i);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public float getRate() {
        return this.mRate;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public ArrayList<com.tencent.liteav.txcplayer.model.a> getSupportedBitrates() {
        ArrayList<com.tencent.liteav.txcplayer.model.a> arrayList;
        TPProgramInfo[] programInfo = this.mTPPPlayer.getProgramInfo();
        if (programInfo != null && programInfo.length > 0) {
            arrayList = new ArrayList<>(programInfo.length);
            for (TPProgramInfo tPProgramInfo : programInfo) {
                if (tPProgramInfo != null) {
                    com.tencent.liteav.txcplayer.model.a aVar = new com.tencent.liteav.txcplayer.model.a();
                    String[] split = tPProgramInfo.resolution.split("x");
                    if (split != null && split.length == 2) {
                        aVar.b = Integer.valueOf(split[0]).intValue();
                        aVar.c = Integer.valueOf(split[1]).intValue();
                    }
                    int i = (int) tPProgramInfo.bandwidth;
                    aVar.d = i;
                    aVar.f10294a = tPProgramInfo.programId;
                    if (tPProgramInfo.actived) {
                        this.mBitrate = i;
                    }
                    if ((aVar.b != 0 && aVar.c != 0) || i != 0) {
                        arrayList.add(aVar);
                        innerLogI("getSupportedBitrates item index：" + aVar.f10294a + ":width:" + aVar.b + ":height:" + aVar.c + ":bitrate:" + aVar.d);
                    }
                }
            }
        } else {
            arrayList = null;
        }
        innerLogI("mBitrateIndex:" + this.mBitrateIndex + ":mBitrate:" + this.mBitrate);
        return arrayList;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public Surface getSurface() {
        innerLogI("getSurface：" + this.mSurface);
        return this.mSurface;
    }

    @Override // com.tencent.liteav.txcplayer.b
    public SurfaceTexture getSurfaceTexture() {
        return this.mSurfaceTexture;
    }

    public ITPPlayer getTPPPlayer() {
        return this.mTPPPlayer;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public TPTrackInfo[] getTrackInfo() {
        return this.mTPPPlayer.getTrackInfo();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoHeight() {
        try {
            return this.mTPPPlayer.getVideoHeight();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoSarDen() {
        return 0;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoSarNum() {
        return 0;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public int getVideoWidth() {
        try {
            return this.mTPPPlayer.getVideoWidth();
        } catch (Throwable th) {
            th.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public boolean isLooping() {
        innerLogI("isLooping ：" + this.mIsLooping);
        return this.mIsLooping;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public boolean isPlayable() {
        return true;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public boolean isPlaying() {
        try {
            if (this.mTPPPlayer.getCurrentState() != 5) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public void onReceiveFirstPacketReadEvent() {
        notifyOnInfo(TXVodConstants.VOD_PLAY_EVT_FIRST_VIDEO_PACKET, 0, 0, null);
    }

    public void onReceiveFirstVideoRenderEvent() {
        if (getTXCVodVideoViewTargetState() != 4 && (getConfig().p || this.mTPPPlayer.getCurrentState() == 5)) {
            notifyOnInfo(2026, 0, 0, null);
            notifyOnInfo(2003, 0, 0, null);
            this.mHasReceiveFirstVideoRenderEvent = false;
            return;
        }
        this.mHasReceiveFirstVideoRenderEvent = true;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void pause() throws IllegalStateException {
        this.mTPPPlayer.pause();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void prepareAsync() throws IllegalStateException {
        try {
            innerLogI("prepareAsync");
            this.mTPPPlayer.prepareAsync();
        } catch (Throwable th) {
            th.printStackTrace();
            throw new IllegalStateException(th);
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void publishAudioToNetwork() {
        innerLogI("publishAudioToNetwork");
        Object obj = this.mTrtcCloud;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("enableMixExternalAudioFrame", cls2, cls2);
                Object obj2 = this.mTrtcCloud;
                Boolean bool = Boolean.TRUE;
                declaredMethod.invoke(obj2, bool, bool);
            } catch (Exception e) {
                innerLogE("publishAudioToNetwork exception : " + Log.getStackTraceString(e));
            }
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void release() {
        this.mIsPlayerReleased = true;
        releaseSurfaceTexture();
        this.mTPPPlayer.setSurface(null);
        detachTRTC();
        com.tencent.liteav.txcplayer.common.a.a().execute(new Runnable() { // from class: com.tencent.liteav.thumbplayer.ThumbMediaPlayer.1
            {
                ThumbMediaPlayer.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                ThumbMediaPlayer.this.mTPPPlayer.release();
            }
        });
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void releaseSurfaceTexture() {
        SurfaceTexture surfaceTexture = this.mSurfaceTexture;
        if (surfaceTexture != null && !this.mReuseSurfaceTexture) {
            com.tencent.liteav.txcplayer.c cVar = this.mSurfaceTextureHost;
            if (cVar != null) {
                cVar.a(surfaceTexture);
            } else {
                surfaceTexture.release();
            }
            this.mSurfaceTexture = null;
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void releaseTextureHost() {
        this.mSurfaceTextureHost = null;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void reset() {
        releaseSurfaceTexture();
        this.mTPPPlayer.updateTaskInfo(TPDownloadProxyEnum.TASKINFO_PLAYER_START, Boolean.FALSE);
        if (this.mTPPPlayer != null) {
            this.mTPPPlayer.reset();
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void seekTo(long j, boolean z) throws IllegalStateException {
        innerLogI("seekTo msec: " + j + "：isAccurateSeek：" + z);
        if (z) {
            this.mTPPPlayer.seekTo((int) j, 3);
        } else {
            this.mTPPPlayer.seekTo((int) j, 1);
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void selectTrack(int i) {
        this.mTPPPlayer.selectTrack(i, i);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setAudioNormalization(float f) {
        if (f >= -70.0f && f <= 0.0f) {
            ITPPlayer iTPPlayer = this.mTPPPlayer;
            iTPPlayer.setAudioNormalizeVolumeParams("enable,loudnorm=I=" + f + ":TP=-1.5:LRA=5.4:linear=1");
        } else if (f == 1.0f) {
            this.mTPPPlayer.setAudioNormalizeVolumeParams("disable");
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setAudioVolume(int i) {
        innerLogI("setAudioVolume：".concat(String.valueOf(i)));
        if (i == 0) {
            this.mTPPPlayer.setOutputMute(true);
        } else {
            this.mTPPPlayer.setOutputMute(false);
            this.mTPPPlayer.setAudioGainRatio(i / 100.0f);
        }
        Object obj = this.mTrtcCloud;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = Integer.TYPE;
                cls.getDeclaredMethod("setMixExternalAudioVolume", cls2, cls2).invoke(this.mTrtcCloud, Integer.valueOf(i), Integer.valueOf(i));
            } catch (Exception e) {
                innerLogE("setAudioVolume exception : " + e.toString());
            }
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setAutoMaxBitrate(int i) {
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(503, 0L, i, 0L));
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setBitrateIndex(int i) {
        TPProgramInfo[] programInfo;
        innerLogI("setBitrateIndex：".concat(String.valueOf(i)));
        if (this.mBitrateIndex == -1) {
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(504, 0L));
        }
        if (i != -1 && (programInfo = this.mTPPPlayer.getProgramInfo()) != null && i >= 0 && i < programInfo.length) {
            this.mTPPPlayer.selectProgram(i, 0L);
        }
        this.mBitrateIndex = i;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setConfig(e eVar) {
        int i;
        if (eVar == null) {
            return;
        }
        this.mConfig = eVar;
        String a2 = com.tencent.liteav.txcplayer.common.b.a();
        TPPlayerConfig.setProxyDataDir(a2);
        if (com.tencent.liteav.txcplayer.common.b.b() >= 0) {
            i = com.tencent.liteav.txcplayer.common.b.b();
        } else {
            i = this.mConfig.f * 100;
        }
        if (i > 0) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("VodCacheReserveSizeMB", i);
                TPPlayerConfig.parseHostConfig(new JSONObject().put(TPPlayerMgr.PROXY_HOST_KEY, jSONObject).toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        setEnableAccurateSeek(eVar.i);
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(100, eVar.o));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(101, eVar.i));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(102, 1000L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(117, 80000L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(103, 200L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(105, 1000L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(106, 8000L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(107, 10000L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(108, eVar.c * 1000.0f));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(109, eVar.f10292a));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(504, eVar.z ? 1L : 0L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildString(180, eVar.x));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildString(181, eVar.y));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(200, 80L));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(201, true));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(401, true));
        long j = 2;
        if (this.mConfig.g == 0) {
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(202, 4L));
        } else {
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(202, 2L));
        }
        ITPPlayer iTPPlayer = this.mTPPPlayer;
        TPOptionalParam tPOptionalParam = new TPOptionalParam();
        if (!eVar.d) {
            j = 4;
        }
        iTPPlayer.setPlayerOptionalParam(tPOptionalParam.buildLong(203, j));
        int i2 = this.mConfig.s;
        if (i2 == -1000 && (i2 = this.mBitrateIndex) == -1000) {
            i2 = -1000;
        }
        if (i2 != -1000) {
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(132, i2));
        }
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(133, resolveAdaptivePreferredResolution(eVar.v)));
        this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildLong(450, 1L));
        if (com.tencent.liteav.txcplayer.common.c.a(LicenseChecker.a.PLAYER_PREMIUM)) {
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(182, true));
        } else {
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildBoolean(182, false));
        }
        TPPlayerConfig.setP2PEnable(true);
        ITPDownloadProxy tPDownloadProxy = TPDownloadProxyFactory.getTPDownloadProxy(THUMB_PLAYER_PLATFORM_ID);
        if (tPDownloadProxy != null) {
            tPDownloadProxy.updateStoragePath(a2);
            tPDownloadProxy.setMaxStorageSizeMB(i);
        }
        Map<String, Object> map = this.mConfig.A;
        if (map != null) {
            parseExtraConfig(map);
        }
        setVideoInfo(eVar.q);
        setMp4EncryptionInfo(eVar.q, !TextUtils.isEmpty(a2));
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(Context context, Uri uri) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        if (isContentUri(uri.toString())) {
            this.mTPPPlayer.setDataSource(this.mContext.getContentResolver().openAssetFileDescriptor(uri, "r"));
        } else if (isAssetFile(uri.toString())) {
            this.mTPPPlayer.setDataSource(this.mContext.getAssets().openFd(uri.toString().substring(uri.toString().indexOf("://") + 3)));
        } else {
            setDataSource(context, uri, null);
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        if (this.mSurfaceTexture != null) {
            return;
        }
        if (surfaceHolder != null) {
            this.mSurface = surfaceHolder.getSurface();
        }
        this.mSurfaceHolder = surfaceHolder;
        this.mTPPPlayer.setSurfaceHolder(surfaceHolder);
    }

    public void setEnableAccurateSeek(boolean z) {
        this.mEnableAccurateSeek = z;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setLogEnabled(boolean z) {
        TPLogUtil.setDebugEnable(z);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setLooping(boolean z) {
        innerLogI("setLooping ：".concat(String.valueOf(z)));
        this.mIsLooping = z;
        this.mTPPPlayer.setLoopback(z);
    }

    public void setMaxCacheSize(int i) {
        TPPlayerMgr.setProxyMaxStorageSizeMB(i);
    }

    @Override // com.tencent.liteav.txcplayer.a, com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setPrivateConfig(Map<String, Object> map) {
        this.mPrivateConfig = map;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setRate(float f) {
        innerLogI("setRate: ".concat(String.valueOf(f)));
        this.mRate = f;
        this.mTPPPlayer.setPlaySpeedRatio(f);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setScreenOnWhilePlaying(boolean z) {
        innerLogI("setScreenOnWhilePlaying".concat(String.valueOf(z)));
        if (this.mScreenOnWhilePlaying != z) {
            if (z && this.mSurfaceHolder == null) {
                innerLogI("setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder");
            }
            this.mScreenOnWhilePlaying = z;
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder != null) {
                surfaceHolder.setKeepScreenOn(z);
            }
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setSubtitleStyle(TXSubtitleRenderModel tXSubtitleRenderModel) {
        if (this.mTPPPlayer != null) {
            this.mTPPPlayer.setPlayerOptionalParam(new TPOptionalParam().buildObject(507, convertToTPSubtitleRenderModel(tXSubtitleRenderModel)));
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setSurface(Surface surface) {
        innerLogI("setSurface: ".concat(String.valueOf(surface)));
        if (this.mSurfaceTexture == null) {
            setSurfaceToPlayer(surface);
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer, com.tencent.liteav.txcplayer.b
    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        if (this.mSurfaceTexture == surfaceTexture) {
            return;
        }
        releaseSurfaceTexture();
        this.mSurfaceTexture = surfaceTexture;
        if (surfaceTexture == null) {
            this.mSurface = null;
            setSurfaceToPlayer(null);
            return;
        }
        if (this.mSurface == null) {
            this.mSurface = new Surface(surfaceTexture);
        }
        setSurfaceToPlayer(this.mSurface);
    }

    @Override // com.tencent.liteav.txcplayer.b
    public void setSurfaceTextureHost(com.tencent.liteav.txcplayer.c cVar) {
        this.mSurfaceTextureHost = cVar;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setWakeMode(Context context, int i) {
        boolean z;
        innerLogI("setWakeMode：".concat(String.valueOf(i)));
        PowerManager.WakeLock wakeLock = this.mWakeLock;
        if (wakeLock != null) {
            if (wakeLock.isHeld()) {
                this.mWakeLock.release();
                z = true;
            } else {
                z = false;
            }
            this.mWakeLock = null;
        } else {
            z = false;
        }
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(i | C.BUFFER_FLAG_LAST_SAMPLE, ThumbMediaPlayer.class.getName());
        this.mWakeLock = newWakeLock;
        newWakeLock.setReferenceCounted(false);
        if (z) {
            this.mWakeLock.acquire();
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void start() throws IllegalStateException {
        innerLogI("start");
        if (this.mHasReceiveFirstVideoRenderEvent) {
            notifyOnInfo(2026, 0, 0, null);
            notifyOnInfo(2003, 0, 0, null);
            this.mHasReceiveFirstVideoRenderEvent = false;
        }
        if (this.mConfig.m >= 0.0f) {
            this.mTPPPlayer.updateTaskInfo(TPDownloadProxyEnum.TASKINFO_BUFFER_SIZE_BYTE, Long.valueOf(this.mConfig.m * 1024.0f * 1024.0f));
        } else if (this.mIsSetDefaultBufferSize) {
            this.mTPPPlayer.updateTaskInfo(TPDownloadProxyEnum.TASKINFO_BUFFER_SIZE_BYTE, 0);
            this.mIsSetDefaultBufferSize = false;
        }
        this.mTPPPlayer.updateTaskInfo(TPDownloadProxyEnum.TASKINFO_PLAYER_START, Boolean.TRUE);
        this.mTPPPlayer.start();
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void stop() throws IllegalStateException {
        try {
            this.mTPPPlayer.stopAsync();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void unpublishAudioToNetwork() {
        innerLogI("unpublishAudioToNetwork");
        Object obj = this.mTrtcCloud;
        if (obj != null) {
            try {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = Boolean.TYPE;
                cls.getDeclaredMethod("enableMixExternalAudioFrame", cls2, cls2).invoke(this.mTrtcCloud, Boolean.FALSE, Boolean.TRUE);
            } catch (Exception e) {
                innerLogE("unpublishAudioToNetwork exception : " + Log.getStackTraceString(e));
            }
        }
    }

    public void updateBitrate(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i > 0) {
            if (this.mTotalFileSize != j || this.mBitrate == 0) {
                this.mTotalFileSize = j;
                long duration = getDuration();
                if (duration > 0 && i > 0) {
                    this.mBitrate = (j * 8000) / duration;
                }
            }
        }
    }

    public void updateTcpSpeed(long j) {
        this.mTcpSpeed = j;
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(Context context, Uri uri, Map<String, String> map) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        String uri2 = uri.toString();
        this.mDataSource = uri2;
        if (isOfflinePlay(uri2)) {
            uri2 = uri2.substring(uri2.indexOf("?") + 1);
        }
        ITPMediaAsset handleDRMAsset = handleDRMAsset(uri2);
        if (handleDRMAsset != null) {
            ITPMediaUrlAsset handleUrlAsset = handleUrlAsset(uri2);
            if (handleUrlAsset != null) {
                handleDRMAsset.setExtraParam(handleUrlAsset.getExtraParam());
            }
            if (map != null && map.size() > 0) {
                handleDRMAsset.setHttpHeader(map);
            }
            this.mTPPPlayer.setDataSource(handleDRMAsset);
            return;
        }
        ITPMediaUrlAsset handleUrlAsset2 = handleUrlAsset(uri2);
        if (handleUrlAsset2 != null) {
            if (map != null && map.size() > 0) {
                handleUrlAsset2.setHttpHeader(map);
            }
            this.mTPPPlayer.setDataSource(handleUrlAsset2);
            return;
        }
        this.mTPPPlayer.setDataSource(uri2, map);
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setAudioStreamType(int i) {
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(FileDescriptor fileDescriptor) throws IOException, IllegalArgumentException, IllegalStateException {
        this.mTPPPlayer.setDataSource(ParcelFileDescriptor.dup(fileDescriptor));
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setKeepInBackground(boolean z) {
    }

    @Override // com.tencent.liteav.txcplayer.ITXVCubePlayer
    public void setDataSource(String str) throws IOException, IllegalArgumentException, SecurityException, IllegalStateException {
        setDataSource(null, Uri.parse(str));
    }
}
