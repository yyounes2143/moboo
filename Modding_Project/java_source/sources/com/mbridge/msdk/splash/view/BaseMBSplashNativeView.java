package com.mbridge.msdk.splash.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.shake.MBShakeView;
import com.mbridge.msdk.splash.view.nativeview.MBNoRecycledCrashImageView;
import com.mbridge.msdk.splash.view.nativeview.MBSplashClickView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class BaseMBSplashNativeView extends RelativeLayout {
    private int A;
    private int B;
    private int C;
    private float D;
    private float E;
    private boolean F;
    private boolean G;
    protected boolean H;
    protected boolean I;
    protected boolean J;
    protected String K;
    private String L;
    protected MBSplashView M;
    protected CampaignEx N;
    protected MBShakeView O;
    private String P;
    private String Q;
    private String R;
    protected com.mbridge.msdk.shake.b S;

    /* renamed from: a  reason: collision with root package name */
    private MBNoRecycledCrashImageView f9506a;
    private MBNoRecycledCrashImageView b;
    private RelativeLayout c;
    private ImageView d;
    private FeedBackButton e;
    protected TextView f;
    private RelativeLayout g;
    private MBNoRecycledCrashImageView h;
    private TextView i;
    private MBNoRecycledCrashImageView j;
    private TextView k;
    private TextView l;
    protected RelativeLayout m;
    protected TextView n;
    protected TextView o;
    protected TextView p;
    protected TextView q;
    protected MBSplashClickView r;
    protected int s;
    private int t;
    private int u;
    private int v;
    protected int w;
    protected int x;
    protected int y;
    protected int z;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements com.mbridge.msdk.foundation.same.image.c {
        public b() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            BaseMBSplashNativeView.this.h.setVisibility(4);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            Bitmap a2;
            if (bitmap != null) {
                try {
                    if (!bitmap.isRecycled() && BaseMBSplashNativeView.this.h != null && (a2 = n0.a(bitmap, 1, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 40.0f))) != null && !a2.isRecycled()) {
                        BaseMBSplashNativeView.this.h.setImageBitmap(a2);
                    }
                } catch (Throwable th) {
                    o0.b("MBSplashNativeView", th.getMessage());
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            BaseMBSplashNativeView.this.a(1);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class e implements View.OnClickListener {
        public e() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            BaseMBSplashNativeView.this.a(0);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class f implements View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            if (baseMBSplashNativeView.H) {
                if (baseMBSplashNativeView.M.getSplashSignalCommunicationImpl() != null && BaseMBSplashNativeView.this.M.getSplashSignalCommunicationImpl().a() != null) {
                    BaseMBSplashNativeView.this.M.getSplashSignalCommunicationImpl().a().close();
                }
                BaseMBSplashNativeView.this.f.setVisibility(4);
                BaseMBSplashNativeView.this.f.setEnabled(false);
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public BaseMBSplashNativeView(Context context) {
        super(context);
        this.I = false;
        this.J = false;
    }

    private void i() {
        if (this.v == 1) {
            this.r.setVisibility(8);
        } else if (this.x == 1) {
            this.r.setVisibility(8);
        } else {
            this.r.initView(this.N.getAdCall());
        }
    }

    private void j() {
        if (this.u == 1) {
            setOnClickListener(new d());
        } else {
            this.r.setOnClickListener(new e());
        }
        this.f.setOnClickListener(new f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCountDownStatus(boolean z) {
        int i;
        if (this.M.getSplashSignalCommunicationImpl() != null && this.M.getSplashSignalCommunicationImpl().a() != null) {
            com.mbridge.msdk.splash.middle.a a2 = this.M.getSplashSignalCommunicationImpl().a();
            if (z) {
                i = 2;
            } else {
                i = 1;
            }
            a2.a(i, this.t);
        }
    }

    public void b() {
    }

    public void e() {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            if (this.x == 1 && this.O != null && this.S != null) {
                com.mbridge.msdk.shake.a.a().a(this.S);
            }
        } catch (Throwable th) {
            o0.b("MBSplashNativeView", th.getMessage());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.D = motionEvent.getRawX();
        this.E = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void release() {
        try {
            if (this.S != null) {
                com.mbridge.msdk.shake.a.a().b(this.S);
                this.S = null;
            }
            com.mbridge.msdk.foundation.feedback.b.b().d(this.K);
            detachAllViewsFromParent();
        } catch (Exception e2) {
            o0.b("MBSplashNativeView", e2.getMessage());
        }
    }

    public void setIsPause(boolean z) {
        this.I = z;
    }

    public void setNotchPadding(int i, int i2, int i3, int i4) {
        try {
            RelativeLayout relativeLayout = this.c;
            if (relativeLayout != null) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                int i5 = this.C;
                layoutParams.leftMargin = i + i5;
                layoutParams.rightMargin = i2 + i5;
                layoutParams.topMargin = i3 + i5;
                layoutParams.bottomMargin = i5 + i4;
            }
        } catch (Throwable th) {
            o0.b("MBSplashNativeView", th.getMessage());
        }
    }

    public void updateCountDown(int i) {
        String str;
        if (this.f != null) {
            this.t = i;
            if (this.H) {
                str = this.Q + " " + i + this.P;
            } else {
                str = i + this.P + " " + this.R;
            }
            this.f.setText(str);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c implements com.mbridge.msdk.foundation.feedback.a {
        public c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = true;
            baseMBSplashNativeView.setCountDownStatus(false);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class g implements com.mbridge.msdk.foundation.feedback.a {
        public g() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = true;
            baseMBSplashNativeView.setCountDownStatus(false);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            BaseMBSplashNativeView baseMBSplashNativeView = BaseMBSplashNativeView.this;
            baseMBSplashNativeView.J = false;
            baseMBSplashNativeView.setCountDownStatus(true);
        }
    }

    private void c() {
        try {
            this.F = getContext().getResources().getConfiguration().locale.getLanguage().contains("zh");
        } catch (Throwable th) {
            o0.b("MBSplashNativeView", th.getMessage());
        }
        a();
        g();
        h();
        e();
        i();
        j();
        b();
        updateCountDown(this.s);
    }

    private void d() {
        int a2;
        try {
            if (this.A == 1) {
                a2 = g0.a(getContext().getApplicationContext(), "mbridge_splash_portrait", "layout");
            } else {
                a2 = g0.a(getContext().getApplicationContext(), "mbridge_splash_landscape", "layout");
            }
            View inflate = LayoutInflater.from(getContext()).inflate(a2, (ViewGroup) null);
            addView(inflate);
            this.f9506a = (MBNoRecycledCrashImageView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_image_bg", "id"));
            this.b = (MBNoRecycledCrashImageView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_image", "id"));
            this.c = (RelativeLayout) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_topcontroller", "id"));
            this.d = (ImageView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_link", "id"));
            this.e = (FeedBackButton) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_feedback", "id"));
            this.f = (TextView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_skip", "id"));
            this.g = (RelativeLayout) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_landscape_foreground", "id"));
            this.h = (MBNoRecycledCrashImageView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_icon", "id"));
            this.i = (TextView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_title", "id"));
            this.j = (MBNoRecycledCrashImageView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_iv_foregroundimage", "id"));
            this.k = (TextView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_adrect", "id"));
            this.m = (RelativeLayout) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_layout_appinfo", "id"));
            this.n = (TextView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_appinfo", "id"));
            this.o = (TextView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_privacy", "id"));
            this.p = (TextView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_permission", "id"));
            this.q = (TextView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_app_desc", "id"));
            this.r = (MBSplashClickView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_click", "id"));
            this.l = (TextView) inflate.findViewById(g0.a(getContext().getApplicationContext(), "mbridge_splash_tv_adcircle", "id"));
            int a3 = g0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip", TypedValues.Custom.S_STRING);
            int a4 = g0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip_not", TypedValues.Custom.S_STRING);
            int a5 = g0.a(getContext().getApplicationContext(), "mbridge_splash_count_time_can_skip_s", TypedValues.Custom.S_STRING);
            this.Q = getContext().getResources().getString(a3);
            this.R = getContext().getResources().getString(a4);
            this.P = getContext().getResources().getString(a5);
            this.C = t0.a(getContext(), 9.0f);
        } catch (Throwable th) {
            o0.b("MBSplashNativeView", th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (!TextUtils.isEmpty(this.N.getIconUrl())) {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.N.getIconUrl(), new b());
        } else {
            this.h.setVisibility(4);
        }
    }

    private void g() {
        if (!TextUtils.isEmpty(this.N.getImageUrl())) {
            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(this.N.getImageUrl(), new a());
        } else {
            this.b.setVisibility(4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void h() {
        /*
            r7 = this;
            android.widget.ImageView r1 = r7.d
            com.mbridge.msdk.foundation.entity.CampaignEx r2 = r7.N
            android.content.Context r3 = r7.getContext()
            com.mbridge.msdk.splash.view.BaseMBSplashNativeView$c r5 = new com.mbridge.msdk.splash.view.BaseMBSplashNativeView$c
            r5.<init>()
            r0 = 3
            r4 = 1
            com.mbridge.msdk.foundation.tools.t0.a(r0, r1, r2, r3, r4, r5)
            android.content.Context r0 = r7.getContext()
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.String r1 = "mbridge_splash_m_circle"
            java.lang.String r2 = "drawable"
            int r0 = com.mbridge.msdk.foundation.tools.g0.a(r0, r1, r2)
            r1 = 0
            android.content.res.Resources r2 = r7.getResources()     // Catch: java.lang.Throwable -> L44
            android.graphics.drawable.Drawable r2 = r2.getDrawable(r0)     // Catch: java.lang.Throwable -> L44
            android.content.Context r0 = r7.getContext()     // Catch: java.lang.Throwable -> L42
            r3 = 1092616192(0x41200000, float:10.0)
            int r0 = com.mbridge.msdk.foundation.tools.t0.a(r0, r3)     // Catch: java.lang.Throwable -> L42
            android.content.Context r4 = r7.getContext()     // Catch: java.lang.Throwable -> L42
            int r3 = com.mbridge.msdk.foundation.tools.t0.a(r4, r3)     // Catch: java.lang.Throwable -> L42
            r4 = 0
            r2.setBounds(r4, r4, r0, r3)     // Catch: java.lang.Throwable -> L42
            goto L4f
        L42:
            r0 = move-exception
            goto L46
        L44:
            r0 = move-exception
            r2 = r1
        L46:
            java.lang.String r0 = r0.getMessage()
            java.lang.String r3 = "MBSplashNativeView"
            com.mbridge.msdk.foundation.tools.o0.b(r3, r0)
        L4f:
            int r0 = r7.A
            r3 = 1
            r4 = 4
            java.lang.String r5 = "AD"
            java.lang.String r6 = "广告"
            if (r0 != r3) goto L78
            boolean r0 = r7.G
            if (r0 == 0) goto L78
            int r0 = r7.B
            if (r0 == 0) goto L68
            if (r2 == 0) goto L68
            android.widget.TextView r0 = r7.l
            r0.setCompoundDrawables(r2, r1, r1, r1)
        L68:
            android.widget.TextView r0 = r7.l
            boolean r1 = r7.F
            if (r1 == 0) goto L6f
            r5 = r6
        L6f:
            r0.setText(r5)
            android.widget.TextView r0 = r7.k
            r0.setVisibility(r4)
            goto L92
        L78:
            int r0 = r7.B
            if (r0 == 0) goto L83
            if (r2 == 0) goto L83
            android.widget.TextView r0 = r7.k
            r0.setCompoundDrawables(r2, r1, r1, r1)
        L83:
            android.widget.TextView r0 = r7.k
            boolean r1 = r7.F
            if (r1 == 0) goto L8a
            r5 = r6
        L8a:
            r0.setText(r5)
            android.widget.TextView r0 = r7.l
            r0.setVisibility(r4)
        L92:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.splash.view.BaseMBSplashNativeView.h():void");
    }

    public void a(int i) {
        if (this.M.getSplashSignalCommunicationImpl() == null || this.M.getSplashSignalCommunicationImpl().a() == null) {
            return;
        }
        try {
            this.M.getSplashSignalCommunicationImpl().a().a(com.mbridge.msdk.splash.common.util.a.a(com.mbridge.msdk.splash.common.util.a.a(i, this.D, this.E), this.N));
        } catch (Throwable th) {
            o0.b("MBSplashNativeView", th.getMessage());
            this.M.getSplashSignalCommunicationImpl().a().a(this.N);
        }
    }

    public BaseMBSplashNativeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseMBSplashNativeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.I = false;
        this.J = false;
    }

    public BaseMBSplashNativeView(Context context, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar) {
        super(context);
        this.I = false;
        this.J = false;
        if (cVar != null) {
            this.K = cVar.l();
            this.L = cVar.h();
            this.N = cVar.b();
            this.M = mBSplashView;
            this.s = cVar.d();
            this.v = cVar.c();
            this.u = cVar.f();
            this.w = cVar.a();
            this.x = cVar.i();
            this.y = cVar.j();
            this.z = cVar.k();
            this.A = cVar.g();
            this.H = cVar.m();
            this.B = cVar.e();
            d();
            c();
            return;
        }
        throw new IllegalArgumentException("Parameters is NULL, can't gen view.");
    }

    private void a() {
        CampaignEx campaignEx = this.N;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.K);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, 3);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.N);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, new g());
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.e);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, 3);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.K, this.N);
            return;
        }
        FeedBackButton feedBackButton = this.e;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements com.mbridge.msdk.foundation.same.image.c {
        public a() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null) {
                try {
                    if (!bitmap.isRecycled()) {
                        if (bitmap.getWidth() < bitmap.getHeight()) {
                            BaseMBSplashNativeView.this.G = true;
                            BaseMBSplashNativeView.this.g.setVisibility(4);
                            BaseMBSplashNativeView.this.b.setScaleType(ImageView.ScaleType.FIT_CENTER);
                            BaseMBSplashNativeView.this.b.setImageBitmap(bitmap);
                        } else if (BaseMBSplashNativeView.this.A == 1) {
                            BaseMBSplashNativeView.this.g.setVisibility(0);
                            Bitmap a2 = n0.a(bitmap, 1, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 10.0f));
                            if (a2 != null && !a2.isRecycled()) {
                                BaseMBSplashNativeView.this.j.setScaleType(ImageView.ScaleType.FIT_XY);
                                BaseMBSplashNativeView.this.j.setImageBitmap(a2);
                            }
                            BaseMBSplashNativeView.this.i.setText(BaseMBSplashNativeView.this.N.getAppName());
                            BaseMBSplashNativeView.this.f();
                            try {
                                Bitmap a3 = n0.a(bitmap);
                                if (a3 != null && !a3.isRecycled()) {
                                    BaseMBSplashNativeView.this.b.setScaleType(ImageView.ScaleType.CENTER_CROP);
                                    BaseMBSplashNativeView.this.b.setImageBitmap(a3);
                                }
                            } catch (Throwable unused) {
                                BaseMBSplashNativeView.this.b.setImageBitmap(bitmap);
                            }
                        } else {
                            BaseMBSplashNativeView.this.g.setVisibility(4);
                            BaseMBSplashNativeView.this.b.setScaleType(ImageView.ScaleType.FIT_CENTER);
                            BaseMBSplashNativeView.this.b.setImageBitmap(bitmap);
                        }
                        Bitmap a4 = n0.a(bitmap);
                        if (a4 != null && !a4.isRecycled()) {
                            BaseMBSplashNativeView.this.f9506a.setScaleType(ImageView.ScaleType.CENTER_CROP);
                            BaseMBSplashNativeView.this.f9506a.setImageBitmap(a4);
                        }
                    }
                } catch (Throwable th) {
                    o0.b("MBSplashNativeView", th.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }
    }
}
