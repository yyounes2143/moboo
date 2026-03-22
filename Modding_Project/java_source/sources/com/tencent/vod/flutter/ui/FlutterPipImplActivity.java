package com.tencent.vod.flutter.ui;

import android.app.Activity;
import android.app.PictureInPictureParams;
import android.app.PictureInPictureUiState;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.ITXVodPlayListener;
import com.tencent.rtmp.TXVodPlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.vod.flutter.FTXEvent;
import com.tencent.vod.flutter.FTXPIPManager;
import com.tencent.vod.flutter.R;
import com.tencent.vod.flutter.model.TXPipResult;
import com.tencent.vod.flutter.model.TXPlayerHolder;
import com.tencent.vod.flutter.tools.TXFlutterEngineHolder;
import com.tencent.vod.flutter.tools.TXSimpleEventBus;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FlutterPipImplActivity extends Activity implements ITXVodPlayListener, ServiceConnection, TXSimpleEventBus.EventSubscriber {
    private static final String TAG = "FlutterPipImplActivity";
    private static boolean isInPip = false;
    private static TXPlayerHolder pipPlayerHolder;
    private FTXPIPManager.PipParams mCurrentParams;
    private Handler mMainHandler;
    private RelativeLayout mPipContainer;
    private TXPlayerHolder mPlayerHolder;
    private ProgressBar mVideoProgress;
    private TXCloudVideoView mVideoRenderView;
    private boolean needToExitPip = false;
    private int configWidth = 0;
    private int configHeight = 0;
    private boolean mIsNeedToStop = false;
    private boolean mIsRegisterReceiver = false;
    private boolean mIsPipFinishing = false;
    private boolean mIsPlayEnd = false;
    private final BroadcastReceiver pipActionReceiver = new BroadcastReceiver() { // from class: com.tencent.vod.flutter.ui.FlutterPipImplActivity.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            Bundle extras = intent.getExtras();
            if (extras != null && FlutterPipImplActivity.this.mCurrentParams != null && extras.getInt(FTXEvent.EXTRA_NAME_PLAYER_ID, -1) == FlutterPipImplActivity.this.mCurrentParams.getCurrentPlayerId()) {
                switch (extras.getInt(FTXEvent.EXTRA_NAME_PLAY_OP, -1)) {
                    case 101:
                        FlutterPipImplActivity.this.handlePlayBack();
                        return;
                    case 102:
                        boolean z = false;
                        int i = extras.getInt(FTXEvent.EXTRA_NAME_IS_PLAYING, 0);
                        if (i == 0) {
                            FlutterPipImplActivity.this.handleResumeOrPause();
                            return;
                        }
                        FlutterPipImplActivity flutterPipImplActivity = FlutterPipImplActivity.this;
                        if (i == 1) {
                            z = true;
                        }
                        flutterPipImplActivity.handleResumeOrPause(z);
                        return;
                    case 103:
                        FlutterPipImplActivity.this.handlePlayForward();
                        return;
                    default:
                        LiteavLog.e(FlutterPipImplActivity.TAG, "unknown control code");
                        return;
                }
            }
        }
    };

    private void attachRenderView(TXCloudVideoView tXCloudVideoView) {
        TXPlayerHolder tXPlayerHolder = this.mPlayerHolder;
        if (tXPlayerHolder != null) {
            if (tXPlayerHolder.getPlayerType() == 1) {
                this.mPlayerHolder.getVodPlayer().setPlayerView(tXCloudVideoView);
                return;
            } else if (this.mPlayerHolder.getPlayerType() == 2) {
                this.mPlayerHolder.getLivePlayer().setRenderView(tXCloudVideoView);
                return;
            } else {
                LiteavLog.e(TAG, "unknown player type:" + this.mPlayerHolder.getPlayerType());
                return;
            }
        }
        LiteavLog.e(TAG, "pip video model is null");
    }

    private void bindAndroid12BugServiceIfNeed() {
        if (Build.VERSION.SDK_INT >= 29) {
            Intent intent = new Intent(getApplicationContext(), TXAndroid12BridgeService.class);
            startService(intent);
            bindService(intent, this, 1);
        }
    }

    private void configPipMode(final PictureInPictureParams pictureInPictureParams) {
        this.mVideoRenderView.post(new Runnable() { // from class: com.tencent.vod.flutter.ui.FlutterPipImplActivity.2
            @Override // java.lang.Runnable
            public void run() {
                int i = Build.VERSION.SDK_INT;
                if (i >= 24) {
                    if (i < 26) {
                        FlutterPipImplActivity.this.enterPictureInPictureMode();
                    } else {
                        FlutterPipImplActivity.this.enterPictureInPictureMode(pictureInPictureParams);
                    }
                }
            }
        });
    }

    private void controlPipPlayStatus(boolean z) {
        FTXPIPManager.PipParams pipParams = this.mCurrentParams;
        if (pipParams != null) {
            pipParams.setIsPlaying(z);
            updatePip(this.mCurrentParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyPipAct() {
        overridePendingTransition(0, 0);
        finishAndRemoveTask();
        this.mIsPipFinishing = false;
        pipPlayerHolder = null;
        isInPip = false;
    }

    private void exitPip(boolean z) {
        if (!this.mIsPipFinishing) {
            this.mIsPipFinishing = true;
            if (isDestroyed() && isFinishing()) {
                return;
            }
            if (!z) {
                this.mVideoRenderView.setVisibility(8);
                this.mVideoProgress.setVisibility(8);
                this.mMainHandler.postDelayed(new Runnable() { // from class: com.tencent.vod.flutter.ui.FlutterPipImplActivity.4
                    @Override // java.lang.Runnable
                    public void run() {
                        FlutterPipImplActivity.this.moveCurActToFront();
                        FlutterPipImplActivity.this.destroyPipAct();
                    }
                }, 800L);
                return;
            }
            destroyPipAct();
        }
    }

    private void handleAction(String str, Bundle bundle) {
        int i;
        if (TextUtils.equals(str, FTXEvent.PIP_ACTION_START)) {
            startPipVideo();
        } else if (TextUtils.equals(str, FTXEvent.PIP_ACTION_EXIT)) {
            if (bundle != null) {
                i = bundle.getInt(FTXEvent.EXTRA_NAME_PLAYER_ID, -1);
            } else {
                i = -1;
            }
            if (i != -1 && i != this.mCurrentParams.getCurrentPlayerId()) {
                LiteavLog.w(TAG, "close pip failed, playerId not found:" + i);
                return;
            }
            this.mIsNeedToStop = true;
            handlePipExitEvent();
        } else if (TextUtils.equals(str, FTXEvent.PIP_ACTION_UPDATE)) {
            if (bundle != null) {
                updatePip((FTXPIPManager.PipParams) bundle.getParcelable(FTXEvent.EXTRA_NAME_PARAMS));
            }
        } else if (TextUtils.equals(str, FTXEvent.PIP_ACTION_DO_EXIT)) {
            destroyPipAct();
        } else {
            LiteavLog.e(TAG, "unknown pip action:" + str);
        }
    }

    private void handleIntent(Intent intent) {
        if (intent != null) {
            handleAction(intent.getAction(), intent.getExtras());
        }
    }

    private void handlePipExitEvent() {
        int i;
        Bundle bundle = new Bundle();
        TXPipResult tXPipResult = new TXPipResult();
        tXPipResult.setPlaying(this.mPlayerHolder.isPlaying());
        boolean z = true;
        if (this.mPlayerHolder.getPlayerType() == 1) {
            if (this.mIsPlayEnd) {
                tXPipResult.setPlayTime(Float.valueOf(0.0f));
            } else {
                tXPipResult.setPlayTime(Float.valueOf(this.mPlayerHolder.getVodPlayer().getCurrentPlaybackTime()));
            }
            tXPipResult.setPlayerId(this.mCurrentParams.getCurrentPlayerId());
            bundle.putParcelable(FTXEvent.EXTRA_NAME_RESULT, tXPipResult);
        } else if (this.mPlayerHolder.getPlayerType() == 2) {
            tXPipResult.setPlayerId(this.mCurrentParams.getCurrentPlayerId());
            bundle.putParcelable(FTXEvent.EXTRA_NAME_RESULT, tXPipResult);
        }
        if (this.mPlayerHolder.getVodPlayer() != null) {
            this.mPlayerHolder.getVodPlayer().setSurface(null);
            this.mPlayerHolder.getVodPlayer().setVodListener(null);
        }
        if (this.mPlayerHolder.getLivePlayer() != null) {
            this.mPlayerHolder.getLivePlayer().setRenderView((TextureView) null);
            this.mPlayerHolder.getLivePlayer().setObserver(null);
        }
        this.mPlayerHolder.pause();
        if (this.mIsNeedToStop) {
            i = 2;
        } else {
            i = 5;
        }
        sendPipEvent(i, bundle);
        if (i != 2) {
            z = false;
        }
        exitPip(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePlayBack() {
        if (this.mPlayerHolder.getPlayerType() == 1) {
            TXVodPlayer vodPlayer = this.mPlayerHolder.getVodPlayer();
            if (vodPlayer.isPlaying()) {
                float currentPlaybackTime = vodPlayer.getCurrentPlaybackTime() - 10.0f;
                if (currentPlaybackTime < 0.0f) {
                    currentPlaybackTime = 0.0f;
                }
                vodPlayer.seek(currentPlaybackTime);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePlayForward() {
        if (this.mPlayerHolder.getPlayerType() == 1) {
            TXVodPlayer vodPlayer = this.mPlayerHolder.getVodPlayer();
            if (vodPlayer.isPlaying()) {
                float currentPlaybackTime = vodPlayer.getCurrentPlaybackTime() + 10.0f;
                float duration = vodPlayer.getDuration();
                if (currentPlaybackTime > duration) {
                    currentPlaybackTime = duration;
                }
                vodPlayer.seek(currentPlaybackTime);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleResumeOrPause() {
        boolean isPlaying = this.mPlayerHolder.isPlaying();
        boolean z = !isPlaying;
        if (!isPlaying) {
            this.mPlayerHolder.resume();
        } else {
            this.mPlayerHolder.pause();
        }
        handleResumeOrPause(z);
    }

    private void registerPipBroadcast() {
        if (!this.mIsRegisterReceiver) {
            ContextCompat.registerReceiver(this, this.pipActionReceiver, new IntentFilter(FTXEvent.ACTION_PIP_PLAY_CONTROL), 4);
            this.mIsRegisterReceiver = true;
        }
    }

    private void sendPipEvent(int i, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putInt(FTXEvent.EXTRA_NAME_PLAYER_ID, this.mCurrentParams.getCurrentPlayerId());
        bundle.putInt(FTXEvent.EVENT_PIP_MODE_NAME, i);
        TXSimpleEventBus.getInstance().post(FTXEvent.EVENT_PIP_ACTION, bundle);
    }

    private void sendPlayerEvent(int i, Bundle bundle) {
        if (this.mCurrentParams != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putInt(FTXEvent.EXTRA_NAME_PLAYER_ID, this.mCurrentParams.getCurrentPlayerId());
            bundle2.putInt(FTXEvent.EXTRA_NAME_PIP_PLAYER_EVENT_ID, i);
            bundle2.putBundle(FTXEvent.EXTRA_NAME_PIP_PLAYER_EVENT_PARAMS, bundle);
            TXSimpleEventBus.getInstance().post(FTXEvent.EVENT_PIP_PLAYER_EVENT_ACTION, bundle2);
        }
    }

    private void setUpPipVideo() {
        this.mVideoRenderView.setVisibility(0);
        this.mVideoProgress.setVisibility(0);
        this.mPipContainer.setBackgroundColor(Color.parseColor("#33000000"));
        attachRenderView(this.mVideoRenderView);
        startPipVideo();
    }

    private void setVodPlayerListener() {
        this.mPlayerHolder.getVodPlayer().setVodListener(this);
    }

    public static int startPip(Activity activity, FTXPIPManager.PipParams pipParams, TXPlayerHolder tXPlayerHolder) {
        if (tXPlayerHolder == null) {
            LiteavLog.e(TAG, "startPip failed, playerHolder is null");
            return -109;
        } else if (tXPlayerHolder.getLivePlayer() == null && tXPlayerHolder.getVodPlayer() == null) {
            LiteavLog.e(TAG, "startPip failed, all player is null");
            return -109;
        } else if (isInPip) {
            LiteavLog.e(TAG, "startPip failed, pip is busy");
            return -110;
        } else {
            isInPip = true;
            tXPlayerHolder.pause();
            pipPlayerHolder = tXPlayerHolder;
            Intent intent = new Intent(activity, FlutterPipImplActivity.class);
            Bundle bundle = new Bundle();
            bundle.putParcelable(FTXEvent.EXTRA_NAME_PARAMS, pipParams);
            intent.setAction(FTXEvent.PIP_ACTION_START);
            intent.addFlags(131072);
            intent.putExtra("data", bundle);
            activity.startActivity(intent);
            return 0;
        }
    }

    private void startPipVideo() {
        startPlay();
    }

    private void startPlay() {
        TXPlayerHolder tXPlayerHolder = this.mPlayerHolder;
        if (tXPlayerHolder != null) {
            if (tXPlayerHolder.isPlayingWhenCreate()) {
                this.mPlayerHolder.resume();
                return;
            }
            return;
        }
        LiteavLog.e(TAG, "miss player when startPlay");
    }

    private void unRegisterPipBroadcast() {
        if (this.mIsRegisterReceiver) {
            unregisterReceiver(this.pipActionReceiver);
        }
    }

    private void updatePip(FTXPIPManager.PipParams pipParams) {
        if (pipParams != null && !isDestroyed() && !isFinishing()) {
            this.mCurrentParams = pipParams;
            if (Build.VERSION.SDK_INT >= 26) {
                setPictureInPictureParams(pipParams.buildParams(this));
            }
        }
    }

    @Override // android.app.Activity
    public boolean enterPictureInPictureMode(@NonNull PictureInPictureParams pictureInPictureParams) {
        return super.enterPictureInPictureMode(pictureInPictureParams);
    }

    public void moveCurActToFront() {
        this.mPipContainer.post(new Runnable() { // from class: com.tencent.vod.flutter.ui.FlutterPipImplActivity.3
            @Override // java.lang.Runnable
            public void run() {
                Intent intent = new Intent(FlutterPipImplActivity.this, FlutterPipImplActivity.this.getClass());
                intent.addFlags(131072);
                intent.setAction(FTXEvent.PIP_ACTION_DO_EXIT);
                FlutterPipImplActivity.this.startActivity(intent);
            }
        });
    }

    public void movePreActToFront() {
        Activity preActivity = TXFlutterEngineHolder.getInstance().getPreActivity();
        if (preActivity != null) {
            Intent intent = new Intent(this, preActivity.getClass());
            intent.addFlags(131072);
            intent.addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
            startActivity(intent);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        boolean isInPictureInPictureMode;
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 24) {
            isInPictureInPictureMode = isInPictureInPictureMode();
            if (isInPictureInPictureMode) {
                this.configWidth = configuration.screenWidthDp;
                this.configHeight = configuration.screenHeightDp;
            } else if (this.needToExitPip && this.configWidth != configuration.screenWidthDp && this.configHeight != configuration.screenHeightDp) {
                handlePipExitEvent();
                this.needToExitPip = false;
            }
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mMainHandler = new Handler(getMainLooper());
        bindAndroid12BugServiceIfNeed();
        registerPipBroadcast();
        setContentView(R.layout.activity_flutter_pip_impl);
        int i = Build.VERSION.SDK_INT;
        Window window = getWindow();
        window.clearFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
        this.mVideoRenderView = (TXCloudVideoView) findViewById(R.id.tv_video_container);
        this.mVideoProgress = (ProgressBar) findViewById(R.id.pb_video_progress);
        this.mPipContainer = (RelativeLayout) findViewById(R.id.rl_pip_container);
        TXPlayerHolder tXPlayerHolder = pipPlayerHolder;
        if (tXPlayerHolder == null) {
            LiteavLog.e(TAG, "lack pipPlayerHolder, please check the pip argument");
            destroyPipAct();
            return;
        }
        this.mPlayerHolder = tXPlayerHolder;
        if (tXPlayerHolder.getVodPlayer() != null) {
            setVodPlayerListener();
        } else if (this.mPlayerHolder.getLivePlayer() != null) {
            setLivePlayerListener();
        } else {
            LiteavLog.e(TAG, "lack pipPlayerHolder player, please check the pip argument");
            destroyPipAct();
            return;
        }
        TXSimpleEventBus.getInstance().register(FTXEvent.PIP_ACTION_EXIT, this);
        TXSimpleEventBus.getInstance().register(FTXEvent.PIP_ACTION_UPDATE, this);
        Bundle bundleExtra = getIntent().getBundleExtra("data");
        if (bundleExtra != null) {
            FTXPIPManager.PipParams pipParams = (FTXPIPManager.PipParams) bundleExtra.getParcelable(FTXEvent.EXTRA_NAME_PARAMS);
            if (pipParams == null) {
                LiteavLog.e(TAG, "lack pip params,please check the argument");
                destroyPipAct();
                return;
            }
            this.mCurrentParams = pipParams;
            if (i >= 26) {
                configPipMode(pipParams.buildParams(this));
            } else {
                configPipMode(null);
            }
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        unRegisterPipBroadcast();
        if (Build.VERSION.SDK_INT >= 29) {
            unbindService(this);
            stopService(new Intent(getApplicationContext(), TXAndroid12BridgeService.class));
        }
        TXSimpleEventBus.getInstance().unregisterAllType(this);
        this.mPlayerHolder = null;
        pipPlayerHolder = null;
        isInPip = false;
        attachRenderView(null);
        super.onDestroy();
    }

    @Override // com.tencent.vod.flutter.tools.TXSimpleEventBus.EventSubscriber
    public void onEvent(String str, Object obj) {
        if (!TextUtils.equals(FTXEvent.PIP_ACTION_EXIT, str) && !TextUtils.equals(FTXEvent.PIP_ACTION_UPDATE, str)) {
            return;
        }
        handleAction(str, (Bundle) obj);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        PushAutoTrackHelper.onNewIntent(this, intent);
        super.onNewIntent(intent);
        handleIntent(intent);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        boolean isInPictureInPictureMode = Build.VERSION.SDK_INT >= 24 ? isInPictureInPictureMode() : z;
        if (isInPictureInPictureMode != z) {
            this.needToExitPip = true;
        } else if (isInPictureInPictureMode) {
            sendPipEvent(1, null);
            setUpPipVideo();
        } else {
            handlePipExitEvent();
        }
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
    }

    @Override // android.app.Activity
    public boolean onPictureInPictureRequested() {
        return super.onPictureInPictureRequested();
    }

    @Override // android.app.Activity
    public void onPictureInPictureUiStateChanged(@NonNull PictureInPictureUiState pictureInPictureUiState) {
        super.onPictureInPictureUiStateChanged(pictureInPictureUiState);
        sendPipEvent(4, null);
    }

    @Override // com.tencent.rtmp.ITXVodPlayListener
    public void onPlayEvent(TXVodPlayer tXVodPlayer, int i, Bundle bundle) {
        boolean isInPictureInPictureMode;
        if (Build.VERSION.SDK_INT >= 24) {
            isInPictureInPictureMode = isInPictureInPictureMode();
            if (isInPictureInPictureMode) {
                FTXPIPManager.PipParams pipParams = this.mCurrentParams;
                if (pipParams != null) {
                    if (i == 2006) {
                        pipParams.setIsPlaying(false);
                        updatePip(this.mCurrentParams);
                    } else if (i == 2004) {
                        pipParams.setIsPlaying(true);
                        updatePip(this.mCurrentParams);
                    }
                }
                if (i == 2006) {
                    this.mIsPlayEnd = true;
                    controlPipPlayStatus(false);
                } else if (i == 2004) {
                    this.mIsPlayEnd = false;
                    controlPipPlayStatus(true);
                } else if (i == 2005) {
                    final int round = Math.round(((bundle.getInt("EVT_PLAY_PROGRESS_MS") / 1000.0f) / (bundle.getInt("EVT_PLAY_DURATION_MS") / 1000.0f)) * this.mVideoProgress.getMax());
                    ProgressBar progressBar = this.mVideoProgress;
                    if (progressBar != null) {
                        progressBar.post(new Runnable() { // from class: com.tencent.vod.flutter.ui.FlutterPipImplActivity.5
                            @Override // java.lang.Runnable
                            public void run() {
                                FlutterPipImplActivity.this.mVideoProgress.setProgress(round);
                            }
                        });
                    }
                }
            }
        }
        sendPlayerEvent(i, bundle);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mIsNeedToStop = false;
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mIsNeedToStop = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleResumeOrPause(boolean z) {
        this.mCurrentParams.setIsPlaying(z);
        updatePip(this.mCurrentParams);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        super.onPictureInPictureModeChanged(z, configuration);
    }

    private void setLivePlayerListener() {
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    @Override // com.tencent.rtmp.ITXVodPlayListener
    public void onNetStatus(TXVodPlayer tXVodPlayer, Bundle bundle) {
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
    }
}
