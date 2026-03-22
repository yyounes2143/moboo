package com.applovin.impl.sdk.nativeAd;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.a7;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.adview.AppLovinVideoView;
import com.applovin.impl.f7;
import com.applovin.impl.g7;
import com.applovin.impl.k0;
import com.applovin.impl.k7;
import com.applovin.impl.l4;
import com.applovin.impl.l7;
import com.applovin.impl.m7;
import com.applovin.impl.o7;
import com.applovin.impl.q7;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.nativeAd.AppLovinVastMediaView;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.w0;
import com.applovin.impl.w6;
import com.applovin.impl.z6;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class AppLovinVastMediaView extends AppLovinMediaView implements AppLovinCommunicatorSubscriber {
    private static final String COUNTDOWN_IDENTIFIER_PROGRESS_TRACKING = "PROGRESS_TRACKING";
    private static final long FADE_ANIMATION_DURATION_MILLIS = 250;
    private static final String TAG = "AppLovinVastMediaView";
    private final AtomicBoolean automaticPauseHandled;
    private final AtomicBoolean automaticResumeHandled;
    private final Handler countdownHandler;
    private final w0 countdownManager;
    @Nullable
    private ImageView industryIconImageView;
    private final AtomicBoolean initialOnAttachedToWindowHandled;
    private boolean isVideoMuted;
    private boolean isVideoPausedByUser;
    private final boolean isVideoStream;
    private boolean isViewAttached;
    private int lastVideoPositionFromPauseMillis;
    private final com.applovin.impl.b lifecycleCallbacksAdapter;
    private final AtomicBoolean mediaErrorHandled;
    @Nullable
    private MediaPlayer mediaPlayer;
    @Nullable
    private ImageView muteButtonImageView;
    @Nullable
    private ImageView playPauseButtonImageView;
    @Nullable
    private FrameLayout replayIconContainer;
    private int savedVideoPercentViewed;
    private long startTimeMillis;
    private final a7 vastAd;
    private long videoDurationMillis;
    private final AtomicBoolean videoEndListenerNotified;
    private final Set<k7> videoProgressTrackers;
    private final e videoUiEventHandler;
    private final AppLovinVideoView videoView;
    private boolean videoWasCompleted;
    @Nullable
    private LinearLayout videoWidgetLinearLayout;
    private Activity viewActivity;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends com.applovin.impl.b {
        public a() {
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (activity.equals(AppLovinVastMediaView.this.viewActivity)) {
                AppLovinVastMediaView.this.maybeHandlePause();
            }
        }

        @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            if (activity.equals(AppLovinVastMediaView.this.viewActivity) && !AppLovinVastMediaView.this.isVideoPausedByUser) {
                AppLovinVastMediaView.this.maybeHandleResume();
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements w0.b {
        public b() {
        }

        @Override // com.applovin.impl.w0.b
        public void a() {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(AppLovinVastMediaView.this.videoDurationMillis - (AppLovinVastMediaView.this.videoView.getDuration() - AppLovinVastMediaView.this.videoView.getCurrentPosition()));
            int videoPercentViewed = AppLovinVastMediaView.this.getVideoPercentViewed();
            HashSet hashSet = new HashSet();
            Iterator it = new HashSet(AppLovinVastMediaView.this.videoProgressTrackers).iterator();
            while (it.hasNext()) {
                k7 k7Var = (k7) it.next();
                if (k7Var.a(seconds, videoPercentViewed)) {
                    hashSet.add(k7Var);
                    AppLovinVastMediaView.this.videoProgressTrackers.remove(k7Var);
                }
            }
            AppLovinVastMediaView.this.maybeFireTrackers(hashSet);
            if (videoPercentViewed >= 25 && videoPercentViewed < 50) {
                AppLovinVastMediaView.this.vastAd.getAdEventTracker().x();
            } else if (videoPercentViewed >= 50 && videoPercentViewed < 75) {
                AppLovinVastMediaView.this.vastAd.getAdEventTracker().y();
            } else if (videoPercentViewed >= 75) {
                AppLovinVastMediaView.this.vastAd.getAdEventTracker().C();
            }
        }

        @Override // com.applovin.impl.w0.b
        public boolean b() {
            return !AppLovinVastMediaView.this.videoWasCompleted;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            g7 t1 = AppLovinVastMediaView.this.vastAd.t1();
            if (t1 == null) {
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
                return;
            }
            Uri c = t1.c();
            if (c == null) {
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
                return;
            }
            o oVar = AppLovinVastMediaView.this.logger;
            if (o.a()) {
                o oVar2 = AppLovinVastMediaView.this.logger;
                oVar2.a(AppLovinVastMediaView.TAG, "Industry icon clicked, opening URL: " + c);
            }
            AppLovinVastMediaView.this.maybeFireTrackers(a7.d.INDUSTRY_ICON_CLICK);
            w6.a(c, view.getContext(), AppLovinVastMediaView.this.sdk);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }

        public /* synthetic */ c(AppLovinVastMediaView appLovinVastMediaView, a aVar) {
            this();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class d implements AppLovinTouchToClickListener.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final AppLovinNativeAdImpl f3704a;

        public d(AppLovinNativeAdImpl appLovinNativeAdImpl) {
            this.f3704a = appLovinNativeAdImpl;
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, MotionEvent motionEvent) {
            Uri n0;
            Context context;
            AppLovinVastMediaView.this.maybeFireTrackers(a7.d.VIDEO_CLICK);
            AppLovinVastMediaView.this.vastAd.getAdEventTracker().v();
            if (!AppLovinVastMediaView.this.vastAd.P0() || (n0 = AppLovinVastMediaView.this.vastAd.n0()) == null) {
                return;
            }
            o oVar = AppLovinVastMediaView.this.logger;
            if (o.a()) {
                AppLovinVastMediaView.this.logger.a(AppLovinVastMediaView.TAG, "Clicking through video");
            }
            AppLovinVastMediaView.this.sdk.k().maybeSubmitPersistentPostbacks(AppLovinVastMediaView.this.vastAd.b(motionEvent, false));
            if (((Boolean) AppLovinVastMediaView.this.sdk.a(l4.x)).booleanValue() && AppLovinVastMediaView.this.viewActivity != null) {
                context = AppLovinVastMediaView.this.viewActivity;
            } else {
                context = AppLovinVastMediaView.this.getContext();
            }
            this.f3704a.handleNativeAdClick(n0, null, motionEvent, context);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class e implements MediaPlayer.OnPreparedListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnCompletionListener {
        private e() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            AppLovinVastMediaView.this.videoView.seekTo(0);
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            o oVar = AppLovinVastMediaView.this.logger;
            if (o.a()) {
                AppLovinVastMediaView.this.logger.a(AppLovinVastMediaView.TAG, "Video completed");
            }
            AppLovinVastMediaView.this.videoWasCompleted = true;
            AppLovinVastMediaView.this.finishVideo();
            if (AppLovinVastMediaView.this.replayIconContainer == null) {
                AppLovinVastMediaView.this.showMediaImageView();
            } else {
                q7.a(AppLovinVastMediaView.this.replayIconContainer, (long) AppLovinVastMediaView.FADE_ANIMATION_DURATION_MILLIS, new Runnable() { // from class: com.applovin.impl.sdk.nativeAd.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppLovinVastMediaView.e.this.a();
                    }
                });
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            AppLovinVastMediaView appLovinVastMediaView = AppLovinVastMediaView.this;
            appLovinVastMediaView.handleMediaError("Video view error (" + i + "," + i2 + ")");
            return true;
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            if (i == 3) {
                AppLovinVastMediaView.this.countdownManager.b();
                if (!AppLovinVastMediaView.this.isViewAttached) {
                    AppLovinVastMediaView.this.pauseVideo();
                    return false;
                }
                return false;
            }
            return false;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            AppLovinVastMediaView appLovinVastMediaView;
            AppLovinVastMediaView.this.mediaPlayer = mediaPlayer;
            AppLovinVastMediaView.this.mediaPlayer.setOnInfoListener(AppLovinVastMediaView.this.videoUiEventHandler);
            AppLovinVastMediaView.this.mediaPlayer.setOnErrorListener(AppLovinVastMediaView.this.videoUiEventHandler);
            float f = !AppLovinVastMediaView.this.isVideoMuted ? 1 : 0;
            AppLovinVastMediaView.this.mediaPlayer.setVolume(f, f);
            AppLovinVastMediaView.this.videoDurationMillis = appLovinVastMediaView.mediaPlayer.getDuration();
            AppLovinVastMediaView.this.vastAd.getAdEventTracker().b((float) TimeUnit.MILLISECONDS.toSeconds(AppLovinVastMediaView.this.videoDurationMillis), z6.e(AppLovinVastMediaView.this.sdk));
            o oVar = AppLovinVastMediaView.this.logger;
            if (o.a()) {
                AppLovinVastMediaView.this.logger.a(AppLovinVastMediaView.TAG, "MediaPlayer prepared: " + AppLovinVastMediaView.this.mediaPlayer);
            }
            if (AppLovinVastMediaView.this.isViewAttached) {
                AppLovinVastMediaView.this.videoView.start();
            }
        }

        public /* synthetic */ e(AppLovinVastMediaView appLovinVastMediaView, a aVar) {
            this();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {
        private f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            AppLovinVastMediaView.this.videoWasCompleted = false;
            AppLovinVastMediaView.this.automaticResumeHandled.set(false);
            AppLovinVastMediaView.this.sdk.e().a(AppLovinVastMediaView.this.lifecycleCallbacksAdapter);
            AppLovinVastMediaView.this.maybeHandleResume();
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            AppLovinVastMediaView appLovinVastMediaView;
            if (view == AppLovinVastMediaView.this.playPauseButtonImageView) {
                if (AppLovinVastMediaView.this.videoView.isPlaying()) {
                    AppLovinVastMediaView.this.isVideoPausedByUser = true;
                    AppLovinVastMediaView.this.maybeHandlePause();
                } else {
                    AppLovinVastMediaView.this.isVideoPausedByUser = false;
                    AppLovinVastMediaView.this.maybeHandleResume();
                }
            } else if (view == AppLovinVastMediaView.this.muteButtonImageView) {
                if (AppLovinVastMediaView.this.mediaPlayer == null) {
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                    return;
                }
                try {
                    AppLovinVastMediaView.this.isVideoMuted = !appLovinVastMediaView.isVideoMuted;
                    float f = !AppLovinVastMediaView.this.isVideoMuted ? 1 : 0;
                    AppLovinVastMediaView.this.mediaPlayer.setVolume(f, f);
                    AppLovinVastMediaView appLovinVastMediaView2 = AppLovinVastMediaView.this;
                    appLovinVastMediaView2.populateMuteImage(appLovinVastMediaView2.isVideoMuted);
                } catch (Throwable unused) {
                }
            } else if (view == AppLovinVastMediaView.this.replayIconContainer) {
                q7.b(AppLovinVastMediaView.this.replayIconContainer, AppLovinVastMediaView.FADE_ANIMATION_DURATION_MILLIS, new Runnable() { // from class: com.applovin.impl.sdk.nativeAd.Wwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        AppLovinVastMediaView.f.this.a();
                    }
                });
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }

        public /* synthetic */ f(AppLovinVastMediaView appLovinVastMediaView, a aVar) {
            this();
        }
    }

    public AppLovinVastMediaView(AppLovinNativeAdImpl appLovinNativeAdImpl, k kVar, Context context) {
        super(appLovinNativeAdImpl, kVar, context);
        e eVar = new e(this, null);
        this.videoUiEventHandler = eVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.countdownHandler = handler;
        this.countdownManager = new w0(handler, this.sdk);
        this.videoEndListenerNotified = new AtomicBoolean();
        this.mediaErrorHandled = new AtomicBoolean();
        this.initialOnAttachedToWindowHandled = new AtomicBoolean();
        this.automaticPauseHandled = new AtomicBoolean();
        this.automaticResumeHandled = new AtomicBoolean();
        this.isVideoMuted = true;
        this.lastVideoPositionFromPauseMillis = -1;
        HashSet hashSet = new HashSet();
        this.videoProgressTrackers = hashSet;
        this.lifecycleCallbacksAdapter = new a();
        a7 vastAd = appLovinNativeAdImpl.getVastAd();
        this.vastAd = vastAd;
        boolean Q0 = vastAd.Q0();
        this.isVideoStream = Q0;
        if (Q0) {
            AppLovinCommunicator.getInstance(context).subscribe(this, "video_caching_failed");
        }
        if (vastAd.z1()) {
            this.industryIconImageView = g7.a(vastAd.t1().e(), context, kVar);
            int dpToPx = AppLovinSdkUtils.dpToPx(context, ((Integer) kVar.a(l4.x4)).intValue());
            this.industryIconImageView.setLayoutParams(new FrameLayout.LayoutParams(dpToPx, dpToPx, ((Integer) kVar.a(l4.z4)).intValue()));
            this.industryIconImageView.setOnClickListener(new c(this, null));
            addView(this.industryIconImageView);
        }
        if (((Boolean) kVar.a(l4.E4)).booleanValue()) {
            LinearLayout linearLayout = new LinearLayout(context);
            this.videoWidgetLinearLayout = linearLayout;
            int i = 0;
            linearLayout.setOrientation(0);
            this.videoWidgetLinearLayout.setBackgroundResource(R.drawable.applovin_rounded_black_background);
            this.videoWidgetLinearLayout.setAlpha(((Float) kVar.a(l4.D4)).floatValue());
            ImageView imageView = new ImageView(context);
            this.playPauseButtonImageView = imageView;
            imageView.setClickable(true);
            f fVar = new f(this, null);
            this.playPauseButtonImageView.setOnClickListener(fVar);
            int dpToPx2 = AppLovinSdkUtils.dpToPx(context, ((Integer) kVar.a(l4.B4)).intValue());
            this.playPauseButtonImageView.setLayoutParams(new FrameLayout.LayoutParams(dpToPx2, dpToPx2));
            populatePlayPauseImage(false);
            this.videoWidgetLinearLayout.addView(this.playPauseButtonImageView);
            this.muteButtonImageView = new ImageView(context);
            if (populateMuteImage(this.isVideoMuted)) {
                i = AppLovinSdkUtils.dpToPx(context, ((Integer) kVar.a(l4.A4)).intValue());
                this.muteButtonImageView.setClickable(true);
                this.muteButtonImageView.setOnClickListener(fVar);
                this.muteButtonImageView.setLayoutParams(new FrameLayout.LayoutParams(i, i));
                this.videoWidgetLinearLayout.addView(this.muteButtonImageView);
            }
            int dpToPx3 = AppLovinSdkUtils.dpToPx(context, ((Integer) kVar.a(l4.C4)).intValue());
            this.videoWidgetLinearLayout.setPadding(dpToPx3, dpToPx3, dpToPx3, dpToPx3);
            int i2 = dpToPx3 * 2;
            this.videoWidgetLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(dpToPx2 + i + i2, Math.max(dpToPx2, i) + i2, 8388691));
            addView(this.videoWidgetLinearLayout);
        }
        if (((Boolean) kVar.a(l4.F4)).booleanValue()) {
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.replayIconContainer = frameLayout;
            frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            this.replayIconContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.replayIconContainer.setVisibility(4);
            this.replayIconContainer.setOnClickListener(new f(this, null));
            ImageView imageView2 = new ImageView(getContext());
            int dpToPx4 = AppLovinSdkUtils.dpToPx(context, ((Integer) kVar.a(l4.G4)).intValue());
            imageView2.setLayoutParams(new FrameLayout.LayoutParams(dpToPx4, dpToPx4, 17));
            imageView2.setImageResource(R.drawable.applovin_ic_replay_icon);
            imageView2.setAdjustViewBounds(true);
            imageView2.setMaxHeight(this.replayIconContainer.getHeight());
            imageView2.setMaxWidth(this.replayIconContainer.getWidth());
            this.replayIconContainer.addView(imageView2);
            addView(this.replayIconContainer);
        }
        AppLovinVideoView appLovinVideoView = new AppLovinVideoView(getContext());
        this.videoView = appLovinVideoView;
        appLovinVideoView.setOnPreparedListener(eVar);
        appLovinVideoView.setOnCompletionListener(eVar);
        appLovinVideoView.setOnErrorListener(eVar);
        appLovinVideoView.setOnTouchListener(new AppLovinTouchToClickListener(kVar, l4.j0, getContext(), new d(appLovinNativeAdImpl)));
        addView(appLovinVideoView);
        bringChildToFront(this.industryIconImageView);
        bringChildToFront(this.videoWidgetLinearLayout);
        prepareMediaPlayer();
        appLovinNativeAdImpl.setVideoView(appLovinVideoView);
        hashSet.addAll(vastAd.a(a7.d.VIDEO, l7.f3187a));
    }

    private void checkCachedAdResourcesImmediately(boolean z) {
        if (z6.a(z, this.vastAd, this.sdk, getContext()).isEmpty()) {
            return;
        }
        handleUnavailableCachedResources();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishVideo() {
        maybeFireTrackers(a7.d.VIDEO, "close");
        maybeHandlePause();
        this.sdk.e().b(this.lifecycleCallbacksAdapter);
        if (this.videoWasCompleted) {
            maybeFireRemainingCompletionTrackers();
            this.vastAd.getAdEventTracker().w();
        }
        if (this.videoEndListenerNotified.compareAndSet(false, true)) {
            this.sdk.k().trackVideoEnd(this.vastAd, TimeUnit.MILLISECONDS.toSeconds(SystemClock.elapsedRealtime() - this.startTimeMillis), getVideoPercentViewed(), this.isVideoStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getVideoPercentViewed() {
        int currentPosition = this.videoView.getCurrentPosition();
        if (this.videoWasCompleted) {
            return 100;
        }
        if (currentPosition > 0) {
            return (int) ((currentPosition / ((float) this.videoDurationMillis)) * 100.0f);
        }
        return this.savedVideoPercentViewed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMediaError(String str) {
        if (o.a()) {
            this.logger.b(TAG, str);
        }
        maybeFireTrackers(a7.d.ERROR, f7.MEDIA_FILE_ERROR);
        this.vastAd.getAdEventTracker().b(str);
        if (this.mediaErrorHandled.compareAndSet(false, true)) {
            this.sdk.E().a("handleVastVideoError", str, this.vastAd);
            finishVideo();
            showMediaImageView();
        }
    }

    private void handleUnavailableCachedResources() {
        if (o.a()) {
            this.logger.b(TAG, "Video failed due to unavailable resources");
        }
        finishVideo();
        showMediaImageView();
    }

    private void maybeFireRemainingCompletionTrackers() {
        if (getVideoPercentViewed() >= this.vastAd.q0() && !this.videoProgressTrackers.isEmpty()) {
            if (o.a()) {
                o oVar = this.logger;
                oVar.k(TAG, "Firing " + this.videoProgressTrackers.size() + " un-fired video progress trackers when video was completed.");
            }
            maybeFireTrackers(this.videoProgressTrackers);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFireTrackers(Set<k7> set) {
        maybeFireTrackers(set, f7.UNSPECIFIED);
    }

    private void maybeHandleOnAttachedToWindow() {
        if (!this.initialOnAttachedToWindowHandled.compareAndSet(false, true)) {
            return;
        }
        if (this.industryIconImageView != null && this.vastAd.z1()) {
            maybeFireTrackers(a7.d.INDUSTRY_ICON_IMPRESSION);
            this.industryIconImageView.setVisibility(0);
        }
        this.startTimeMillis = SystemClock.elapsedRealtime();
        maybeFireTrackers(a7.d.IMPRESSION);
        maybeFireTrackers(a7.d.VIDEO, "creativeView");
        this.vastAd.getAdEventTracker().g();
        this.vastAd.setHasShown(true);
        this.sdk.k().trackImpression(this.vastAd);
        this.viewActivity = com.applovin.impl.d.a(q7.b(this));
        this.sdk.e().a(this.lifecycleCallbacksAdapter);
        this.videoView.start();
        this.countdownManager.a(COUNTDOWN_IDENTIFIER_PROGRESS_TRACKING, TimeUnit.SECONDS.toMillis(1L), new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeHandlePause() {
        if (!this.automaticPauseHandled.compareAndSet(false, true)) {
            return;
        }
        maybeFireTrackers(a7.d.VIDEO, CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        this.vastAd.getAdEventTracker().z();
        pauseVideo();
        populatePlayPauseImage(true);
        this.automaticResumeHandled.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeHandleResume() {
        if (!this.automaticResumeHandled.compareAndSet(false, true)) {
            return;
        }
        maybeFireTrackers(a7.d.VIDEO, CampaignEx.JSON_NATIVE_VIDEO_RESUME);
        this.vastAd.getAdEventTracker().A();
        if (this.lastVideoPositionFromPauseMillis >= 0) {
            if (o.a()) {
                o oVar = this.logger;
                oVar.a(TAG, "Resuming video at position " + this.lastVideoPositionFromPauseMillis);
            }
            this.videoView.start();
            this.countdownManager.b();
            this.lastVideoPositionFromPauseMillis = -1;
        } else if (o.a()) {
            this.logger.a(TAG, "Invalid last video position");
        }
        populatePlayPauseImage(false);
        this.automaticPauseHandled.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseVideo() {
        if (o.a()) {
            this.logger.a(TAG, "Pausing video");
        }
        this.savedVideoPercentViewed = getVideoPercentViewed();
        this.lastVideoPositionFromPauseMillis = this.videoView.getCurrentPosition();
        this.videoView.pause();
        this.countdownManager.c();
        if (o.a()) {
            o oVar = this.logger;
            oVar.a(TAG, "Paused video at position " + this.lastVideoPositionFromPauseMillis + " ms");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean populateMuteImage(boolean z) {
        Uri j0;
        int i;
        if (this.muteButtonImageView == null) {
            return false;
        }
        if (k0.d()) {
            Context context = getContext();
            if (z) {
                i = R.drawable.applovin_ic_unmute_to_mute;
            } else {
                i = R.drawable.applovin_ic_mute_to_unmute;
            }
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) context.getDrawable(i);
            if (animatedVectorDrawable != null) {
                this.muteButtonImageView.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return true;
            }
        }
        if (z) {
            j0 = this.vastAd.Q();
        } else {
            j0 = this.vastAd.j0();
        }
        if (j0 == null) {
            return false;
        }
        ImageViewUtils.setImageUri(this.muteButtonImageView, j0, this.sdk);
        return true;
    }

    private void populatePlayPauseImage(boolean z) {
        int i;
        ImageView imageView = this.playPauseButtonImageView;
        if (imageView == null) {
            return;
        }
        if (z) {
            i = R.drawable.applovin_ic_play_icon;
        } else {
            i = R.drawable.applovin_ic_pause_icon;
        }
        imageView.setImageResource(i);
    }

    private void prepareMediaPlayer() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        checkCachedAdResourcesImmediately(!this.isVideoStream);
        this.videoView.setVideoURI(this.vastAd.w0());
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMediaImageView() {
        if (this.imageView.getDrawable() != null) {
            this.imageView.setVisibility(0);
            this.videoView.setVisibility(8);
            LinearLayout linearLayout = this.videoWidgetLinearLayout;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            ImageView imageView = this.industryIconImageView;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
        }
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinMediaView
    public void destroy() {
        finishVideo();
        ImageView imageView = this.industryIconImageView;
        if (imageView != null) {
            imageView.setOnClickListener(null);
        }
        ImageView imageView2 = this.playPauseButtonImageView;
        if (imageView2 != null) {
            imageView2.setOnClickListener(null);
        }
        ImageView imageView3 = this.muteButtonImageView;
        if (imageView3 != null) {
            imageView3.setOnClickListener(null);
        }
        FrameLayout frameLayout = this.replayIconContainer;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(null);
        }
        AppLovinVideoView appLovinVideoView = this.videoView;
        if (appLovinVideoView != null) {
            appLovinVideoView.pause();
            this.videoView.stopPlayback();
        }
        this.videoView.setOnTouchListener(null);
        this.viewActivity = null;
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        this.vastAd.getAdEventTracker().f();
        this.countdownManager.a();
        this.countdownHandler.removeCallbacksAndMessages(null);
        if (this.isVideoStream) {
            AppLovinCommunicator.getInstance(getContext()).unsubscribe(this, "video_caching_failed");
        }
        super.destroy();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return TAG;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isViewAttached = true;
        maybeHandleOnAttachedToWindow();
        if (!this.isVideoPausedByUser) {
            maybeHandleResume();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isViewAttached = false;
        maybeHandlePause();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("video_caching_failed".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            if (messageData.getLong("ad_id") == this.vastAd.getAdIdNumber() && this.isVideoStream) {
                int i = messageData.getInt("load_response_code");
                String string = messageData.getString("load_exception_message");
                if ((string != null || i < 200 || i >= 300) && !this.videoWasCompleted && !this.videoView.isPlaying()) {
                    handleMediaError("Video cache error during stream. ResponseCode=" + i + ", exception=" + string);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFireTrackers(a7.d dVar) {
        maybeFireTrackers(dVar, f7.UNSPECIFIED);
    }

    private void maybeFireTrackers(a7.d dVar, String str) {
        maybeFireTrackers(dVar, str, f7.UNSPECIFIED);
    }

    private void maybeFireTrackers(a7.d dVar, f7 f7Var) {
        maybeFireTrackers(dVar, "", f7Var);
    }

    private void maybeFireTrackers(a7.d dVar, String str, f7 f7Var) {
        maybeFireTrackers(this.vastAd.a(dVar, str), f7Var);
    }

    private void maybeFireTrackers(Set<k7> set, f7 f7Var) {
        if (set == null || set.isEmpty()) {
            return;
        }
        long seconds = TimeUnit.MILLISECONDS.toSeconds(this.videoView.getCurrentPosition());
        o7 y1 = this.vastAd.y1();
        Uri d2 = y1 != null ? y1.d() : null;
        if (o.a()) {
            o oVar = this.logger;
            oVar.a(TAG, "Firing " + set.size() + " tracker(s): " + set);
        }
        m7.a(set, seconds, d2, f7Var, this.sdk);
    }
}
