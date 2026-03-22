package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
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
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.adview.AppLovinAdView;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.adview.AppLovinVideoView;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.w0;
import com.applovin.impl.y7;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class v1 extends r1 implements AppLovinCommunicatorSubscriber {
    private final w1 N;
    private MediaPlayer O;
    private final View P;
    protected final AppLovinVideoView Q;
    protected final com.applovin.impl.a R;
    protected final com.applovin.impl.adview.g S;
    protected e0 T;
    protected final ImageView U;
    protected com.applovin.impl.adview.l V;
    protected final ProgressBar W;
    protected ProgressBar X;
    protected ImageView Y;
    private final e Z;
    private final d a0;
    private final Handler b0;
    private final Handler c0;
    protected final w0 d0;
    protected final w0 e0;
    private final boolean f0;
    protected boolean g0;
    protected long h0;
    private int i0;
    private int j0;
    protected boolean k0;
    private boolean l0;
    private final AtomicBoolean m0;
    private final AtomicBoolean n0;
    private long o0;
    private long p0;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements w0.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f3779a;

        public a(int i) {
            this.f3779a = i;
        }

        @Override // com.applovin.impl.w0.b
        public void a() {
            v1 v1Var = v1.this;
            if (v1Var.T != null) {
                long seconds = this.f3779a - TimeUnit.MILLISECONDS.toSeconds(v1Var.Q.getCurrentPosition());
                if (seconds <= 0) {
                    v1.this.v = true;
                } else if (v1.this.R()) {
                    v1.this.T.setProgress((int) seconds);
                }
            }
        }

        @Override // com.applovin.impl.w0.b
        public boolean b() {
            return v1.this.R();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements w0.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Integer f3780a;

        public b(Integer num) {
            this.f3780a = num;
        }

        @Override // com.applovin.impl.w0.b
        public void a() {
            v1 v1Var = v1.this;
            if (v1Var.k0) {
                v1Var.W.setVisibility(8);
                return;
            }
            v1.this.W.setProgress((int) ((v1Var.Q.getCurrentPosition() / ((float) v1.this.h0)) * this.f3780a.intValue()));
        }

        @Override // com.applovin.impl.w0.b
        public boolean b() {
            return !v1.this.k0;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements w0.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f3781a;
        final /* synthetic */ Integer b;
        final /* synthetic */ Long c;

        public c(long j, Integer num, Long l) {
            this.f3781a = j;
            this.b = num;
            this.c = l;
        }

        @Override // com.applovin.impl.w0.b
        public void a() {
            v1.this.X.setProgress((int) ((((float) v1.this.r) / ((float) this.f3781a)) * this.b.intValue()));
            v1.this.r += this.c.longValue();
        }

        @Override // com.applovin.impl.w0.b
        public boolean b() {
            if (v1.this.r < this.f3781a) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class d implements y7.a {
        private d() {
        }

        @Override // com.applovin.impl.y7.a
        public void a(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = v1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.c.a("AppLovinFullscreenActivity", "Closing ad from video button...");
            }
            v1.this.a("video_button");
        }

        @Override // com.applovin.impl.y7.a
        public void b(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = v1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.c.a("AppLovinFullscreenActivity", "Clicking through from video button...");
            }
            v1.this.a(lVar.getAndClearLastClickEvent(), (Bundle) null);
        }

        @Override // com.applovin.impl.y7.a
        public void c(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = v1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.c.a("AppLovinFullscreenActivity", "Fully Watched from video button...");
            }
            v1.this.K = true;
        }

        @Override // com.applovin.impl.y7.a
        public void d(com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = v1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.c.a("AppLovinFullscreenActivity", "Skipping video from video button...");
            }
            v1.this.V();
        }

        public /* synthetic */ d(v1 v1Var, a aVar) {
            this();
        }

        @Override // com.applovin.impl.y7.a
        public void a(com.applovin.impl.adview.l lVar, Bundle bundle) {
            com.applovin.impl.sdk.o oVar = v1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.c.a("AppLovinFullscreenActivity", "Attempting to launch Direct Download from video button...");
            }
            v1.this.a(lVar.getAndClearLastClickEvent(), bundle);
        }

        @Override // com.applovin.impl.y7.a
        public void b(Uri uri, com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = v1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.c.a("AppLovinFullscreenActivity", "Attempting to report a template error from video button...");
            }
            w6.c(uri, v1.this.i.getController().g(), v1.this.b);
        }

        @Override // com.applovin.impl.y7.a
        public void a(Uri uri, com.applovin.impl.adview.l lVar) {
            com.applovin.impl.sdk.o oVar = v1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.c.a("AppLovinFullscreenActivity", "Attempting to load a url from video button...");
            }
            w6.a(uri, v1.this.i.getController(), v1.this.b);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class e implements MediaPlayer.OnPreparedListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnCompletionListener, AppLovinTouchToClickListener.OnClickListener {
        private e() {
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, MotionEvent motionEvent) {
            v1.this.a(motionEvent, (Bundle) null);
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            com.applovin.impl.sdk.o oVar = v1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.c.a("AppLovinFullscreenActivity", "Video completed");
            }
            v1.this.l0 = true;
            v1 v1Var = v1.this;
            if (!v1Var.t) {
                v1Var.U();
            } else if (v1Var.i()) {
                v1.this.B();
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            v1 v1Var = v1.this;
            v1Var.g("Video view error (" + i + "," + i2 + ")");
            v1.this.Q.start();
            return true;
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            com.applovin.impl.sdk.o oVar = v1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = v1.this.c;
                oVar2.a("AppLovinFullscreenActivity", "MediaPlayer Info: (" + i + ", " + i2 + ")");
            }
            if (i == 701) {
                v1.this.T();
                return false;
            } else if (i == 3) {
                v1.this.d0.b();
                v1 v1Var = v1.this;
                if (v1Var.S != null) {
                    v1Var.Q();
                }
                v1.this.F();
                if (v1.this.H.b()) {
                    v1.this.w();
                    return false;
                }
                return false;
            } else if (i == 702) {
                v1.this.F();
                return false;
            } else {
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            v1.this.O = mediaPlayer;
            mediaPlayer.setOnInfoListener(v1.this.Z);
            mediaPlayer.setOnErrorListener(v1.this.Z);
            float f = !v1.this.g0 ? 1 : 0;
            mediaPlayer.setVolume(f, f);
            v1.this.u = (int) TimeUnit.MILLISECONDS.toSeconds(mediaPlayer.getDuration());
            v1.this.d(mediaPlayer.getDuration());
            v1.this.P();
            com.applovin.impl.sdk.o oVar = v1.this.c;
            if (com.applovin.impl.sdk.o.a()) {
                v1.this.c.a("AppLovinFullscreenActivity", "MediaPlayer prepared: " + v1.this.O);
            }
        }

        public /* synthetic */ e(v1 v1Var, a aVar) {
            this();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class f implements View.OnClickListener {
        private f() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            v1 v1Var = v1.this;
            if (view == v1Var.S) {
                v1Var.V();
            } else if (view == v1Var.U) {
                v1Var.W();
            } else if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = v1.this.c;
                oVar.b("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }

        public /* synthetic */ f(v1 v1Var, a aVar) {
            this();
        }
    }

    public v1(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.k kVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.N = new w1(this.f3517a, this.d, this.b);
        this.Y = null;
        e eVar = new e(this, null);
        this.Z = eVar;
        d dVar = new d(this, null);
        this.a0 = dVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.b0 = handler;
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.c0 = handler2;
        w0 w0Var = new w0(handler, this.b);
        this.d0 = w0Var;
        this.e0 = new w0(handler2, this.b);
        boolean Q0 = this.f3517a.Q0();
        this.f0 = Q0;
        this.g0 = z6.e(this.b);
        this.j0 = -1;
        this.m0 = new AtomicBoolean();
        this.n0 = new AtomicBoolean();
        this.o0 = -2L;
        this.p0 = 0L;
        if (bVar.hasVideoUrl()) {
            AppLovinVideoView appLovinVideoView = new AppLovinVideoView(activity);
            this.Q = appLovinVideoView;
            appLovinVideoView.setOnPreparedListener(eVar);
            appLovinVideoView.setOnCompletionListener(eVar);
            appLovinVideoView.setOnErrorListener(eVar);
            bVar.h().putString("video_view_address", q7.a(appLovinVideoView));
            View view = new View(activity);
            this.P = view;
            boolean z = false;
            view.setBackgroundColor(Color.argb(254, 0, 0, 0));
            if (((Boolean) kVar.a(l4.k1)).booleanValue()) {
                view.setOnTouchListener(new AppLovinTouchToClickListener(kVar, l4.i0, activity, eVar));
            } else {
                appLovinVideoView.setOnTouchListener(new AppLovinTouchToClickListener(kVar, l4.i0, activity, eVar));
                view.setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.Uuuuuuuuuuu
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        boolean a2;
                        a2 = v1.a(view2, motionEvent);
                        return a2;
                    }
                });
            }
            f fVar = new f(this, null);
            if (bVar.o0() >= 0) {
                com.applovin.impl.adview.g gVar = new com.applovin.impl.adview.g(bVar.e0(), activity);
                this.S = gVar;
                gVar.setVisibility(8);
                gVar.setOnClickListener(fVar);
            } else {
                this.S = null;
            }
            if (a(this.g0, kVar)) {
                ImageView imageView = new ImageView(activity);
                this.U = imageView;
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                imageView.setClickable(true);
                imageView.setOnClickListener(fVar);
                e(this.g0);
            } else {
                this.U = null;
            }
            String l0 = bVar.l0();
            if (StringUtils.isValidString(l0)) {
                y7 y7Var = new y7(kVar);
                y7Var.a(new WeakReference(dVar));
                com.applovin.impl.adview.l lVar = new com.applovin.impl.adview.l(bVar.k0(), bVar, y7Var, activity);
                this.V = lVar;
                lVar.a(l0);
            } else {
                this.V = null;
            }
            if (Q0) {
                com.applovin.impl.a aVar = new com.applovin.impl.a(activity, ((Integer) kVar.a(l4.n2)).intValue(), 16842874);
                this.R = aVar;
                aVar.setColor(Color.parseColor("#75FFFFFF"));
                aVar.setBackgroundColor(Color.parseColor("#00000000"));
                aVar.setVisibility(8);
                AppLovinCommunicator.getInstance(activity).subscribe(this, "video_caching_failed");
            } else {
                this.R = null;
            }
            int d2 = d();
            if (((Boolean) kVar.a(l4.S1)).booleanValue() && d2 > 0) {
                z = true;
            }
            if (this.T == null && z) {
                this.T = new e0(activity);
                int t = bVar.t();
                this.T.setTextColor(t);
                this.T.setTextSize(((Integer) kVar.a(l4.R1)).intValue());
                this.T.setFinishedStrokeColor(t);
                this.T.setFinishedStrokeWidth(((Integer) kVar.a(l4.Q1)).intValue());
                this.T.setMax(d2);
                this.T.setProgress(d2);
                w0Var.a("COUNTDOWN_CLOCK", TimeUnit.SECONDS.toMillis(1L), new a(d2));
            }
            if (bVar.v0()) {
                Integer num = (Integer) kVar.a(l4.l2);
                ProgressBar progressBar = new ProgressBar(activity, null, 16842872);
                this.W = progressBar;
                a(progressBar, bVar.u0(), num.intValue());
                w0Var.a("PROGRESS_BAR", ((Long) kVar.a(l4.k2)).longValue(), new b(num));
                return;
            }
            this.W = null;
            return;
        }
        throw new IllegalStateException("Attempting to use fullscreen video ad presenter for non-video ad");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        com.applovin.impl.a aVar = this.R;
        if (aVar != null) {
            aVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void J() {
        com.applovin.impl.a aVar = this.R;
        if (aVar != null) {
            aVar.a();
            final com.applovin.impl.a aVar2 = this.R;
            Objects.requireNonNull(aVar2);
            a(new Runnable() { // from class: com.applovin.impl.Uuuuuuu
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.b();
                }
            }, 2000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K() {
        this.o0 = -1L;
        this.p0 = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L() {
        com.applovin.impl.a aVar = this.R;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void M() {
        this.q = SystemClock.elapsedRealtime();
    }

    private void N() {
        com.applovin.impl.adview.l lVar;
        final boolean z;
        p7 m0 = this.f3517a.m0();
        if (m0 != null && m0.j() && !this.k0 && (lVar = this.V) != null) {
            if (lVar.getVisibility() == 4) {
                z = true;
            } else {
                z = false;
            }
            final long h = m0.h();
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Uuuuu
                @Override // java.lang.Runnable
                public final void run() {
                    v1.this.b(z, h);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        if (this.k0) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.k("AppLovinFullscreenActivity", "Skip video resume - postitial shown");
            }
        } else if (this.b.m0().isApplicationPaused()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.k("AppLovinFullscreenActivity", "Skip video resume - app paused");
            }
        } else if (this.j0 >= 0) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                oVar.a("AppLovinFullscreenActivity", "Resuming video at position " + this.j0 + "ms for MediaPlayer: " + this.O);
            }
            this.Q.seekTo(this.j0);
            this.Q.start();
            this.d0.b();
            this.j0 = -1;
            a(new Runnable() { // from class: com.applovin.impl.Uuu
                @Override // java.lang.Runnable
                public final void run() {
                    v1.this.J();
                }
            }, 250L);
        } else if (com.applovin.impl.sdk.o.a()) {
            this.c.a("AppLovinFullscreenActivity", "Invalid last video position");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        if (this.n0.compareAndSet(false, true)) {
            a(this.S, this.f3517a.o0(), new Runnable() { // from class: com.applovin.impl.Uuuuuuuuuu
                @Override // java.lang.Runnable
                public final void run() {
                    v1.this.K();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    private void e(boolean z) {
        Uri j0;
        int i;
        if (k0.d()) {
            Activity activity = this.d;
            if (z) {
                i = R.drawable.applovin_ic_unmute_to_mute;
            } else {
                i = R.drawable.applovin_ic_mute_to_unmute;
            }
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) activity.getDrawable(i);
            if (animatedVectorDrawable != null) {
                this.U.setScaleType(ImageView.ScaleType.FIT_XY);
                this.U.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        if (z) {
            j0 = this.f3517a.Q();
        } else {
            j0 = this.f3517a.j0();
        }
        ImageViewUtils.setImageUri(this.U, j0, this.b);
    }

    private void f(boolean z) {
        this.i0 = D();
        if (z) {
            this.Q.pause();
        } else {
            this.Q.stopPlayback();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(String str) {
        a8.a(this.V, str, "AppLovinFullscreenActivity", this.b);
    }

    @Override // com.applovin.impl.r1
    public void B() {
        this.N.a(this.l);
        this.q = SystemClock.elapsedRealtime();
    }

    public int D() {
        long currentPosition = this.Q.getCurrentPosition();
        if (this.l0) {
            return 100;
        }
        if (currentPosition > 0) {
            return (int) ((((float) currentPosition) / ((float) this.h0)) * 100.0f);
        }
        return this.i0;
    }

    public void E() {
        this.y++;
        if (this.f3517a.E()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a("AppLovinFullscreenActivity", "Dismissing ad on video skip...");
            }
            a("video_skip");
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a("AppLovinFullscreenActivity", "Skipping video...");
        }
        U();
    }

    public void F() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Uuuuuu
            @Override // java.lang.Runnable
            public final void run() {
                v1.this.I();
            }
        });
    }

    public boolean G() {
        if (this.K && this.f3517a.j1()) {
            return true;
        }
        return H();
    }

    public boolean H() {
        if (D() >= this.f3517a.q0()) {
            return true;
        }
        return false;
    }

    public void P() {
        long Z;
        long millis;
        long j = 0;
        if (this.f3517a.Y() < 0 && this.f3517a.Z() < 0) {
            return;
        }
        if (this.f3517a.Y() >= 0) {
            Z = this.f3517a.Y();
        } else {
            com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) this.f3517a;
            long j2 = this.h0;
            if (j2 > 0) {
                j = j2;
            }
            if (aVar.f1()) {
                int p1 = (int) ((com.applovin.impl.sdk.ad.a) this.f3517a).p1();
                if (p1 > 0) {
                    millis = TimeUnit.SECONDS.toMillis(p1);
                } else {
                    int s = (int) aVar.s();
                    if (s > 0) {
                        millis = TimeUnit.SECONDS.toMillis(s);
                    }
                }
                j += millis;
            }
            Z = (long) (j * (this.f3517a.Z() / 100.0d));
        }
        c(Z);
    }

    public boolean R() {
        if (!this.v && !this.k0 && this.Q.isPlaying()) {
            return true;
        }
        return false;
    }

    public boolean S() {
        if (i() && !G()) {
            return true;
        }
        return false;
    }

    public void T() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.Uuuuuuuu
            @Override // java.lang.Runnable
            public final void run() {
                v1.this.L();
            }
        });
    }

    public void U() {
        v1 v1Var;
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a("AppLovinFullscreenActivity", "Showing postitial...");
        }
        f(this.f3517a.m1());
        long W = this.f3517a.W();
        if (W > 0) {
            this.r = 0L;
            Long l = (Long) this.b.a(l4.t2);
            Integer num = (Integer) this.b.a(l4.w2);
            ProgressBar progressBar = new ProgressBar(this.d, null, 16842872);
            this.X = progressBar;
            a(progressBar, this.f3517a.V(), num.intValue());
            v1Var = this;
            this.e0.a("POSTITIAL_PROGRESS_BAR", l.longValue(), new c(W, num, l));
            v1Var.e0.b();
        } else {
            v1Var = this;
        }
        v1Var.N.a(v1Var.k, v1Var.j, v1Var.i, v1Var.X);
        a("javascript:al_onPoststitialShow(" + v1Var.y + "," + v1Var.z + ");", v1Var.f3517a.H());
        if (v1Var.k != null) {
            if (v1Var.f3517a.s() >= 0) {
                a(v1Var.k, v1Var.f3517a.s(), new Runnable() { // from class: com.applovin.impl.Xxxxxxxxxxx
                    @Override // java.lang.Runnable
                    public final void run() {
                        v1.this.M();
                    }
                });
            } else {
                v1Var.k.setVisibility(0);
            }
        }
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.adview.g gVar = v1Var.k;
        if (gVar != null) {
            arrayList.add(new u3(gVar, FriendlyObstructionPurpose.CLOSE_AD, "close button"));
        }
        com.applovin.impl.adview.k kVar = v1Var.j;
        if (kVar != null && kVar.a()) {
            com.applovin.impl.adview.k kVar2 = v1Var.j;
            arrayList.add(new u3(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier()));
        }
        ProgressBar progressBar2 = v1Var.X;
        if (progressBar2 != null) {
            arrayList.add(new u3(progressBar2, FriendlyObstructionPurpose.OTHER, "postitial progress bar"));
        }
        v1Var.f3517a.getAdEventTracker().b(v1Var.i, arrayList);
        q();
        v1Var.k0 = true;
    }

    public void V() {
        this.o0 = SystemClock.elapsedRealtime() - this.p0;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            oVar.a("AppLovinFullscreenActivity", "Attempting to skip video with skip time: " + this.o0 + "ms");
        }
        if (S()) {
            w();
            o();
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a("AppLovinFullscreenActivity", "Prompting incentivized ad close warning");
            }
            this.H.e();
            return;
        }
        E();
    }

    public void W() {
        MediaPlayer mediaPlayer = this.O;
        if (mediaPlayer != null) {
            try {
                float f2 = this.g0 ? 1.0f : 0.0f;
                mediaPlayer.setVolume(f2, f2);
                boolean z = !this.g0;
                this.g0 = z;
                e(z);
                a(this.g0, 0L);
            } catch (Throwable unused) {
            }
        }
    }

    public void d(long j) {
        this.h0 = j;
    }

    public void g(String str) {
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            oVar.b("AppLovinFullscreenActivity", "Encountered media error: " + str + " for ad: " + this.f3517a);
        }
        if (this.m0.compareAndSet(false, true)) {
            if (((Boolean) this.b.a(l4.L0)).booleanValue()) {
                this.b.H().d(this.f3517a, com.applovin.impl.sdk.k.o());
            }
            AppLovinAdDisplayListener appLovinAdDisplayListener = this.F;
            if (appLovinAdDisplayListener instanceof f2) {
                ((f2) appLovinAdDisplayListener).onAdDisplayFailed(str);
            }
            String str2 = this.f3517a instanceof a7 ? "handleVastVideoError" : "handleVideoError";
            this.b.E().a(str2, str, this.f3517a);
            HashMap<String, String> hashMap = CollectionUtils.hashMap("source", str2);
            CollectionUtils.putStringIfValid("error_message", str, hashMap);
            this.b.g().a(y1.s, this.f3517a, hashMap);
            a("media_error");
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "FullscreenVideoAdPresenter";
    }

    @Override // com.applovin.impl.r1
    public void n() {
        super.a(D(), this.f0, G(), this.o0);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("video_caching_failed".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            if (messageData.getLong("ad_id") == this.f3517a.getAdIdNumber() && this.f0) {
                int i = messageData.getInt("load_response_code");
                String string = messageData.getString("load_exception_message");
                if ((string != null || i < 200 || i >= 300) && !this.l0 && !this.Q.isPlaying()) {
                    g("Video cache error during stream. ResponseCode=" + i + ", exception=" + string);
                }
            }
        }
    }

    @Override // com.applovin.impl.r1
    public void s() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.d("AppLovinFullscreenActivity", "Destroying video components");
        }
        try {
            if (((Boolean) this.b.a(l4.Q5)).booleanValue()) {
                a8.b(this.V);
                this.V = null;
            }
            if (this.f0) {
                AppLovinCommunicator.getInstance(this.d).unsubscribe(this, "video_caching_failed");
            }
            AppLovinVideoView appLovinVideoView = this.Q;
            if (appLovinVideoView != null) {
                appLovinVideoView.pause();
                this.Q.stopPlayback();
            }
            MediaPlayer mediaPlayer = this.O;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
        } catch (Throwable th) {
            com.applovin.impl.sdk.o.c("AppLovinFullscreenActivity", "Unable to destroy presenter", th);
        }
        super.s();
    }

    @Override // com.applovin.impl.r1
    public void w() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a("AppLovinFullscreenActivity", "Pausing video");
        }
        this.j0 = this.Q.getCurrentPosition();
        this.Q.pause();
        this.d0.c();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            oVar.a("AppLovinFullscreenActivity", "Paused video at position " + this.j0 + "ms");
        }
    }

    @Override // com.applovin.impl.r1
    public void x() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.r1
    public void b(boolean z) {
        super.b(z);
        if (z) {
            b(0L);
            if (this.k0) {
                this.e0.b();
            }
        } else if (this.k0) {
            this.e0.c();
        } else {
            w();
        }
    }

    @Override // com.applovin.impl.r1
    public void f() {
        super.f();
        B();
    }

    @Override // com.applovin.impl.r1
    public void a(ViewGroup viewGroup) {
        String str;
        this.N.a(this.U, this.S, this.V, this.R, this.W, this.T, this.Q, this.P, this.i, this.j, this.Y, viewGroup);
        if (k0.g() && (str = this.b.n0().getExtraParameters().get("audio_focus_request")) != null) {
            this.Q.setAudioFocusRequest(Integer.parseInt(str));
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        if (a(!this.f0)) {
            return;
        }
        this.Q.setVideoURI(this.f3517a.w0());
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null) {
            kVar.b();
        }
        this.Q.start();
        if (this.f0) {
            T();
        }
        this.i.renderAd(this.f3517a);
        if (this.S != null) {
            this.b.q0().a(new f6(this.b, "scheduleSkipButton", new Runnable() { // from class: com.applovin.impl.Uu
                @Override // java.lang.Runnable
                public final void run() {
                    v1.this.Q();
                }
            }), r5.b.TIMEOUT, this.f3517a.p0(), true);
        }
        super.c(this.g0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z, long j) {
        if (z) {
            q7.a(this.V, j, (Runnable) null);
        } else {
            q7.b(this.V, j, null);
        }
    }

    @Override // com.applovin.impl.r1
    public void b(long j) {
        a(new Runnable() { // from class: com.applovin.impl.Uuuuuuuuu
            @Override // java.lang.Runnable
            public final void run() {
                v1.this.O();
            }
        }, j);
    }

    @Override // com.applovin.impl.c2.a
    public void b() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a("AppLovinFullscreenActivity", "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses");
        }
    }

    @Override // com.applovin.impl.r1
    public void g() {
        super.g();
        this.N.a(this.V);
        this.N.a((View) this.S);
        if (!i() || this.k0) {
            B();
        }
    }

    @Override // com.applovin.impl.r1
    public void a(final String str, long j) {
        super.a(str, j);
        if (this.V == null || j < 0 || !StringUtils.isValidString(str)) {
            return;
        }
        a(new Runnable() { // from class: com.applovin.impl.Uuuu
            @Override // java.lang.Runnable
            public final void run() {
                v1.this.h(str);
            }
        }, j);
    }

    private void a(ProgressBar progressBar, int i, int i2) {
        progressBar.setMax(i2);
        progressBar.setPadding(0, 0, 0, 0);
        if (k0.d()) {
            progressBar.setProgressTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // com.applovin.impl.r1
    public void a(String str) {
        this.d0.a();
        this.e0.a();
        this.b0.removeCallbacksAndMessages(null);
        this.c0.removeCallbacksAndMessages(null);
        if (!((Boolean) this.b.a(l4.k6)).booleanValue()) {
            com.applovin.impl.sdk.ad.b bVar = this.f3517a;
            if (bVar != null) {
                bVar.a(str);
            }
            n();
        }
        super.a(str);
    }

    public void a(MotionEvent motionEvent, Bundle bundle) {
        Context context;
        if (this.f3517a.P0()) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a("AppLovinFullscreenActivity", "Clicking through video");
            }
            Uri n0 = this.f3517a.n0();
            if (n0 != null) {
                if (!((Boolean) this.b.a(l4.x)).booleanValue() || (context = this.d) == null) {
                    AppLovinAdView appLovinAdView = this.i;
                    context = appLovinAdView != null ? appLovinAdView.getContext() : com.applovin.impl.sdk.k.o();
                }
                this.b.k().trackAndLaunchVideoClick(this.f3517a, n0, motionEvent, bundle, this, context);
                l2.a(this.E, this.f3517a);
                this.z++;
                return;
            }
            return;
        }
        N();
    }

    private static boolean a(boolean z, com.applovin.impl.sdk.k kVar) {
        if (((Boolean) kVar.a(l4.c2)).booleanValue()) {
            if (!((Boolean) kVar.a(l4.d2)).booleanValue() || z) {
                return true;
            }
            return ((Boolean) kVar.a(l4.f2)).booleanValue();
        }
        return false;
    }

    @Override // com.applovin.impl.c2.a
    public void a() {
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a("AppLovinFullscreenActivity", "Skipping video from prompt");
        }
        E();
    }
}
