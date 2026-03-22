package com.mbridge.msdk.dycreator.baseview.videoview;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.mbridge.msdk.dycreator.baseview.videoview.listener.VideoViewEventListener;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultRenderersFactory;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlayer;
import com.mbridge.msdk.playercommon.exoplayer2.ExoPlayerFactory;
import com.mbridge.msdk.playercommon.exoplayer2.PlaybackParameters;
import com.mbridge.msdk.playercommon.exoplayer2.Player;
import com.mbridge.msdk.playercommon.exoplayer2.Timeline;
import com.mbridge.msdk.playercommon.exoplayer2.source.ConcatenatingMediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.ExtractorMediaSource;
import com.mbridge.msdk.playercommon.exoplayer2.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.DefaultTrackSelector;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.TrackSelectionArray;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DefaultDataSourceFactory;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class MBVideoView extends FrameLayout implements Player.EventListener {

    /* renamed from: a  reason: collision with root package name */
    private final String f8874a;
    private final int b;
    private ExoPlayer c;
    private final long d;
    private String[] e;
    private VideoViewEventListener f;
    private final SurfaceHolder.Callback g;
    private final Runnable h;
    private final Runnable i;

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    class AnonymousClass1 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MBVideoView f8875a;

        @Override // java.lang.Runnable
        public void run() {
            if (this.f8875a.f != null) {
                this.f8875a.f.onBufferingFail("Buffering timeout");
            }
        }
    }

    public MBVideoView(@NonNull Context context) {
        super(context);
        this.f8874a = "MBVideoView";
        this.b = 1000;
        this.d = 5000L;
        this.g = new SurfaceHolder.Callback() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.2
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
                try {
                    Player.VideoComponent videoComponent = MBVideoView.this.c.getVideoComponent();
                    if (videoComponent != null) {
                        videoComponent.setVideoSurfaceHolder(surfaceHolder);
                    }
                } catch (Throwable th) {
                    o0.b("MBVideoView", th.getMessage());
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            }
        };
        this.h = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.3
            @Override // java.lang.Runnable
            public void run() {
                if (MBVideoView.this.f != null) {
                    MBVideoView.this.f.onBufferingFail("Buffering fail.");
                }
            }
        };
        this.i = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (MBVideoView.this.c != null && MBVideoView.this.isPlaying()) {
                        long currentPosition = MBVideoView.this.c.getCurrentPosition();
                        long duration = MBVideoView.this.c.getDuration();
                        int round = Math.round(((float) currentPosition) / 1000.0f);
                        int round2 = Math.round(((float) duration) / 1000.0f);
                        o0.c("MBVideoView", "currentPosition:" + round + " duration:" + duration);
                        if (MBVideoView.this.f != null) {
                            MBVideoView.this.f.onPlayProgress(round, round2);
                        }
                        MBVideoView.this.getHandler().postDelayed(this, 1000L);
                    }
                } catch (Exception e) {
                    o0.b("MBVideoView", e.getMessage());
                }
            }
        };
    }

    public boolean isPlaying() {
        ExoPlayer exoPlayer = this.c;
        if (exoPlayer == null || exoPlayer.getPlaybackState() != 3 || !this.c.getPlayWhenReady()) {
            return false;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        o0.b("MBVideoView", "onPlaybackParametersChanged : " + playbackParameters.speed);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPlayerError(com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException r4) {
        /*
            r3 = this;
            if (r4 == 0) goto L16
            int r0 = r4.type
            if (r0 == 0) goto L13
            r1 = 1
            if (r0 == r1) goto L10
            r1 = 2
            if (r0 == r1) goto Ld
            goto L16
        Ld:
            java.lang.String r0 = "Play error, because have a UnexpectedException."
            goto L18
        L10:
            java.lang.String r0 = "Play error, because have a RendererException."
            goto L18
        L13:
            java.lang.String r0 = "Play error, because have a SourceException."
            goto L18
        L16:
            java.lang.String r0 = "Play error and ExoPlayer have not message."
        L18:
            java.lang.Throwable r1 = r4.getCause()
            if (r1 == 0) goto L34
            java.lang.Throwable r1 = r4.getCause()
            java.lang.String r1 = r1.getMessage()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L34
            java.lang.Throwable r0 = r4.getCause()
            java.lang.String r0 = r0.getMessage()
        L34:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "onPlayerError : "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "MBVideoView"
            com.mbridge.msdk.foundation.tools.o0.b(r2, r1)
            com.mbridge.msdk.dycreator.baseview.videoview.listener.VideoViewEventListener r1 = r3.f
            if (r1 == 0) goto L53
            int r4 = r4.type
            r1.onPlayerError(r4, r0)
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.onPlayerError(com.mbridge.msdk.playercommon.exoplayer2.ExoPlaybackException):void");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onPlayerStateChanged(boolean z, int i) {
        o0.b("MBVideoView", "onPlaybackStateChanged : " + i);
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return;
                    }
                    o0.b("MBVideoView", "onPlaybackStateChanged : Ended : PLAY ENDED");
                    return;
                }
                o0.b("MBVideoView", "onPlaybackStateChanged : READY");
                return;
            }
            o0.b("MBVideoView", "onPlaybackStateChanged : Buffering");
            return;
        }
        o0.b("MBVideoView", "onPlaybackStateChanged : IDLE");
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onPositionDiscontinuity(int i) {
        this.c.getCurrentWindowIndex();
    }

    public void setVideoUrl(String... strArr) {
        if (strArr != null && strArr.length > 0) {
            this.e = strArr;
            a();
        }
    }

    public void setVideoViewEventLister(VideoViewEventListener videoViewEventListener) {
        this.f = videoViewEventListener;
    }

    private void a() {
        try {
            this.c = ExoPlayerFactory.newSimpleInstance(new DefaultRenderersFactory(getContext()), new DefaultTrackSelector(), new DefaultLoadControl());
            ConcatenatingMediaSource concatenatingMediaSource = new ConcatenatingMediaSource();
            for (String str : this.e) {
                concatenatingMediaSource.addMediaSource(new ExtractorMediaSource.Factory(new DefaultDataSourceFactory(getContext(), "MBridge_ExoPlayer")).createMediaSource(Uri.parse(str)));
            }
            this.c.setRepeatMode(0);
            this.c.prepare(concatenatingMediaSource);
            this.c.addListener(this);
        } catch (Throwable th) {
            o0.b("MBVideoView", th.getMessage());
            th.toString();
        }
    }

    public MBVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8874a = "MBVideoView";
        this.b = 1000;
        this.d = 5000L;
        this.g = new SurfaceHolder.Callback() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.2
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
                try {
                    Player.VideoComponent videoComponent = MBVideoView.this.c.getVideoComponent();
                    if (videoComponent != null) {
                        videoComponent.setVideoSurfaceHolder(surfaceHolder);
                    }
                } catch (Throwable th) {
                    o0.b("MBVideoView", th.getMessage());
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            }
        };
        this.h = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.3
            @Override // java.lang.Runnable
            public void run() {
                if (MBVideoView.this.f != null) {
                    MBVideoView.this.f.onBufferingFail("Buffering fail.");
                }
            }
        };
        this.i = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (MBVideoView.this.c != null && MBVideoView.this.isPlaying()) {
                        long currentPosition = MBVideoView.this.c.getCurrentPosition();
                        long duration = MBVideoView.this.c.getDuration();
                        int round = Math.round(((float) currentPosition) / 1000.0f);
                        int round2 = Math.round(((float) duration) / 1000.0f);
                        o0.c("MBVideoView", "currentPosition:" + round + " duration:" + duration);
                        if (MBVideoView.this.f != null) {
                            MBVideoView.this.f.onPlayProgress(round, round2);
                        }
                        MBVideoView.this.getHandler().postDelayed(this, 1000L);
                    }
                } catch (Exception e) {
                    o0.b("MBVideoView", e.getMessage());
                }
            }
        };
    }

    public MBVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8874a = "MBVideoView";
        this.b = 1000;
        this.d = 5000L;
        this.g = new SurfaceHolder.Callback() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.2
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
                try {
                    Player.VideoComponent videoComponent = MBVideoView.this.c.getVideoComponent();
                    if (videoComponent != null) {
                        videoComponent.setVideoSurfaceHolder(surfaceHolder);
                    }
                } catch (Throwable th) {
                    o0.b("MBVideoView", th.getMessage());
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i2, int i22, int i3) {
            }
        };
        this.h = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.3
            @Override // java.lang.Runnable
            public void run() {
                if (MBVideoView.this.f != null) {
                    MBVideoView.this.f.onBufferingFail("Buffering fail.");
                }
            }
        };
        this.i = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (MBVideoView.this.c != null && MBVideoView.this.isPlaying()) {
                        long currentPosition = MBVideoView.this.c.getCurrentPosition();
                        long duration = MBVideoView.this.c.getDuration();
                        int round = Math.round(((float) currentPosition) / 1000.0f);
                        int round2 = Math.round(((float) duration) / 1000.0f);
                        o0.c("MBVideoView", "currentPosition:" + round + " duration:" + duration);
                        if (MBVideoView.this.f != null) {
                            MBVideoView.this.f.onPlayProgress(round, round2);
                        }
                        MBVideoView.this.getHandler().postDelayed(this, 1000L);
                    }
                } catch (Exception e) {
                    o0.b("MBVideoView", e.getMessage());
                }
            }
        };
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onSeekProcessed() {
    }

    public void pause() {
    }

    public void play() {
    }

    public void stop() {
    }

    @RequiresApi(api = 21)
    public MBVideoView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f8874a = "MBVideoView";
        this.b = 1000;
        this.d = 5000L;
        this.g = new SurfaceHolder.Callback() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.2
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
                try {
                    Player.VideoComponent videoComponent = MBVideoView.this.c.getVideoComponent();
                    if (videoComponent != null) {
                        videoComponent.setVideoSurfaceHolder(surfaceHolder);
                    }
                } catch (Throwable th) {
                    o0.b("MBVideoView", th.getMessage());
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i22, int i222, int i3) {
            }
        };
        this.h = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.3
            @Override // java.lang.Runnable
            public void run() {
                if (MBVideoView.this.f != null) {
                    MBVideoView.this.f.onBufferingFail("Buffering fail.");
                }
            }
        };
        this.i = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.videoview.MBVideoView.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (MBVideoView.this.c != null && MBVideoView.this.isPlaying()) {
                        long currentPosition = MBVideoView.this.c.getCurrentPosition();
                        long duration = MBVideoView.this.c.getDuration();
                        int round = Math.round(((float) currentPosition) / 1000.0f);
                        int round2 = Math.round(((float) duration) / 1000.0f);
                        o0.c("MBVideoView", "currentPosition:" + round + " duration:" + duration);
                        if (MBVideoView.this.f != null) {
                            MBVideoView.this.f.onPlayProgress(round, round2);
                        }
                        MBVideoView.this.getHandler().postDelayed(this, 1000L);
                    }
                } catch (Exception e) {
                    o0.b("MBVideoView", e.getMessage());
                }
            }
        };
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

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onTracksChanged(TrackGroupArray trackGroupArray, TrackSelectionArray trackSelectionArray) {
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.Player.EventListener
    public void onTimelineChanged(Timeline timeline, @Nullable Object obj, int i) {
    }
}
