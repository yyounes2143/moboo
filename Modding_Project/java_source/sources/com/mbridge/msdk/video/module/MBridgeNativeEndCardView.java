package com.mbridge.msdk.video.module;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import androidx.media3.common.C;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.shake.MBShakeView;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import com.mbridge.msdk.videocommon.view.StarLevelView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class MBridgeNativeEndCardView extends MBridgeNativeEndCardViewDiff {
    private LinearLayout A;
    private Runnable B;
    private Runnable C;
    private RelativeLayout D;
    private com.mbridge.msdk.video.signal.factory.b E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private int J;
    private AlphaAnimation K;
    private int L;
    private int M;
    private int N;
    private int O;
    private Bitmap P;
    private View Q;
    private FeedBackButton R;
    private String S;
    private CampaignUnit T;
    private MBShakeView U;
    private com.mbridge.msdk.shake.b V;
    private MBridgeBaitClickView W;
    private boolean a0;
    private int b0;
    private String c0;
    private ViewGroup m;
    private ViewGroup n;
    private RelativeLayout o;
    private ImageView p;
    private ImageView q;
    private ImageView r;
    private ImageView s;
    private TextView t;
    private ImageView u;
    private ImageView v;
    private TextView w;
    private TextView x;
    private TextView y;
    private LinearLayout z;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a extends com.mbridge.msdk.widget.a {
        public a() {
        }

        @Override // com.mbridge.msdk.widget.a
        public void a(View view) {
            if (MBridgeNativeEndCardView.this.ctaView != null) {
                if (com.mbridge.msdk.util.b.a()) {
                    if (MBridgeNativeEndCardView.this.checkProgressBarIntercepted()) {
                        MBridgeNativeEndCardView.this.b.setTriggerClickSource(2);
                        MBridgeNativeEndCardView.this.c(0);
                        return;
                    }
                    return;
                }
                MBridgeNativeEndCardView.this.b.setTriggerClickSource(2);
                MBridgeNativeEndCardView.this.c(0);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeNativeEndCardView.this.D != null) {
                CampaignEx campaignEx = MBridgeNativeEndCardView.this.b;
                if (campaignEx != null && !campaignEx.isDynamicView() && MBridgeNativeEndCardView.this.b.getAdSpaceT() != 2) {
                    MBridgeNativeEndCardView.this.D.setPadding(MBridgeNativeEndCardView.this.L, MBridgeNativeEndCardView.this.N, MBridgeNativeEndCardView.this.M, MBridgeNativeEndCardView.this.O);
                    MBridgeNativeEndCardView.this.D.startAnimation(MBridgeNativeEndCardView.this.K);
                }
                MBridgeNativeEndCardView.this.D.setVisibility(0);
            }
            if (MBridgeNativeEndCardView.this.Q != null && MBridgeNativeEndCardView.this.Q.getVisibility() != 0 && MBridgeNativeEndCardView.this.G) {
                MBridgeNativeEndCardView.this.Q.setVisibility(0);
            }
            MBridgeNativeEndCardView.this.f();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c implements com.mbridge.msdk.foundation.feedback.a {
        public c() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            MBridgeNativeEndCardView.this.I = true;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            MBridgeNativeEndCardView.this.I = false;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            MBridgeNativeEndCardView.this.I = false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            MBridgeNativeEndCardView.this.b.setTriggerClickSource(5);
            MBridgeNativeEndCardView.this.c(0);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class e extends com.mbridge.msdk.shake.b {
        public e(int i, int i2) {
            super(i, i2);
        }

        @Override // com.mbridge.msdk.shake.b
        public void a() {
            if ((com.mbridge.msdk.util.b.a() && MBridgeNativeEndCardView.this.checkChinaShakeState()) || MBridgeNativeEndCardView.this.I || !MBridgeNativeEndCardView.this.H) {
                return;
            }
            MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
            mBridgeNativeEndCardView.f = 0.0f;
            mBridgeNativeEndCardView.g = 0.0f;
            mBridgeNativeEndCardView.b.setTriggerClickSource(5);
            MBridgeNativeEndCardView.this.c(4);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class f implements View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            MBridgeNativeEndCardView.this.b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.c(0);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView.this.b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.b.setClickType(1);
            MBridgeNativeEndCardView.this.c(2);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView.this.b.setTriggerClickSource(2);
            MBridgeNativeEndCardView.this.b.setClickType(1);
            MBridgeNativeEndCardView.this.c(2);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class i implements Runnable {
        public i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView.this.G = true;
            if (MBridgeNativeEndCardView.this.Q != null) {
                MBridgeNativeEndCardView.this.Q.setVisibility(0);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class l implements com.mbridge.msdk.foundation.feedback.a {
        public l() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            MBridgeNativeEndCardView.this.I = true;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            MBridgeNativeEndCardView.this.I = false;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            MBridgeNativeEndCardView.this.I = false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bitmap f9850a;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                if (mBridgeNativeEndCardView.h) {
                    mBridgeNativeEndCardView.p.setBackground(null);
                }
                o0.b("async", "执行异步加载图");
                MBridgeNativeEndCardView.this.p.setImageBitmap(MBridgeNativeEndCardView.this.P);
            }
        }

        public m(Bitmap bitmap) {
            this.f9850a = bitmap;
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
            mBridgeNativeEndCardView.P = mBridgeNativeEndCardView.blurBitmap(this.f9850a);
            if (MBridgeNativeEndCardView.this.P != null && !MBridgeNativeEndCardView.this.P.isRecycled() && MBridgeNativeEndCardView.this.p != null) {
                MBridgeNativeEndCardView.this.p.post(new a());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class n implements View.OnClickListener {
        public n() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            if (MBridgeNativeEndCardView.this.F) {
                MBridgeNativeEndCardView.this.b.setTriggerClickSource(2);
                MBridgeNativeEndCardView.this.c(1);
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class o implements View.OnClickListener {
        public o() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            if (MBridgeNativeEndCardView.this.h) {
                try {
                    com.mbridge.msdk.video.dynview.moffer.a.a().b();
                } catch (Exception e) {
                    o0.b(MBridgeBaseView.TAG, e.getMessage());
                }
                try {
                    CampaignEx campaignEx = MBridgeNativeEndCardView.this.b;
                    if (campaignEx != null) {
                        String a2 = z0.a(campaignEx.getendcard_url(), "ecid");
                        String a3 = z0.a(MBridgeNativeEndCardView.this.b.getendcard_url(), "mof");
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a("type", "choseFromTwoClose");
                        eVar.a("endcard_id", a2);
                        eVar.a("mof", a3);
                        com.mbridge.msdk.video.module.report.a.a("2000103", MBridgeNativeEndCardView.this.b, eVar);
                    }
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        e2.printStackTrace();
                    }
                }
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar2.a("type", 2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", MBridgeNativeEndCardView.this.b);
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    th.printStackTrace();
                }
            }
            MBridgeNativeEndCardView.this.notifyListener.a(104, "");
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class p extends com.mbridge.msdk.widget.a {
        public p() {
        }

        @Override // com.mbridge.msdk.widget.a
        public void a(View view) {
            MBridgeNativeEndCardView.this.b.setTriggerClickSource(1);
            MBridgeNativeEndCardView.this.c(0);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class q extends com.mbridge.msdk.widget.a {
        public q() {
        }

        @Override // com.mbridge.msdk.widget.a
        public void a(View view) {
            if (MBridgeNativeEndCardView.this.ctaView != null) {
                if (com.mbridge.msdk.util.b.a()) {
                    if (MBridgeNativeEndCardView.this.checkProgressBarIntercepted()) {
                        MBridgeNativeEndCardView.this.b.setTriggerClickSource(2);
                        MBridgeNativeEndCardView.this.c(0);
                        return;
                    }
                    return;
                }
                MBridgeNativeEndCardView.this.b.setTriggerClickSource(2);
                MBridgeNativeEndCardView.this.c(0);
            }
        }
    }

    public MBridgeNativeEndCardView(Context context) {
        super(context);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.a0 = false;
        this.b0 = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBannerBackGroundBlurBimap(Bitmap bitmap) {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new m(bitmap));
        } catch (Exception e2) {
            o0.a(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    @TargetApi(17)
    public Bitmap blurBitmap(Bitmap bitmap) {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_4444);
            RenderScript create = RenderScript.create(this.f9822a.getApplicationContext());
            ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
            Allocation createFromBitmap = Allocation.createFromBitmap(create, bitmap);
            Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
            create2.setRadius(25.0f);
            create2.setInput(createFromBitmap);
            create2.forEach(createFromBitmap2);
            createFromBitmap2.copyTo(createBitmap);
            create.destroy();
            return createBitmap;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean canBackPress() {
        View view = this.Q;
        if (view != null && view.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public void clearMoreOfferBitmap() {
        CampaignUnit campaignUnit;
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && campaignEx.isDynamicView() && (campaignUnit = this.T) != null && campaignUnit.getAds() != null && this.T.getAds().size() > 0) {
            ArrayList<CampaignEx> ads = this.T.getAds();
            int size = ads.size();
            int i2 = 0;
            while (i2 < size) {
                CampaignEx campaignEx2 = ads.get(i2);
                i2++;
                CampaignEx campaignEx3 = campaignEx2;
                if (!TextUtils.isEmpty(campaignEx3.getIconUrl())) {
                    com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx3.getIconUrl());
                }
            }
        }
    }

    public boolean isDyXmlSuccess() {
        return this.a0;
    }

    public void notifyShowListener() {
        this.notifyListener.a(110, "");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.B == null) {
            this.B = new i();
        }
        Runnable runnable = this.B;
        if (runnable != null) {
            postDelayed(runnable, this.J * 1000);
            if (!this.H) {
                this.H = true;
            }
            m();
        }
        e();
        g();
        n();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.B;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = this.C;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
        }
        if (this.V != null) {
            com.mbridge.msdk.shake.a.a().b(this.V);
            this.V = null;
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            return;
        }
        RelativeLayout relativeLayout = this.D;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(4);
        }
        int i2 = configuration.orientation;
        this.d = i2;
        if (i2 == 2) {
            removeView(this.m);
            b(this.n);
            return;
        }
        removeView(this.n);
        b(this.m);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeNativeEndCardViewDiff
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.E = bVar;
        try {
            if (this.b != null && this.e) {
                h();
            }
        } catch (Throwable th) {
            o0.a(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    public void release() {
        try {
            removeAllViews();
            AlphaAnimation alphaAnimation = this.K;
            if (alphaAnimation != null) {
                alphaAnimation.cancel();
            }
            this.B = null;
        } catch (Exception e2) {
            o0.b(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    public void setCloseBtnDelay(int i2) {
        this.J = i2;
    }

    public void setLayout() {
        if (this.h) {
            i();
        } else {
            j();
        }
    }

    public void setMoreOfferCampaignUnit(CampaignUnit campaignUnit) {
        MBShakeView mBShakeView;
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            this.T = campaignUnit;
            if (campaignUnit != null && campaignUnit.getAds() != null && this.T.getAds().size() > 5 && (mBShakeView = this.U) != null) {
                mBShakeView.setPadding(0, 0, 0, t0.a(getContext(), 5.0f));
            }
        }
    }

    public void setNotchPadding(int i2, int i3, int i4, int i5) {
        o0.b(MBridgeBaseView.TAG, "NOTCH NativeEndCard " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)));
        this.L = i2;
        this.M = i3;
        this.N = i4;
        this.O = i5;
        o();
    }

    public void setOnPause() {
        this.H = false;
    }

    public void setOnResume() {
        this.H = true;
    }

    public void setUnitId(String str) {
        this.S = str;
    }

    private void e() {
        MBridgeBaitClickView mBridgeBaitClickView;
        try {
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                String str = this.b.getendcard_url();
                if (TextUtils.isEmpty(str)) {
                    str = this.b.getEndScreenUrl();
                }
                String a2 = z0.a(str, "bait_click");
                int parseInt = Integer.parseInt(a2);
                if (TextUtils.isEmpty(a2) || parseInt == 0 || (mBridgeBaitClickView = this.W) == null) {
                    return;
                }
                mBridgeBaitClickView.setVisibility(0);
                this.W.init(C.ENCODING_PCM_24BIT_BIG_ENDIAN, parseInt);
                if (this.b.getEcTemplateId() == 1302) {
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setShape(0);
                    gradientDrawable.setColor(C.ENCODING_PCM_24BIT_BIG_ENDIAN);
                    gradientDrawable.setStroke(0, SupportMenu.CATEGORY_MASK);
                    gradientDrawable.setCornerRadius(25.0f);
                    this.W.setBackground(gradientDrawable);
                }
                this.W.startAnimation();
                this.W.setOnClickListener(new f());
            }
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        CampaignEx campaignEx = this.b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.S);
            com.mbridge.msdk.foundation.feedback.b b2 = com.mbridge.msdk.foundation.feedback.b.b();
            b2.a(this.S + "_2", this.b);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            com.mbridge.msdk.foundation.feedback.b b3 = com.mbridge.msdk.foundation.feedback.b.b();
            b3.a(this.S + "_2", new c());
            com.mbridge.msdk.foundation.feedback.b b4 = com.mbridge.msdk.foundation.feedback.b.b();
            b4.d(this.S + "_1");
            if (this.R != null) {
                com.mbridge.msdk.foundation.feedback.b b5 = com.mbridge.msdk.foundation.feedback.b.b();
                b5.a(this.S + "_2", this.R);
                return;
            }
            return;
        }
        FeedBackButton feedBackButton = this.R;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }

    private void g() {
        int parseInt;
        int parseInt2;
        try {
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                String str = this.b.getendcard_url();
                if (TextUtils.isEmpty(str)) {
                    str = this.b.getEndScreenUrl();
                }
                String a2 = z0.a(str, "shake_show");
                String a3 = z0.a(str, "shake_strength");
                String a4 = z0.a(str, "shake_time");
                if (!TextUtils.isEmpty(a2) && a2.equals("1") && this.U == null) {
                    MBridgeBaitClickView mBridgeBaitClickView = this.W;
                    if (mBridgeBaitClickView != null) {
                        mBridgeBaitClickView.setVisibility(8);
                    }
                    MBShakeView mBShakeView = new MBShakeView(getContext());
                    this.U = mBShakeView;
                    mBShakeView.initView(this.b.getAdCall(), true);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                    if (!isLandscape()) {
                        layoutParams.addRule(2, filterFindViewId(this.a0, "mbridge_iv_logo"));
                        layoutParams.addRule(14);
                        this.U.setPadding(0, 0, 0, t0.a(getContext(), 20.0f));
                    } else {
                        layoutParams.addRule(13);
                    }
                    this.U.setLayoutParams(layoutParams);
                    RelativeLayout relativeLayout = this.o;
                    if (relativeLayout != null && relativeLayout.isShown()) {
                        this.o.addView(this.U);
                        TextView textView = this.ctaView;
                        if (textView != null) {
                            textView.setVisibility(4);
                        }
                        this.U.setOnClickListener(new d());
                        int i2 = 10;
                        if (!TextUtils.isEmpty(a3) && (parseInt2 = Integer.parseInt(a3)) > 0) {
                            i2 = parseInt2;
                        }
                        int i3 = 5000;
                        if (!TextUtils.isEmpty(a4) && (parseInt = Integer.parseInt(a4)) > 0) {
                            i3 = parseInt * 1000;
                        }
                        this.V = new e(i2, i3);
                        com.mbridge.msdk.shake.a.a().a(this.V);
                    }
                }
            }
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    private void h() {
        com.mbridge.msdk.foundation.same.image.b.a(this.f9822a.getApplicationContext()).a(this.b.getImageUrl(), new k());
        com.mbridge.msdk.foundation.same.image.b.a(this.f9822a.getApplicationContext()).a(this.b.getIconUrl(), new com.mbridge.msdk.video.module.listener.impl.j(this.r, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 8.0f)));
        this.w.setText(this.b.getAppName());
        TextView textView = this.ctaView;
        if (textView != null) {
            textView.setText(this.b.getAdCall());
        }
        TextView textView2 = this.x;
        if (textView2 != null) {
            textView2.setText(this.b.getAppDesc());
        }
        TextView textView3 = this.y;
        if (textView3 != null) {
            textView3.setText(this.b.getNumberRating() + ")");
        }
        this.z.removeAllViews();
        double rating = this.b.getRating();
        if (rating <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            rating = 5.0d;
        }
        LinearLayout linearLayout = this.z;
        if (linearLayout instanceof StarLevelView) {
            ((StarLevelView) linearLayout).initScore(rating);
        }
        LinearLayout linearLayout2 = this.z;
        if (linearLayout2 instanceof MBridgeLevelLayoutView) {
            ((MBridgeLevelLayoutView) linearLayout2).setRatingAndUser(rating, this.b.getNumberRating());
        }
        LinearLayout linearLayout3 = this.z;
        if (linearLayout3 instanceof MBStarLevelLayoutView) {
            ((MBStarLevelLayoutView) linearLayout3).setRating((int) rating);
        }
        LinearLayout linearLayout4 = this.A;
        if (linearLayout4 != null && (linearLayout4 instanceof MBHeatLevelLayoutView)) {
            ((MBHeatLevelLayoutView) linearLayout4).setHeatCount(this.b.getNumberRating());
        }
        if (!TextUtils.isEmpty(this.b.getendcard_url()) && this.b.getendcard_url().contains("alecfc=1")) {
            this.F = true;
        }
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
            this.s.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_cn", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            this.c0 = "广告";
        } else {
            this.s.setImageDrawable(getResources().getDrawable(getResources().getIdentifier("mbridge_reward_flag_en", "drawable", com.mbridge.msdk.foundation.controller.c.m().h())));
            this.c0 = "AD";
        }
        if (this.b0 == 0) {
            ImageView imageView = this.s;
            if (imageView != null) {
                imageView.setVisibility(4);
            }
            ImageView imageView2 = this.u;
            if (imageView2 != null) {
                imageView2.setVisibility(4);
            }
            TextView textView4 = this.t;
            if (textView4 != null) {
                textView4.setVisibility(0);
                this.t.setText(this.c0);
            }
        }
        t0.a(2, this.v, this.b, this.f9822a, true, new l());
        if (this.G) {
            return;
        }
        this.Q.setVisibility(8);
    }

    private void i() {
        String str;
        if (com.mbridge.msdk.util.b.a()) {
            str = "cn_";
        } else {
            str = "en_";
        }
        com.mbridge.msdk.video.dynview.c a2 = new com.mbridge.msdk.video.dynview.wrapper.c().a(getContext(), this.b, this.i, str);
        this.b0 = a2.o();
        com.mbridge.msdk.video.dynview.b.a().a(a2, new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        int k2 = k();
        if (g0.a(k2)) {
            this.e = b(k2);
            l();
            CampaignEx campaignEx = this.b;
            if (campaignEx != null) {
                campaignEx.setECTemplateRenderSucc(false);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
        if (r6.j != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
        r1 = "mbridge_reward_endcard_native_half_landscape";
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x002f, code lost:
        if (r6.j != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int k() {
        /*
            r6 = this;
            int r0 = r6.k
            java.lang.String r1 = "mbridge_reward_endcard_native_land"
            java.lang.String r2 = "mbridge_reward_endcard_native_half_landscape"
            java.lang.String r3 = "mbridge_reward_endcard_native_hor"
            java.lang.String r4 = "mbridge_reward_endcard_native_half_portrait"
            if (r0 != 0) goto L1f
            boolean r0 = r6.j
            if (r0 == 0) goto L11
            r3 = r4
        L11:
            boolean r0 = r6.isLandscape()
            if (r0 == 0) goto L1d
            boolean r0 = r6.j
            if (r0 == 0) goto L32
        L1b:
            r1 = r2
            goto L32
        L1d:
            r1 = r3
            goto L32
        L1f:
            r5 = 1
            if (r0 != r5) goto L28
            boolean r5 = r6.j
            if (r5 == 0) goto L2a
            r3 = r4
            goto L2a
        L28:
            java.lang.String r3 = ""
        L2a:
            r4 = 2
            if (r0 != r4) goto L1d
            boolean r0 = r6.j
            if (r0 == 0) goto L32
            goto L1b
        L32:
            int r0 = r6.findLayout(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.MBridgeNativeEndCardView.k():int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        d();
        if (!this.e) {
            this.notifyListener.a(104, "");
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.K = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    private void m() {
        try {
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                String str = this.b.getendcard_url();
                if (TextUtils.isEmpty(str)) {
                    str = this.b.getEndScreenUrl();
                }
                String a2 = z0.a(str, "alac");
                if (!TextUtils.isEmpty(a2) && a2.equals("1") && this.b.getAutoShowStoreMiniCard() != 1) {
                    postDelayed(new g(), 1000L);
                }
            }
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    private void n() {
        try {
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.getAutoShowStoreMiniCard() != 0 && !TextUtils.isEmpty(this.b.getDeepLinkURL())) {
                long showStoreMiniCardDelayTime = this.b.getShowStoreMiniCardDelayTime();
                if (showStoreMiniCardDelayTime == 0) {
                    showStoreMiniCardDelayTime = 1;
                }
                if (this.C == null) {
                    this.C = new h();
                }
                postDelayed(this.C, showStoreMiniCardDelayTime * 1000);
            }
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    private void o() {
        RelativeLayout relativeLayout;
        if (!this.e || (relativeLayout = this.D) == null) {
            return;
        }
        relativeLayout.postDelayed(new b(), 200L);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void d() {
        if (this.e) {
            this.o.setOnClickListener(new n());
            this.Q.setOnClickListener(new o());
            TextView textView = this.ctaView;
            if (textView != null) {
                textView.setOnClickListener(new p());
            }
            this.r.setOnClickListener(new q());
            this.q.setOnClickListener(new a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i2) {
        JSONException jSONException;
        JSONObject jSONObject;
        CampaignEx.c rewardTemplateMode;
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            try {
                String str = "";
                if (this.b.getRewardTemplateMode() != null) {
                    str = rewardTemplateMode.f() + "";
                }
                com.mbridge.msdk.foundation.same.report.j.a(com.mbridge.msdk.foundation.controller.c.m().d(), "end_card_click", this.b.getCampaignUnitId(), this.b.isBidCampaign(), this.b.getRequestId(), this.b.getRequestIdNotice(), this.b.getId(), str);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.j, a(i2));
                if (this.b.getDynamicTempCode() == 5) {
                    jSONObject.put("camp_position", 0);
                }
            } catch (JSONException e3) {
                jSONException = e3;
                jSONException.printStackTrace();
                this.b.setClickTempSource(2);
                this.notifyListener.a(105, jSONObject);
            }
        } catch (JSONException e4) {
            jSONException = e4;
            jSONObject = null;
        }
        this.b.setClickTempSource(2);
        this.notifyListener.a(105, jSONObject);
    }

    private void b(View view) {
        if (view == null) {
            setLayout();
            preLoadData(this.E);
        } else {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            addView(view);
            a(view);
            d();
        }
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(View view) {
        try {
            this.o = (RelativeLayout) view.findViewById(filterFindViewId(this.a0, "mbridge_native_ec_layout"));
            this.q = (ImageView) view.findViewById(filterFindViewId(this.a0, "mbridge_iv_adbanner"));
            this.r = (ImageView) view.findViewById(filterFindViewId(this.a0, "mbridge_iv_icon"));
            this.s = (ImageView) view.findViewById(filterFindViewId(this.a0, "mbridge_iv_flag"));
            this.t = (TextView) view.findViewById(filterFindViewId(this.a0, "mbridge_tv_flag"));
            this.u = (ImageView) view.findViewById(filterFindViewId(this.a0, "mbridge_iv_logo"));
            this.v = (ImageView) view.findViewById(filterFindViewId(this.a0, "mbridge_iv_link"));
            this.w = (TextView) view.findViewById(filterFindViewId(this.a0, "mbridge_tv_apptitle"));
            this.z = (LinearLayout) view.findViewById(filterFindViewId(this.a0, "mbridge_sv_starlevel"));
            this.A = (LinearLayout) view.findViewById(filterFindViewId(this.a0, "mbridge_sv_heat_count_level"));
            this.Q = view.findViewById(filterFindViewId(this.a0, "mbridge_iv_close"));
            this.ctaView = (TextView) view.findViewById(filterFindViewId(this.a0, "mbridge_tv_cta"));
            this.R = (FeedBackButton) view.findViewById(filterFindViewId(this.a0, "mbridge_native_endcard_feed_btn"));
            this.D = (RelativeLayout) view.findViewById(filterFindViewId(this.a0, "mbridge_native_ec_controller"));
            this.p = (ImageView) view.findViewById(filterFindViewId(this.a0, "mbridge_iv_adbanner_bg"));
            this.W = (MBridgeBaitClickView) findViewById(filterFindViewId(this.a0, "mbridge_animation_click_view"));
            this.x = (TextView) view.findViewById(filterFindViewId(this.a0, "mbridge_tv_appdesc"));
            if (this.h) {
                ImageView imageView = this.q;
                if (imageView != null && (imageView instanceof RoundImageView)) {
                    ((RoundImageView) imageView).setBorderRadius(10);
                }
                ImageView imageView2 = this.r;
                if (imageView2 != null && (imageView2 instanceof RoundImageView)) {
                    ((RoundImageView) imageView2).setBorderRadius(10);
                }
                return isNotNULL(this.q, this.r, this.w, this.z, this.Q, this.ctaView);
            }
            TextView textView = (TextView) view.findViewById(filterFindViewId(this.a0, "mbridge_tv_number"));
            this.y = textView;
            return isNotNULL(this.q, this.r, this.w, this.x, textView, this.z, this.Q, this.ctaView);
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage(), th);
            return false;
        }
    }

    public MBridgeNativeEndCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.a0 = false;
        this.b0 = 1;
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class j implements com.mbridge.msdk.video.dynview.listener.h {
        public j() {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                MBridgeNativeEndCardView.this.addView(aVar.b());
                MBridgeNativeEndCardView.this.a0 = aVar.c();
                if (!MBridgeNativeEndCardView.this.ctaViewCanGet(aVar.b(), MBridgeNativeEndCardView.this.a0)) {
                    MBridgeNativeEndCardView.this.a0 = false;
                    MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                    mBridgeNativeEndCardView.h = false;
                    mBridgeNativeEndCardView.j();
                } else {
                    MBridgeNativeEndCardView mBridgeNativeEndCardView2 = MBridgeNativeEndCardView.this;
                    mBridgeNativeEndCardView2.e = mBridgeNativeEndCardView2.a(aVar.b());
                    MBridgeNativeEndCardView.this.l();
                }
                MBridgeNativeEndCardView mBridgeNativeEndCardView3 = MBridgeNativeEndCardView.this;
                CampaignEx campaignEx = mBridgeNativeEndCardView3.b;
                if (campaignEx != null) {
                    campaignEx.setECTemplateRenderSucc(mBridgeNativeEndCardView3.a0);
                }
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            o0.b(MBridgeBaseView.TAG, "errorMsg:" + aVar.c());
        }
    }

    private boolean b(int i2) {
        if (isLandscape()) {
            ViewGroup viewGroup = (ViewGroup) this.c.inflate(i2, (ViewGroup) null);
            this.n = viewGroup;
            addView(viewGroup);
            return a(this.n);
        }
        ViewGroup viewGroup2 = (ViewGroup) this.c.inflate(i2, (ViewGroup) null);
        this.m = viewGroup2;
        addView(viewGroup2);
        return a(this.m);
    }

    public MBridgeNativeEndCardView(Context context, AttributeSet attributeSet, boolean z, int i2, boolean z2, int i3, int i4) {
        super(context, attributeSet, z, i2, z2, i3, i4);
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = 0;
        this.a0 = false;
        this.b0 = 1;
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class k implements com.mbridge.msdk.foundation.same.image.c {
        public k() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null && !bitmap.isRecycled()) {
                try {
                    if (MBridgeNativeEndCardView.this.q != null) {
                        MBridgeNativeEndCardView mBridgeNativeEndCardView = MBridgeNativeEndCardView.this;
                        if (mBridgeNativeEndCardView.h) {
                            mBridgeNativeEndCardView.q.setBackground(null);
                        }
                        MBridgeNativeEndCardView.this.q.setImageBitmap(bitmap);
                    }
                    MBridgeNativeEndCardView.this.setBannerBackGroundBlurBimap(bitmap);
                } catch (Throwable unused) {
                    if (MBridgeNativeEndCardView.this.p != null) {
                        MBridgeNativeEndCardView.this.p.setVisibility(4);
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }
    }
}
