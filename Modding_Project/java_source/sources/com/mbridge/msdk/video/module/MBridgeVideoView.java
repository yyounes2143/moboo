package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeSegmentsProgressBar;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewParameters;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView;
import com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.PlayerView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.dialog.MBAlertDialog;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class MBridgeVideoView extends MBridgeBaseView implements com.mbridge.msdk.video.signal.j {
    private static int R0 = 0;
    private static int S0 = 0;
    private static int T0 = 0;
    private static int U0 = 0;
    private static int V0 = 0;
    private static boolean W0 = false;
    private static long X0;
    private boolean A;
    private int A0;
    private FrameLayout B;
    private int B0;
    private MBridgeClickCTAView C;
    private int C0;
    private com.mbridge.msdk.video.signal.factory.b D;
    private AcquireRewardPopViewParameters D0;
    private int E;
    private MBAcquireRewardPopView E0;
    private int F;
    private boolean F0;
    private RelativeLayout G;
    private RelativeLayout G0;
    private boolean H;
    private CollapsibleWebView H0;
    private boolean I;
    private RelativeLayout I0;
    private boolean J;
    private boolean J0;
    private String K;
    private int K0;
    private int L;
    private boolean L0;
    private int M;
    private boolean M0;
    private int N;
    private w N0;
    private MBAlertDialog O;
    private boolean O0;
    private com.mbridge.msdk.widget.dialog.b P;
    private Runnable P0;
    private String Q;
    private final Runnable Q0;
    private double R;
    private double S;
    private boolean T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean a0;
    private boolean b0;
    private boolean c0;
    private boolean d0;
    private boolean e0;
    private int f0;
    private boolean g0;
    private int h0;
    private AdSession i0;
    private MediaEvents j0;
    private String k0;
    private int l0;
    private TextView m;
    private int m0;
    public List<CampaignEx> mCampOrderViewData;
    public int mCampaignSize;
    public int mCurrPlayNum;
    public int mCurrentPlayProgressTime;
    public int mMuteSwitch;
    public PlayerView mPlayerView;
    public SoundImageView mSoundImageView;
    private View n;
    private int n0;
    private RelativeLayout o;
    private boolean o0;
    private ImageView p;
    private boolean p0;
    private ProgressBar q;
    private boolean q0;
    private FeedBackButton r;
    private boolean r0;
    private ImageView s;
    private boolean s0;
    private MBridgeSegmentsProgressBar t;
    private boolean t0;
    public TextView tvFlag;
    private com.mbridge.msdk.video.module.listener.a u;
    private boolean u0;
    private u v;
    private boolean v0;
    private boolean w;
    private boolean w0;
    private com.mbridge.msdk.video.dynview.listener.a x;
    private AlphaAnimation x0;
    private com.mbridge.msdk.video.dynview.listener.f y;
    private MBridgeBaitClickView y0;
    private int z;
    private int z0;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MBridgeVideoView.this.d0 = true;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f9859a;
        final /* synthetic */ int b;
        final /* synthetic */ int c;
        final /* synthetic */ int d;

        public b(int i, int i2, int i3, int i4) {
            this.f9859a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeVideoView.this.o != null) {
                MBridgeVideoView.this.o.setVisibility(0);
                CampaignEx campaignEx = MBridgeVideoView.this.b;
                if (campaignEx != null && campaignEx.getAdSpaceT() != 2) {
                    MBridgeVideoView.this.o.setPadding(this.f9859a, this.b, this.c, this.d);
                    MBridgeVideoView.this.o.startAnimation(MBridgeVideoView.this.x0);
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c implements com.mbridge.msdk.foundation.same.image.c {

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Bitmap f9861a;

            /* compiled from: Proguard */
            /* renamed from: com.mbridge.msdk.video.module.MBridgeVideoView$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public class RunnableC0184a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Bitmap f9862a;

                public RunnableC0184a(Bitmap bitmap) {
                    this.f9862a = bitmap;
                }

                @Override // java.lang.Runnable
                public void run() {
                    MBridgeVideoView.this.p.setVisibility(0);
                    MBridgeVideoView.this.p.setImageBitmap(this.f9862a);
                }
            }

            public a(Bitmap bitmap) {
                this.f9861a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    MBridgeVideoView.this.p.post(new RunnableC0184a(y.a(this.f9861a, 10)));
                } catch (Exception e) {
                    o0.b(MBridgeBaseView.TAG, e.getMessage());
                }
            }
        }

        public c() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            o0.b(MBridgeBaseView.TAG, str);
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (bitmap != null) {
                try {
                    if (!bitmap.isRecycled() && MBridgeVideoView.this.p != null) {
                        com.mbridge.msdk.foundation.same.threadpool.a.a().execute(new a(bitmap));
                    }
                } catch (Throwable th) {
                    o0.b(MBridgeBaseView.TAG, th.getMessage());
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class d implements CollapsibleWebView.e {
        public d() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void a(View view, Map<String, String> map) {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void b(View view, Map<String, String> map) {
            String str;
            String str2;
            str = "";
            if (map == null) {
                str2 = "";
            } else {
                String str3 = map.get("url");
                str = str3 != null ? str3 : "";
                str2 = map.get("description");
            }
            a(str, str2);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void a(View view, String str) {
            JSONObject jSONObject;
            if (MBridgeVideoView.this.J0) {
                return;
            }
            MBridgeVideoView.this.J0 = true;
            if (MBridgeVideoView.this.G0 != null && MBridgeVideoView.this.G0.getVisibility() != 0) {
                MBridgeVideoView.this.G0.setVisibility(0);
            }
            Context context = MBridgeVideoView.this.getContext();
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.click.a.a(context, mBridgeVideoView.b, mBridgeVideoView.getUnitId(), MBridgeVideoView.this.b.getNoticeUrl(), true, false, com.mbridge.msdk.click.retry.a.o);
            com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d().getApplicationContext(), MBridgeVideoView.this.b);
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("result", 1);
            if (MBridgeVideoView.this.u != null) {
                try {
                    jSONObject = new JSONObject();
                    try {
                        jSONObject.put(com.mbridge.msdk.foundation.same.a.j, MBridgeVideoView.this.a(0));
                    } catch (JSONException e) {
                        e = e;
                        e.printStackTrace();
                        MBridgeVideoView.this.u.a(131, jSONObject);
                        MBridgeVideoView.this.b.setClickType(1);
                        MBridgeVideoView.this.b.setClickTempSource(1);
                        MBridgeVideoView.this.b.setTriggerClickSource(2);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000149", MBridgeVideoView.this.b);
                        eVar.a("type", 9);
                        ArrayList arrayList = new ArrayList();
                        arrayList.add("web_view");
                        eVar.a("click_path", arrayList.toString());
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", MBridgeVideoView.this.b, eVar);
                        eVar.a("url", str);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_render", MBridgeVideoView.this.b, eVar);
                    }
                } catch (JSONException e2) {
                    e = e2;
                    jSONObject = null;
                }
                MBridgeVideoView.this.u.a(131, jSONObject);
                MBridgeVideoView.this.b.setClickType(1);
                MBridgeVideoView.this.b.setClickTempSource(1);
                MBridgeVideoView.this.b.setTriggerClickSource(2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000149", MBridgeVideoView.this.b);
                eVar.a("type", 9);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add("web_view");
                eVar.a("click_path", arrayList2.toString());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", MBridgeVideoView.this.b, eVar);
            }
            eVar.a("url", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_render", MBridgeVideoView.this.b, eVar);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CollapsibleWebView.e
        public void b(View view, String str) {
            a(str, "timeout");
        }

        private void a(String str, String str2) {
            if (MBridgeVideoView.this.J0) {
                return;
            }
            MBridgeVideoView.this.J0 = true;
            if (str == null) {
                str = "";
            }
            if (MBridgeVideoView.this.G0 != null && MBridgeVideoView.this.G0.getVisibility() == 0) {
                MBridgeVideoView.this.G0.setVisibility(8);
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("result", 2);
            eVar.a("url", str);
            eVar.a("reason", str2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_render", MBridgeVideoView.this.b, eVar);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class f implements CommonWebView.h {
        public f() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView.h
        public void a() {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(0);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NotificationCompat.CATEGORY_STATUS, 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_zoom", MBridgeVideoView.this.b, eVar);
            }
            if (MBridgeVideoView.this.H0 != null) {
                MBridgeVideoView.this.H0.setCustomizedToolBarMarginWidthPixel(0, 0, 0, 0);
            }
            MBridgeVideoView.this.p();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class g implements CommonWebView.h {
        public g() {
        }

        @Override // com.mbridge.msdk.mbsignalcommon.commonwebview.CommonWebView.h
        public void a() {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(8);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NotificationCompat.CATEGORY_STATUS, 2);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_webview_zoom", MBridgeVideoView.this.b, eVar);
            }
            if (MBridgeVideoView.this.H0 != null) {
                MBridgeVideoView.this.H0.setCustomizedToolBarMarginWidthPixel(0, MBridgeVideoView.this.K0, 0, 0);
            }
            MBridgeVideoView.this.o();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class h implements View.OnClickListener {
        public h() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            if (MBridgeVideoView.this.I0 != null) {
                MBridgeVideoView.this.I0.setVisibility(0);
            }
            if (MBridgeVideoView.this.G0 != null) {
                MBridgeVideoView.this.G0.setVisibility(8);
            }
            if (!MBridgeVideoView.this.s0) {
                MBridgeVideoView.this.p();
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class i implements View.OnClickListener {
        public i() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            if (mBridgeVideoView.notifyListener != null) {
                mBridgeVideoView.b.setTriggerClickSource(2);
                MBridgeVideoView.this.b("bait_click_clicked");
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class j implements AcquireRewardPopViewBehaviourListener {
        public j() {
        }

        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
        public void onOutOfContentClicked(float f, float f2) {
            if (MBridgeVideoView.this.u != null) {
                MBridgeVideoView.this.u.a(105, "");
            }
        }

        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
        public void onReceivedFail(String str) {
            MBridgeVideoView.this.J = false;
            if (com.mbridge.msdk.util.b.b()) {
                MBridgeVideoView.this.setCover(false);
            }
            MBridgeVideoView.this.p();
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView.b, mBridgeVideoView.Q, MBridgeVideoView.this.z0, 2, str);
        }

        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
        public void onReceivedSuccess(int i) {
            MBridgeVideoView.this.J = false;
            if (com.mbridge.msdk.util.b.b()) {
                MBridgeVideoView.this.setCover(false);
            }
            int videoCompleteTime = MBridgeVideoView.this.getVideoCompleteTime() - i;
            MBridgeVideoView.this.b.setVideoCompleteTime(videoCompleteTime);
            MBridgeVideoView.this.p();
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
            if (aVar != null) {
                aVar.a(130, Integer.valueOf(videoCompleteTime));
            }
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView.b, mBridgeVideoView.Q, MBridgeVideoView.this.z0, 1, "");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class k implements Runnable {
        public k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeVideoView.this.B != null) {
                MBridgeVideoView.this.B.setVisibility(8);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class m implements Runnable {
        public m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MBridgeVideoView.this.A0 <= 0) {
                MBridgeVideoView.this.showRewardPopView();
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                mBridgeVideoView.removeCallbacks(mBridgeVideoView.Q0);
                return;
            }
            MBridgeVideoView.W(MBridgeVideoView.this);
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            mBridgeVideoView2.postDelayed(mBridgeVideoView2.Q0, 1000L);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class n implements PlayerView.OnPlayerViewVisibleListener {
        public n() {
        }

        @Override // com.mbridge.msdk.playercommon.PlayerView.OnPlayerViewVisibleListener
        public void playerViewVisibleCallback() {
            if (!MBridgeVideoView.this.w) {
                MBridgeVideoView.this.w = true;
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                if (mBridgeVideoView.notifyListener != null && mBridgeVideoView.v != null) {
                    MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                    mBridgeVideoView2.notifyListener.a(20, mBridgeVideoView2.v);
                }
            }
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
            if (MBridgeVideoView.this.notifyListener != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.j, MBridgeVideoView.this.mPlayerView.buildH5JsonObject(0));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                MBridgeVideoView.this.b.setClickTempSource(1);
                MBridgeVideoView.this.b.setTriggerClickSource(2);
                MBridgeVideoView.this.notifyListener.a(1, jSONObject);
            }
            if (MBridgeVideoView.this.j0 != null) {
                try {
                    MBridgeVideoView.this.j0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InteractionType.CLICK);
                    o0.a("omsdk", "play video view:  click");
                } catch (Exception e2) {
                    o0.b("omsdk", e2.getMessage());
                }
            }
            MBridgeVideoView.this.setCTALayoutVisibleOrGone();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class p implements View.OnClickListener {
        public p() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            MBridgeVideoView.this.b.setClickTempSource(1);
            MBridgeVideoView.this.b.setTriggerClickSource(2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_player_click", MBridgeVideoView.this.b);
            if (MBridgeVideoView.this.notifyListener != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.j, MBridgeVideoView.this.mPlayerView.buildH5JsonObject(0));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                MBridgeVideoView.this.notifyListener.a(1, jSONObject);
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class q implements View.OnClickListener {
        public q() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            Integer num = 2;
            PlayerView playerView = MBridgeVideoView.this.mPlayerView;
            if (playerView != null) {
                eVar.a("mute_state", Boolean.valueOf(playerView.isSilent()));
                if (MBridgeVideoView.this.mPlayerView.isSilent()) {
                    num = 1;
                }
            }
            if (num.intValue() == 1) {
                MBridgeVideoView.this.mMuteSwitch = 2;
            } else {
                MBridgeVideoView.this.mMuteSwitch = 1;
            }
            com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
            if (aVar != null) {
                aVar.a(5, num);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_sound_click", MBridgeVideoView.this.b, eVar);
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class r implements View.OnClickListener {
        public r() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000148", MBridgeVideoView.this.b, eVar);
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    e.printStackTrace();
                }
            }
            if (MBridgeVideoView.this.g0) {
                MBridgeVideoView.this.v0 = true;
                CampaignEx campaignEx = MBridgeVideoView.this.b;
                if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && MBridgeVideoView.this.b.getRewardTemplateMode().f() == 5002010 && MBridgeVideoView.this.s0) {
                    MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                    if (mBridgeVideoView.notifyListener != null) {
                        mBridgeVideoView.L0 = true;
                        MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                        mBridgeVideoView2.notifyListener.a(2, mBridgeVideoView2.c(mBridgeVideoView2.s0));
                    }
                } else if (MBridgeVideoView.this.r0) {
                    MBridgeVideoView.this.y();
                } else {
                    com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
                    if (aVar != null) {
                        aVar.a(123, "");
                    }
                }
            } else {
                CampaignEx campaignEx2 = MBridgeVideoView.this.b;
                if (campaignEx2 == null || campaignEx2.getRewardTemplateMode() == null || MBridgeVideoView.this.b.getRewardTemplateMode().f() != 5002010 || !MBridgeVideoView.this.s0) {
                    MBridgeVideoView.this.y();
                } else {
                    MBridgeVideoView mBridgeVideoView3 = MBridgeVideoView.this;
                    if (mBridgeVideoView3.notifyListener != null) {
                        mBridgeVideoView3.L0 = true;
                        MBridgeVideoView mBridgeVideoView4 = MBridgeVideoView.this;
                        mBridgeVideoView4.notifyListener.a(2, mBridgeVideoView4.c(mBridgeVideoView4.s0));
                    }
                }
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class t implements com.mbridge.msdk.foundation.feedback.a {
        public t() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
            MBridgeVideoView.this.o();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            MBridgeVideoView.this.p();
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            MBridgeVideoView.this.p();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface u {
        void a();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class v {

        /* renamed from: a  reason: collision with root package name */
        public int f9880a;
        public int b;
        public boolean c;

        public String toString() {
            return "ProgressData{curPlayPosition=" + this.f9880a + ", allDuration=" + this.b + AbstractJsonLexerKt.END_OBJ;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class w extends DefaultVideoPlayerStatusListener {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeVideoView f9881a;
        private int b;
        private int c;
        private int d;
        private boolean e;
        private MediaEvents f;
        private boolean k;
        private String l;
        private CampaignEx m;
        private int n;
        private int o;
        private v g = new v();
        private boolean h = false;
        private boolean i = false;
        private boolean j = false;
        private boolean p = false;

        public w(MBridgeVideoView mBridgeVideoView) {
            this.f9881a = mBridgeVideoView;
            if (mBridgeVideoView != null) {
                this.l = mBridgeVideoView.getUnitId();
                this.m = mBridgeVideoView.getCampaign();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0091 A[Catch: Exception -> 0x005f, TryCatch #0 {Exception -> 0x005f, blocks: (B:15:0x0027, B:17:0x002f, B:20:0x003a, B:24:0x0085, B:26:0x0091, B:28:0x009b, B:23:0x0061), top: B:34:0x0027 }] */
        /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void c() {
            /*
                r4 = this;
                java.lang.String r0 = "DefaultVideoPlayerStatusListener"
                com.mbridge.msdk.foundation.tools.q0 r1 = com.mbridge.msdk.foundation.tools.q0.a()
                java.lang.String r2 = "h_c_r_w_p_c"
                r3 = 0
                boolean r1 = r1.a(r2, r3)
                if (r1 != 0) goto L11
                goto Lac
            L11:
                int r1 = r4.n
                r2 = 100
                if (r1 == r2) goto Lac
                int r2 = r4.o
                if (r2 != 0) goto Lac
                boolean r2 = r4.p
                if (r2 != 0) goto Lac
                if (r1 == 0) goto Lac
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r4.m
                if (r1 != 0) goto L27
                goto Lac
            L27:
                int r1 = r1.getAdType()     // Catch: java.lang.Exception -> L5f
                r2 = 94
                if (r1 == r2) goto L61
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r4.m     // Catch: java.lang.Exception -> L5f
                int r1 = r1.getAdType()     // Catch: java.lang.Exception -> L5f
                r2 = 287(0x11f, float:4.02E-43)
                if (r1 != r2) goto L3a
                goto L61
            L3a:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5f
                r1.<init>()     // Catch: java.lang.Exception -> L5f
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.m     // Catch: java.lang.Exception -> L5f
                java.lang.String r2 = r2.getId()     // Catch: java.lang.Exception -> L5f
                r1.append(r2)     // Catch: java.lang.Exception -> L5f
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.m     // Catch: java.lang.Exception -> L5f
                java.lang.String r2 = r2.getVideoUrlEncode()     // Catch: java.lang.Exception -> L5f
                r1.append(r2)     // Catch: java.lang.Exception -> L5f
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.m     // Catch: java.lang.Exception -> L5f
                java.lang.String r2 = r2.getBidToken()     // Catch: java.lang.Exception -> L5f
                r1.append(r2)     // Catch: java.lang.Exception -> L5f
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L5f
                goto L85
            L5f:
                r1 = move-exception
                goto La1
            L61:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5f
                r1.<init>()     // Catch: java.lang.Exception -> L5f
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.m     // Catch: java.lang.Exception -> L5f
                java.lang.String r2 = r2.getRequestId()     // Catch: java.lang.Exception -> L5f
                r1.append(r2)     // Catch: java.lang.Exception -> L5f
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.m     // Catch: java.lang.Exception -> L5f
                java.lang.String r2 = r2.getId()     // Catch: java.lang.Exception -> L5f
                r1.append(r2)     // Catch: java.lang.Exception -> L5f
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r4.m     // Catch: java.lang.Exception -> L5f
                java.lang.String r2 = r2.getVideoUrlEncode()     // Catch: java.lang.Exception -> L5f
                r1.append(r2)     // Catch: java.lang.Exception -> L5f
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L5f
            L85:
                com.mbridge.msdk.videocommon.download.b r2 = com.mbridge.msdk.videocommon.download.b.getInstance()     // Catch: java.lang.Exception -> L5f
                java.lang.String r3 = r4.l     // Catch: java.lang.Exception -> L5f
                com.mbridge.msdk.videocommon.download.a r1 = r2.a(r3, r1)     // Catch: java.lang.Exception -> L5f
                if (r1 == 0) goto Lac
                r1.v()     // Catch: java.lang.Exception -> L5f
                r1 = 1
                r4.p = r1     // Catch: java.lang.Exception -> L5f
                boolean r1 = com.mbridge.msdk.MBridgeConstans.DEBUG     // Catch: java.lang.Exception -> L5f
                if (r1 == 0) goto Lac
                java.lang.String r1 = "CDRate is : 0  and start download when player create!"
                com.mbridge.msdk.foundation.tools.o0.b(r0, r1)     // Catch: java.lang.Exception -> L5f
                return
            La1:
                boolean r2 = com.mbridge.msdk.MBridgeConstans.DEBUG
                if (r2 == 0) goto Lac
                java.lang.String r1 = r1.getMessage()
                com.mbridge.msdk.foundation.tools.o0.b(r0, r1)
            Lac:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.MBridgeVideoView.w.c():void");
        }

        private void e() {
            MBridgeVideoView mBridgeVideoView = this.f9881a;
            if (mBridgeVideoView == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) mBridgeVideoView.m.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = -2;
                layoutParams.height = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 25.0f);
                this.f9881a.m.setLayoutParams(layoutParams);
            }
            int a2 = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
            this.f9881a.m.setPadding(a2, 0, a2, 0);
        }

        public int b() {
            return this.d;
        }

        public void d() {
            this.f9881a = null;
            boolean unused = MBridgeVideoView.W0 = false;
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingEnd() {
            try {
                super.onBufferingEnd();
                MediaEvents mediaEvents = this.f;
                if (mediaEvents != null) {
                    mediaEvents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    o0.a("omsdk", "play:  videoEvents.bufferFinish()");
                }
                this.f9881a.notifyListener.a(14, "");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingStart(String str) {
            try {
                super.onBufferingStart(str);
                if (this.f != null) {
                    o0.a("omsdk", "play:  videoEvents.bufferStart()");
                    this.f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingTimeOut(String str) {
            try {
                this.f9881a.notifyListener.a(13, "");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayCompleted() {
            MBridgeVideoView mBridgeVideoView;
            super.onPlayCompleted();
            this.f9881a.s0 = true;
            CampaignEx campaignEx = this.m;
            if (campaignEx != null) {
                if (this.k && campaignEx.getRewardTemplateMode() != null && this.m.getRewardTemplateMode().f() == 5002010) {
                    this.f9881a.m.setText("0");
                } else {
                    this.f9881a.m.setText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
                }
                this.m.setVideoPlayProgress(100);
                if (this.m.getAdSpaceT() == 2) {
                    this.f9881a.n.setVisibility(4);
                    if (this.f9881a.r != null) {
                        this.f9881a.r.setClickable(false);
                    }
                    SoundImageView soundImageView = this.f9881a.mSoundImageView;
                    if (soundImageView != null) {
                        soundImageView.setClickable(false);
                    }
                }
            } else {
                this.f9881a.m.setText("0");
            }
            MediaEvents mediaEvents = this.f;
            if (mediaEvents != null) {
                mediaEvents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                o0.a("omsdk", "play:  videoEvents.complete()");
            }
            this.f9881a.mPlayerView.setClickable(false);
            String c = this.f9881a.c(true);
            CampaignEx campaignEx2 = this.m;
            if (campaignEx2 != null && campaignEx2.getRewardTemplateMode() != null && this.m.getRewardTemplateMode().f() == 5002010) {
                this.f9881a.x();
            }
            CampaignEx campaignEx3 = this.m;
            if (campaignEx3 != null && campaignEx3.getDynamicTempCode() == 5 && (mBridgeVideoView = this.f9881a) != null && mBridgeVideoView.x != null) {
                MBridgeVideoView mBridgeVideoView2 = this.f9881a;
                if (mBridgeVideoView2.mCampaignSize > mBridgeVideoView2.mCurrPlayNum) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("position", Integer.valueOf(this.f9881a.mCurrPlayNum));
                    int i = this.f9881a.mMuteSwitch;
                    if (i != 0) {
                        hashMap.put(CampaignEx.JSON_NATIVE_VIDEO_MUTE, Integer.valueOf(i));
                    }
                    this.f9881a.x.a(hashMap);
                    return;
                }
            }
            MBridgeVideoView mBridgeVideoView3 = this.f9881a;
            if (mBridgeVideoView3 != null) {
                mBridgeVideoView3.notifyListener.a(121, "");
                this.f9881a.notifyListener.a(11, c);
            }
            int i2 = this.c;
            this.b = i2;
            this.f9881a.mCurrentPlayProgressTime = i2;
            boolean unused = MBridgeVideoView.W0 = true;
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayError(String str) {
            o0.b("DefaultVideoPlayerStatusListener", "errorStr" + str);
            super.onPlayError(str);
            MBridgeVideoView mBridgeVideoView = this.f9881a;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.notifyListener.a(12, str);
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayProgress(int i, int i2) {
            CampaignEx campaignEx;
            int i3;
            super.onPlayProgress(i, i2);
            if (MBridgeVideoView.X0 == 0) {
                long unused = MBridgeVideoView.X0 = System.currentTimeMillis();
            }
            if (!this.f9881a.M0 && this.f9881a.y != null) {
                this.f9881a.M0 = true;
                this.f9881a.y.a();
            }
            if (this.f9881a.e) {
                CampaignEx campaignEx2 = this.m;
                if (campaignEx2 != null) {
                    i3 = campaignEx2.getVideoCompleteTime();
                    if (i3 <= 0) {
                        i3 = i2;
                    }
                    com.mbridge.msdk.foundation.feedback.b b = com.mbridge.msdk.foundation.feedback.b.b();
                    b.b(this.m.getCampaignUnitId() + "_1", i);
                } else {
                    i3 = 0;
                }
                CampaignEx campaignEx3 = this.m;
                if (campaignEx3 != null && campaignEx3.isDynamicView() && this.m.getDynamicTempCode() == 5) {
                    try {
                        b(i3, this.f9881a.z, i);
                    } catch (Exception e) {
                        o0.b("DefaultVideoPlayerStatusListener", e.getMessage());
                    }
                } else {
                    a(i3, i2, i);
                    this.g.f9880a = i;
                }
            }
            this.c = i2;
            v vVar = this.g;
            vVar.b = i2;
            vVar.c = this.f9881a.u0;
            this.b = i;
            if (this.f9881a.s != null) {
                ImageView imageView = this.f9881a.s;
                imageView.setTag("" + this.b);
            }
            MBridgeVideoView mBridgeVideoView = this.f9881a;
            mBridgeVideoView.mCurrentPlayProgressTime = i;
            mBridgeVideoView.notifyListener.a(15, this.g);
            MediaEvents mediaEvents = this.f;
            if (mediaEvents != null) {
                int i4 = (i * 100) / i2;
                int i5 = ((i + 1) * 100) / i2;
                if (i4 <= 25 && 25 < i5 && !this.h) {
                    this.h = true;
                    mediaEvents.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                    o0.a("omsdk", "play:  videoEvents.firstQuartile()");
                } else if (i4 <= 50 && 50 < i5 && !this.i) {
                    this.i = true;
                    mediaEvents.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    o0.a("omsdk", "play:  videoEvents.midpoint()");
                } else if (i4 <= 75 && 75 < i5 && !this.j) {
                    this.j = true;
                    mediaEvents.Wwwwwwwwwwwwwwwwwwww();
                    o0.a("omsdk", "play:  videoEvents.thirdQuartile()");
                }
            }
            if (this.f9881a.g0 && !this.f9881a.o0 && this.f9881a.l0 == com.mbridge.msdk.foundation.same.a.I) {
                this.f9881a.y();
            }
            try {
                MBridgeVideoView mBridgeVideoView2 = this.f9881a;
                if (mBridgeVideoView2 != null && mBridgeVideoView2.t != null) {
                    int i6 = (i * 100) / i2;
                    this.f9881a.t.setProgress(i6, this.f9881a.mCurrPlayNum - 1);
                    this.m.setVideoPlayProgress(i6);
                }
                MBridgeVideoView mBridgeVideoView3 = this.f9881a;
                if (mBridgeVideoView3 != null) {
                    int i7 = mBridgeVideoView3.F != -5 ? this.f9881a.F : this.f9881a.E;
                    if (i7 != -1 && i == i7 && (campaignEx = this.f9881a.b) != null && campaignEx.isDynamicView()) {
                        this.f9881a.setCTALayoutVisibleOrGone();
                    }
                }
            } catch (Throwable th) {
                o0.b("DefaultVideoPlayerStatusListener", th.getMessage());
            }
            a(i, i2);
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlaySetDataSourceError(String str) {
            super.onPlaySetDataSourceError(str);
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayStarted(int i) {
            float f;
            PlayerView playerView;
            CampaignEx campaignEx;
            super.onPlayStarted(i);
            MBridgeVideoView mBridgeVideoView = this.f9881a;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.g();
            }
            if (!this.e) {
                MBridgeVideoView mBridgeVideoView2 = this.f9881a;
                if (mBridgeVideoView2 != null) {
                    mBridgeVideoView2.A = true;
                    this.f9881a.notifyListener.a(10, this.g);
                }
                this.e = true;
            }
            this.d = i;
            CampaignEx campaignEx2 = this.m;
            if (campaignEx2 != null) {
                int videoCompleteTime = campaignEx2.getVideoCompleteTime();
                if (videoCompleteTime <= 0) {
                    videoCompleteTime = i;
                }
                if (this.m.isDynamicView()) {
                    b(videoCompleteTime);
                } else {
                    a(videoCompleteTime);
                }
            }
            MBridgeVideoView mBridgeVideoView3 = this.f9881a;
            if (mBridgeVideoView3 != null && mBridgeVideoView3.q != null) {
                this.f9881a.q.setMax(i);
            }
            MBridgeVideoView mBridgeVideoView4 = this.f9881a;
            if (mBridgeVideoView4 != null && mBridgeVideoView4.o != null && (campaignEx = this.m) != null && campaignEx.getAdSpaceT() == 2) {
                this.f9881a.o.setVisibility(0);
            }
            MBridgeVideoView mBridgeVideoView5 = this.f9881a;
            if (mBridgeVideoView5 != null && mBridgeVideoView5.m != null && this.f9881a.m.getVisibility() == 0) {
                this.f9881a.f();
            }
            boolean unused = MBridgeVideoView.W0 = false;
            if (this.f9881a != null && this.m.isDynamicView()) {
                if (this.f9881a.F != -5) {
                    if (this.f9881a.F == 0) {
                        this.f9881a.setCTALayoutVisibleOrGone();
                    }
                } else if (this.f9881a.E == 0) {
                    this.f9881a.setCTALayoutVisibleOrGone();
                }
            }
            MBridgeVideoView mBridgeVideoView6 = this.f9881a;
            if (mBridgeVideoView6 != null) {
                mBridgeVideoView6.showMoreOfferInPlayTemplate();
                this.f9881a.showBaitClickView();
                this.f9881a.q();
            }
            if (this.f != null) {
                try {
                    MBridgeVideoView mBridgeVideoView7 = this.f9881a;
                    if (mBridgeVideoView7 != null && (playerView = mBridgeVideoView7.mPlayerView) != null) {
                        f = playerView.getVolume();
                    } else {
                        f = 0.0f;
                    }
                    this.f.Wwwwwwwwwwwwwwwwwwwww(i, f);
                    o0.a("omsdk", "play video view:  videoEvents.start");
                } catch (Exception e) {
                    o0.b("omsdk", e.getMessage());
                }
            }
        }

        public void a(CampaignEx campaignEx) {
            this.m = campaignEx;
        }

        public void b(int i, int i2) {
            this.n = i;
            this.o = i2;
            c();
        }

        public void a(boolean z) {
            this.k = z;
        }

        public void a(String str) {
            this.l = str;
        }

        private void b(int i) {
            MBridgeVideoView mBridgeVideoView = this.f9881a;
            if (mBridgeVideoView == null || mBridgeVideoView.m == null) {
                return;
            }
            String str = "mbridge_reward_video_time_count_num_bg";
            if (this.m.getDynamicTempCode() == 5) {
                MBridgeVideoView mBridgeVideoView2 = this.f9881a;
                if (mBridgeVideoView2.mCurrPlayNum > 1 && i <= 0) {
                    mBridgeVideoView2.m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
                    e();
                    return;
                }
            }
            if (i > 0) {
                if (!this.k || this.m.getDynamicTempCode() == 5) {
                    e();
                }
            } else {
                str = "mbridge_reward_shape_progress";
            }
            CampaignEx campaignEx = this.m;
            if (campaignEx != null && campaignEx.getUseSkipTime() == 1 && this.k) {
                e();
            }
            this.f9881a.m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "drawable"));
        }

        public int a() {
            return this.b;
        }

        private void a(int i) {
            if (i > 0) {
                this.f9881a.m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
                int a2 = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
                layoutParams.addRule(1, g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_native_endcard_feed_btn", "id"));
                layoutParams.setMargins(a2, 0, 0, 0);
                this.f9881a.m.setPadding(a2, 0, a2, 0);
                this.f9881a.m.setLayoutParams(layoutParams);
                return;
            }
            this.f9881a.m.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_shape_progress", "drawable"));
        }

        private void a(int i, int i2) {
            int i3;
            String str;
            int i4 = this.n;
            if (i4 == 100 || this.p || i4 == 0) {
                return;
            }
            if (this.o > i4) {
                this.o = i4 / 2;
            }
            int i5 = this.o;
            if (i5 < 0 || i < (i3 = (i2 * i5) / 100)) {
                return;
            }
            if (this.m.getAdType() != 94 && this.m.getAdType() != 287) {
                str = this.m.getId() + this.m.getVideoUrlEncode() + this.m.getBidToken();
            } else {
                str = this.m.getRequestId() + this.m.getId() + this.m.getVideoUrlEncode();
            }
            com.mbridge.msdk.videocommon.download.a a2 = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.l, str);
            if (a2 != null) {
                a2.v();
                this.p = true;
                o0.b("DefaultVideoPlayerStatusListener", "CDRate is : " + i3 + " and start download !");
            }
        }

        private void b(int i, int i2, int i3) {
            int i4;
            StringBuilder sb;
            MBridgeVideoView mBridgeVideoView = this.f9881a;
            if (mBridgeVideoView == null) {
                return;
            }
            String str = (String) mBridgeVideoView.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
            String str2 = (String) this.f9881a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", TypedValues.Custom.S_STRING));
            if (i >= 0) {
                if (this.m.getUseSkipTime() == 1) {
                    int min = Math.min(this.f9881a.L, i);
                    if (min >= i || min <= 0) {
                        i4 = i - i3;
                        if (this.k) {
                            if (i4 <= 0) {
                                this.f9881a.m.setVisibility(4);
                            } else {
                                str2 = (String) this.f9881a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING));
                            }
                        }
                    } else {
                        i4 = min - i3;
                        if (i4 <= 0) {
                            i4 = i - i3;
                            if (this.k) {
                                this.f9881a.m.setVisibility(4);
                            }
                        } else {
                            str2 = (String) this.f9881a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING));
                        }
                    }
                } else {
                    i4 = i - i3;
                }
                if (i4 > 0) {
                    str = i4 + str2;
                }
            } else {
                i4 = i2 - i3;
                if (i4 > 0) {
                    if (i <= 0) {
                        sb = new StringBuilder();
                        sb.append(i4);
                        sb.append("");
                    } else {
                        sb = new StringBuilder();
                        sb.append(i4);
                        sb.append(str2);
                    }
                    str = sb.toString();
                } else if (i <= 0) {
                    str = "0";
                }
            }
            this.g.f9880a = i3;
            this.f9881a.m.setText(str);
            if (this.f9881a.q != null && this.f9881a.q.getVisibility() == 0) {
                this.f9881a.q.setProgress(i3);
            }
            if (i4 >= this.f9881a.C0 || this.f9881a.E0 == null || !this.f9881a.J) {
                return;
            }
            this.f9881a.E0.onTimeLessThanReduce(i4);
        }

        private void a(int i, int i2, int i3) {
            StringBuilder sb;
            String str;
            String sb2;
            String str2;
            int i4 = 0;
            MBridgeVideoView mBridgeVideoView = this.f9881a;
            if (mBridgeVideoView == null) {
                return;
            }
            if (this.k) {
                str2 = String.format("%s", Integer.valueOf(i2 - i3));
            } else {
                if (i > i2) {
                    i = i2;
                }
                int i5 = i <= 0 ? i2 - i3 : i - i3;
                if (i5 <= 0) {
                    sb2 = i <= 0 ? "0" : (String) mBridgeVideoView.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
                } else {
                    if (i <= 0) {
                        sb = new StringBuilder();
                        sb.append(i5);
                        str = "";
                    } else {
                        sb = new StringBuilder();
                        sb.append(i5);
                        str = (String) this.f9881a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", TypedValues.Custom.S_STRING));
                    }
                    sb.append(str);
                    sb2 = sb.toString();
                    i4 = i5;
                }
                if (i4 < this.f9881a.C0 && this.f9881a.E0 != null && this.f9881a.J) {
                    this.f9881a.E0.onTimeLessThanReduce(i4);
                }
                str2 = sb2;
            }
            CampaignEx campaignEx = this.m;
            if (campaignEx != null && campaignEx.getUseSkipTime() == 1) {
                int min = Math.min(this.f9881a.L, i2);
                if (min >= i || min < 0) {
                    int i6 = i - i3;
                    if (this.k) {
                        if (i6 > 0) {
                            str2 = i6 + ((String) this.f9881a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING)));
                        } else if (i6 == 0) {
                            this.f9881a.m.setVisibility(4);
                        }
                    }
                } else {
                    int i7 = min - i3;
                    if (i7 > 0) {
                        str2 = i7 + ((String) this.f9881a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING)));
                    } else if (this.k && i7 == 0) {
                        this.f9881a.m.setVisibility(4);
                    }
                }
            }
            this.f9881a.m.setText(str2);
            if (this.f9881a.q == null || this.f9881a.q.getVisibility() != 0) {
                return;
            }
            this.f9881a.q.setProgress(i3);
        }
    }

    public MBridgeVideoView(Context context) {
        super(context);
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.mMuteSwitch = 0;
        this.w = false;
        this.z = 0;
        this.H = false;
        this.I = false;
        this.J = false;
        this.Q = "";
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.a0 = false;
        this.b0 = false;
        this.c0 = false;
        this.d0 = false;
        this.e0 = false;
        this.g0 = false;
        this.h0 = 2;
        this.o0 = false;
        this.p0 = false;
        this.q0 = false;
        this.r0 = true;
        this.s0 = false;
        this.t0 = false;
        this.u0 = false;
        this.v0 = false;
        this.w0 = false;
        this.z0 = 0;
        this.A0 = 5;
        this.B0 = 5;
        this.C0 = 5;
        this.F0 = false;
        this.J0 = false;
        this.K0 = 0;
        this.L0 = false;
        this.M0 = false;
        this.N0 = new w(this);
        this.O0 = false;
        this.P0 = new k();
        this.Q0 = new m();
    }

    public static /* synthetic */ int W(MBridgeVideoView mBridgeVideoView) {
        int i2 = mBridgeVideoView.A0;
        mBridgeVideoView.A0 = i2 - 1;
        return i2;
    }

    private int getCDRate() {
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).g();
    }

    private int getVideoAllDuration() {
        int i2 = 0;
        try {
            w wVar = this.N0;
            if (wVar != null) {
                i2 = wVar.b();
            }
            if (i2 == 0) {
                return this.b.getVideoLength();
            }
            return i2;
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage());
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getVideoCompleteTime() {
        int i2 = 0;
        try {
            int videoAllDuration = getVideoAllDuration();
            CampaignEx campaignEx = this.b;
            if (campaignEx != null) {
                i2 = campaignEx.getVideoCompleteTime();
                if (this.b.getDynamicTempCode() != 5 && i2 > videoAllDuration) {
                    i2 = videoAllDuration;
                }
                if (i2 > 0) {
                    return i2;
                }
            }
            return videoAllDuration;
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage());
            return i2;
        }
    }

    private void setBlurBackgroundImage(String str) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, new c());
    }

    private void setPlayerViewRadius(int i2) {
        if (i2 > 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(t0.a(getContext(), i2));
            gradientDrawable.setColor(-1);
            gradientDrawable.setStroke(1, 0);
            setBackground(gradientDrawable);
            this.mPlayerView.setBackground(gradientDrawable);
            setClipToOutline(true);
            this.mPlayerView.setClipToOutline(true);
        }
    }

    private void t() {
    }

    public void addCTAView() {
        if (this.B == null) {
            return;
        }
        if (this.C == null) {
            MBridgeClickCTAView mBridgeClickCTAView = new MBridgeClickCTAView(getContext());
            this.C = mBridgeClickCTAView;
            mBridgeClickCTAView.setCampaign(this.b);
            this.C.setUnitId(this.Q);
            com.mbridge.msdk.video.module.listener.a aVar = this.u;
            if (aVar != null) {
                this.C.setNotifyListener(new com.mbridge.msdk.video.module.listener.impl.i(aVar));
            }
            this.C.preLoadData(this.D);
        }
        this.B.addView(this.C);
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void alertWebViewShowed() {
        this.I = true;
        setShowingAlertViewCover(true);
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void closeVideoOperate(int i2, int i3) {
        if (i2 == 1) {
            this.v0 = true;
            if (getVisibility() == 0) {
                y();
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 1);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000148", this.b, eVar);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.b);
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    th.printStackTrace();
                }
            }
        }
        if (i3 == 1) {
            gonePlayingCloseView();
        } else if (i3 == 2) {
            if (!this.u0 || getVisibility() != 0) {
                x();
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void defaultShow() {
        super.defaultShow();
        this.T = true;
        showVideoLocation(0, 0, t0.g(this.f9822a), t0.f(this.f9822a), 0, 0, 0, 0, 0);
        videoOperate(1);
        if (this.L == 0) {
            closeVideoOperate(-1, 2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void dismissAllAlert() {
        MBAlertDialog mBAlertDialog = this.O;
        if (mBAlertDialog != null) {
            mBAlertDialog.dismiss();
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null) {
            aVar.a(125, "");
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewHeight() {
        return V0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewLeft() {
        return T0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewRadius() {
        return R0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewTop() {
        return S0;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public int getBorderViewWidth() {
        return U0;
    }

    public int getBufferTimeout() {
        return this.M;
    }

    public int getCloseAlert() {
        return this.N;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public String getCurrentProgress() {
        int i2;
        try {
            int a2 = this.N0.a();
            CampaignEx campaignEx = this.b;
            if (campaignEx != null) {
                i2 = campaignEx.getVideoLength();
            } else {
                i2 = 0;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("progress", a(a2, i2));
            jSONObject.put("time", a2);
            jSONObject.put(TypedValues.TransitionType.S_DURATION, i2 + "");
            return jSONObject.toString();
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage(), th);
            return JsonUtils.EMPTY_JSON;
        }
    }

    public int getMute() {
        return this.h0;
    }

    public String getPlayURL() {
        return this.K;
    }

    public String getUnitId() {
        return this.Q;
    }

    public int getVideoSkipTime() {
        return this.L;
    }

    public void gonePlayingCloseView() {
        if (this.e && this.n.getVisibility() != 8) {
            this.n.setVisibility(8);
            this.a0 = false;
        }
        i();
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void hideAlertView(int i2) {
        if (this.I) {
            this.I = false;
            this.o0 = true;
            setShowingAlertViewCover(false);
            com.mbridge.msdk.foundation.same.report.j.a(this.f9822a, this.b, com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).c(), this.Q, 1, i2, 1);
            if (i2 == 0) {
                p();
                if (this.g0) {
                    int i3 = this.l0;
                    if (i3 == com.mbridge.msdk.foundation.same.a.I || i3 == com.mbridge.msdk.foundation.same.a.H) {
                        this.p0 = true;
                        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
                        if (aVar != null) {
                            aVar.a(124, "");
                        }
                        CampaignEx campaignEx = this.b;
                        if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.b.getRewardTemplateMode().f() == 5002010) {
                            x();
                            return;
                        }
                        this.u0 = true;
                        gonePlayingCloseView();
                        return;
                    }
                    return;
                }
                return;
            }
            this.q0 = true;
            boolean z = this.g0;
            if (z && this.l0 == com.mbridge.msdk.foundation.same.a.I) {
                p();
            } else if (z && this.l0 == com.mbridge.msdk.foundation.same.a.H) {
                com.mbridge.msdk.video.module.listener.a aVar2 = this.notifyListener;
                if (aVar2 != null) {
                    this.L0 = true;
                    aVar2.a(2, c(this.s0));
                }
            } else {
                com.mbridge.msdk.video.module.listener.a aVar3 = this.notifyListener;
                if (aVar3 != null) {
                    this.L0 = true;
                    aVar3.a(2, "");
                }
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public boolean isH5Canvas() {
        if (getLayoutParams().height >= t0.f(this.f9822a.getApplicationContext())) {
            return false;
        }
        return true;
    }

    public boolean isInstDialogShowing() {
        return this.F0;
    }

    public boolean isMiniCardShowing() {
        return this.W;
    }

    public boolean isRewardPopViewShowing() {
        return this.J;
    }

    public boolean isShowingAlertView() {
        return this.I;
    }

    public boolean isShowingTransparent() {
        return this.e0;
    }

    public boolean isfront() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return false;
        }
        int indexOfChild = viewGroup.indexOfChild(this);
        int childCount = viewGroup.getChildCount();
        int i2 = indexOfChild + 1;
        boolean z = false;
        while (i2 <= childCount - 1) {
            if (viewGroup.getChildAt(i2).getVisibility() == 0 && this.W) {
                return false;
            }
            i2++;
            z = true;
        }
        return z;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void notifyCloseBtn(int i2) {
        if (i2 == 0) {
            this.b0 = true;
            this.d0 = false;
        } else if (i2 == 1) {
            this.c0 = true;
        }
    }

    public void notifyVideoClose() {
        this.L0 = true;
        this.notifyListener.a(2, "");
    }

    public void onActivityPause() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onPause();
            }
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    public void onActivityResume() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onResume();
            }
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    public void onActivityStop() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onStop();
            }
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    public void onBackPress() {
        boolean z;
        if (!this.W && !this.I && !this.p0) {
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.b.getRewardTemplateMode().f() == 5002010 && (z = this.s0)) {
                com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
                if (aVar != null) {
                    this.L0 = true;
                    aVar.a(2, c(z));
                }
            } else if (this.a0) {
                y();
            } else {
                boolean z2 = this.b0;
                if (z2 && this.c0) {
                    y();
                } else if (!z2 && this.d0) {
                    y();
                }
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        CampaignEx campaignEx = this.b;
        if ((campaignEx == null || !campaignEx.isDynamicView()) && this.e && this.T) {
            u();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            if (this.P0 != null) {
                getHandler().removeCallbacks(this.P0);
            }
            if (this.z0 != 0) {
                removeCallbacks(this.Q0);
            }
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.D = bVar;
        if (this.e) {
            if (!TextUtils.isEmpty(this.K) && this.b != null) {
                AdSession adSession = this.i0;
                if (adSession != null) {
                    adSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.mPlayerView);
                    SoundImageView soundImageView = this.mSoundImageView;
                    if (soundImageView != null) {
                        this.i0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(soundImageView, FriendlyObstructionPurpose.OTHER, null);
                    }
                    this.i0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.m, FriendlyObstructionPurpose.OTHER, null);
                    this.i0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.n, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
                }
                k();
                this.mPlayerView.initBufferIngParam(this.M);
                this.mPlayerView.initVFPData(this.K, this.b.getVideoUrlEncode(), this.N0);
                soundOperate(this.h0, -1, null);
            }
        } else {
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            if (aVar != null) {
                aVar.a(12, "MBridgeVideoView initSuccess false");
            }
        }
        W0 = false;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void progressBarOperate(int i2) {
        ProgressBar progressBar;
        if (this.e) {
            if (i2 == 1) {
                ProgressBar progressBar2 = this.q;
                if (progressBar2 != null) {
                    progressBar2.setVisibility(8);
                }
            } else if (i2 == 2 && (progressBar = this.q) != null) {
                progressBar.setVisibility(0);
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void progressOperate(int i2, int i3) {
        int i4;
        if (this.e) {
            o0.c(MBridgeBaseView.TAG, "progressOperate progress:" + i2);
            CampaignEx campaignEx = this.b;
            if (campaignEx != null) {
                i4 = campaignEx.getVideoLength();
            } else {
                i4 = 0;
            }
            if (i2 > 0 && i2 <= i4 && this.mPlayerView != null) {
                o0.c(MBridgeBaseView.TAG, "progressOperate progress:" + i2);
                this.mPlayerView.seekTo(i2 * 1000);
            }
            if (i3 == 1) {
                this.m.setVisibility(8);
            } else if (i3 == 2) {
                this.m.setVisibility(0);
            }
            if (this.m.getVisibility() == 0) {
                f();
            }
        }
    }

    public void releasePlayer() {
        try {
            PlayerView playerView = this.mPlayerView;
            if (playerView != null && !this.V) {
                playerView.release();
                if (!TextUtils.isEmpty(this.K)) {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    long j2 = X0;
                    if (j2 != 0) {
                        j2 = System.currentTimeMillis() - X0;
                    }
                    eVar.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(j2));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.b, eVar);
                }
            }
            w wVar = this.N0;
            if (wVar != null) {
                wVar.d();
            }
            if (this.u != null) {
                this.u = null;
            }
        } catch (Exception e2) {
            o0.b(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    public void setAdSession(AdSession adSession) {
        this.i0 = adSession;
    }

    public void setBufferTimeout(int i2) {
        this.M = i2;
    }

    public void setCTALayoutVisibleOrGone() {
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && this.B != null) {
            if (campaignEx.getRewardTemplateMode() == null || this.b.getRewardTemplateMode().f() != 902) {
                int i2 = this.F;
                if (i2 != -5) {
                    if (i2 != -3) {
                        if (this.C == null) {
                            addCTAView();
                        }
                        if (this.F == -1) {
                            if (this.B.getVisibility() != 0) {
                                this.B.setVisibility(0);
                                postDelayed(this.P0, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                            } else {
                                this.B.setVisibility(8);
                                getHandler().removeCallbacks(this.P0);
                            }
                        }
                        if (this.F >= 0) {
                            this.B.setVisibility(0);
                        }
                    }
                } else if (this.E >= -1) {
                    if (this.C == null) {
                        addCTAView();
                    }
                    int i3 = this.E;
                    if (i3 >= 0) {
                        this.B.setVisibility(0);
                    } else if (i3 == -1) {
                        if (this.B.getVisibility() != 0) {
                            this.B.setVisibility(0);
                            postDelayed(this.P0, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                            return;
                        }
                        this.B.setVisibility(8);
                        getHandler().removeCallbacks(this.P0);
                    }
                }
            }
        }
    }

    public void setCamPlayOrderCallback(com.mbridge.msdk.video.dynview.listener.a aVar, List<CampaignEx> list, int i2, int i3) {
        MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar;
        this.x = aVar;
        this.mCampaignSize = list.size();
        this.mCurrPlayNum = i2;
        this.z = i3;
        this.mCampOrderViewData = list;
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && campaignEx.getDynamicTempCode() == 5) {
            MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar2 = this.t;
            if (mBridgeSegmentsProgressBar2 != null && this.mCampOrderViewData != null) {
                if (this.mCampaignSize > 1) {
                    mBridgeSegmentsProgressBar2.setVisibility(0);
                    this.t.init(this.mCampaignSize, 2);
                    for (int i4 = 0; i4 < this.mCampOrderViewData.size(); i4++) {
                        int videoPlayProgress = this.mCampOrderViewData.get(i4).getVideoPlayProgress();
                        if (videoPlayProgress > 0) {
                            this.t.setProgress(videoPlayProgress, i4);
                        }
                        if (this.mCampOrderViewData.get(i4).isRewardPopViewShowed) {
                            this.H = true;
                        }
                    }
                    return;
                }
                CampaignEx campaignEx2 = this.b;
                if (campaignEx2 != null && campaignEx2.getProgressBarShow() == 1) {
                    MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar3 = this.t;
                    if (mBridgeSegmentsProgressBar3 != null) {
                        mBridgeSegmentsProgressBar3.init(1, 3);
                        this.t.setVisibility(0);
                        return;
                    }
                    return;
                }
                this.t.setVisibility(8);
                return;
            }
            return;
        }
        CampaignEx campaignEx3 = this.b;
        if (campaignEx3 != null && campaignEx3.getProgressBarShow() == 1 && (mBridgeSegmentsProgressBar = this.t) != null) {
            mBridgeSegmentsProgressBar.init(1, 3);
            this.t.setVisibility(0);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void setCampaign(CampaignEx campaignEx) {
        super.setCampaign(campaignEx);
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(campaignEx);
            this.N0.b(a(campaignEx), getCDRate());
        }
    }

    public void setCloseAlert(int i2) {
        this.N = i2;
    }

    public void setContainerViewOnNotifyListener(com.mbridge.msdk.video.module.listener.a aVar) {
        this.u = aVar;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setCover(boolean z) {
        if (this.e) {
            this.mPlayerView.setIsCovered(z);
        }
    }

    public void setDialogRole(int i2) {
        boolean z = true;
        if (i2 != 1) {
            z = false;
        }
        this.r0 = z;
        o0.b(MBridgeBaseView.TAG, i2 + " " + this.r0);
    }

    public void setIPlayVideoViewLayoutCallBack(com.mbridge.msdk.video.dynview.listener.f fVar) {
        this.y = fVar;
    }

    public void setIVRewardEnable(int i2, int i3, int i4) {
        this.l0 = i2;
        this.m0 = i3;
        this.n0 = i4;
    }

    public void setInstDialogState(boolean z) {
        PlayerView playerView;
        this.F0 = z;
        if (com.mbridge.msdk.util.b.a() && (playerView = this.mPlayerView) != null) {
            playerView.setIsCovered(z);
        }
    }

    public void setIsIV(boolean z) {
        this.g0 = z;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(z);
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setMiniEndCardState(boolean z) {
        this.W = z;
    }

    public void setNotchPadding(int i2, int i3, int i4, int i5) {
        RelativeLayout relativeLayout;
        MBridgeVideoView mBridgeVideoView;
        try {
            o0.b(MBridgeBaseView.TAG, "NOTCH VideoView " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5)));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
            int i6 = layoutParams.leftMargin;
            int i7 = layoutParams.rightMargin;
            int i8 = layoutParams.topMargin;
            int i9 = layoutParams.bottomMargin;
            this.K0 = i4;
            if (Math.max(Math.max(i6, i7), Math.max(i8, i9)) > Math.max(Math.max(i2, i3), Math.max(i4, i5)) || (relativeLayout = this.o) == null) {
                mBridgeVideoView = this;
            } else {
                mBridgeVideoView = this;
                try {
                    relativeLayout.postDelayed(new b(i2, i4, i3, i5), 200L);
                } catch (Exception e2) {
                    e = e2;
                    o0.b(MBridgeBaseView.TAG, e.getMessage());
                    return;
                }
            }
            if (mBridgeVideoView.m.getVisibility() == 0) {
                f();
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    public void setPlayURL(String str) {
        this.K = str;
    }

    public void setPlayerViewAttachListener(u uVar) {
        this.v = uVar;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setScaleFitXY(int i2) {
        this.f0 = i2;
    }

    public void setShowingAlertViewCover(boolean z) {
        MBAcquireRewardPopView mBAcquireRewardPopView;
        if (z && (mBAcquireRewardPopView = this.E0) != null && this.J && this.I) {
            mBAcquireRewardPopView.onPause();
        }
        this.mPlayerView.setIsCovered(z);
    }

    public void setShowingTransparent(boolean z) {
        this.e0 = z;
    }

    public void setSoundState(int i2) {
        this.h0 = i2;
    }

    public void setUnitId(String str) {
        this.Q = str;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.a(str);
        }
    }

    public void setVideoEvents(MediaEvents mediaEvents) {
        this.j0 = mediaEvents;
        w wVar = this.N0;
        if (wVar != null) {
            wVar.f = mediaEvents;
        }
        PlayerView playerView = this.mPlayerView;
        if (playerView != null) {
            playerView.setVideoEvents(mediaEvents);
        }
    }

    public void setVideoLayout(CampaignEx campaignEx) {
        if (campaignEx != null) {
            this.b = campaignEx;
            this.h = campaignEx.isDynamicView();
        }
        if (this.h) {
            a(this, campaignEx);
        } else {
            h();
        }
    }

    public void setVideoSkipTime(int i2) {
        this.L = i2;
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void setVisible(int i2) {
        setVisibility(i2);
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void showAlertView() {
        CampaignEx campaignEx;
        if (!this.W) {
            if (this.P == null) {
                this.P = new s();
            }
            if (this.O == null) {
                MBAlertDialog mBAlertDialog = new MBAlertDialog(getContext(), this.P);
                this.O = mBAlertDialog;
                AdSession adSession = this.i0;
                if (adSession != null) {
                    adSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(mBAlertDialog.getWindow().getDecorView(), FriendlyObstructionPurpose.NOT_VISIBLE, null);
                }
            }
            if (this.g0) {
                this.O.makeIVAlertView(this.l0, this.Q);
            } else {
                this.O.makeRVAlertView(this.Q);
            }
            PlayerView playerView = this.mPlayerView;
            if (playerView != null) {
                if (!playerView.isComplete() || ((campaignEx = this.b) != null && campaignEx.getRewardTemplateMode() != null && this.b.getRewardTemplateMode().f() == 5002010)) {
                    this.O.show();
                    this.o0 = true;
                    this.I = true;
                    setShowingAlertViewCover(true);
                    String c2 = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).c();
                    this.k0 = c2;
                    com.mbridge.msdk.foundation.same.report.j.a(this.f9822a, this.b, c2, this.Q, 1, 1);
                }
            }
        }
    }

    public void showBaitClickView() {
        int parseInt;
        MBridgeBaitClickView mBridgeBaitClickView;
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && campaignEx.isDynamicView() && this.b.getRewardTemplateMode() != null) {
            String e2 = this.b.getRewardTemplateMode().e();
            if (!TextUtils.isEmpty(e2)) {
                try {
                    String a2 = z0.a(e2, "bait_click");
                    if (!TextUtils.isEmpty(a2) && (parseInt = Integer.parseInt(a2)) != 0 && (mBridgeBaitClickView = this.y0) != null) {
                        mBridgeBaitClickView.setVisibility(0);
                        this.y0.init(parseInt);
                        this.y0.startAnimation();
                        this.y0.setOnClickListener(new i());
                    }
                } catch (Exception e3) {
                    o0.b(MBridgeBaseView.TAG, e3.getMessage());
                }
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void showIVRewardAlertView(String str) {
        this.notifyListener.a(8, "");
    }

    public void showMoreOfferInPlayTemplate() {
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && this.G != null && campaignEx.isDynamicView() && this.b.getRewardTemplateMode() != null) {
            String e2 = this.b.getRewardTemplateMode().e();
            if (!TextUtils.isEmpty(e2)) {
                try {
                    String a2 = z0.a(e2, "mof");
                    if (!TextUtils.isEmpty(a2) && Integer.parseInt(a2) == 1) {
                        com.mbridge.msdk.video.dynview.moffer.a.a().a(this.b, this, new com.mbridge.msdk.video.module.listener.impl.i(this.u), 1);
                    }
                } catch (Exception e3) {
                    o0.b(MBridgeBaseView.TAG, e3.getMessage());
                }
            }
        }
    }

    public void showRewardPopView() {
        AcquireRewardPopViewParameters acquireRewardPopViewParameters;
        MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
        if (mBAcquireRewardPopView != null && (acquireRewardPopViewParameters = this.D0) != null) {
            try {
                mBAcquireRewardPopView.init(acquireRewardPopViewParameters);
                this.E0.setVisibility(0);
                setCover(true);
                o();
                this.J = true;
                CampaignEx campaignEx = this.b;
                if (campaignEx != null) {
                    campaignEx.isRewardPopViewShowed = true;
                }
            } catch (Exception e2) {
                o0.b(MBridgeBaseView.TAG, e2.getMessage());
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void showVideoLocation(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        float f2;
        if (this.e) {
            this.o.setPadding(0, 0, 0, 0);
            setVisibility(0);
            if (this.o.getVisibility() != 0) {
                this.o.setVisibility(0);
            }
            if (this.m.getVisibility() == 0) {
                f();
            }
            if (b(i4, i5) && !this.T) {
                S0 = i7;
                T0 = i8;
                U0 = i9 + 4;
                V0 = i10 + 4;
                float f3 = i4 / i5;
                try {
                    f2 = (float) (this.R / this.S);
                } catch (Throwable th) {
                    o0.b(MBridgeBaseView.TAG, th.getMessage(), th);
                    f2 = 0.0f;
                }
                if (i6 > 0) {
                    R0 = i6;
                    setPlayerViewRadius(i6);
                }
                if (Math.abs(f3 - f2) > 0.1f && this.f0 != 1) {
                    u();
                    videoOperate(1);
                    return;
                }
                u();
                if (this.e0) {
                    setLayoutCenter(i4, i5);
                    if (W0) {
                        this.notifyListener.a(114, "");
                        return;
                    } else {
                        this.notifyListener.a(116, "");
                        return;
                    }
                }
                setLayoutParam(i3, i2, i4, i5);
                return;
            }
            u();
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void soundOperate(int i2, int i3) {
        soundOperate(i2, i3, "2");
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void videoOperate(int i2) {
        o0.a(MBridgeBaseView.TAG, "VideoView videoOperate:" + i2);
        if (this.e) {
            if (i2 == 1) {
                if (getVisibility() == 0 && isfront()) {
                    o0.a(MBridgeBaseView.TAG, "VideoView videoOperate:play");
                    RelativeLayout relativeLayout = this.I0;
                    if ((relativeLayout == null || relativeLayout.getVisibility() == 0) && !this.I && !com.mbridge.msdk.foundation.feedback.b.f) {
                        if (com.mbridge.msdk.util.b.a()) {
                            if (!this.W && !this.F0) {
                                p();
                                return;
                            }
                            return;
                        }
                        p();
                    }
                }
            } else if (i2 == 2) {
                if (getVisibility() == 0 && isfront()) {
                    o0.a(MBridgeBaseView.TAG, "VideoView videoOperate:pause");
                    o();
                }
            } else if (i2 == 3) {
                if (!this.V) {
                    this.mPlayerView.stop();
                    CampaignEx campaignEx = this.b;
                    if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || this.b.getRewardTemplateMode().f() != 5002010) {
                        this.mPlayerView.release();
                        this.V = true;
                        if (!TextUtils.isEmpty(this.K)) {
                            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                            long j2 = X0;
                            if (j2 != 0) {
                                j2 = System.currentTimeMillis() - X0;
                            }
                            eVar.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(j2));
                            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.b, eVar);
                        }
                    }
                }
            } else if (i2 == 5) {
                if (com.mbridge.msdk.util.b.a()) {
                    this.F0 = true;
                    if (!this.V) {
                        o();
                    }
                }
            } else if (i2 == 4) {
                if (com.mbridge.msdk.util.b.a()) {
                    this.F0 = false;
                    if (!this.V && !isMiniCardShowing()) {
                        p();
                    }
                }
            } else if (i2 == 6 && !this.V) {
                this.mPlayerView.release();
                this.V = true;
                if (!TextUtils.isEmpty(this.K)) {
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    long j3 = X0;
                    if (j3 != 0) {
                        j3 = System.currentTimeMillis() - X0;
                    }
                    eVar2.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(j3));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.b, eVar2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        w wVar;
        RelativeLayout relativeLayout;
        try {
            CampaignEx campaignEx = this.b;
            if (campaignEx == null || campaignEx.getRewardTemplateMode() == null || this.b.getRewardTemplateMode().f() != 5002010 || (relativeLayout = this.I0) == null || relativeLayout.getVisibility() == 0) {
                if (!this.U) {
                    boolean playVideo = this.mPlayerView.playVideo();
                    CampaignEx campaignEx2 = this.b;
                    if (campaignEx2 != null && campaignEx2.getPlayable_ads_without_video() != 2 && !playVideo && (wVar = this.N0) != null) {
                        wVar.onPlayError("play video failed");
                    }
                    this.U = true;
                    return;
                }
                MBAcquireRewardPopView mBAcquireRewardPopView = this.E0;
                if (mBAcquireRewardPopView != null && this.J) {
                    mBAcquireRewardPopView.onResume();
                }
                if (this.J) {
                    return;
                }
                if (com.mbridge.msdk.util.b.a()) {
                    if (this.F0 || this.I) {
                        return;
                    }
                    this.mPlayerView.setIsCovered(false);
                    w();
                    return;
                }
                w();
            }
        } catch (Exception e2) {
            o0.b(MBridgeBaseView.TAG, e2.getMessage(), e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        String e2;
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.H) {
            return;
        }
        if (!TextUtils.isEmpty(this.b.getMof_template_url())) {
            e2 = this.b.getMof_template_url();
        } else if (this.b.getRewardTemplateMode() == null) {
            return;
        } else {
            e2 = this.b.getRewardTemplateMode().e();
        }
        if (TextUtils.isEmpty(e2)) {
            return;
        }
        try {
            String a2 = z0.a(e2, "guideShow");
            String a3 = z0.a(e2, "guideDelay");
            String a4 = z0.a(e2, "guideTime");
            String a5 = z0.a(e2, "guideRewardTime");
            if (!TextUtils.isEmpty(a2)) {
                this.z0 = Integer.parseInt(a2);
            }
            if (!TextUtils.isEmpty(a3)) {
                int parseInt = Integer.parseInt(a3);
                this.A0 = parseInt;
                if (parseInt > 10 || parseInt < 3) {
                    this.A0 = 5;
                }
            }
            if (!TextUtils.isEmpty(a4)) {
                int parseInt2 = Integer.parseInt(a4);
                this.B0 = parseInt2;
                if (parseInt2 > 10 || parseInt2 < 3) {
                    this.B0 = 5;
                }
            }
            if (!TextUtils.isEmpty(a5)) {
                int parseInt3 = Integer.parseInt(a5);
                this.C0 = parseInt3;
                if (parseInt3 > 10 || parseInt3 < 5) {
                    this.C0 = 5;
                }
            }
            int i2 = this.z0;
            if (i2 > 0 && i2 <= 2) {
                int videoCompleteTime = getVideoCompleteTime();
                if (videoCompleteTime == 0 || videoCompleteTime > this.A0) {
                    int i3 = videoCompleteTime - this.A0;
                    if (i3 >= 0 && this.C0 > i3) {
                        this.C0 = i3;
                    }
                    int videoAllDuration = getVideoAllDuration();
                    if (this.C0 >= videoAllDuration) {
                        this.C0 = videoAllDuration - this.A0;
                    }
                    if (this.A0 >= videoAllDuration) {
                        return;
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    arrayList.add(this.b.getAppName());
                    String str = "US";
                    com.mbridge.msdk.setting.g b2 = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
                    if (b2 != null) {
                        str = b2.k();
                    }
                    this.D0 = new AcquireRewardPopViewParameters.Builder("", this.Q, this.z0, str).setAutoDismissTime(this.B0).setReduceTime(this.C0).setBehaviourListener(new j()).setRightAnswerList(arrayList).build();
                    postDelayed(this.Q0, 1000L);
                }
            }
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    private void r() {
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || campaignEx.getAdSpaceT() != 2 || this.tvFlag == null) {
            return;
        }
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
            this.tvFlag.setText("广告");
        } else {
            this.tvFlag.setText("AD");
        }
    }

    private void s() {
        int i2;
        int i3;
        float g2 = t0.g(this.f9822a);
        float f2 = t0.f(this.f9822a);
        double d2 = this.R;
        if (d2 > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            double d3 = this.S;
            if (d3 > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && g2 > 0.0f && f2 > 0.0f) {
                double d4 = d2 / d3;
                double d5 = g2 / f2;
                o0.c(MBridgeBaseView.TAG, "videoWHDivide:" + d4 + "  screenWHDivide:" + d5);
                double a2 = t0.a(Double.valueOf(d4));
                double a3 = t0.a(Double.valueOf(d5));
                o0.c(MBridgeBaseView.TAG, "videoWHDivideFinal:" + a2 + "  screenWHDivideFinal:" + a3);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPlayerView.getLayoutParams();
                if (a2 > a3) {
                    layoutParams.width = -1;
                    layoutParams.height = (int) ((g2 * this.S) / this.R);
                    layoutParams.gravity = 17;
                } else if (a2 < a3) {
                    layoutParams.width = (int) (f2 * d4);
                    layoutParams.height = -1;
                    layoutParams.gravity = 17;
                } else {
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                }
                try {
                    CampaignEx campaignEx = this.b;
                    if (campaignEx != null && campaignEx.isDynamicView()) {
                        if (this.b.getRewardTemplateMode() != null) {
                            i3 = this.b.getRewardTemplateMode().f();
                            i2 = this.b.getRewardTemplateMode().b();
                        } else {
                            i2 = this.f9822a.getResources().getConfiguration().orientation;
                            i3 = TypedValues.Custom.TYPE_BOOLEAN;
                        }
                        if (i3 == 102 || i3 == 202) {
                            if (i2 == 1) {
                                layoutParams.width = -1;
                                layoutParams.gravity = 17;
                                layoutParams.height = (int) (this.S / (this.R / g2));
                            } else {
                                layoutParams.height = -1;
                                layoutParams.gravity = 17;
                                layoutParams.width = (int) (f2 * d4);
                            }
                        }
                        if (i3 == 202 && !TextUtils.isEmpty(this.b.getImageUrl())) {
                            setBlurBackgroundImage(this.b.getImageUrl());
                        }
                        if (i3 == 302 || i3 == 802 || i3 == 5002010) {
                            double d6 = this.R;
                            double d7 = this.S;
                            if (d6 / d7 > 1.0d) {
                                layoutParams.width = -1;
                                layoutParams.height = (int) ((d7 * g2) / d6);
                            } else {
                                int a4 = t0.a(getContext(), 220.0f);
                                layoutParams.width = (int) ((this.R * a4) / this.S);
                                layoutParams.height = a4;
                            }
                        }
                    }
                } catch (Throwable th) {
                    o0.b(MBridgeBaseView.TAG, th.getMessage());
                }
                this.mPlayerView.setLayoutParams(layoutParams);
                setMatchParent();
                return;
            }
        }
        v();
    }

    private void u() {
        CampaignEx campaignEx = this.b;
        if (campaignEx == null) {
            return;
        }
        if (campaignEx.getAdSpaceT() == 2) {
            t();
        } else {
            s();
        }
    }

    private void v() {
        try {
            setLayoutParam(0, 0, -1, -1);
            if (isLandscape() || !this.e) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mPlayerView.getLayoutParams();
            int g2 = t0.g(this.f9822a);
            layoutParams.width = -1;
            layoutParams.height = (g2 * 9) / 16;
            layoutParams.gravity = 17;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void w() {
        if (this.s0) {
            if (!this.t0) {
                this.mPlayerView.seekToEndFrame();
            }
            this.t0 = true;
        } else {
            this.mPlayerView.onResume();
        }
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || campaignEx.isRewardPopViewShowed) {
            return;
        }
        post(this.Q0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (!this.e || this.n.getVisibility() == 0) {
            return;
        }
        if (this.h) {
            if (this.A) {
                this.n.setVisibility(0);
            }
        } else {
            this.n.setVisibility(0);
        }
        this.a0 = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        int i2;
        com.mbridge.msdk.video.module.listener.a aVar;
        boolean z;
        try {
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && this.b.getRewardTemplateMode().f() == 5002010 && this.L0 && !(z = this.s0)) {
                com.mbridge.msdk.video.module.listener.a aVar2 = this.notifyListener;
                if (aVar2 != null) {
                    this.L0 = true;
                    aVar2.a(2, c(z));
                }
            } else if (this.g0 && ((i2 = this.l0) == com.mbridge.msdk.foundation.same.a.H || i2 == com.mbridge.msdk.foundation.same.a.I)) {
                if (this.o0) {
                    if (i2 != com.mbridge.msdk.foundation.same.a.I || (aVar = this.notifyListener) == null) {
                        return;
                    }
                    this.L0 = true;
                    aVar.a(2, c(this.s0));
                } else if (i2 == com.mbridge.msdk.foundation.same.a.I && this.v0) {
                    com.mbridge.msdk.video.module.listener.a aVar3 = this.notifyListener;
                    if (aVar3 != null) {
                        this.L0 = true;
                        aVar3.a(2, c(this.s0));
                    }
                } else if (this.r0) {
                    int curPosition = this.mPlayerView.getCurPosition() / 1000;
                    int videoLength = (int) ((curPosition / (this.mPlayerView.getDuration() == 0 ? this.b.getVideoLength() : this.mPlayerView.getDuration())) * 100.0f);
                    if (this.l0 == com.mbridge.msdk.foundation.same.a.H) {
                        o();
                        int i3 = this.m0;
                        if (i3 == com.mbridge.msdk.foundation.same.a.J && videoLength >= this.n0) {
                            com.mbridge.msdk.video.module.listener.a aVar4 = this.notifyListener;
                            if (aVar4 != null) {
                                this.L0 = true;
                                aVar4.a(2, c(this.s0));
                                return;
                            }
                            return;
                        } else if (i3 == com.mbridge.msdk.foundation.same.a.K && curPosition >= this.n0) {
                            com.mbridge.msdk.video.module.listener.a aVar5 = this.notifyListener;
                            if (aVar5 != null) {
                                this.L0 = true;
                                aVar5.a(2, c(this.s0));
                                return;
                            }
                            return;
                        } else {
                            com.mbridge.msdk.video.module.listener.a aVar6 = this.notifyListener;
                            if (aVar6 != null) {
                                aVar6.a(8, "");
                            }
                        }
                    }
                    if (this.l0 == com.mbridge.msdk.foundation.same.a.I) {
                        int i4 = this.m0;
                        if (i4 == com.mbridge.msdk.foundation.same.a.J && videoLength >= this.n0) {
                            o();
                            com.mbridge.msdk.video.module.listener.a aVar7 = this.notifyListener;
                            if (aVar7 != null) {
                                aVar7.a(8, "");
                            }
                        } else if (i4 != com.mbridge.msdk.foundation.same.a.K || curPosition < this.n0) {
                        } else {
                            o();
                            com.mbridge.msdk.video.module.listener.a aVar8 = this.notifyListener;
                            if (aVar8 != null) {
                                aVar8.a(8, "");
                            }
                        }
                    }
                }
            } else {
                CampaignEx campaignEx2 = this.b;
                if (campaignEx2 != null && campaignEx2.getAdSpaceT() != 2) {
                    boolean m2 = m();
                    if (m2 && this.N == 1 && !this.e0) {
                        o();
                        com.mbridge.msdk.video.module.listener.a aVar9 = this.notifyListener;
                        if (aVar9 != null) {
                            aVar9.a(8, "");
                            return;
                        }
                        return;
                    } else if (this.notifyListener != null) {
                        this.L0 = true;
                        if (this.b.getAdType() == 94 && !m2) {
                            this.notifyListener.a(17, "");
                        }
                        this.notifyListener.a(2, c(!m2));
                        return;
                    } else {
                        return;
                    }
                }
                com.mbridge.msdk.video.module.listener.a aVar10 = this.notifyListener;
                if (aVar10 != null) {
                    this.L0 = true;
                    aVar10.a(2, "");
                }
            }
        } catch (Exception e2) {
            o0.b(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.j
    public void soundOperate(int i2, int i3, String str) {
        com.mbridge.msdk.video.module.listener.a aVar;
        SoundImageView soundImageView;
        if (this.e) {
            this.h0 = i2;
            if (i2 == 1) {
                this.D.getJSCommon().g(i2);
                SoundImageView soundImageView2 = this.mSoundImageView;
                if (soundImageView2 != null) {
                    soundImageView2.setSoundStatus(false);
                }
                this.mPlayerView.closeSound();
                try {
                    MediaEvents mediaEvents = this.j0;
                    if (mediaEvents != null) {
                        mediaEvents.Wwwwwwwwwwwwwwwwwww(0.0f);
                        o0.a("omsdk", "play video view:  mute");
                    }
                } catch (Exception e2) {
                    o0.a("OMSDK", e2.getMessage());
                }
            } else if (i2 == 2) {
                this.D.getJSCommon().g(i2);
                SoundImageView soundImageView3 = this.mSoundImageView;
                if (soundImageView3 != null) {
                    soundImageView3.setSoundStatus(true);
                }
                this.mPlayerView.openSound();
                try {
                    MediaEvents mediaEvents2 = this.j0;
                    if (mediaEvents2 != null) {
                        mediaEvents2.Wwwwwwwwwwwwwwwwwww(1.0f);
                        o0.a("omsdk", "play video view:  unmute");
                    }
                } catch (Exception e3) {
                    o0.a("OMSDK", e3.getMessage());
                }
            }
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                SoundImageView soundImageView4 = this.mSoundImageView;
                if (soundImageView4 != null) {
                    soundImageView4.setVisibility(0);
                }
            } else if (i3 == 1) {
                SoundImageView soundImageView5 = this.mSoundImageView;
                if (soundImageView5 != null) {
                    soundImageView5.setVisibility(8);
                }
            } else if (i3 == 2 && (soundImageView = this.mSoundImageView) != null) {
                soundImageView.setVisibility(0);
            }
        }
        if (str == null || !str.equals("2") || (aVar = this.notifyListener) == null) {
            return;
        }
        aVar.a(7, Integer.valueOf(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(boolean z) {
        if (this.g0) {
            try {
                JSONObject jSONObject = new JSONObject();
                if (!this.o0) {
                    jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.F);
                }
                if (this.q0) {
                    jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.D);
                }
                if (this.p0) {
                    jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.E);
                }
                jSONObject.put("complete_info", z ? 1 : 2);
                return jSONObject.toString();
            } catch (Exception unused) {
                o0.b(MBridgeBaseView.TAG, "getIVRewardStatusString ERROR");
                return "";
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        CampaignEx campaignEx = this.b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.Q);
            com.mbridge.msdk.foundation.feedback.b b2 = com.mbridge.msdk.foundation.feedback.b.b();
            b2.a(this.Q + "_1", this.b);
        }
        if (com.mbridge.msdk.foundation.feedback.b.b().a()) {
            if (this.r != null) {
                com.mbridge.msdk.foundation.feedback.b b3 = com.mbridge.msdk.foundation.feedback.b.b();
                b3.a(this.Q + "_1", this.r);
                return;
            }
            return;
        }
        FeedBackButton feedBackButton = this.r;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        CollapsibleWebView collapsibleWebView = this.H0;
        if (collapsibleWebView == null || this.b == null || !TextUtils.isEmpty(collapsibleWebView.getUrl())) {
            return;
        }
        this.H0.loadUrl(this.b.getClickURL());
        this.H0.setToolBarTitle(this.b.getAppName());
        com.mbridge.msdk.setting.g d2 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d2 == null) {
            d2 = com.mbridge.msdk.setting.h.b().a();
        }
        this.H0.setPageLoadTimtout((int) d2.o0());
        this.H0.setPageLoadListener(new d());
        this.H0.setWebViewClient(new e());
        this.H0.setCollapseListener(new f());
        this.H0.setExpandListener(new g());
        this.H0.setExitsClickListener(new h());
    }

    private void h() {
        int findLayout = findLayout("mbridge_reward_videoview_item");
        if (g0.a(findLayout)) {
            this.c.inflate(findLayout, this);
            n();
        }
        W0 = false;
        r();
    }

    private void i() {
        if (this.O0 || this.d0 || this.b0) {
            return;
        }
        this.O0 = true;
        int i2 = this.L;
        if (i2 < 0) {
            return;
        }
        if (i2 == 0) {
            this.d0 = true;
        } else {
            new Handler().postDelayed(new a(), this.L * 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.B == null) {
            return;
        }
        if (this.C == null) {
            addCTAView();
        }
        if (this.B.getVisibility() != 0) {
            this.B.setVisibility(0);
            postDelayed(this.P0, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
            return;
        }
        this.B.setVisibility(8);
        getHandler().removeCallbacks(this.P0);
    }

    private void k() {
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || !y0.b(campaignEx.getVideoResolution())) {
            return;
        }
        String videoResolution = this.b.getVideoResolution();
        o0.c(MBridgeBaseView.TAG, "MBridgeBaseView videoResolution:" + videoResolution);
        String[] split = videoResolution.split("x");
        if (split.length == 2) {
            if (t0.m(split[0]) > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                this.R = t0.m(split[0]);
            }
            if (t0.m(split[1]) > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                this.S = t0.m(split[1]);
            }
            o0.c(MBridgeBaseView.TAG, "MBridgeBaseView mVideoW:" + this.R + "  mVideoH:" + this.S);
        }
        if (this.R <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            this.R = 1280.0d;
        }
        if (this.S <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            this.S = 720.0d;
        }
    }

    private boolean l() {
        try {
            this.mPlayerView = (PlayerView) findViewById(filterFindViewId(this.w0, "mbridge_vfpv"));
            this.mSoundImageView = (SoundImageView) findViewById(filterFindViewId(this.w0, "mbridge_sound_switch"));
            this.m = (TextView) findViewById(filterFindViewId(this.w0, "mbridge_tv_count"));
            View findViewById = findViewById(filterFindViewId(this.w0, "mbridge_rl_playing_close"));
            this.n = findViewById;
            if (findViewById != null) {
                findViewById.setVisibility(4);
            }
            this.o = (RelativeLayout) findViewById(filterFindViewId(this.w0, "mbridge_top_control"));
            this.p = (ImageView) findViewById(filterFindViewId(this.w0, "mbridge_videoview_bg"));
            this.q = (ProgressBar) findViewById(filterFindViewId(this.w0, "mbridge_video_progress_bar"));
            this.r = (FeedBackButton) findViewById(filterFindViewId(this.w0, "mbridge_native_endcard_feed_btn"));
            this.s = (ImageView) findViewById(filterFindViewId(this.w0, "mbridge_iv_link"));
            this.G0 = (RelativeLayout) findViewById(filterFindViewId(this.w0, "mbridge_reward_scale_webview_layout"));
            this.I0 = (RelativeLayout) findViewById(filterFindViewId(this.w0, "mbridge_reward_header_layout"));
            if (this.G0 != null) {
                CollapsibleWebView collapsibleWebView = new CollapsibleWebView(getContext());
                this.H0 = collapsibleWebView;
                this.G0.addView(collapsibleWebView, new RelativeLayout.LayoutParams(-1, -1));
            }
            t0.a(1, this.s, this.b, this.f9822a, false, new t());
            this.t = (MBridgeSegmentsProgressBar) findViewById(filterFindViewId(this.w0, "mbridge_reward_segment_progressbar"));
            this.B = (FrameLayout) findViewById(filterFindViewId(this.w0, "mbridge_reward_cta_layout"));
            this.y0 = (MBridgeBaitClickView) findViewById(filterFindViewId(this.w0, "mbridge_animation_click_view"));
            this.G = (RelativeLayout) findViewById(filterFindViewId(this.w0, "mbridge_reward_moreoffer_layout"));
            this.E0 = (MBAcquireRewardPopView) findViewById(filterFindViewId(this.w0, "mbridge_reward_popview"));
            this.tvFlag = (TextView) findViewById(filterFindViewId(this.w0, "mbridge_tv_flag"));
            return isNotNULL(this.mPlayerView, this.mSoundImageView, this.m, this.n);
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage(), th);
            return false;
        }
    }

    private boolean m() {
        int videoCompleteTime = getVideoCompleteTime();
        int curPosition = (this.mPlayerView.getCurPosition() / 1000) + 1;
        if (this.b.getDynamicTempCode() != 5 || this.mCurrPlayNum <= 1) {
            if ((videoCompleteTime <= 0 || curPosition >= videoCompleteTime) && videoCompleteTime != 0) {
                return false;
            }
        } else if (videoCompleteTime == 0 || videoCompleteTime <= 0 || curPosition >= videoCompleteTime) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        PlayerView playerView;
        boolean l2 = l();
        this.e = l2;
        if (!l2) {
            o0.b(MBridgeBaseView.TAG, "MBridgeVideoView init fail");
        }
        if (q0.a().a("i_l_s_t_r_i", false) && (playerView = this.mPlayerView) != null) {
            playerView.setNotifyListener(new n());
        }
        d();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.x0 = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        boolean z;
        try {
            PlayerView playerView = this.mPlayerView;
            if (playerView != null) {
                playerView.onPause();
                CampaignEx campaignEx = this.b;
                if (campaignEx != null && !campaignEx.isRewardPopViewShowed) {
                    removeCallbacks(this.Q0);
                }
                if (com.mbridge.msdk.util.b.a()) {
                    PlayerView playerView2 = this.mPlayerView;
                    if (!this.F0 && !this.I && !this.J) {
                        z = false;
                        playerView2.setIsCovered(z);
                    }
                    z = true;
                    playerView2.setIsCovered(z);
                }
                CampaignEx campaignEx2 = this.b;
                if (campaignEx2 == null || campaignEx2.getNativeVideoTracking() == null || this.b.isHasReportAdTrackPause()) {
                    return;
                }
                this.b.setHasReportAdTrackPause(true);
                Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
                CampaignEx campaignEx3 = this.b;
                com.mbridge.msdk.click.a.a(d2, campaignEx3, this.Q, campaignEx3.getNativeVideoTracking().n(), false, false);
            }
        } catch (Throwable th) {
            o0.b(MBridgeBaseView.TAG, th.getMessage(), th);
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void d() {
        super.d();
        if (this.e) {
            if (this.h) {
                if (com.mbridge.msdk.video.dynview.util.a.b(this.b) == -1 || com.mbridge.msdk.video.dynview.util.a.b(this.b) == 100) {
                    this.mPlayerView.setOnClickListener(new o());
                }
            } else {
                this.mPlayerView.setOnClickListener(new p());
            }
            SoundImageView soundImageView = this.mSoundImageView;
            if (soundImageView != null) {
                soundImageView.setOnClickListener(new q());
            }
            this.n.setOnClickListener(new r());
        }
    }

    private boolean b(int i2, int i3) {
        return i2 > 0 && i3 > 0 && t0.g(this.f9822a) >= i2 && t0.f(this.f9822a) >= i3;
    }

    private void a(ViewGroup viewGroup, CampaignEx campaignEx) {
        com.mbridge.msdk.video.dynview.c b2 = new com.mbridge.msdk.video.dynview.wrapper.c().b(viewGroup, campaignEx);
        com.mbridge.msdk.video.dynview.b.a().a(b2, new l(viewGroup, b2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(java.lang.String r9) {
        /*
            r8 = this;
            com.mbridge.msdk.video.module.listener.a r0 = r8.u
            if (r0 == 0) goto L9c
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = r8.b
            if (r0 == 0) goto L56
            r1 = 1
            r0.setClickTempSource(r1)
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = r8.b     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx$c r0 = r0.getRewardTemplateMode()     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = ""
            if (r0 == 0) goto L29
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L2b
            r2.<init>()     // Catch: java.lang.Exception -> L2b
            int r0 = r0.f()     // Catch: java.lang.Exception -> L2b
            r2.append(r0)     // Catch: java.lang.Exception -> L2b
            r2.append(r1)     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = r2.toString()     // Catch: java.lang.Exception -> L2b
        L29:
            r7 = r1
            goto L2e
        L2b:
            r0 = move-exception
            r9 = r0
            goto L53
        L2e:
            android.content.Context r0 = r8.f9822a     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = r8.b     // Catch: java.lang.Exception -> L2b
            java.lang.String r2 = r1.getCampaignUnitId()     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = r8.b     // Catch: java.lang.Exception -> L2b
            boolean r3 = r1.isBidCampaign()     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = r8.b     // Catch: java.lang.Exception -> L2b
            java.lang.String r4 = r1.getRequestId()     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = r8.b     // Catch: java.lang.Exception -> L2b
            java.lang.String r5 = r1.getRequestIdNotice()     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = r8.b     // Catch: java.lang.Exception -> L2b
            java.lang.String r6 = r1.getId()     // Catch: java.lang.Exception -> L2b
            r1 = r9
            com.mbridge.msdk.foundation.same.report.j.a(r0, r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L2b
            goto L56
        L53:
            r9.printStackTrace()
        L56:
            org.json.JSONObject r9 = new org.json.JSONObject     // Catch: org.json.JSONException -> L68
            r9.<init>()     // Catch: org.json.JSONException -> L68
            java.lang.String r0 = com.mbridge.msdk.foundation.same.a.j     // Catch: org.json.JSONException -> L66
            r1 = 0
            org.json.JSONObject r1 = r8.a(r1)     // Catch: org.json.JSONException -> L66
            r9.put(r0, r1)     // Catch: org.json.JSONException -> L66
            goto L6e
        L66:
            r0 = move-exception
            goto L6b
        L68:
            r0 = move-exception
            r9 = r0
            r9 = 0
        L6b:
            r0.printStackTrace()
        L6e:
            com.mbridge.msdk.video.module.listener.a r0 = r8.u
            r1 = 105(0x69, float:1.47E-43)
            r0.a(r1, r9)
            com.mbridge.msdk.foundation.controller.c r9 = com.mbridge.msdk.foundation.controller.c.m()
            android.content.Context r9 = r9.d()
            if (r9 == 0) goto L9c
            com.mbridge.msdk.foundation.controller.c r9 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L91
            android.content.Context r9 = r9.d()     // Catch: java.lang.Exception -> L91
            android.content.Context r9 = r9.getApplicationContext()     // Catch: java.lang.Exception -> L91
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = r8.b     // Catch: java.lang.Exception -> L91
            com.mbridge.msdk.video.module.report.b.a(r9, r0)     // Catch: java.lang.Exception -> L91
            goto L9c
        L91:
            r0 = move-exception
            r9 = r0
            java.lang.String r9 = r9.getMessage()
            java.lang.String r0 = "MBridgeBaseView"
            com.mbridge.msdk.foundation.tools.o0.b(r0, r9)
        L9c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.MBridgeVideoView.b(java.lang.String):void");
    }

    private String a(int i2, int i3) {
        if (i3 != 0) {
            double d2 = i2 / i3;
            try {
                return t0.a(Double.valueOf(d2)) + "";
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return i3 + "";
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (campaignEx.getReady_rate() != -1) {
                return campaignEx.getReady_rate();
            }
            return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).w();
        }
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.Q, false).w();
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class l implements com.mbridge.msdk.video.dynview.listener.h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f9871a;
        final /* synthetic */ com.mbridge.msdk.video.dynview.c b;

        /* compiled from: Proguard */
        /* loaded from: classes6.dex */
        public class a extends com.mbridge.msdk.widget.a {
            public a() {
            }

            @Override // com.mbridge.msdk.widget.a
            public void a(View view) {
                if (view instanceof TextView) {
                    MBridgeVideoView.this.b.setTriggerClickSource(1);
                } else {
                    MBridgeVideoView.this.b.setTriggerClickSource(2);
                }
                if (MBridgeVideoView.this.b.getRewardTemplateMode() != null && MBridgeVideoView.this.b.getRewardTemplateMode().f() == 902) {
                    MBridgeVideoView.this.j();
                } else {
                    MBridgeVideoView.this.b("video_play_click");
                }
            }
        }

        public l(ViewGroup viewGroup, com.mbridge.msdk.video.dynview.c cVar) {
            this.f9871a = viewGroup;
            this.b = cVar;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                if (this.f9871a != null && aVar.b() != null) {
                    aVar.b().setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    this.f9871a.addView(aVar.b());
                }
                if (aVar.a() != null) {
                    for (View view : aVar.a()) {
                        view.setOnClickListener(new a());
                    }
                }
                MBridgeVideoView.this.w0 = aVar.c();
                MBridgeVideoView.this.n();
                boolean unused = MBridgeVideoView.W0 = false;
                MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                CampaignEx campaignEx = mBridgeVideoView.b;
                if (campaignEx != null) {
                    campaignEx.setTemplateRenderSucc(mBridgeVideoView.w0);
                }
                MBridgeVideoView.this.E = this.b.j();
                MBridgeVideoView.this.F = this.b.e();
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.h
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            o0.b(MBridgeBaseView.TAG, "errorMsg：" + aVar.c());
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class s implements com.mbridge.msdk.widget.dialog.b {
        public s() {
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
            MBridgeVideoView.this.I = false;
            MBridgeVideoView.this.q0 = true;
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            mBridgeVideoView.setShowingAlertViewCover(mBridgeVideoView.I);
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView2.f9822a, mBridgeVideoView2.b, mBridgeVideoView2.k0, MBridgeVideoView.this.Q, 1, 1, 1);
            if (MBridgeVideoView.this.g0 && MBridgeVideoView.this.l0 == com.mbridge.msdk.foundation.same.a.H) {
                MBridgeVideoView mBridgeVideoView3 = MBridgeVideoView.this;
                if (mBridgeVideoView3.notifyListener != null) {
                    mBridgeVideoView3.L0 = true;
                    MBridgeVideoView mBridgeVideoView4 = MBridgeVideoView.this;
                    mBridgeVideoView4.notifyListener.a(2, mBridgeVideoView4.c(mBridgeVideoView4.s0));
                }
            } else if (MBridgeVideoView.this.g0 && MBridgeVideoView.this.l0 == com.mbridge.msdk.foundation.same.a.I) {
                MBridgeVideoView.this.p();
            } else {
                MBridgeVideoView mBridgeVideoView5 = MBridgeVideoView.this;
                if (mBridgeVideoView5.notifyListener != null) {
                    mBridgeVideoView5.L0 = true;
                    MBridgeVideoView.this.notifyListener.a(2, "");
                }
            }
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            MBridgeVideoView.this.I = false;
            MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
            mBridgeVideoView.setShowingAlertViewCover(mBridgeVideoView.I);
            if (MBridgeVideoView.this.g0 && (MBridgeVideoView.this.l0 == com.mbridge.msdk.foundation.same.a.I || MBridgeVideoView.this.l0 == com.mbridge.msdk.foundation.same.a.H)) {
                MBridgeVideoView.this.p0 = true;
                com.mbridge.msdk.video.module.listener.a aVar = MBridgeVideoView.this.notifyListener;
                if (aVar != null) {
                    aVar.a(124, "");
                }
                MBridgeVideoView.this.u0 = true;
                MBridgeVideoView.this.gonePlayingCloseView();
            }
            MBridgeVideoView.this.p();
            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
            com.mbridge.msdk.foundation.same.report.j.a(mBridgeVideoView2.f9822a, mBridgeVideoView2.b, mBridgeVideoView2.k0, MBridgeVideoView.this.Q, 1, 0, 1);
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class e extends WebViewClient {
        public e() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            o0.b(MBridgeBaseView.TAG, "WebView called onRenderProcessGone");
            if (webView != null) {
                try {
                    ViewGroup viewGroup = (ViewGroup) webView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    if (webView instanceof WindVaneWebView) {
                        ((WindVaneWebView) webView).release();
                    } else {
                        webView.destroy();
                    }
                } catch (Throwable th) {
                    o0.b(MBridgeBaseView.TAG, th.getMessage());
                }
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        }
    }

    public MBridgeVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.mMuteSwitch = 0;
        this.w = false;
        this.z = 0;
        this.H = false;
        this.I = false;
        this.J = false;
        this.Q = "";
        this.T = false;
        this.U = false;
        this.V = false;
        this.W = false;
        this.a0 = false;
        this.b0 = false;
        this.c0 = false;
        this.d0 = false;
        this.e0 = false;
        this.g0 = false;
        this.h0 = 2;
        this.o0 = false;
        this.p0 = false;
        this.q0 = false;
        this.r0 = true;
        this.s0 = false;
        this.t0 = false;
        this.u0 = false;
        this.v0 = false;
        this.w0 = false;
        this.z0 = 0;
        this.A0 = 5;
        this.B0 = 5;
        this.C0 = 5;
        this.F0 = false;
        this.J0 = false;
        this.K0 = 0;
        this.L0 = false;
        this.M0 = false;
        this.N0 = new w(this);
        this.O0 = false;
        this.P0 = new k();
        this.Q0 = new m();
    }
}
