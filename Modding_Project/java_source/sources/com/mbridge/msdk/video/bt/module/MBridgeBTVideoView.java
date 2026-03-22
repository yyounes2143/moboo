package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.y0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.PlayerErrorConstant;
import com.mbridge.msdk.playercommon.PlayerView;
import com.mbridge.msdk.widget.FeedBackButton;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.io.File;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class MBridgeBTVideoView extends BTBaseView {
    private static boolean P = false;
    private static long Q;
    private AdSession A;
    private AdEvents B;
    private MediaEvents C;
    private d D;
    private int E;
    private int F;
    private boolean G;
    private int H;
    private int I;
    private String J;
    private boolean K;
    private boolean L;
    private boolean M;
    private RelativeLayout N;
    private ProgressBar O;
    private PlayerView p;
    private SoundImageView q;
    private TextView r;
    private View s;
    private FeedBackButton t;
    private ImageView u;
    private WebView v;
    private com.mbridge.msdk.videocommon.download.a w;
    private int x;
    private int y;
    private int z;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            boolean isSilent = MBridgeBTVideoView.this.p.isSilent();
            if (MBridgeBTVideoView.this.v != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.n);
                    jSONObject.put("id", MBridgeBTVideoView.this.d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(CampaignEx.JSON_NATIVE_VIDEO_MUTE, MBridgeBTVideoView.this.E);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTVideoView.this.v, "onPlayerMuteBtnClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    o0.a("OperateViews", "onPlayerMuteBtnClicked isMute = " + isSilent + " mute = " + MBridgeBTVideoView.this.E);
                } catch (Exception e) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTVideoView.this.v, e.getMessage());
                }
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            if (MBridgeBTVideoView.this.v != null) {
                BTBaseView.a(MBridgeBTVideoView.this.v, "onPlayerCloseBtnClicked", MBridgeBTVideoView.this.d);
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            if (MBridgeBTVideoView.this.C != null) {
                try {
                    MBridgeBTVideoView.this.C.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InteractionType.CLICK);
                    o0.a("omsdk", "btv adUserInteraction click");
                } catch (Exception e) {
                    o0.b("omsdk", e.getMessage());
                }
            }
            if (MBridgeBTVideoView.this.v != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.n);
                    jSONObject.put("id", MBridgeBTVideoView.this.d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("x", String.valueOf(view.getX()));
                    jSONObject2.put("y", String.valueOf(view.getY()));
                    jSONObject.put("data", jSONObject2);
                    f.a().a(MBridgeBTVideoView.this.v, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception unused) {
                    com.mbridge.msdk.video.bt.component.d.c().a(MBridgeBTVideoView.this.v, "onClicked", MBridgeBTVideoView.this.d);
                }
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class d extends DefaultVideoPlayerStatusListener {

        /* renamed from: a  reason: collision with root package name */
        private MBridgeBTVideoView f9753a;
        private WebView b;
        private MediaEvents c;
        private String d;
        private String e;
        private int f;
        private int g;
        private boolean h;
        private int l;
        private int m;
        private boolean i = false;
        private boolean j = false;
        private boolean k = false;
        private boolean n = false;
        private boolean o = false;

        public d(MBridgeBTVideoView mBridgeBTVideoView, WebView webView, MediaEvents mediaEvents) {
            this.f9753a = mBridgeBTVideoView;
            this.b = webView;
            this.c = mediaEvents;
            if (mBridgeBTVideoView != null) {
                this.d = mBridgeBTVideoView.d;
                this.e = mBridgeBTVideoView.c;
            }
        }

        public void b(int i, int i2) {
            this.l = i;
            this.m = i2;
            a();
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingEnd() {
            try {
                super.onBufferingEnd();
                if (this.c != null && this.o) {
                    o0.b("omsdk", "bt onBufferingEnd");
                    this.o = false;
                    this.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingStart(String str) {
            try {
                o0.b("omsdk", "bt onBufferingStart1");
                super.onBufferingStart(str);
                if (this.c != null) {
                    o0.b("omsdk", "bt onBufferingStart");
                    this.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    this.o = true;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onBufferingTimeOut(String str) {
            try {
                if (!str.equals(PlayerErrorConstant.PREPARE_TIMEOUT) && !str.equals(PlayerErrorConstant.PLAYERING_TIMEOUT)) {
                    return;
                }
                if (this.b != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", BTBaseView.n);
                        jSONObject.put("id", this.d);
                        jSONObject.put("data", new JSONObject());
                        f.a().a(this.b, "onPlayerTimeout", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e) {
                        com.mbridge.msdk.video.bt.component.d.c().a(this.b, e.getMessage());
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayCompleted() {
            super.onPlayCompleted();
            MBridgeBTVideoView mBridgeBTVideoView = this.f9753a;
            CampaignEx campaignEx = mBridgeBTVideoView.b;
            if (campaignEx != null) {
                if (campaignEx.getVideoCompleteTime() > 0) {
                    this.f9753a.r.setText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
                } else {
                    this.f9753a.r.setText("0");
                }
            } else {
                mBridgeBTVideoView.r.setText("0");
            }
            this.f9753a.p.setClickable(false);
            WebView webView = this.b;
            if (webView != null) {
                BTBaseView.a(webView, "onPlayerFinish", this.d);
            }
            MediaEvents mediaEvents = this.c;
            if (mediaEvents != null) {
                mediaEvents.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                o0.a("omsdk", "play:  videoEvents.complete()");
            }
            this.f = this.g;
            boolean unused = MBridgeBTVideoView.P = true;
            this.f9753a.stop();
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayError(String str) {
            super.onPlayError(str);
            if (this.b != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.o);
                    jSONObject.put("id", this.d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("error", str);
                    jSONObject2.put("id", this.d);
                    jSONObject.put("data", jSONObject2);
                    f.a().a(this.b, "onPlayerFailed", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e) {
                    com.mbridge.msdk.video.bt.component.d.c().a(this.b, e.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public void onPlayProgress(int i, int i2) {
            int i3;
            int i4;
            StringBuilder sb;
            String str;
            String sb2;
            super.onPlayProgress(i, i2);
            if (MBridgeBTVideoView.Q == 0) {
                long unused = MBridgeBTVideoView.Q = System.currentTimeMillis();
            }
            MBridgeBTVideoView mBridgeBTVideoView = this.f9753a;
            if (mBridgeBTVideoView.h) {
                CampaignEx campaignEx = mBridgeBTVideoView.b;
                if (campaignEx != null) {
                    i3 = campaignEx.getVideoCompleteTime();
                    com.mbridge.msdk.foundation.feedback.b.b().b(this.f9753a.b.getCampaignUnitId() + "_1", i);
                } else {
                    i3 = 0;
                }
                if (i3 > i2 || i3 <= 0) {
                    i3 = i2;
                }
                if (i3 <= 0) {
                    i4 = i2 - i;
                } else {
                    i4 = i3 - i;
                }
                if (i4 <= 0) {
                    if (i3 <= 0) {
                        sb2 = "0";
                    } else {
                        sb2 = (String) this.f9753a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
                    }
                } else {
                    if (i3 <= 0) {
                        sb = new StringBuilder();
                        sb.append(i4);
                        str = "";
                    } else {
                        sb = new StringBuilder();
                        sb.append(i4);
                        str = (String) this.f9753a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left", TypedValues.Custom.S_STRING));
                    }
                    sb.append(str);
                    sb2 = sb.toString();
                }
                CampaignEx campaignEx2 = this.f9753a.b;
                if (campaignEx2 != null && campaignEx2.getUseSkipTime() == 1) {
                    int min = Math.min(this.f9753a.b.getVst(), i2);
                    if (min < i3 && min >= 0) {
                        int i5 = min - i;
                        if (i5 > 0) {
                            sb2 = i5 + ((String) this.f9753a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING)));
                        } else if (this.f9753a.b.getAdType() == 287 && i5 == 0) {
                            this.f9753a.r.setVisibility(4);
                        }
                    } else {
                        int i6 = i3 - i;
                        if (this.f9753a.b.getAdType() == 287) {
                            if (i6 > 0) {
                                sb2 = i6 + ((String) this.f9753a.getContext().getResources().getText(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_view_reward_time_left_skip_time", TypedValues.Custom.S_STRING)));
                            } else if (i6 == 0) {
                                this.f9753a.r.setVisibility(4);
                            }
                        }
                    }
                }
                this.f9753a.r.setText(sb2);
            }
            this.g = i2;
            this.f = i;
            this.f9753a.O.setMax(this.g);
            this.f9753a.O.setProgress(this.f);
            if (this.b != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", BTBaseView.n);
                    jSONObject.put("id", this.d);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("id", this.d);
                    jSONObject2.put("progress", MBridgeBTVideoView.b(i, i2));
                    jSONObject2.put("time", String.valueOf(i));
                    jSONObject2.put(TypedValues.TransitionType.S_DURATION, String.valueOf(i2));
                    jSONObject.put("data", jSONObject2);
                    f.a().a(this.b, "onPlayerProgressChanged", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e) {
                    com.mbridge.msdk.video.bt.component.d.c().a(this.b, e.getMessage());
                }
            }
            MediaEvents mediaEvents = this.c;
            if (mediaEvents != null) {
                int i7 = (i * 100) / i2;
                int i8 = ((i + 1) * 100) / i2;
                if (i7 <= 25 && 25 < i8 && !this.i) {
                    this.i = true;
                    mediaEvents.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                    o0.a("omsdk", "play:  videoEvents.firstQuartile()");
                } else if (i7 <= 50 && 50 < i8 && !this.j) {
                    this.j = true;
                    mediaEvents.Wwwwwwwwwwwwwwwwwwwwwwwwww();
                    o0.a("omsdk", "play:  videoEvents.midpoint()");
                } else if (i7 <= 75 && 75 < i8 && !this.k) {
                    this.k = true;
                    mediaEvents.Wwwwwwwwwwwwwwwwwwww();
                    o0.a("omsdk", "play:  videoEvents.thirdQuartile()");
                }
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
            super.onPlayStarted(i);
            if (!this.h) {
                this.f9753a.O.setMax(i);
                WebView webView = this.b;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPlay", this.d);
                }
                this.h = true;
                if (this.c != null) {
                    try {
                        MBridgeBTVideoView mBridgeBTVideoView = this.f9753a;
                        if (mBridgeBTVideoView != null && mBridgeBTVideoView.p != null) {
                            f = this.f9753a.p.getVolume();
                        } else {
                            f = 0.0f;
                        }
                        this.c.Wwwwwwwwwwwwwwwwwwwww(i, f);
                        o0.a("omsdk", "play2: videoEvents.start()");
                    } catch (Exception e) {
                        o0.b("omsdk", e.getMessage());
                    }
                }
            }
            boolean unused = MBridgeBTVideoView.P = false;
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x00a3 A[Catch: Exception -> 0x006b, TryCatch #0 {Exception -> 0x006b, blocks: (B:17:0x002b, B:19:0x0033, B:22:0x0040, B:26:0x0097, B:28:0x00a3, B:30:0x00ad, B:25:0x006d), top: B:36:0x002b }] */
        /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a() {
            /*
                r4 = this;
                java.lang.String r0 = "DefaultVideoPlayerStatusListener"
                com.mbridge.msdk.foundation.tools.q0 r1 = com.mbridge.msdk.foundation.tools.q0.a()
                java.lang.String r2 = "h_c_r_w_p_c"
                r3 = 0
                boolean r1 = r1.a(r2, r3)
                if (r1 != 0) goto L11
                goto Lbe
            L11:
                int r1 = r4.l
                r2 = 100
                if (r1 == r2) goto Lbe
                int r2 = r4.m
                if (r2 != 0) goto Lbe
                boolean r2 = r4.n
                if (r2 != 0) goto Lbe
                if (r1 == 0) goto Lbe
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f9753a
                if (r1 == 0) goto Lbe
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.b
                if (r1 != 0) goto L2b
                goto Lbe
            L2b:
                int r1 = r1.getAdType()     // Catch: java.lang.Exception -> L6b
                r2 = 94
                if (r1 == r2) goto L6d
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f9753a     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.b     // Catch: java.lang.Exception -> L6b
                int r1 = r1.getAdType()     // Catch: java.lang.Exception -> L6b
                r2 = 287(0x11f, float:4.02E-43)
                if (r1 != r2) goto L40
                goto L6d
            L40:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6b
                r1.<init>()     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f9753a     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.b     // Catch: java.lang.Exception -> L6b
                java.lang.String r2 = r2.getId()     // Catch: java.lang.Exception -> L6b
                r1.append(r2)     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f9753a     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.b     // Catch: java.lang.Exception -> L6b
                java.lang.String r2 = r2.getVideoUrlEncode()     // Catch: java.lang.Exception -> L6b
                r1.append(r2)     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f9753a     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.b     // Catch: java.lang.Exception -> L6b
                java.lang.String r2 = r2.getBidToken()     // Catch: java.lang.Exception -> L6b
                r1.append(r2)     // Catch: java.lang.Exception -> L6b
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L6b
                goto L97
            L6b:
                r1 = move-exception
                goto Lb3
            L6d:
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6b
                r1.<init>()     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f9753a     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.b     // Catch: java.lang.Exception -> L6b
                java.lang.String r2 = r2.getRequestId()     // Catch: java.lang.Exception -> L6b
                r1.append(r2)     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f9753a     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.b     // Catch: java.lang.Exception -> L6b
                java.lang.String r2 = r2.getId()     // Catch: java.lang.Exception -> L6b
                r1.append(r2)     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r2 = r4.f9753a     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r2.b     // Catch: java.lang.Exception -> L6b
                java.lang.String r2 = r2.getVideoUrlEncode()     // Catch: java.lang.Exception -> L6b
                r1.append(r2)     // Catch: java.lang.Exception -> L6b
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L6b
            L97:
                com.mbridge.msdk.videocommon.download.b r2 = com.mbridge.msdk.videocommon.download.b.getInstance()     // Catch: java.lang.Exception -> L6b
                java.lang.String r3 = r4.e     // Catch: java.lang.Exception -> L6b
                com.mbridge.msdk.videocommon.download.a r1 = r2.a(r3, r1)     // Catch: java.lang.Exception -> L6b
                if (r1 == 0) goto Lbe
                r1.v()     // Catch: java.lang.Exception -> L6b
                r1 = 1
                r4.n = r1     // Catch: java.lang.Exception -> L6b
                boolean r1 = com.mbridge.msdk.MBridgeConstans.DEBUG     // Catch: java.lang.Exception -> L6b
                if (r1 == 0) goto Lbe
                java.lang.String r1 = "CDRate is : 0  and start download when player create!"
                com.mbridge.msdk.foundation.tools.o0.b(r0, r1)     // Catch: java.lang.Exception -> L6b
                return
            Lb3:
                boolean r2 = com.mbridge.msdk.MBridgeConstans.DEBUG
                if (r2 == 0) goto Lbe
                java.lang.String r1 = r1.getMessage()
                com.mbridge.msdk.foundation.tools.o0.b(r0, r1)
            Lbe:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.bt.module.MBridgeBTVideoView.d.a():void");
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0094 A[Catch: Exception -> 0x005c, TRY_LEAVE, TryCatch #0 {Exception -> 0x005c, blocks: (B:3:0x0002, B:5:0x0008, B:9:0x0010, B:11:0x0014, B:13:0x0018, B:15:0x0024, B:18:0x0031, B:22:0x0088, B:24:0x0094, B:21:0x005e), top: B:28:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a(int r5, int r6) {
            /*
                r4 = this;
                java.lang.String r0 = "DefaultVideoPlayerStatusListener"
                int r1 = r4.l     // Catch: java.lang.Exception -> L5c
                r2 = 100
                if (r1 == r2) goto Lbb
                boolean r3 = r4.n     // Catch: java.lang.Exception -> L5c
                if (r3 != 0) goto Lbb
                if (r1 != 0) goto L10
                goto Lbb
            L10:
                int r1 = r4.m     // Catch: java.lang.Exception -> L5c
                if (r1 < 0) goto Lbb
                int r6 = r6 * r1
                int r6 = r6 / r2
                if (r5 < r6) goto Lbb
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r5 = r4.f9753a     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.foundation.entity.CampaignEx r5 = r5.b     // Catch: java.lang.Exception -> L5c
                int r5 = r5.getAdType()     // Catch: java.lang.Exception -> L5c
                r1 = 94
                if (r5 == r1) goto L5e
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r5 = r4.f9753a     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.foundation.entity.CampaignEx r5 = r5.b     // Catch: java.lang.Exception -> L5c
                int r5 = r5.getAdType()     // Catch: java.lang.Exception -> L5c
                r1 = 287(0x11f, float:4.02E-43)
                if (r5 != r1) goto L31
                goto L5e
            L31:
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5c
                r5.<init>()     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f9753a     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.b     // Catch: java.lang.Exception -> L5c
                java.lang.String r1 = r1.getId()     // Catch: java.lang.Exception -> L5c
                r5.append(r1)     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f9753a     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.b     // Catch: java.lang.Exception -> L5c
                java.lang.String r1 = r1.getVideoUrlEncode()     // Catch: java.lang.Exception -> L5c
                r5.append(r1)     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f9753a     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.b     // Catch: java.lang.Exception -> L5c
                java.lang.String r1 = r1.getBidToken()     // Catch: java.lang.Exception -> L5c
                r5.append(r1)     // Catch: java.lang.Exception -> L5c
                java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L5c
                goto L88
            L5c:
                r5 = move-exception
                goto Lb4
            L5e:
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5c
                r5.<init>()     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f9753a     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.b     // Catch: java.lang.Exception -> L5c
                java.lang.String r1 = r1.getRequestId()     // Catch: java.lang.Exception -> L5c
                r5.append(r1)     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f9753a     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.b     // Catch: java.lang.Exception -> L5c
                java.lang.String r1 = r1.getId()     // Catch: java.lang.Exception -> L5c
                r5.append(r1)     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.video.bt.module.MBridgeBTVideoView r1 = r4.f9753a     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r1.b     // Catch: java.lang.Exception -> L5c
                java.lang.String r1 = r1.getVideoUrlEncode()     // Catch: java.lang.Exception -> L5c
                r5.append(r1)     // Catch: java.lang.Exception -> L5c
                java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L5c
            L88:
                com.mbridge.msdk.videocommon.download.b r1 = com.mbridge.msdk.videocommon.download.b.getInstance()     // Catch: java.lang.Exception -> L5c
                java.lang.String r2 = r4.e     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.videocommon.download.a r5 = r1.a(r2, r5)     // Catch: java.lang.Exception -> L5c
                if (r5 == 0) goto Lbb
                r5.v()     // Catch: java.lang.Exception -> L5c
                r5 = 1
                r4.n = r5     // Catch: java.lang.Exception -> L5c
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L5c
                r5.<init>()     // Catch: java.lang.Exception -> L5c
                java.lang.String r1 = "CDRate is : "
                r5.append(r1)     // Catch: java.lang.Exception -> L5c
                r5.append(r6)     // Catch: java.lang.Exception -> L5c
                java.lang.String r6 = " and start download !"
                r5.append(r6)     // Catch: java.lang.Exception -> L5c
                java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L5c
                com.mbridge.msdk.foundation.tools.o0.b(r0, r5)     // Catch: java.lang.Exception -> L5c
                return
            Lb4:
                java.lang.String r5 = r5.getMessage()
                com.mbridge.msdk.foundation.tools.o0.b(r0, r5)
            Lbb:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.bt.module.MBridgeBTVideoView.d.a(int, int):void");
        }
    }

    public MBridgeBTVideoView(Context context) {
        super(context);
        this.x = 0;
        this.y = 0;
        this.z = 0;
        this.E = 2;
        this.G = false;
        this.H = 2;
        this.I = 1;
        this.K = false;
        this.L = false;
        this.M = false;
    }

    private int getBufferTimeout() {
        int i = 5;
        try {
            com.mbridge.msdk.videocommon.setting.a c2 = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (c2 == null) {
                com.mbridge.msdk.videocommon.setting.b.b().a();
            }
            if (c2 != null) {
                i = (int) c2.i();
            }
            o0.c(BTBaseView.TAG, "MBridgeBaseView buffetTimeout:" + i);
            return i;
        } catch (Throwable th) {
            th.printStackTrace();
            return i;
        }
    }

    private int getCDRate() {
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.c, false).g();
    }

    private String getPlayURL() {
        String str = "";
        try {
            str = this.b.getVideoUrlEncode();
            com.mbridge.msdk.videocommon.download.a aVar = this.w;
            if (aVar != null) {
                String k = aVar.k();
                if (!y0.a(k)) {
                    if (new File(k).exists()) {
                        return k;
                    }
                }
            }
            return str;
        } catch (Throwable th) {
            o0.b(BTBaseView.TAG, th.getMessage(), th);
            return str;
        }
    }

    public AdEvents getAdEvents() {
        return this.B;
    }

    public AdSession getAdSession() {
        return this.A;
    }

    public int getMute() {
        return this.E;
    }

    public MediaEvents getVideoEvents() {
        return this.C;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void init(Context context) {
        int findLayout = findLayout("mbridge_reward_videoview_item");
        if (g0.a(findLayout)) {
            this.f.inflate(findLayout, this);
            boolean e = e();
            this.h = e;
            if (!e) {
                o0.b(BTBaseView.TAG, "MBridgeVideoView init fail");
            }
            b();
        }
        P = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        View rootView;
        int i;
        int i2;
        super.onAttachedToWindow();
        if (!this.M) {
            this.H = com.mbridge.msdk.video.bt.component.d.c().g(this.c);
        }
        View view = this.s;
        int i3 = 0;
        if (view != null) {
            if (this.y == 0) {
                i2 = 8;
            } else {
                i2 = 0;
            }
            view.setVisibility(i2);
        }
        SoundImageView soundImageView = this.q;
        if (soundImageView != null) {
            if (this.z == 0) {
                i = 8;
            } else {
                i = 0;
            }
            soundImageView.setVisibility(i);
        }
        CampaignEx campaignEx = this.b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.c);
            com.mbridge.msdk.foundation.feedback.b.b().a(this.c + "_1", this.b);
        }
        TextView textView = this.r;
        if (textView != null) {
            if (this.x == 0) {
                i3 = 8;
            }
            textView.setVisibility(i3);
            if (this.r.getVisibility() == 0 && com.mbridge.msdk.foundation.feedback.b.b().a()) {
                com.mbridge.msdk.foundation.feedback.b.b().a(this.c + "_1", this.t);
            }
        }
        if (this.A != null && (rootView = getRootView()) != null) {
            this.A.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(rootView);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void onDestory() {
        try {
            if (this.p != null) {
                AdSession adSession = this.A;
                if (adSession != null) {
                    adSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                this.p.setOnClickListener(null);
                this.p.release();
                this.p = null;
                if (!TextUtils.isEmpty(this.J)) {
                    e eVar = new e();
                    long j = Q;
                    if (j != 0) {
                        j = System.currentTimeMillis() - Q;
                    }
                    eVar.a(TypedValues.TransitionType.S_DURATION, Long.valueOf(j));
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000146", this.b, eVar);
                }
            }
            SoundImageView soundImageView = this.q;
            if (soundImageView != null) {
                soundImageView.setOnClickListener(null);
            }
            View view = this.s;
            if (view != null) {
                view.setOnClickListener(null);
            }
            if (this.v != null) {
                this.v = null;
            }
            if (this.A != null) {
                this.A = null;
            }
            if (this.C != null) {
                this.C = null;
            }
            setOnClickListener(null);
        } catch (Throwable th) {
            o0.a(BTBaseView.TAG, th.getMessage());
        }
    }

    public void onPause() {
        PlayerView playerView = this.p;
        if (playerView != null) {
            boolean isPlayIng = playerView.isPlayIng();
            this.L = isPlayIng;
            this.p.setIsBTVideoPlaying(isPlayIng);
            MediaEvents mediaEvents = this.C;
            if (mediaEvents != null) {
                this.p.setVideoEvents(mediaEvents);
            }
            this.p.onPause();
        }
    }

    public void onResume() {
        PlayerView playerView = this.p;
        if (playerView != null) {
            playerView.setDesk(true);
            this.p.setIsCovered(false);
            if (this.L) {
                this.p.start(true);
            }
            this.p.resumeOMSDK();
        }
    }

    public void onStop() {
        PlayerView playerView = this.p;
        if (playerView != null) {
            playerView.setIsCovered(true);
        }
    }

    public void pause() {
        try {
            PlayerView playerView = this.p;
            if (playerView != null) {
                playerView.pause();
                WebView webView = this.v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerPause", this.d);
                }
            }
        } catch (Exception e) {
            o0.b(BTBaseView.TAG, e.getMessage(), e);
        }
    }

    public void play() {
        d dVar;
        try {
            if (!this.M) {
                String playURL = getPlayURL();
                this.J = playURL;
                this.p.initVFPData(playURL, this.b.getVideoUrlEncode(), this.D);
                if (this.H == 1) {
                    playMute();
                } else {
                    playUnMute();
                }
                if (this.B != null) {
                    o0.b("omsdk", "bt impressionOccurred");
                    this.B.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                if (!this.p.playVideo() && (dVar = this.D) != null) {
                    dVar.onPlayError("play video failed");
                }
                this.M = true;
                return;
            }
            if (this.G) {
                this.p.playVideo(0);
                this.G = false;
            } else {
                this.p.start(false);
            }
            MediaEvents mediaEvents = this.C;
            if (mediaEvents != null) {
                mediaEvents.Wwwwwwwwwwwwwwwwwwwwwww();
                o0.a("omsdk", "btv play2:  videoEvents.resume()");
            }
            WebView webView = this.v;
            if (webView != null) {
                BTBaseView.a(webView, "onPlayerPlay", this.d);
            }
        } catch (Exception e) {
            o0.b(BTBaseView.TAG, e.getMessage(), e);
        }
    }

    public boolean playMute() {
        try {
            PlayerView playerView = this.p;
            if (playerView != null && this.v != null) {
                playerView.closeSound();
                this.q.setSoundStatus(false);
                this.E = 1;
                try {
                    MediaEvents mediaEvents = this.C;
                    if (mediaEvents != null) {
                        mediaEvents.Wwwwwwwwwwwwwwwwwww(0.0f);
                    }
                } catch (Exception e) {
                    o0.a("OMSDK", e.getMessage());
                }
                BTBaseView.a(this.v, "onPlayerMute", this.d);
                return true;
            }
        } catch (Exception e2) {
            o0.b(BTBaseView.TAG, e2.getMessage());
        }
        return false;
    }

    public boolean playUnMute() {
        try {
            PlayerView playerView = this.p;
            if (playerView != null && this.v != null) {
                playerView.openSound();
                this.q.setSoundStatus(true);
                this.E = 2;
                try {
                    MediaEvents mediaEvents = this.C;
                    if (mediaEvents != null) {
                        mediaEvents.Wwwwwwwwwwwwwwwwwww(1.0f);
                    }
                } catch (Exception e) {
                    o0.a("OMSDK", e.getMessage());
                }
                BTBaseView.a(this.v, "onUnmute", this.d);
                return true;
            }
            return false;
        } catch (Exception e2) {
            o0.b(BTBaseView.TAG, e2.getMessage());
            return false;
        }
    }

    public void preLoadData() {
        d();
        this.F = getBufferTimeout();
        String playURL = getPlayURL();
        this.J = playURL;
        if (this.h && !TextUtils.isEmpty(playURL) && this.b != null) {
            AdSession adSession = this.A;
            if (adSession != null) {
                adSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.p);
                AdSession adSession2 = this.A;
                SoundImageView soundImageView = this.q;
                FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                adSession2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(soundImageView, friendlyObstructionPurpose, null);
                this.A.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.r, friendlyObstructionPurpose, null);
                this.A.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.s, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
            }
            d dVar = new d(this, this.v, this.C);
            this.D = dVar;
            dVar.b(a(this.b), getCDRate());
            this.p.setDesk(false);
            this.p.initBufferIngParam(this.F);
            soundOperate(this.E, -1, null);
        }
        P = false;
    }

    public void resume() {
        try {
            PlayerView playerView = this.p;
            if (playerView != null) {
                if (this.G) {
                    playerView.playVideo(0);
                    this.G = false;
                } else {
                    playerView.onResume();
                }
                MediaEvents mediaEvents = this.C;
                if (mediaEvents != null) {
                    mediaEvents.Wwwwwwwwwwwwwwwwwwwwwww();
                    o0.a("omsdk", "btv play3:  videoEvents.resume()");
                }
                WebView webView = this.v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerResume", this.d);
                }
            }
        } catch (Exception e) {
            o0.b(BTBaseView.TAG, e.getMessage());
        }
    }

    public void setAdEvents(AdEvents adEvents) {
        this.B = adEvents;
    }

    public void setAdSession(AdSession adSession) {
        this.A = adSession;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void setCampaign(CampaignEx campaignEx) {
        super.setCampaign(campaignEx);
        if (campaignEx != null && campaignEx.getVideoCompleteTime() > 0) {
            this.r.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_video_time_count_num_bg", "drawable"));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
            int a2 = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
            layoutParams.setMargins(a2, 0, 0, 0);
            this.r.setPadding(a2, 0, a2, 0);
            this.r.setLayoutParams(layoutParams);
            return;
        }
        this.r.setBackgroundResource(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_shape_progress", "drawable"));
        this.r.setWidth(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 30.0f));
    }

    public void setCloseViewVisable(int i) {
        int i2;
        View view = this.s;
        if (i == 0) {
            i2 = 4;
        } else {
            i2 = 0;
        }
        view.setVisibility(i2);
    }

    public void setCountDownTextViewVisable(int i) {
        int i2;
        TextView textView = this.r;
        if (i == 0) {
            i2 = 4;
        } else {
            i2 = 0;
        }
        textView.setVisibility(i2);
    }

    public void setCreateWebView(WebView webView) {
        this.v = webView;
    }

    public void setNotchPadding(int i, int i2, int i3, int i4) {
        if (i <= 0) {
            i = this.N.getPaddingLeft();
        }
        if (i2 <= 0) {
            i2 = this.N.getPaddingRight();
        }
        if (i3 <= 0) {
            i3 = this.N.getPaddingTop();
        }
        if (i4 <= 0) {
            i4 = this.N.getPaddingBottom();
        }
        o0.b(BTBaseView.TAG, "NOTCH BTVideoView " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
        this.N.setPadding(i, i3, i2, i4);
    }

    public void setOrientation(int i) {
        this.I = i;
    }

    public void setPlaybackParams(float f) {
        PlayerView playerView = this.p;
        if (playerView != null) {
            playerView.setPlaybackParams(f);
        }
    }

    public void setProgressBarState(int i) {
        int i2;
        ProgressBar progressBar = this.O;
        if (progressBar != null) {
            if (i == 0) {
                i2 = 8;
            } else {
                i2 = 0;
            }
            progressBar.setVisibility(i2);
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.getProgressBarShow() == 1) {
                this.O.setVisibility(0);
            }
        }
    }

    public void setShowClose(int i) {
        this.y = i;
    }

    public void setShowMute(int i) {
        this.z = i;
    }

    public void setShowTime(int i) {
        this.x = i;
    }

    public void setSoundImageViewVisble(int i) {
        int i2;
        SoundImageView soundImageView = this.q;
        if (i == 0) {
            i2 = 4;
        } else {
            i2 = 0;
        }
        soundImageView.setVisibility(i2);
    }

    public void setVideoEvents(MediaEvents mediaEvents) {
        this.C = mediaEvents;
        d dVar = this.D;
        if (dVar != null) {
            dVar.c = mediaEvents;
        }
        PlayerView playerView = this.p;
        if (playerView != null) {
            playerView.setVideoEvents(mediaEvents);
        }
    }

    public void setVolume(float f, float f2) {
        PlayerView playerView = this.p;
        if (playerView != null) {
            playerView.setVolume(f, f2);
        }
    }

    public void soundOperate(int i, int i2, String str) {
        if (this.h) {
            this.E = i;
            if (i == 1) {
                this.q.setSoundStatus(false);
                this.p.closeSound();
            } else if (i == 2) {
                this.q.setSoundStatus(true);
                this.p.openSound();
            }
            if (i2 == 1) {
                this.q.setVisibility(8);
            } else if (i2 == 2) {
                this.q.setVisibility(0);
            }
            MediaEvents mediaEvents = this.C;
            if (mediaEvents != null) {
                try {
                    mediaEvents.Wwwwwwwwwwwwwwwwwww(this.p.getVolume());
                } catch (Exception e) {
                    o0.b("omsdk", e.getMessage());
                }
            }
        }
    }

    public void stop() {
        try {
            PlayerView playerView = this.p;
            if (playerView != null) {
                playerView.pause();
                this.p.stop();
                this.G = true;
                WebView webView = this.v;
                if (webView != null) {
                    BTBaseView.a(webView, "onPlayerStop", this.d);
                }
            }
        } catch (Exception e) {
            o0.b(BTBaseView.TAG, e.getMessage(), e);
        }
    }

    private void d() {
        String str;
        if (this.b.getAdType() != 94 && this.b.getAdType() != 287) {
            str = this.b.getId() + this.b.getVideoUrlEncode() + this.b.getBidToken();
        } else {
            str = this.b.getRequestId() + this.b.getId() + this.b.getVideoUrlEncode();
        }
        com.mbridge.msdk.videocommon.download.a a2 = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.c, str);
        if (a2 != null) {
            this.w = a2;
        }
    }

    private boolean e() {
        try {
            this.p = (PlayerView) findViewById(findID("mbridge_vfpv"));
            this.q = (SoundImageView) findViewById(findID("mbridge_sound_switch"));
            this.r = (TextView) findViewById(findID("mbridge_tv_count"));
            this.s = findViewById(findID("mbridge_rl_playing_close"));
            this.N = (RelativeLayout) findViewById(findID("mbridge_top_control"));
            this.O = (ProgressBar) findViewById(findID("mbridge_video_progress_bar"));
            this.p.setIsBTVideo(true);
            this.t = (FeedBackButton) findViewById(findID("mbridge_native_endcard_feed_btn"));
            this.u = (ImageView) findViewById(findID("mbridge_iv_link"));
            return isNotNULL(this.p, this.q, this.r, this.s);
        } catch (Throwable th) {
            o0.b(BTBaseView.TAG, th.getMessage(), th);
            return false;
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void b() {
        super.b();
        if (this.h) {
            this.q.setOnClickListener(new a());
            this.s.setOnClickListener(new b());
            setOnClickListener(new c());
        }
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (campaignEx.getReady_rate() != -1) {
                return campaignEx.getReady_rate();
            }
            return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.c, false).w();
        }
        return com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.c, false).w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i, int i2) {
        if (i2 != 0) {
            double d2 = i / i2;
            try {
                return t0.a(Double.valueOf(d2)) + "";
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return i2 + "";
    }

    public MBridgeBTVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.x = 0;
        this.y = 0;
        this.z = 0;
        this.E = 2;
        this.G = false;
        this.H = 2;
        this.I = 1;
        this.K = false;
        this.L = false;
        this.M = false;
    }
}
