package com.tencent.vod.flutter.player;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.ITXVodPlayListener;
import com.tencent.rtmp.TXBitrateItem;
import com.tencent.rtmp.TXImageSprite;
import com.tencent.rtmp.TXPlayInfoParams;
import com.tencent.rtmp.TXPlayerDrmBuilder;
import com.tencent.rtmp.TXTrackInfo;
import com.tencent.rtmp.TXVodDef;
import com.tencent.rtmp.TXVodPlayConfig;
import com.tencent.rtmp.TXVodPlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.vod.flutter.FTXEvent;
import com.tencent.vod.flutter.FTXPIPManager;
import com.tencent.vod.flutter.FTXTransformation;
import com.tencent.vod.flutter.messages.FtxMessages;
import com.tencent.vod.flutter.messages.OO0;
import com.tencent.vod.flutter.model.TXPipResult;
import com.tencent.vod.flutter.model.TXPlayerHolder;
import com.tencent.vod.flutter.player.render.FTXVodPlayerRenderHost;
import com.tencent.vod.flutter.tools.FTXVersionAdapter;
import com.tencent.vod.flutter.tools.TXCommonUtil;
import com.tencent.vod.flutter.tools.TXFlutterEngineHolder;
import com.tencent.vod.flutter.ui.render.FTXRenderView;
import com.tencent.vod.flutter.ui.render.FTXRenderViewFactory;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXVodPlayer extends FTXVodPlayerRenderHost implements ITXVodPlayListener, FtxMessages.TXFlutterVodPlayerApi, FtxMessages.VoidResult {
    private static final String TAG = "FTXVodPlayer";
    private static final int Uninitialized = -101;
    private final TXFlutterEngineHolder.TXAppStatusListener mAppLifeListener;
    private FlutterPlugin.FlutterPluginBinding mFlutterPluginBinding;
    private final FTXPIPManager mPipManager;
    private final FTXRenderViewFactory mRenderViewFactory;
    private TXImageSprite mTxImageSprite;
    private final FtxMessages.TXVodPlayerFlutterAPI mVodFlutterApi;
    private TXVodPlayer mVodPlayer;
    private boolean mEnableHardwareDecode = true;
    private boolean mHardwareDecodeFail = false;
    private boolean mNeedPipResume = false;
    private final Handler mUIHandler = new Handler(Looper.getMainLooper());
    private long mCurrentRenderMode = 1;
    private final FTXPIPManager.PipCallback mPipCallback = new FTXPIPManager.PipCallback() { // from class: com.tencent.vod.flutter.player.FTXVodPlayer.1
        @Override // com.tencent.vod.flutter.FTXPIPManager.PipCallback
        public void onPipPlayerEvent(int i, Bundle bundle) {
            FTXVodPlayer fTXVodPlayer = FTXVodPlayer.this;
            fTXVodPlayer.onPlayEvent(fTXVodPlayer.mVodPlayer, i, bundle);
        }

        @Override // com.tencent.vod.flutter.FTXPIPManager.PipCallback
        public void onPipResult(TXPipResult tXPipResult) {
            if (FTXVodPlayer.this.mVodPlayer != null) {
                if (((FTXVodPlayerRenderHost) FTXVodPlayer.this).mCurRenderView != null) {
                    ((FTXVodPlayerRenderHost) FTXVodPlayer.this).mCurRenderView.setPlayer(FTXVodPlayer.this);
                }
                FTXVodPlayer.this.mVodPlayer.setVodListener(FTXVodPlayer.this);
            }
            if (tXPipResult.isPlaying()) {
                if (!TXFlutterEngineHolder.getInstance().isInForeground()) {
                    FTXVodPlayer.this.mNeedPipResume = true;
                } else {
                    FTXVodPlayer.this.playerResume();
                }
            }
        }
    };

    public FTXVodPlayer(FlutterPlugin.FlutterPluginBinding flutterPluginBinding, FTXPIPManager fTXPIPManager, FTXRenderViewFactory fTXRenderViewFactory, boolean z) {
        TXFlutterEngineHolder.TXAppStatusListener tXAppStatusListener = new TXFlutterEngineHolder.TXAppStatusListener() { // from class: com.tencent.vod.flutter.player.FTXVodPlayer.2
            @Override // com.tencent.vod.flutter.tools.TXFlutterEngineHolder.TXAppStatusListener
            public void onResume() {
                if (FTXVodPlayer.this.mNeedPipResume) {
                    FTXVodPlayer.this.mNeedPipResume = false;
                    FTXVodPlayer.this.playerResume();
                }
            }

            @Override // com.tencent.vod.flutter.tools.TXFlutterEngineHolder.TXAppStatusListener
            public void onEnterBack() {
            }
        };
        this.mAppLifeListener = tXAppStatusListener;
        this.mPipManager = fTXPIPManager;
        this.mFlutterPluginBinding = flutterPluginBinding;
        this.mRenderViewFactory = fTXRenderViewFactory;
        OO0.Kkkkkkkkkk(flutterPluginBinding.getBinaryMessenger(), String.valueOf(getPlayerId()), this);
        this.mVodFlutterApi = new FtxMessages.TXVodPlayerFlutterAPI(flutterPluginBinding.getBinaryMessenger(), String.valueOf(getPlayerId()));
        TXFlutterEngineHolder.getInstance().addAppLifeListener(tXAppStatusListener);
        init(z);
    }

    private byte[] getPlayerImageSprite(Double d) {
        TXImageSprite tXImageSprite = this.mTxImageSprite;
        if (tXImageSprite != null && d != null) {
            Bitmap thumbnail = tXImageSprite.getThumbnail(d.floatValue());
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (thumbnail != null) {
                thumbnail.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                return byteArrayOutputStream.toByteArray();
            }
            return null;
        }
        LiteavLog.e(TAG, "getImageSprite failed, time is null or initImageSprite not invoke");
        return null;
    }

    private void releaseTXImageSprite() {
        TXImageSprite tXImageSprite = this.mTxImageSprite;
        if (tXImageSprite != null) {
            tXImageSprite.release();
            this.mTxImageSprite = null;
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void addSubtitleSource(@NonNull FtxMessages.SubTitlePlayerMsg subTitlePlayerMsg) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.addSubtitleSource(subTitlePlayerMsg.getUrl(), subTitlePlayerMsg.getName(), subTitlePlayerMsg.getMimeType());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.BoolMsg autoEnterPictureInPictureMode(@NonNull FtxMessages.BoolPlayerMsg boolPlayerMsg) {
        return TXCommonUtil.boolMsgWith(Boolean.FALSE);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void deselectTrack(@NonNull FtxMessages.IntPlayerMsg intPlayerMsg) {
        if (this.mVodPlayer != null && intPlayerMsg.getValue() != null) {
            this.mVodPlayer.deselectTrack(intPlayerMsg.getValue().intValue());
        }
    }

    @Override // com.tencent.vod.flutter.player.FTXBasePlayer
    public void destroy() {
        if (this.mVodPlayer != null) {
            stopPlay(true);
            this.mVodPlayer.setPlayerView((TXCloudVideoView) null);
            this.mVodPlayer = null;
        }
        this.mCurRenderView = null;
        TXFlutterEngineHolder.getInstance().removeAppLifeListener(this.mAppLifeListener);
        releaseTXImageSprite();
        FTXPIPManager fTXPIPManager = this.mPipManager;
        if (fTXPIPManager != null) {
            fTXPIPManager.releaseCallback(getPlayerId());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.BoolMsg enableHardwareDecode(@NonNull FtxMessages.BoolPlayerMsg boolPlayerMsg) {
        if (boolPlayerMsg.getValue() != null) {
            return TXCommonUtil.boolMsgWith(Boolean.valueOf(enablePlayerHardwareDecode(boolPlayerMsg.getValue().booleanValue())));
        }
        return TXCommonUtil.boolMsgWith(Boolean.FALSE);
    }

    public boolean enablePlayerHardwareDecode(boolean z) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            this.mEnableHardwareDecode = z;
            return tXVodPlayer.enableHardwareDecode(z);
        }
        return false;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.IntMsg enterPictureInPictureMode(@NonNull FtxMessages.PipParamsPlayerMsg pipParamsPlayerMsg) {
        int i;
        this.mPipManager.addCallback(Integer.valueOf(getPlayerId()), this.mPipCallback);
        FTXPIPManager.PipParams pipParams = new FTXPIPManager.PipParams(this.mPipManager.toAndroidPath(pipParamsPlayerMsg.getBackIconForAndroid()), this.mPipManager.toAndroidPath(pipParamsPlayerMsg.getPlayIconForAndroid()), this.mPipManager.toAndroidPath(pipParamsPlayerMsg.getPauseIconForAndroid()), this.mPipManager.toAndroidPath(pipParamsPlayerMsg.getForwardIconForAndroid()), getPlayerId());
        pipParams.setIsPlaying(isPlayerPlaying());
        pipParams.setCurrentPlayTime(getPlayerCurrentPlaybackTime());
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            pipParams.setRadio(tXVodPlayer.getWidth(), this.mVodPlayer.getHeight());
            i = this.mPipManager.enterPip(pipParams, new TXPlayerHolder(this.mVodPlayer));
            if (i == 0) {
                playerPause();
            }
        } else {
            i = -109;
        }
        return TXCommonUtil.intMsgWith(Long.valueOf(i));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
    public void error(@NonNull Throwable th) {
        LiteavLog.e(TAG, "callback message error:" + th);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public FtxMessages.BoolMsg exitPictureInPictureMode(@NonNull FtxMessages.PlayerMsg playerMsg) {
        this.mPipManager.exitPipByPlayerId(getPlayerId());
        return TXCommonUtil.boolMsgWith(Boolean.FALSE);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.ListMsg getAudioTrackInfo(@NonNull FtxMessages.PlayerMsg playerMsg) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            List<TXTrackInfo> audioTrackInfo = tXVodPlayer.getAudioTrackInfo();
            ArrayList arrayList = new ArrayList();
            for (TXTrackInfo tXTrackInfo : audioTrackInfo) {
                HashMap hashMap = new HashMap();
                hashMap.put("trackType", Integer.valueOf(tXTrackInfo.trackType));
                hashMap.put(FTXEvent.EXTRA_SUBTITLE_TRACK_INDEX, Integer.valueOf(tXTrackInfo.trackIndex));
                hashMap.put("name", tXTrackInfo.name);
                hashMap.put("isSelected", Boolean.valueOf(tXTrackInfo.isSelected));
                hashMap.put("isExclusive", Boolean.valueOf(tXTrackInfo.isExclusive));
                hashMap.put("isInternal", Boolean.valueOf(tXTrackInfo.isInternal));
                arrayList.add(hashMap);
            }
            return TXCommonUtil.listMsgWith(arrayList);
        }
        return TXCommonUtil.listMsgWith(Collections.EMPTY_LIST);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.IntMsg getBitrateIndex(@NonNull FtxMessages.PlayerMsg playerMsg) {
        return TXCommonUtil.intMsgWith(Long.valueOf(getPlayerBitrateIndex()));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.DoubleMsg getBufferDuration(@NonNull FtxMessages.PlayerMsg playerMsg) {
        return TXCommonUtil.doubleMsgWith(Double.valueOf(BigDecimal.valueOf(getPlayerBufferDuration()).doubleValue()));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.DoubleMsg getCurrentPlaybackTime(@NonNull FtxMessages.PlayerMsg playerMsg) {
        return TXCommonUtil.doubleMsgWith(Double.valueOf(BigDecimal.valueOf(getPlayerCurrentPlaybackTime()).doubleValue()));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.DoubleMsg getDuration(@NonNull FtxMessages.PlayerMsg playerMsg) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return TXCommonUtil.doubleMsgWith(Double.valueOf(BigDecimal.valueOf(tXVodPlayer.getDuration()).doubleValue()));
        }
        return TXCommonUtil.doubleMsgWith(Double.valueOf((double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.IntMsg getHeight(@NonNull FtxMessages.PlayerMsg playerMsg) {
        return TXCommonUtil.intMsgWith(Long.valueOf(getPlayerHeight()));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.UInt8ListMsg getImageSprite(@NonNull FtxMessages.DoublePlayerMsg doublePlayerMsg) {
        if (doublePlayerMsg.getValue() != null) {
            return TXCommonUtil.uInt8ListMsg(getPlayerImageSprite(doublePlayerMsg.getValue()));
        }
        return TXCommonUtil.uInt8ListMsg(new byte[0]);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.DoubleMsg getPlayableDuration(@NonNull FtxMessages.PlayerMsg playerMsg) {
        return TXCommonUtil.doubleMsgWith(Double.valueOf(BigDecimal.valueOf(getPlayerPlayableDuration()).doubleValue()));
    }

    public int getPlayerBitrateIndex() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return tXVodPlayer.getBitrateIndex();
        }
        return -1;
    }

    public float getPlayerBufferDuration() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return tXVodPlayer.getBufferDuration();
        }
        return 0.0f;
    }

    public float getPlayerCurrentPlaybackTime() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return tXVodPlayer.getCurrentPlaybackTime();
        }
        return 0.0f;
    }

    public int getPlayerHeight() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return tXVodPlayer.getHeight();
        }
        return 0;
    }

    public float getPlayerPlayableDuration() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return tXVodPlayer.getPlayableDuration();
        }
        return 0.0f;
    }

    @Override // com.tencent.vod.flutter.player.render.FTXPlayerRenderSurfaceHost
    public long getPlayerRenderMode() {
        return this.mCurrentRenderMode;
    }

    public List<?> getPlayerSupportedBitrates() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            ArrayList<TXBitrateItem> supportedBitrates = tXVodPlayer.getSupportedBitrates();
            ArrayList arrayList = new ArrayList();
            int size = supportedBitrates.size();
            int i = 0;
            while (i < size) {
                TXBitrateItem tXBitrateItem = supportedBitrates.get(i);
                i++;
                TXBitrateItem tXBitrateItem2 = tXBitrateItem;
                HashMap hashMap = new HashMap();
                hashMap.put("bitrate", Integer.valueOf(tXBitrateItem2.bitrate));
                hashMap.put("width", Integer.valueOf(tXBitrateItem2.width));
                hashMap.put("height", Integer.valueOf(tXBitrateItem2.height));
                hashMap.put(FirebaseAnalytics.Param.INDEX, Integer.valueOf(tXBitrateItem2.index));
                arrayList.add(hashMap);
            }
            return arrayList;
        }
        return null;
    }

    public int getPlayerWidth() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return tXVodPlayer.getWidth();
        }
        return 0;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.ListMsg getSubtitleTrackInfo(@NonNull FtxMessages.PlayerMsg playerMsg) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            List<TXTrackInfo> subtitleTrackInfo = tXVodPlayer.getSubtitleTrackInfo();
            ArrayList arrayList = new ArrayList();
            for (TXTrackInfo tXTrackInfo : subtitleTrackInfo) {
                HashMap hashMap = new HashMap();
                hashMap.put("trackType", Integer.valueOf(tXTrackInfo.trackType));
                hashMap.put(FTXEvent.EXTRA_SUBTITLE_TRACK_INDEX, Integer.valueOf(tXTrackInfo.trackIndex));
                hashMap.put("name", tXTrackInfo.name);
                hashMap.put("isSelected", Boolean.valueOf(tXTrackInfo.isSelected));
                hashMap.put("isExclusive", Boolean.valueOf(tXTrackInfo.isExclusive));
                hashMap.put("isInternal", Boolean.valueOf(tXTrackInfo.isInternal));
                arrayList.add(hashMap);
            }
            return TXCommonUtil.listMsgWith(arrayList);
        }
        return TXCommonUtil.listMsgWith(Collections.EMPTY_LIST);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.ListMsg getSupportedBitrate(@NonNull FtxMessages.PlayerMsg playerMsg) {
        return TXCommonUtil.listMsgWith(getPlayerSupportedBitrates());
    }

    @Override // com.tencent.vod.flutter.player.render.FTXPlayerRenderSurfaceHost
    public int getVideoHeight() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return tXVodPlayer.getHeight();
        }
        return 0;
    }

    @Override // com.tencent.vod.flutter.player.render.FTXPlayerRenderSurfaceHost
    public int getVideoWidth() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return tXVodPlayer.getWidth();
        }
        return 0;
    }

    @Override // com.tencent.vod.flutter.player.render.FTXVodPlayerRenderHost
    public TXVodPlayer getVodPlayer() {
        return this.mVodPlayer;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.IntMsg getWidth(@NonNull FtxMessages.PlayerMsg playerMsg) {
        return TXCommonUtil.intMsgWith(Long.valueOf(getPlayerWidth()));
    }

    public long init(boolean z) {
        if (this.mVodPlayer == null) {
            TXVodPlayer tXVodPlayer = new TXVodPlayer(this.mFlutterPluginBinding.getApplicationContext());
            this.mVodPlayer = tXVodPlayer;
            tXVodPlayer.setVodListener(this);
            this.mVodPlayer.setRenderMode(1);
            TXVodPlayConfig tXVodPlayConfig = new TXVodPlayConfig();
            FTXVersionAdapter.enableCustomSubtitle(tXVodPlayConfig, 0);
            FTXVersionAdapter.enableDrmLevel3(tXVodPlayConfig, true);
            this.mVodPlayer.setConfig(tXVodPlayConfig);
            this.mVodPlayer.setVodSubtitleDataListener(new ITXVodPlayListener.ITXVodSubtitleDataListener() { // from class: com.tencent.vod.flutter.player.FTXVodPlayer.7
                @Override // com.tencent.rtmp.ITXVodPlayListener.ITXVodSubtitleDataListener
                public void onSubtitleData(TXVodDef.TXVodSubtitleData tXVodSubtitleData) {
                    LiteavLog.i(FTXVodPlayer.TAG, "callback subtitle ,index:" + tXVodSubtitleData.trackIndex + " ,startMs:" + tXVodSubtitleData.startPositionMs + " ,durationMs:" + tXVodSubtitleData.durationMs + " ,content:" + tXVodSubtitleData.subtitleData);
                    Bundle bundle = new Bundle();
                    bundle.putString(FTXEvent.EXTRA_SUBTITLE_DATA, tXVodSubtitleData.subtitleData);
                    bundle.putLong(FTXEvent.EXTRA_SUBTITLE_START_POSITION_MS, tXVodSubtitleData.startPositionMs);
                    bundle.putLong(FTXEvent.EXTRA_SUBTITLE_DURATION_MS, tXVodSubtitleData.durationMs);
                    bundle.putLong(FTXEvent.EXTRA_SUBTITLE_TRACK_INDEX, tXVodSubtitleData.trackIndex);
                    FTXVodPlayer.this.mVodFlutterApi.onPlayerEvent(TXCommonUtil.getParams(601, bundle), FTXVodPlayer.this);
                }
            });
            setPlayer(z);
            return 0L;
        }
        return 0L;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void initImageSprite(@NonNull FtxMessages.StringListPlayerMsg stringListPlayerMsg) {
        releaseTXImageSprite();
        TXImageSprite tXImageSprite = new TXImageSprite(this.mFlutterPluginBinding.getApplicationContext());
        this.mTxImageSprite = tXImageSprite;
        tXImageSprite.setVTTUrlAndImageUrls(stringListPlayerMsg.getVvtUrl(), stringListPlayerMsg.getImageUrls());
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.IntMsg initialize(@NonNull FtxMessages.BoolPlayerMsg boolPlayerMsg) {
        boolean z;
        if (boolPlayerMsg.getValue() != null) {
            z = boolPlayerMsg.getValue().booleanValue();
        } else {
            z = false;
        }
        return TXCommonUtil.intMsgWith(Long.valueOf(init(z)));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.BoolMsg isInPIPMode(@NonNull FtxMessages.PlayerMsg playerMsg) {
        return TXCommonUtil.boolMsgWith(Boolean.FALSE);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.BoolMsg isLoop(@NonNull FtxMessages.PlayerMsg playerMsg) {
        return TXCommonUtil.boolMsgWith(Boolean.valueOf(isVodPlayerLoop()));
    }

    public boolean isPlayerPlaying() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return tXVodPlayer.isPlaying();
        }
        return false;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.BoolMsg isPlaying(@NonNull FtxMessages.PlayerMsg playerMsg) {
        return TXCommonUtil.boolMsgWith(Boolean.valueOf(isPlayerPlaying()));
    }

    public boolean isVodPlayerLoop() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return tXVodPlayer.isLoop();
        }
        return false;
    }

    @Override // com.tencent.rtmp.ITXVodPlayListener
    public void onNetStatus(TXVodPlayer tXVodPlayer, final Bundle bundle) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.vod.flutter.player.FTXVodPlayer.6
            @Override // java.lang.Runnable
            public void run() {
                FTXVodPlayer.this.mVodFlutterApi.onNetEvent(TXCommonUtil.getParams(0, bundle), FTXVodPlayer.this);
            }
        });
    }

    @Override // com.tencent.rtmp.ITXVodPlayListener
    public void onPlayEvent(TXVodPlayer tXVodPlayer, final int i, final Bundle bundle) {
        if (i != 2009) {
            if (i != 2013) {
                if (i != 2019) {
                    if (i == 2106) {
                        this.mHardwareDecodeFail = true;
                    }
                } else {
                    reDraw();
                }
            } else {
                notifyTextureResolution(tXVodPlayer.getWidth(), tXVodPlayer.getHeight());
            }
        } else {
            String string = bundle.getString("EVT_PARAM3");
            if (!TextUtils.isEmpty(string)) {
                String[] split = string.split(",");
                if (split.length == 6) {
                    bundle.putInt("videoWidth", (Integer.parseInt(split[4]) - Integer.parseInt(split[2])) + 1);
                    bundle.putInt("videoHeight", (Integer.parseInt(split[5]) - Integer.parseInt(split[3])) + 1);
                    bundle.putInt("videoLeft", -Integer.parseInt(split[2]));
                    bundle.putInt("videoTop", -Integer.parseInt(split[3]));
                    bundle.putInt("videoRight", (Integer.parseInt(split[4]) + 1) - Integer.parseInt(split[0]));
                    bundle.putInt("videoBottom", (Integer.parseInt(split[5]) + 1) - Integer.parseInt(split[1]));
                    this.mUIHandler.post(new Runnable() { // from class: com.tencent.vod.flutter.player.FTXVodPlayer.3
                        @Override // java.lang.Runnable
                        public void run() {
                            FTXVodPlayer.this.mVodFlutterApi.onPlayerEvent(TXCommonUtil.getParams(i, bundle), FTXVodPlayer.this);
                        }
                    });
                    return;
                }
            }
        }
        if (i != 2005) {
            LiteavLog.i(TAG, "onPlayEvent:" + i + "," + bundle.getString("EVT_MSG"));
        }
        if (i == 2003) {
            this.mUIHandler.postDelayed(new Runnable() { // from class: com.tencent.vod.flutter.player.FTXVodPlayer.4
                @Override // java.lang.Runnable
                public void run() {
                    FTXVodPlayer.this.mVodFlutterApi.onPlayerEvent(TXCommonUtil.getParams(i, bundle), FTXVodPlayer.this);
                }
            }, 200L);
        } else {
            this.mUIHandler.post(new Runnable() { // from class: com.tencent.vod.flutter.player.FTXVodPlayer.5
                @Override // java.lang.Runnable
                public void run() {
                    FTXVodPlayer.this.mVodFlutterApi.onPlayerEvent(TXCommonUtil.getParams(i, bundle), FTXVodPlayer.this);
                }
            });
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void pause(@NonNull FtxMessages.PlayerMsg playerMsg) {
        playerPause();
    }

    public void playerPause() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.pause();
            if (this.mPipManager.isInPipMode()) {
                this.mPipManager.notifyCurrentPipPlayerPlayState(getPlayerId(), isPlayerPlaying());
            }
        }
    }

    public void playerResume() {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.resume();
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void reDraw() {
        FTXRenderView fTXRenderView = this.mCurRenderView;
        if (fTXRenderView != null) {
            fTXRenderView.getRenderView().reDrawVod();
        }
    }

    public boolean requestPlayerAudioFocus(boolean z) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            return tXVodPlayer.setRequestAudioFocus(z);
        }
        return false;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void resume(@NonNull FtxMessages.PlayerMsg playerMsg) {
        playerResume();
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void seek(@NonNull FtxMessages.DoublePlayerMsg doublePlayerMsg) {
        if (doublePlayerMsg.getValue() != null) {
            seekPlayer(doublePlayerMsg.getValue().floatValue());
        }
    }

    public void seekPlayer(float f) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.seek(f);
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void seekToPdtTime(@NonNull FtxMessages.IntPlayerMsg intPlayerMsg) {
        if (intPlayerMsg.getValue() != null) {
            seekToPdtTime(intPlayerMsg.getValue().longValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void selectTrack(@NonNull FtxMessages.IntPlayerMsg intPlayerMsg) {
        if (this.mVodPlayer != null && intPlayerMsg.getValue() != null) {
            this.mVodPlayer.selectTrack(intPlayerMsg.getValue().intValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setAudioPlayOutVolume(@NonNull FtxMessages.IntPlayerMsg intPlayerMsg) {
        if (intPlayerMsg.getValue() != null) {
            setPlayerAudioPlayoutVolume(intPlayerMsg.getValue().intValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setAutoPlay(@NonNull FtxMessages.BoolPlayerMsg boolPlayerMsg) {
        if (boolPlayerMsg.getValue() != null) {
            setIsAutoPlay(boolPlayerMsg.getValue().booleanValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setBitrateIndex(@NonNull FtxMessages.IntPlayerMsg intPlayerMsg) {
        if (intPlayerMsg.getValue() != null) {
            setPlayerBitrateIndex(intPlayerMsg.getValue().intValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setConfig(@NonNull FtxMessages.FTXVodPlayConfigPlayerMsg fTXVodPlayConfigPlayerMsg) {
        setPlayConfig(fTXVodPlayConfigPlayerMsg);
    }

    public void setIsAutoPlay(boolean z) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.setAutoPlay(z);
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setLoop(@NonNull FtxMessages.BoolPlayerMsg boolPlayerMsg) {
        if (boolPlayerMsg.getValue() != null) {
            setPlayerLoop(boolPlayerMsg.getValue().booleanValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setMute(@NonNull FtxMessages.BoolPlayerMsg boolPlayerMsg) {
        if (boolPlayerMsg.getValue() != null) {
            setPlayerMute(boolPlayerMsg.getValue().booleanValue());
        }
    }

    public void setPlayConfig(FtxMessages.FTXVodPlayConfigPlayerMsg fTXVodPlayConfigPlayerMsg) {
        if (this.mVodPlayer != null) {
            TXVodPlayConfig transformToVodConfig = FTXTransformation.transformToVodConfig(fTXVodPlayConfigPlayerMsg);
            FTXVersionAdapter.enableCustomSubtitle(transformToVodConfig, 0);
            FTXVersionAdapter.enableDrmLevel3(transformToVodConfig, true);
            this.mVodPlayer.setConfig(transformToVodConfig);
        }
    }

    public void setPlayer(boolean z) {
        FTXRenderView fTXRenderView;
        if (!z && this.mVodPlayer != null && (fTXRenderView = this.mCurRenderView) != null) {
            fTXRenderView.setPlayer(this);
        }
    }

    public void setPlayerAudioPlayoutVolume(int i) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.setAudioPlayoutVolume(i);
        }
    }

    public void setPlayerBitrateIndex(int i) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.setBitrateIndex(i);
        }
    }

    public void setPlayerLoop(boolean z) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.setLoop(z);
        }
    }

    public void setPlayerMute(boolean z) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.setMute(z);
        }
    }

    public void setPlayerRate(float f) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.setRate(f);
        }
    }

    public void setPlayerStartTime(double d) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.setStartTime((float) d);
        }
    }

    public void setPlayerToken(String str) {
        if (this.mVodPlayer != null) {
            if (TextUtils.isEmpty(str)) {
                this.mVodPlayer.setToken(null);
            } else {
                this.mVodPlayer.setToken(str);
            }
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setPlayerView(@NonNull Long l) {
        int intValue = l.intValue();
        FTXRenderView findViewById = this.mRenderViewFactory.findViewById(intValue);
        if (findViewById == null) {
            LiteavLog.e(TAG, "setPlayerView can not find renderView by id:" + intValue + ", release player's renderView");
        }
        setUpPlayerView(findViewById);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setRate(@NonNull FtxMessages.DoublePlayerMsg doublePlayerMsg) {
        if (doublePlayerMsg.getValue() != null) {
            setPlayerRate(doublePlayerMsg.getValue().floatValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setRenderMode(@NonNull Long l) {
        if (this.mCurrentRenderMode != l.longValue()) {
            this.mCurrentRenderMode = l.longValue();
            updateTextureRenderMode(l.longValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.BoolMsg setRequestAudioFocus(@NonNull FtxMessages.BoolPlayerMsg boolPlayerMsg) {
        if (boolPlayerMsg.getValue() != null) {
            return TXCommonUtil.boolMsgWith(Boolean.valueOf(requestPlayerAudioFocus(boolPlayerMsg.getValue().booleanValue())));
        }
        return TXCommonUtil.boolMsgWith(Boolean.FALSE);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setStartTime(@NonNull FtxMessages.DoublePlayerMsg doublePlayerMsg) {
        if (doublePlayerMsg.getValue() != null) {
            setPlayerStartTime(doublePlayerMsg.getValue().doubleValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setStringOption(@NonNull FtxMessages.StringOptionPlayerMsg stringOptionPlayerMsg) {
        List<Object> value;
        if (this.mVodPlayer != null && (value = stringOptionPlayerMsg.getValue()) != null && !value.isEmpty()) {
            this.mVodPlayer.setStringOption(stringOptionPlayerMsg.getKey(), value.get(0));
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setSubtitleStyle(@NonNull FtxMessages.SubTitleRenderModelPlayerMsg subTitleRenderModelPlayerMsg) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.setSubtitleStyle(FTXTransformation.transToTitleRenderModel(subTitleRenderModelPlayerMsg));
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void setToken(@NonNull FtxMessages.StringPlayerMsg stringPlayerMsg) {
        setPlayerToken(stringPlayerMsg.getValue());
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.IntMsg startPlayDrm(@NonNull FtxMessages.TXPlayerDrmMsg tXPlayerDrmMsg) {
        if (this.mVodPlayer != null) {
            TXPlayerDrmBuilder tXPlayerDrmBuilder = new TXPlayerDrmBuilder(tXPlayerDrmMsg.getLicenseUrl(), tXPlayerDrmMsg.getPlayUrl());
            if (!TextUtils.isEmpty(tXPlayerDrmMsg.getDeviceCertificateUrl())) {
                tXPlayerDrmBuilder.setDeviceCertificateUrl(tXPlayerDrmMsg.getDeviceCertificateUrl());
            }
            return TXCommonUtil.intMsgWith(Long.valueOf(this.mVodPlayer.startPlayDrm(tXPlayerDrmBuilder)));
        }
        return TXCommonUtil.intMsgWith(-101L);
    }

    public int startPlayerVodPlay(String str) {
        if (this.mVodPlayer != null) {
            FTXRenderView fTXRenderView = this.mCurRenderView;
            if (fTXRenderView != null) {
                fTXRenderView.setPlayer(this);
            }
            return this.mVodPlayer.startVodPlay(str);
        }
        return -101;
    }

    public void startPlayerVodPlayWithParams(int i, String str, String str2) {
        if (this.mVodPlayer != null) {
            this.mVodPlayer.startVodPlay(new TXPlayInfoParams(i, str, str2));
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.BoolMsg startVodPlay(@NonNull FtxMessages.StringPlayerMsg stringPlayerMsg) {
        boolean z = true;
        if (startPlayerVodPlay(stringPlayerMsg.getValue()) != 1) {
            z = false;
        }
        return TXCommonUtil.boolMsgWith(Boolean.valueOf(z));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    public void startVodPlayWithParams(@NonNull FtxMessages.TXPlayInfoParamsPlayerMsg tXPlayInfoParamsPlayerMsg) {
        Long appId = tXPlayInfoParamsPlayerMsg.getAppId();
        Objects.requireNonNull(appId);
        startPlayerVodPlayWithParams(appId.intValue(), tXPlayInfoParamsPlayerMsg.getFileId(), tXPlayInfoParamsPlayerMsg.getPsign());
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterVodPlayerApi
    @NonNull
    public FtxMessages.BoolMsg stop(@NonNull FtxMessages.BoolPlayerMsg boolPlayerMsg) {
        boolean z;
        boolean z2 = false;
        if (boolPlayerMsg.getValue() != null) {
            z = boolPlayerMsg.getValue().booleanValue();
        } else {
            z = false;
        }
        if (stopPlay(z) == 1) {
            z2 = true;
        }
        return TXCommonUtil.boolMsgWith(Boolean.valueOf(z2));
    }

    public int stopPlay(boolean z) {
        int i;
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            i = tXVodPlayer.stopPlay(z);
        } else {
            i = -101;
        }
        this.mUIHandler.removeCallbacksAndMessages(null);
        this.mPipManager.exitPipByPlayerId(getPlayerId());
        releaseTXImageSprite();
        this.mHardwareDecodeFail = false;
        if (z && this.mCurRenderView != null) {
            LiteavLog.i(TAG, "stopPlay target clear last img, player:" + hashCode());
            this.mCurRenderView.clearTexture();
        }
        return i;
    }

    public void seekToPdtTime(long j) {
        TXVodPlayer tXVodPlayer = this.mVodPlayer;
        if (tXVodPlayer != null) {
            tXVodPlayer.seekToPdtTime(j);
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
    public void success() {
    }
}
