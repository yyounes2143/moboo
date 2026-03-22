package com.tencent.vod.flutter.player;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.live2.V2TXLiveDef;
import com.tencent.live2.V2TXLivePlayer;
import com.tencent.live2.V2TXLivePlayerObserver;
import com.tencent.live2.impl.V2TXLivePlayerImpl;
import com.tencent.live2.impl.V2TXLiveProperty;
import com.tencent.rtmp.TXLiveBase;
import com.tencent.rtmp.TXLiveConstants;
import com.tencent.vod.flutter.FTXEvent;
import com.tencent.vod.flutter.FTXPIPManager;
import com.tencent.vod.flutter.messages.FtxMessages;
import com.tencent.vod.flutter.messages.Kkkkkkkkkkkkkkkkkkkkkk;
import com.tencent.vod.flutter.model.TXPipResult;
import com.tencent.vod.flutter.model.TXPlayerHolder;
import com.tencent.vod.flutter.player.render.FTXLivePlayerRenderHost;
import com.tencent.vod.flutter.tools.FTXV2LiveTools;
import com.tencent.vod.flutter.tools.TXCommonUtil;
import com.tencent.vod.flutter.tools.TXFlutterEngineHolder;
import com.tencent.vod.flutter.ui.render.FTXRenderView;
import com.tencent.vod.flutter.ui.render.FTXRenderViewFactory;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXLivePlayer extends FTXLivePlayerRenderHost implements FtxMessages.TXFlutterLivePlayerApi, FtxMessages.VoidResult {
    private static final String TAG = "FTXLivePlayer";
    private static final int Uninitialized = -101;
    private final TXFlutterEngineHolder.TXAppStatusListener mAppLifeListener;
    private final FlutterPlugin.FlutterPluginBinding mFlutterPluginBinding;
    private final FtxMessages.TXLivePlayerFlutterAPI mLiveFlutterApi;
    private V2TXLivePlayer mLivePlayer;
    private final FTXV2LiveObserver mObserver;
    private final FTXPIPManager mPipManager;
    private final FTXRenderViewFactory mRenderViewFactory;
    private boolean mNeedPipResume = false;
    private int mLastPlayEvent = -1;
    private boolean mIsPaused = false;
    private final Handler mUIHandler = new Handler(Looper.getMainLooper());
    private boolean mIsMute = false;
    private int mCurrentVideoWidth = 0;
    private int mCurrentVideoHeight = 0;
    private long mCurrentRenderMode = 0;
    private final FTXPIPManager.PipCallback pipCallback = new FTXPIPManager.PipCallback() { // from class: com.tencent.vod.flutter.player.FTXLivePlayer.1
        @Override // com.tencent.vod.flutter.FTXPIPManager.PipCallback
        public void onPipResult(TXPipResult tXPipResult) {
            if (FTXLivePlayer.this.mLivePlayer != null) {
                FTXLivePlayer.this.mLivePlayer.setObserver(FTXLivePlayer.this.mObserver);
                FTXLivePlayer fTXLivePlayer = FTXLivePlayer.this;
                fTXLivePlayer.setRenderView(((FTXLivePlayerRenderHost) fTXLivePlayer).mCurRenderView.getRenderView());
            }
            if (tXPipResult.isPlaying()) {
                if (!TXFlutterEngineHolder.getInstance().isInForeground()) {
                    FTXLivePlayer.this.mNeedPipResume = true;
                } else {
                    FTXLivePlayer.this.resumePlayer();
                }
            }
        }

        @Override // com.tencent.vod.flutter.FTXPIPManager.PipCallback
        public void onPipPlayerEvent(int i, Bundle bundle) {
        }
    };

    public FTXLivePlayer(FlutterPlugin.FlutterPluginBinding flutterPluginBinding, FTXPIPManager fTXPIPManager, FTXRenderViewFactory fTXRenderViewFactory, boolean z) {
        TXFlutterEngineHolder.TXAppStatusListener tXAppStatusListener = new TXFlutterEngineHolder.TXAppStatusListener() { // from class: com.tencent.vod.flutter.player.FTXLivePlayer.2
            @Override // com.tencent.vod.flutter.tools.TXFlutterEngineHolder.TXAppStatusListener
            public void onResume() {
                if (FTXLivePlayer.this.mNeedPipResume) {
                    FTXLivePlayer.this.mNeedPipResume = false;
                    FTXLivePlayer.this.resumePlayer();
                }
            }

            @Override // com.tencent.vod.flutter.tools.TXFlutterEngineHolder.TXAppStatusListener
            public void onEnterBack() {
            }
        };
        this.mAppLifeListener = tXAppStatusListener;
        this.mFlutterPluginBinding = flutterPluginBinding;
        this.mPipManager = fTXPIPManager;
        this.mRenderViewFactory = fTXRenderViewFactory;
        Kkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwww(flutterPluginBinding.getBinaryMessenger(), String.valueOf(getPlayerId()), this);
        this.mLiveFlutterApi = new FtxMessages.TXLivePlayerFlutterAPI(flutterPluginBinding.getBinaryMessenger(), String.valueOf(getPlayerId()));
        TXFlutterEngineHolder.getInstance().addAppLifeListener(tXAppStatusListener);
        this.mObserver = new FTXV2LiveObserver(this);
        init(z);
    }

    private void applyRenderMode() {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            long j = this.mCurrentRenderMode;
            if (j == 0) {
                v2TXLivePlayer.setRenderFillMode(V2TXLiveDef.V2TXLiveFillMode.V2TXLiveFillModeFit);
            } else if (j == 1) {
                v2TXLivePlayer.setRenderFillMode(V2TXLiveDef.V2TXLiveFillMode.V2TXLiveFillModeFill);
            } else if (j == 2) {
                v2TXLivePlayer.setRenderFillMode(V2TXLiveDef.V2TXLiveFillMode.V2TXLiveFillModeScaleFill);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyPlayerEvent(final int i, final Bundle bundle) {
        this.mUIHandler.post(new Runnable() { // from class: com.tencent.vod.flutter.player.FTXLivePlayer.3
            @Override // java.lang.Runnable
            public void run() {
                FTXLivePlayer.this.mLastPlayEvent = i;
                FTXLivePlayer.this.mLiveFlutterApi.onPlayerEvent(TXCommonUtil.getParams(i, bundle), FTXLivePlayer.this);
                LiteavLog.e(FTXLivePlayer.TAG, "onLivePlayEvent:" + i + "," + bundle.getString("EVT_MSG"));
            }
        });
    }

    private void setPlayerAppID(String str) {
        TXLiveBase.setAppID(str);
    }

    @Override // com.tencent.vod.flutter.player.FTXBasePlayer
    public void destroy() {
        if (this.mLivePlayer != null) {
            stopPlay(true);
            setRenderView(null);
            this.mLivePlayer = null;
        }
        this.mCurRenderView = null;
        this.mUIHandler.removeCallbacksAndMessages(null);
        TXFlutterEngineHolder.getInstance().removeAppLifeListener(this.mAppLifeListener);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    @NonNull
    public FtxMessages.BoolMsg enableHardwareDecode(@NonNull FtxMessages.BoolPlayerMsg boolPlayerMsg) {
        return TXCommonUtil.boolMsgWith(Boolean.FALSE);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    @NonNull
    public Long enablePictureInPicture(@NonNull FtxMessages.BoolPlayerMsg boolPlayerMsg) {
        return -1L;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    @NonNull
    public Long enableReceiveSeiMessage(@NonNull FtxMessages.PlayerMsg playerMsg, @NonNull Boolean bool, @NonNull Long l) {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            return Long.valueOf(v2TXLivePlayer.enableReceiveSeiMessage(bool.booleanValue(), l.intValue()));
        }
        return -1L;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    @NonNull
    public FtxMessages.IntMsg enterPictureInPictureMode(@NonNull FtxMessages.PipParamsPlayerMsg pipParamsPlayerMsg) {
        int i;
        int i2;
        this.mPipManager.addCallback(Integer.valueOf(getPlayerId()), this.pipCallback);
        FTXPIPManager.PipParams pipParams = new FTXPIPManager.PipParams(this.mPipManager.toAndroidPath(pipParamsPlayerMsg.getBackIconForAndroid()), this.mPipManager.toAndroidPath(pipParamsPlayerMsg.getPlayIconForAndroid()), this.mPipManager.toAndroidPath(pipParamsPlayerMsg.getPauseIconForAndroid()), this.mPipManager.toAndroidPath(pipParamsPlayerMsg.getForwardIconForAndroid()), getPlayerId(), false, false, true);
        if (this.mLivePlayer != null) {
            pipParams.setIsPlaying(isPlayerPlaying());
            int i3 = this.mCurrentVideoWidth;
            if (i3 > 0 && (i2 = this.mCurrentVideoHeight) > 0) {
                pipParams.setRadio(i3, i2);
            } else {
                LiteavLog.e(TAG, "miss video size when enter PIP");
            }
            i = this.mPipManager.enterPip(pipParams, new TXPlayerHolder(this.mLivePlayer, this.mIsPaused));
            if (i == 0) {
                pausePlayer();
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

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    public void exitPictureInPictureMode(@NonNull FtxMessages.PlayerMsg playerMsg) {
        this.mPipManager.exitPipByPlayerId(getPlayerId());
    }

    @Override // com.tencent.vod.flutter.player.render.FTXLivePlayerRenderHost
    public V2TXLivePlayer getLivePlayer() {
        return this.mLivePlayer;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    @NonNull
    public FtxMessages.ListMsg getSupportedBitrate(@NonNull FtxMessages.PlayerMsg playerMsg) {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            ArrayList<V2TXLiveDef.V2TXLiveStreamInfo> streamList = v2TXLivePlayer.getStreamList();
            ArrayList arrayList = new ArrayList();
            int size = streamList.size();
            int i = 0;
            while (i < size) {
                V2TXLiveDef.V2TXLiveStreamInfo v2TXLiveStreamInfo = streamList.get(i);
                i++;
                V2TXLiveDef.V2TXLiveStreamInfo v2TXLiveStreamInfo2 = v2TXLiveStreamInfo;
                HashMap hashMap = new HashMap();
                hashMap.put("bitrate", Integer.valueOf(v2TXLiveStreamInfo2.bitrate));
                hashMap.put("width", Integer.valueOf(v2TXLiveStreamInfo2.width));
                hashMap.put("height", Integer.valueOf(v2TXLiveStreamInfo2.height));
                hashMap.put("framerate", Float.valueOf(v2TXLiveStreamInfo2.framerate));
                hashMap.put("url", v2TXLiveStreamInfo2.url);
                arrayList.add(hashMap);
            }
            return TXCommonUtil.listMsgWith(arrayList);
        }
        return TXCommonUtil.listMsgWith(new ArrayList());
    }

    public long init(boolean z) {
        FTXRenderView fTXRenderView;
        if (this.mLivePlayer == null) {
            V2TXLivePlayerImpl v2TXLivePlayerImpl = new V2TXLivePlayerImpl(this.mFlutterPluginBinding.getApplicationContext());
            this.mLivePlayer = v2TXLivePlayerImpl;
            v2TXLivePlayerImpl.setObserver(this.mObserver);
            applyRenderMode();
            if (!z && (fTXRenderView = this.mCurRenderView) != null) {
                fTXRenderView.setPlayer(this);
                return 0L;
            }
            return 0L;
        }
        return 0L;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
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

    public boolean isPlayerPlaying() {
        if (this.mLivePlayer != null) {
            return !this.mIsPaused;
        }
        return false;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    @NonNull
    public FtxMessages.BoolMsg isPlaying(@NonNull FtxMessages.PlayerMsg playerMsg) {
        return TXCommonUtil.boolMsgWith(Boolean.valueOf(isPlayerPlaying()));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    public void pause(@NonNull FtxMessages.PlayerMsg playerMsg) {
        pausePlayer();
    }

    public void pausePlayer() {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            v2TXLivePlayer.pauseVideo();
            this.mLivePlayer.pauseAudio();
            this.mIsPaused = true;
            if (this.mPipManager.isInPipMode()) {
                this.mPipManager.notifyCurrentPipPlayerPlayState(getPlayerId(), isPlayerPlaying());
            }
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    public void resume(@NonNull FtxMessages.PlayerMsg playerMsg) {
        resumePlayer();
    }

    public void resumePlayer() {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            v2TXLivePlayer.resumeVideo();
            if (!this.mIsMute) {
                this.mLivePlayer.resumeAudio();
            }
            this.mIsPaused = false;
            notifyPlayerEvent(2004, new Bundle());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    public void setAppID(@NonNull FtxMessages.StringPlayerMsg stringPlayerMsg) {
        if (stringPlayerMsg.getValue() != null) {
            setPlayerAppID(stringPlayerMsg.getValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    @NonNull
    public Long setCacheParams(@NonNull FtxMessages.PlayerMsg playerMsg, @NonNull Double d, @NonNull Double d2) {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            v2TXLivePlayer.setCacheParams(d.floatValue(), d2.floatValue());
        }
        return -1L;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    public void setConfig(@NonNull FtxMessages.FTXLivePlayConfigPlayerMsg fTXLivePlayConfigPlayerMsg) {
        setPlayerConfig(fTXLivePlayConfigPlayerMsg);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    public void setLiveMode(@NonNull FtxMessages.IntPlayerMsg intPlayerMsg) {
        if (intPlayerMsg.getValue() != null) {
            setPlayerLiveMode(intPlayerMsg.getValue().intValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    public void setMute(@NonNull FtxMessages.BoolPlayerMsg boolPlayerMsg) {
        if (boolPlayerMsg.getValue() != null) {
            LiteavLog.i(TAG, "set player mute:" + boolPlayerMsg + ",player:" + hashCode());
            setPlayerMute(boolPlayerMsg.getValue().booleanValue());
        }
    }

    public void setPlayerConfig(FtxMessages.FTXLivePlayConfigPlayerMsg fTXLivePlayConfigPlayerMsg) {
        if (this.mLivePlayer != null) {
            if (fTXLivePlayConfigPlayerMsg.getMinAutoAdjustCacheTime() != null && fTXLivePlayConfigPlayerMsg.getMaxAutoAdjustCacheTime() != null) {
                this.mLivePlayer.setCacheParams(fTXLivePlayConfigPlayerMsg.getMinAutoAdjustCacheTime().floatValue(), fTXLivePlayConfigPlayerMsg.getMaxAutoAdjustCacheTime().floatValue());
            }
            if (fTXLivePlayConfigPlayerMsg.getConnectRetryCount() != null) {
                this.mLivePlayer.setProperty(V2TXLiveProperty.kV2MaxNumberOfReconnection, Integer.valueOf(fTXLivePlayConfigPlayerMsg.getConnectRetryCount().intValue()));
            }
            if (fTXLivePlayConfigPlayerMsg.getConnectRetryInterval() != null) {
                this.mLivePlayer.setProperty(V2TXLiveProperty.kV2SecondsBetweenReconnection, Integer.valueOf(fTXLivePlayConfigPlayerMsg.getConnectRetryInterval().intValue()));
            }
        }
    }

    public void setPlayerLiveMode(int i) {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            if (i == 0) {
                v2TXLivePlayer.setCacheParams(1.0f, 5.0f);
            } else if (i == 1) {
                v2TXLivePlayer.setCacheParams(1.0f, 1.0f);
            } else {
                v2TXLivePlayer.setCacheParams(5.0f, 5.0f);
            }
        }
    }

    public void setPlayerMute(boolean z) {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            this.mIsMute = z;
            if (z) {
                v2TXLivePlayer.pauseAudio();
            } else if (!this.mIsPaused) {
                v2TXLivePlayer.resumeAudio();
            }
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    public void setPlayerView(@NonNull Long l) {
        int intValue = l.intValue();
        FTXRenderView findViewById = this.mRenderViewFactory.findViewById(intValue);
        if (findViewById == null) {
            LiteavLog.e(TAG, "setPlayerView can not find renderView by id:" + intValue + ", release player's renderView");
        }
        setUpPlayerView(findViewById);
    }

    public void setPlayerVolume(int i) {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            v2TXLivePlayer.setPlayoutVolume(i);
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    @NonNull
    public Long setProperty(@NonNull FtxMessages.PlayerMsg playerMsg, @NonNull String str, @NonNull Object obj) {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            return Long.valueOf(v2TXLivePlayer.setProperty(str, obj));
        }
        return -1L;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    public void setRenderMode(@NonNull Long l) {
        if (this.mCurrentRenderMode != l.longValue()) {
            this.mCurrentRenderMode = l.longValue();
            applyRenderMode();
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    public void setVolume(@NonNull FtxMessages.IntPlayerMsg intPlayerMsg) {
        if (intPlayerMsg.getValue() != null) {
            setPlayerVolume(intPlayerMsg.getValue().intValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    public void showDebugView(@NonNull FtxMessages.PlayerMsg playerMsg, @NonNull Boolean bool) {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            v2TXLivePlayer.showDebugView(bool.booleanValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    @NonNull
    public FtxMessages.BoolMsg startLivePlay(@NonNull FtxMessages.StringPlayerMsg stringPlayerMsg) {
        boolean z = true;
        if (startPlayerLivePlay(stringPlayerMsg.getValue()) != 1) {
            z = false;
        }
        return TXCommonUtil.boolMsgWith(Boolean.valueOf(z));
    }

    public int startPlayerLivePlay(String str) {
        LiteavLog.d(TAG, "startLivePlay:");
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            v2TXLivePlayer.resumeVideo();
            if (!this.mIsMute) {
                this.mLivePlayer.resumeAudio();
            }
            this.mLastPlayEvent = -1;
            this.mIsPaused = false;
            this.mLivePlayer.startLivePlay(str);
            return 0;
        }
        return -101;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
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
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            this.mLastPlayEvent = -1;
            this.mIsPaused = false;
            i = v2TXLivePlayer.stopPlay();
        } else {
            i = -101;
        }
        this.mUIHandler.removeCallbacksAndMessages(null);
        this.mCurrentVideoWidth = 0;
        this.mCurrentVideoHeight = 0;
        if (z && this.mCurRenderView != null) {
            LiteavLog.i(TAG, "stopPlay target clear last img, player:" + hashCode());
            this.mCurRenderView.clearTexture();
            this.mCurRenderView.setPlayer(this);
        }
        return i;
    }

    public int switchPlayerStream(String str) {
        V2TXLivePlayer v2TXLivePlayer = this.mLivePlayer;
        if (v2TXLivePlayer != null) {
            return v2TXLivePlayer.switchStream(str);
        }
        return -1;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterLivePlayerApi
    @NonNull
    public FtxMessages.IntMsg switchStream(@NonNull FtxMessages.StringPlayerMsg stringPlayerMsg) {
        return TXCommonUtil.intMsgWith(Long.valueOf(switchPlayerStream(stringPlayerMsg.getValue())));
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class FTXV2LiveObserver extends V2TXLivePlayerObserver implements FtxMessages.VoidResult {
        private static final String TAG = "FTXV2LiveObserver";
        private final FtxMessages.TXLivePlayerFlutterAPI mLiveFlutterApi;
        private final FTXLivePlayer mLivePlayer;

        public FTXV2LiveObserver(FTXLivePlayer fTXLivePlayer) {
            this.mLivePlayer = fTXLivePlayer;
            this.mLiveFlutterApi = fTXLivePlayer.mLiveFlutterApi;
        }

        @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
        public void error(@NonNull Throwable th) {
            LiteavLog.e(TAG, "callback message error:" + th);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onAudioLoading(V2TXLivePlayer v2TXLivePlayer, Bundle bundle) {
            super.onAudioLoading(v2TXLivePlayer, bundle);
            this.mLivePlayer.notifyPlayerEvent(2007, new Bundle(bundle));
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onAudioPlaying(V2TXLivePlayer v2TXLivePlayer, boolean z, Bundle bundle) {
            super.onAudioPlaying(v2TXLivePlayer, z, bundle);
            this.mLivePlayer.notifyPlayerEvent(2026, new Bundle(bundle));
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onConnected(V2TXLivePlayer v2TXLivePlayer, Bundle bundle) {
            super.onConnected(v2TXLivePlayer, bundle);
            this.mLivePlayer.notifyPlayerEvent(2001, new Bundle(bundle));
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onError(V2TXLivePlayer v2TXLivePlayer, int i, String str, Bundle bundle) {
            super.onError(v2TXLivePlayer, i, str, bundle);
            Bundle bundle2 = new Bundle(bundle);
            bundle2.putString("EVT_MSG", str);
            this.mLivePlayer.notifyPlayerEvent(i, bundle2);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onLocalRecordBegin(V2TXLivePlayer v2TXLivePlayer, int i, String str) {
            super.onLocalRecordBegin(v2TXLivePlayer, i, str);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onLocalRecordComplete(V2TXLivePlayer v2TXLivePlayer, int i, String str) {
            super.onLocalRecordComplete(v2TXLivePlayer, i, str);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onLocalRecording(V2TXLivePlayer v2TXLivePlayer, long j, String str) {
            super.onLocalRecording(v2TXLivePlayer, j, str);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onPlayoutAudioFrame(V2TXLivePlayer v2TXLivePlayer, V2TXLiveDef.V2TXLiveAudioFrame v2TXLiveAudioFrame) {
            super.onPlayoutAudioFrame(v2TXLivePlayer, v2TXLiveAudioFrame);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onPlayoutVolumeUpdate(V2TXLivePlayer v2TXLivePlayer, int i) {
            super.onPlayoutVolumeUpdate(v2TXLivePlayer, i);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onReceiveSeiMessage(V2TXLivePlayer v2TXLivePlayer, int i, byte[] bArr) {
            super.onReceiveSeiMessage(v2TXLivePlayer, i, bArr);
            Bundle bundle = new Bundle();
            bundle.putByteArray("EVT_GET_MSG", bArr);
            bundle.putInt(TXLiveConstants.EVT_GET_MSG_TYPE, i);
            this.mLivePlayer.notifyPlayerEvent(TXLiveConstants.PLAY_EVT_GET_MESSAGE, bundle);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onRenderVideoFrame(V2TXLivePlayer v2TXLivePlayer, V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame) {
            super.onRenderVideoFrame(v2TXLivePlayer, v2TXLiveVideoFrame);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onSnapshotComplete(V2TXLivePlayer v2TXLivePlayer, Bitmap bitmap) {
            super.onSnapshotComplete(v2TXLivePlayer, bitmap);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onStatisticsUpdate(V2TXLivePlayer v2TXLivePlayer, final V2TXLiveDef.V2TXLivePlayerStatistics v2TXLivePlayerStatistics) {
            super.onStatisticsUpdate(v2TXLivePlayer, v2TXLivePlayerStatistics);
            this.mLivePlayer.mUIHandler.post(new Runnable() { // from class: com.tencent.vod.flutter.player.FTXLivePlayer.FTXV2LiveObserver.1
                @Override // java.lang.Runnable
                public void run() {
                    FTXV2LiveObserver.this.mLiveFlutterApi.onNetEvent(TXCommonUtil.getParams(0, FTXV2LiveTools.buildNetBundle(v2TXLivePlayerStatistics)), FTXV2LiveObserver.this);
                }
            });
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onStreamSwitched(V2TXLivePlayer v2TXLivePlayer, String str, int i) {
            int i2;
            String str2;
            super.onStreamSwitched(v2TXLivePlayer, str, i);
            if (i != 0) {
                i2 = TXLiveConstants.PLAY_ERR_STREAM_SWITCH_FAIL;
                str2 = "Switch stream failed.";
            } else {
                i2 = TXLiveConstants.PLAY_EVT_STREAM_SWITCH_SUCC;
                str2 = "Switch stream success.";
            }
            Bundle bundle = new Bundle();
            bundle.putString("EVT_MSG", str2);
            this.mLivePlayer.notifyPlayerEvent(i2, bundle);
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onVideoLoading(V2TXLivePlayer v2TXLivePlayer, Bundle bundle) {
            super.onVideoLoading(v2TXLivePlayer, bundle);
            this.mLivePlayer.notifyPlayerEvent(2007, new Bundle(bundle));
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onVideoPlaying(V2TXLivePlayer v2TXLivePlayer, boolean z, Bundle bundle) {
            super.onVideoPlaying(v2TXLivePlayer, z, bundle);
            if (this.mLivePlayer.mLastPlayEvent == 2007) {
                this.mLivePlayer.notifyPlayerEvent(2014, new Bundle(bundle));
            }
            this.mLivePlayer.notifyPlayerEvent(2004, new Bundle(bundle));
            if (z) {
                this.mLivePlayer.notifyPlayerEvent(2003, new Bundle(bundle));
            }
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onVideoResolutionChanged(V2TXLivePlayer v2TXLivePlayer, int i, int i2) {
            super.onVideoResolutionChanged(v2TXLivePlayer, i, i2);
            Bundle bundle = new Bundle();
            bundle.putInt(FTXEvent.EVT_KEY_PLAYER_WIDTH, i);
            bundle.putInt(FTXEvent.EVT_KEY_PLAYER_HEIGHT, i2);
            bundle.putInt("EVT_PARAM1", i);
            bundle.putInt("EVT_PARAM2", i2);
            bundle.putString("EVT_MSG", String.format(Locale.ROOT, "Resolution changed. resolution:%1$dx%2$d, (long)width, (long)height", Integer.valueOf(i), Integer.valueOf(i2)));
            this.mLivePlayer.notifyPlayerEvent(2009, bundle);
            this.mLivePlayer.mCurrentVideoWidth = i;
            this.mLivePlayer.mCurrentVideoHeight = i2;
        }

        @Override // com.tencent.live2.V2TXLivePlayerObserver
        public void onWarning(V2TXLivePlayer v2TXLivePlayer, int i, String str, Bundle bundle) {
            super.onWarning(v2TXLivePlayer, i, str, bundle);
            Bundle bundle2 = new Bundle(bundle);
            bundle2.putString("EVT_MSG", str);
            this.mLivePlayer.notifyPlayerEvent(i, bundle2);
        }

        @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
        public void success() {
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
    public void success() {
    }
}
