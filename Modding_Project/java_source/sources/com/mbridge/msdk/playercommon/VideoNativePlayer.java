package com.mbridge.msdk.playercommon;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.Surface;
import android.view.View;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException;
import com.mbridge.msdk.playercommon.exoplayer2.PlaybackParameters;
import com.mbridge.msdk.playercommon.exoplayer2.Player;
import com.mbridge.msdk.playercommon.exoplayer2.SimpleExoPlayer;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.source.MediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import java.util.Timer;
import java.util.TimerTask;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class VideoNativePlayer implements Player.EventListener {
    public static final int INTERVAL_TIME_PLAY_TIME_CD_THREAD = 1000;
    public static final int INTERVAL_TIME_PLAY_TIME_PROGRESS = 100;
    public static final String TAG = "VideoNativePlayer";
    private SimpleExoPlayer exoPlayer;
    private Timer mBufferTimeoutTimer;
    private long mCurrentPosition;
    private VideoPlayerStatusListener mInnerVFPLisener;
    private View mLoadingView;
    private String mNetUrl;
    private VideoPlayerStatusListener mOutterVFListener;
    private String mPlayUrl;
    private Surface mSurfaceHolder;
    private MediaSource mediaSource;
    private boolean mIsComplete = false;
    private boolean mIsPlaying = false;
    private boolean mHasPrepare = false;
    private boolean mIsStartPlay = true;
    private boolean mIsAllowLoopPlay = true;
    private boolean mHasChaoDi = false;
    private boolean mIsBuffering = false;
    private boolean mIsNeedBufferingTimeout = false;
    private boolean mIsFrontDesk = true;
    private int mBufferTime = 5;
    private boolean mIsOpenSound = true;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
        }
    };
    private Runnable playProgressRunnable = new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.2
        @Override // java.lang.Runnable
        public void run() {
            int i;
            try {
                if (VideoNativePlayer.this.exoPlayer != null && VideoNativePlayer.this.exoPlayerIsPlaying()) {
                    VideoNativePlayer videoNativePlayer = VideoNativePlayer.this;
                    videoNativePlayer.mCurrentPosition = videoNativePlayer.exoPlayer.getCurrentPosition();
                    int i2 = (int) (VideoNativePlayer.this.mCurrentPosition / 1000);
                    o0.c(VideoNativePlayer.TAG, "currentPosition:" + i2 + " mCurrentPosition:" + VideoNativePlayer.this.mCurrentPosition);
                    if (VideoNativePlayer.this.exoPlayer != null && VideoNativePlayer.this.exoPlayer.getDuration() > 0) {
                        i = (int) (VideoNativePlayer.this.exoPlayer.getDuration() / 1000);
                    } else {
                        i = 0;
                    }
                    if (VideoNativePlayer.this.mIsStartPlay) {
                        VideoNativePlayer.this.postOnPlayStartOnMainThread(i);
                        o0.c(VideoNativePlayer.TAG, "onPlayStarted()");
                        VideoNativePlayer.this.mIsStartPlay = false;
                    }
                    if (i2 >= 0 && i > 0 && VideoNativePlayer.this.exoPlayerIsPlaying()) {
                        VideoNativePlayer.this.postOnPlayProgressOnMainThread(i2, i);
                    }
                    VideoNativePlayer.this.mIsComplete = false;
                    if (!VideoNativePlayer.this.mIsBuffering) {
                        VideoNativePlayer.this.hideLoading();
                    }
                    VideoNativePlayer.this.mHandler.postDelayed(this, 1000L);
                }
            } catch (Exception e) {
                o0.b(VideoNativePlayer.TAG, e.getMessage());
            }
        }
    };
    private Runnable playProgressMSRunnable = new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.3
        @Override // java.lang.Runnable
        public void run() {
            long j;
            try {
                if (VideoNativePlayer.this.exoPlayer != null && VideoNativePlayer.this.exoPlayerIsPlaying()) {
                    VideoNativePlayer videoNativePlayer = VideoNativePlayer.this;
                    videoNativePlayer.mCurrentPosition = videoNativePlayer.exoPlayer.getCurrentPosition();
                    long j2 = VideoNativePlayer.this.mCurrentPosition / 100;
                    if (VideoNativePlayer.this.exoPlayer != null && VideoNativePlayer.this.exoPlayer.getDuration() > 0) {
                        j = VideoNativePlayer.this.exoPlayer.getDuration() / 100;
                    } else {
                        j = 0;
                    }
                    if (j2 >= 0 && j > 0 && VideoNativePlayer.this.exoPlayerIsPlaying()) {
                        VideoNativePlayer videoNativePlayer2 = VideoNativePlayer.this;
                        videoNativePlayer2.postOnPlayProgressMSOnMainThread(videoNativePlayer2.mCurrentPosition / 100, j);
                    }
                    VideoNativePlayer.this.mHandler.postDelayed(this, 100L);
                }
            } catch (Exception e) {
                o0.b(VideoNativePlayer.TAG, e.getMessage());
            }
        }
    };

    private void cancelBufferTimeoutTimer() {
        try {
            Timer timer = this.mBufferTimeoutTimer;
            if (timer != null) {
                timer.cancel();
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    private void cancelPlayProgressTimer() {
        try {
            this.mHandler.removeCallbacks(this.playProgressRunnable);
            this.mHandler.removeCallbacks(this.playProgressMSRunnable);
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideLoading() {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoNativePlayer.this.mLoadingView != null) {
                            VideoNativePlayer.this.mLoadingView.setVisibility(8);
                        }
                    }
                });
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    private void postOnBufferinEndOnMainThread() {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.10
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoNativePlayer.this.mOutterVFListener != null) {
                            VideoNativePlayer.this.mOutterVFListener.onBufferingEnd();
                        }
                        if (VideoNativePlayer.this.mInnerVFPLisener != null) {
                            VideoNativePlayer.this.mInnerVFPLisener.onBufferingEnd();
                        }
                    }
                });
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOnBufferingStarOnMainThread(final String str) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.9
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoNativePlayer.this.mOutterVFListener != null) {
                            VideoNativePlayer.this.mOutterVFListener.onBufferingStart(str);
                        }
                        if (VideoNativePlayer.this.mInnerVFPLisener != null) {
                            VideoNativePlayer.this.mInnerVFPLisener.onBufferingStart(str);
                        }
                    }
                });
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    private void postOnPlayCompletedOnMainThread() {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.14
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoNativePlayer.this.mOutterVFListener != null) {
                            VideoNativePlayer.this.mOutterVFListener.onPlayCompleted();
                        }
                        if (VideoNativePlayer.this.mInnerVFPLisener != null) {
                            VideoNativePlayer.this.mInnerVFPLisener.onPlayCompleted();
                        }
                    }
                });
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    private void postOnPlayErrorOnMainThread(final String str) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.12
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoNativePlayer.this.mOutterVFListener != null) {
                            VideoNativePlayer.this.mOutterVFListener.onPlayError(str);
                        }
                        if (VideoNativePlayer.this.mInnerVFPLisener != null) {
                            VideoNativePlayer.this.mInnerVFPLisener.onPlayError(str);
                        }
                    }
                });
            }
            j.a(42, this.mPlayUrl, str);
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOnPlayProgressMSOnMainThread(final long j, final long j2) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.8
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoNativePlayer.this.mOutterVFListener != null) {
                            VideoNativePlayer.this.mOutterVFListener.onPlayProgressMS((int) j, (int) j2);
                        }
                        if (VideoNativePlayer.this.mInnerVFPLisener != null) {
                            VideoNativePlayer.this.mInnerVFPLisener.onPlayProgressMS((int) j, (int) j2);
                        }
                    }
                });
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOnPlayProgressOnMainThread(final int i, final int i2) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoNativePlayer.this.mOutterVFListener != null) {
                            VideoNativePlayer.this.mOutterVFListener.onPlayProgress(i, i2);
                        }
                        if (VideoNativePlayer.this.mInnerVFPLisener != null) {
                            VideoNativePlayer.this.mInnerVFPLisener.onPlayProgress(i, i2);
                        }
                    }
                });
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    private void postOnPlaySetDataSourceError2MainThread(final String str) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.13
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoNativePlayer.this.mInnerVFPLisener != null) {
                            VideoNativePlayer.this.mInnerVFPLisener.onPlaySetDataSourceError(str);
                        }
                        if (VideoNativePlayer.this.mOutterVFListener != null) {
                            VideoNativePlayer.this.mOutterVFListener.onPlaySetDataSourceError(str);
                        }
                    }
                });
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOnPlayStartOnMainThread(final int i) {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.11
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoNativePlayer.this.mOutterVFListener != null) {
                            VideoNativePlayer.this.mOutterVFListener.onPlayStarted(i);
                        }
                        if (VideoNativePlayer.this.mInnerVFPLisener != null) {
                            VideoNativePlayer.this.mInnerVFPLisener.onPlayStarted(i);
                        }
                    }
                });
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    private void startBufferingTimer(final String str) {
        if (!this.mIsNeedBufferingTimeout) {
            o0.b(TAG, "不需要缓冲超时功能");
            return;
        }
        cancelBufferTimeoutTimer();
        Timer timer = new Timer();
        this.mBufferTimeoutTimer = timer;
        timer.schedule(new TimerTask() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.4
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                try {
                    if (VideoNativePlayer.this.mHasPrepare && !VideoNativePlayer.this.mIsBuffering) {
                        return;
                    }
                    o0.b(VideoNativePlayer.TAG, "缓冲超时");
                    VideoNativePlayer.this.postOnBufferingStarOnMainThread(str);
                } catch (Exception e) {
                    o0.b(VideoNativePlayer.TAG, e.getMessage());
                }
            }
        }, this.mBufferTime * 1000);
    }

    private void startPlayProgressTimer() {
        try {
            cancelPlayProgressTimer();
            this.mHandler.post(this.playProgressRunnable);
            this.mHandler.post(this.playProgressMSRunnable);
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    public void closeSound() {
        try {
            SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
            if (simpleExoPlayer != null) {
                simpleExoPlayer.setVolume(0.0f);
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    public boolean exoPlayerIsPlaying() {
        if (this.exoPlayer.getPlaybackState() == 3 && this.exoPlayer.getPlayWhenReady()) {
            return true;
        }
        return false;
    }

    public int getCurPosition() {
        return (int) this.mCurrentPosition;
    }

    public boolean hasPrepare() {
        return this.mHasPrepare;
    }

    public void initBufferIngParam(int i) {
        if (i > 0) {
            this.mBufferTime = i;
        }
        this.mIsNeedBufferingTimeout = true;
        o0.c(TAG, "mIsNeedBufferingTimeout:" + this.mIsNeedBufferingTimeout + "  mMaxBufferTime:" + this.mBufferTime);
    }

    public boolean initParameter(String str, boolean z, boolean z2, View view, VideoPlayerStatusListener videoPlayerStatusListener) {
        try {
            if (TextUtils.isEmpty(str)) {
                o0.c(TAG, "netUrl为空 return");
                postOnPlayErrorOnMainThread(PlayerErrorConstant.MEDIAPLAYER_INIT_FAILED);
                return false;
            } else if (view == null) {
                o0.c(TAG, "loadingView为空 return");
                postOnPlayErrorOnMainThread(PlayerErrorConstant.MEDIAPLAYER_INIT_FAILED);
                return false;
            } else {
                this.mIsOpenSound = z;
                this.mIsAllowLoopPlay = z2;
                this.mLoadingView = view;
                this.mNetUrl = str;
                this.mOutterVFListener = videoPlayerStatusListener;
                return true;
            }
        } catch (Throwable th) {
            o0.b(TAG, th.getMessage());
            postOnPlayErrorOnMainThread(th.toString());
            return false;
        }
    }

    public boolean isComplete() {
        return this.mIsComplete;
    }

    public boolean isPlayIng() {
        try {
            if (this.exoPlayer != null) {
                if (exoPlayerIsPlaying()) {
                    return true;
                }
                return false;
            }
            return false;
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
            return false;
        }
    }

    public boolean isPlaying() {
        return exoPlayerIsPlaying();
    }

    public boolean loadingViewIsVisible() {
        try {
            View view = this.mLoadingView;
            if (view != null) {
                if (view.getVisibility() == 0) {
                    return true;
                }
                return false;
            }
            return false;
        } catch (Throwable th) {
            o0.b(TAG, th.getMessage());
            return false;
        }
    }

    public void onCompletion() {
        try {
            this.mIsComplete = true;
            this.mIsPlaying = false;
            this.mCurrentPosition = 0L;
            hideLoading();
            postOnPlayCompletedOnMainThread();
            o0.c(TAG, "======onCompletion");
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    public boolean onError(int i, String str) {
        try {
            o0.b(TAG, "onError what:" + i + " extra:" + str);
            hideLoading();
            this.mHasPrepare = false;
            this.mIsPlaying = false;
            postOnPlayErrorOnMainThread(str);
            return true;
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
            return true;
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        o0.b(TAG, "onPlaybackParametersChanged : " + playbackParameters.speed);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        String str;
        if (exoPlaybackException != null) {
            int i = exoPlaybackException.type;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        str = "Play error, because have a UnexpectedException.";
                    }
                } else {
                    str = "Play error, because have a RendererException.";
                }
            } else {
                str = "Play error, because have a SourceException.";
            }
            if (exoPlaybackException.getCause() != null && !TextUtils.isEmpty(exoPlaybackException.getCause().getMessage())) {
                str = exoPlaybackException.getCause().getMessage();
            }
            o0.b(TAG, "onPlayerError : " + str);
            onError(exoPlaybackException.type, str);
        }
        str = "Play error and ExoPlayer have not message.";
        if (exoPlaybackException.getCause() != null) {
            str = exoPlaybackException.getCause().getMessage();
        }
        o0.b(TAG, "onPlayerError : " + str);
        onError(exoPlaybackException.type, str);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onPlayerStateChanged(boolean z, int i) {
        o0.b(TAG, "onPlaybackStateChanged : " + i);
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        o0.b(TAG, "onPlaybackStateChanged : Ended : PLAY ENDED");
                        cancelPlayProgressTimer();
                        onCompletion();
                        if (!this.mIsAllowLoopPlay) {
                            this.mHasPrepare = false;
                            return;
                        }
                        return;
                    }
                    return;
                }
                o0.b(TAG, "onPlaybackStateChanged : READY");
                this.mIsBuffering = false;
                hideLoading();
                postOnBufferinEndOnMainThread();
                onPrepared();
                return;
            }
            o0.b(TAG, "onPlaybackStateChanged : Buffering");
            this.mIsBuffering = true;
            showLoading();
            startBufferingTimer(PlayerErrorConstant.PLAYERING_TIMEOUT);
            return;
        }
        o0.b(TAG, "onPlaybackStateChanged : IDLE");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onPositionDiscontinuity(int i) {
        o0.b(TAG, "onPositionDiscontinuity : " + i);
        if (i == 0) {
            onCompletion();
        }
    }

    public void onPrepared() {
        try {
            o0.c(TAG, "onPrepared:" + this.mHasPrepare);
            if (this.mIsFrontDesk) {
                this.mHasPrepare = true;
                postOnBufferinEndOnMainThread();
                startPlayProgressTimer();
                if (this.exoPlayer != null) {
                    this.mIsPlaying = true;
                }
                o0.c(TAG, "onprepare mCurrentPosition:" + this.mCurrentPosition + " mHasPrepare：" + this.mHasPrepare);
                return;
            }
            o0.b(TAG, "At background, Do not process");
        } catch (Throwable th) {
            o0.b(TAG, th.getMessage());
        }
    }

    public void openSound() {
        try {
            SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
            if (simpleExoPlayer != null) {
                simpleExoPlayer.setVolume(1.0f);
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    public void pause() {
        try {
            o0.c(TAG, "player pause");
            if (!this.mHasPrepare) {
                o0.c(TAG, "pause !mHasPrepare retrun");
            } else if (this.exoPlayer != null && exoPlayerIsPlaying()) {
                o0.c(TAG, "pause " + this.mIsPlaying);
                hideLoading();
                this.exoPlayer.setPlayWhenReady(false);
                this.mIsPlaying = false;
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    public void play(Context context, String str, int i) {
        try {
            o0.b(TAG, "进来播放 currentionPosition:" + this.mCurrentPosition);
            this.mCurrentPosition = (long) i;
            if (TextUtils.isEmpty(str)) {
                postOnPlayErrorOnMainThread(PlayerErrorConstant.PLAY_URL_ILLEGAL);
                return;
            }
            showLoading();
            this.mPlayUrl = str;
            this.mHasPrepare = false;
            this.mIsFrontDesk = true;
            setDataSource(context);
            o0.c(TAG, "mPlayUrl:" + this.mPlayUrl);
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
            releasePlayer();
            hideLoading();
            postOnPlayErrorOnMainThread(PlayerErrorConstant.PLAY_CANNOT_PALY);
        }
    }

    public void releasePlayer() {
        try {
            o0.c(TAG, "releasePlayer");
            cancelPlayProgressTimer();
            cancelBufferTimeoutTimer();
            if (this.exoPlayer != null) {
                stop();
                this.exoPlayer.removeListener(this);
                this.exoPlayer.release();
                this.exoPlayer = null;
                this.mIsPlaying = false;
            }
            if (this.mOutterVFListener != null) {
                this.mOutterVFListener = null;
            }
        } catch (Throwable th) {
            o0.b(TAG, th.getMessage(), th);
        }
        hideLoading();
    }

    public void replaySameSource(Context context, String str, Surface surface) {
        MediaSource mediaSource;
        try {
            showLoading();
            this.mHasPrepare = false;
            this.mIsFrontDesk = true;
            SimpleExoPlayer simpleExoPlayer = this.exoPlayer;
            if (simpleExoPlayer != null && (mediaSource = this.mediaSource) != null) {
                simpleExoPlayer.prepare(mediaSource);
                this.exoPlayer.setPlayWhenReady(true);
                return;
            }
            play(context, str, surface);
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
            releasePlayer();
            hideLoading();
            postOnPlayErrorOnMainThread(PlayerErrorConstant.PLAY_CANNOT_PALY);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setDataSource(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.playercommon.VideoNativePlayer.setDataSource(android.content.Context):void");
    }

    public void setIsComplete(boolean z) {
        this.mIsComplete = z;
    }

    public void setIsFrontDesk(boolean z) {
        String str;
        try {
            this.mIsFrontDesk = z;
            StringBuilder sb = new StringBuilder();
            sb.append("isFrontDesk: ");
            if (z) {
                str = "frontStage";
            } else {
                str = "backStage";
            }
            sb.append(str);
            o0.b(TAG, sb.toString());
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    public void setSelfVideoFeedsPlayerListener(VideoPlayerStatusListener videoPlayerStatusListener) {
        this.mInnerVFPLisener = videoPlayerStatusListener;
    }

    public void setVideoFeedsPlayerListener(VideoPlayerStatusListener videoPlayerStatusListener) {
        this.mOutterVFListener = videoPlayerStatusListener;
    }

    public void showLoading() {
        try {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mbridge.msdk.playercommon.VideoNativePlayer.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoNativePlayer.this.mLoadingView != null) {
                            VideoNativePlayer.this.mLoadingView.setVisibility(0);
                        }
                    }
                });
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    public void start() {
        start((Surface) null);
    }

    public void stop() {
        try {
            if (!this.mHasPrepare) {
                o0.c(TAG, "stop !mHasPrepare retrun");
            } else if (this.exoPlayer != null && exoPlayerIsPlaying()) {
                hideLoading();
                this.exoPlayer.stop();
                cancelPlayProgressTimer();
                this.mIsPlaying = false;
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    public void start(Surface surface) {
        try {
            if (!this.mHasPrepare) {
                o0.c(TAG, "start !mHasPrepare retrun");
                return;
            }
            boolean z = true;
            if (this.exoPlayer != null && !exoPlayerIsPlaying()) {
                showLoading();
                if (surface != null) {
                    this.mSurfaceHolder = surface;
                    this.exoPlayer.setVideoSurface(surface);
                }
                play();
                startPlayProgressTimer();
                this.mIsPlaying = true;
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("exoplayer is null : ");
            if (this.exoPlayer != null) {
                z = false;
            }
            sb.append(z);
            o0.c(TAG, sb.toString());
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    public void start(int i) {
        try {
            if (!this.mHasPrepare) {
                o0.c(TAG, "start mHasprepare is false return");
            } else if (this.exoPlayer == null || exoPlayerIsPlaying()) {
            } else {
                if (i > 0) {
                    this.exoPlayer.seekTo(i);
                }
                play();
                startPlayProgressTimer();
                this.mIsPlaying = true;
            }
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    public void play(Context context, String str, Surface surface) {
        try {
            if (TextUtils.isEmpty(str)) {
                postOnPlayErrorOnMainThread(PlayerErrorConstant.PLAY_URL_ILLEGAL);
                return;
            }
            showLoading();
            this.mPlayUrl = str;
            this.mHasPrepare = false;
            this.mIsFrontDesk = true;
            this.mSurfaceHolder = surface;
            setDataSource(context);
            o0.c(TAG, "mPlayUrl:" + this.mPlayUrl);
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
            releasePlayer();
            hideLoading();
            postOnPlayErrorOnMainThread(PlayerErrorConstant.PLAY_CANNOT_PALY);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onSeekProcessed() {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onLoadingChanged(boolean z) {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onRepeatModeChanged(int i) {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onShuffleModeEnabledChanged(boolean z) {
    }

    public void play() {
        try {
            this.exoPlayer.setPlayWhenReady(true);
            startPlayProgressTimer();
            this.mIsPlaying = true;
        } catch (Exception e) {
            o0.b(TAG, e.getMessage());
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onTimelineChanged(Timeline timeline, @Nullable Object obj, int i) {
    }
}
