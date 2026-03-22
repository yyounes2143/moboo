package com.mbridge.msdk.video.module.listener.impl;

import android.os.Handler;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.media3.common.C;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import java.util.Timer;
import java.util.TimerTask;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class m extends o {
    private Timer A;
    private Handler B;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private int G;
    private MBridgeVideoView.u H;
    private MBridgeVideoView x;
    private MBridgeContainerView y;
    private int z;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a extends TimerTask {

        /* compiled from: Proguard */
        /* renamed from: com.mbridge.msdk.video.module.listener.impl.m$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public class RunnableC0185a implements Runnable {
            public RunnableC0185a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                m.this.y.showVideoClickView(-1);
                m.this.x.soundOperate(0, 2);
            }
        }

        public a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                m.this.B.post(new RunnableC0185a());
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    th.printStackTrace();
                }
            }
        }
    }

    public m(MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, int i, int i2, com.mbridge.msdk.video.module.listener.a aVar2, int i3, boolean z, int i4) {
        super(campaignEx, cVar, aVar, str, str2, aVar2, i3, z);
        this.B = new Handler();
        this.C = false;
        this.D = false;
        this.E = false;
        this.x = mBridgeVideoView;
        this.y = mBridgeContainerView;
        this.G = i;
        this.z = i2;
        this.F = i4;
        if (mBridgeVideoView != null) {
            this.C = mBridgeVideoView.getVideoSkipTime() == 0;
        }
        if (mBridgeVideoView == null || mBridgeContainerView == null) {
            this.f9886a = false;
        }
    }

    private void n() {
        try {
            Timer timer = this.A;
            if (timer != null) {
                timer.cancel();
                this.A = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void o() {
        /*
            r4 = this;
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = r4.b
            if (r0 == 0) goto L70
            int r0 = r0.getDynamicTempCode()
            r1 = 5
            if (r0 != r1) goto L70
            com.mbridge.msdk.video.module.MBridgeVideoView r0 = r4.x
            if (r0 == 0) goto L5c
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r0 = r0.mCampOrderViewData
            if (r0 == 0) goto L5c
            r0 = 0
            r1 = r0
        L15:
            com.mbridge.msdk.video.module.MBridgeVideoView r2 = r4.x
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r2 = r2.mCampOrderViewData
            int r2 = r2.size()
            if (r1 >= r2) goto L45
            com.mbridge.msdk.video.module.MBridgeVideoView r2 = r4.x
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r2 = r2.mCampOrderViewData
            java.lang.Object r2 = r2.get(r1)
            if (r2 == 0) goto L42
            com.mbridge.msdk.video.module.MBridgeVideoView r2 = r4.x
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r2 = r2.mCampOrderViewData
            java.lang.Object r2 = r2.get(r1)
            com.mbridge.msdk.foundation.entity.CampaignEx r2 = (com.mbridge.msdk.foundation.entity.CampaignEx) r2
            java.lang.String r2 = r2.getId()
            com.mbridge.msdk.foundation.entity.CampaignEx r3 = r4.b
            java.lang.String r3 = r3.getId()
            if (r2 != r3) goto L42
            int r0 = r1 + (-1)
            goto L45
        L42:
            int r1 = r1 + 1
            goto L15
        L45:
            if (r0 < 0) goto L5c
            com.mbridge.msdk.video.module.MBridgeVideoView r1 = r4.x
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r1 = r1.mCampOrderViewData
            java.lang.Object r1 = r1.get(r0)
            if (r1 == 0) goto L5c
            com.mbridge.msdk.video.module.MBridgeVideoView r1 = r4.x
            java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r1 = r1.mCampOrderViewData
            java.lang.Object r0 = r1.get(r0)
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = (com.mbridge.msdk.foundation.entity.CampaignEx) r0
            goto L5d
        L5c:
            r0 = 0
        L5d:
            if (r0 == 0) goto L70
            com.mbridge.msdk.video.module.MBridgeVideoView r1 = r4.x
            if (r1 == 0) goto L66
            r1.setCampaign(r0)
        L66:
            com.mbridge.msdk.video.module.MBridgeContainerView r1 = r4.y
            if (r1 == 0) goto L6d
            r1.setCampaign(r0)
        L6d:
            r4.a(r0)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.listener.impl.m.o():void");
    }

    private void p() {
        try {
            n();
            this.A = new Timer();
            this.A.schedule(new a(), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.o, com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i, Object obj) {
        Integer num;
        int i2;
        String str;
        int i3;
        if (this.f9886a) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 5) {
                        if (i != 6) {
                            if (i == 8) {
                                MBridgeContainerView mBridgeContainerView = this.y;
                                if (mBridgeContainerView != null) {
                                    if (!mBridgeContainerView.showAlertWebView()) {
                                        MBridgeVideoView mBridgeVideoView = this.x;
                                        if (mBridgeVideoView != null) {
                                            mBridgeVideoView.showAlertView();
                                        }
                                    } else {
                                        MBridgeVideoView mBridgeVideoView2 = this.x;
                                        if (mBridgeVideoView2 != null) {
                                            mBridgeVideoView2.alertWebViewShowed();
                                        }
                                    }
                                } else {
                                    MBridgeVideoView mBridgeVideoView3 = this.x;
                                    if (mBridgeVideoView3 != null) {
                                        mBridgeVideoView3.showAlertView();
                                    }
                                }
                            } else if (i != 20) {
                                switch (i) {
                                    case 10:
                                        this.D = true;
                                        this.x.soundOperate(0, 2);
                                        this.x.progressOperate(0, 2);
                                        break;
                                    case 11:
                                        this.x.videoOperate(3);
                                        this.x.dismissAllAlert();
                                        CampaignEx campaignEx = this.b;
                                        if (campaignEx != null && campaignEx.getVideo_end_type() != 3 && this.b.getRewardTemplateMode() != null && this.b.getRewardTemplateMode().f() != 5002010) {
                                            if (this.b.getAdSpaceT() != 2) {
                                                this.x.setVisibility(8);
                                            }
                                        } else {
                                            this.x.setVisibility(0);
                                        }
                                        CampaignEx campaignEx2 = this.b;
                                        if (campaignEx2 != null && campaignEx2.getDynamicTempCode() == 5) {
                                            MBridgeVideoView mBridgeVideoView4 = this.x;
                                            if (mBridgeVideoView4.mCurrPlayNum == mBridgeVideoView4.mCampaignSize) {
                                                MBridgeContainerView mBridgeContainerView2 = this.y;
                                                if (mBridgeContainerView2 != null) {
                                                    mBridgeContainerView2.setRewardStatus(true);
                                                    this.y.showOrderCampView();
                                                    break;
                                                }
                                            }
                                        }
                                        CampaignEx campaignEx3 = this.b;
                                        if (campaignEx3 == null || campaignEx3.getRewardTemplateMode() == null || this.b.getRewardTemplateMode().f() != 5002010) {
                                            if (this.b.getAdSpaceT() == 2) {
                                                this.y.showVideoEndCover();
                                                break;
                                            } else {
                                                this.y.showEndcard(this.b.getVideo_end_type());
                                                break;
                                            }
                                        }
                                        break;
                                    case 12:
                                        k();
                                        this.x.videoOperate(3);
                                        this.x.dismissAllAlert();
                                        if (this.b.getVideo_end_type() != 3) {
                                            this.x.setVisibility(8);
                                        } else {
                                            this.x.setVisibility(0);
                                        }
                                        if (this.D || this.F != 0) {
                                            if (this.b.isDynamicView() && this.b.getDynamicTempCode() == 5 && TextUtils.isEmpty(this.b.getendcard_url())) {
                                                o();
                                                this.F = 0;
                                            }
                                            if (!this.D && this.F == 1) {
                                                j();
                                                h();
                                                i();
                                                if (q0.a().a("i_l_s_t_r_i", false) && !this.E) {
                                                    this.E = true;
                                                    MBridgeVideoView.u uVar = this.H;
                                                    if (uVar != null) {
                                                        uVar.a();
                                                    }
                                                }
                                            }
                                            if (this.b.getAdSpaceT() != 2) {
                                                this.y.showEndcard(this.b.getVideo_end_type());
                                                break;
                                            } else {
                                                this.y.showVideoEndCover();
                                                break;
                                            }
                                        }
                                        break;
                                    case 13:
                                        MBridgeVideoView mBridgeVideoView5 = this.x;
                                        if (mBridgeVideoView5 != null) {
                                            mBridgeVideoView5.closeVideoOperate(0, 2);
                                            str = this.x.getPlayURL();
                                            i2 = this.x.getBufferTimeout();
                                        } else {
                                            i2 = -1;
                                            str = "";
                                        }
                                        CampaignEx campaignEx4 = this.b;
                                        String videoUrlEncode = campaignEx4 != null ? campaignEx4.getVideoUrlEncode() : "";
                                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                                        eVar.a("play_url", str);
                                        eVar.a(CampaignEx.JSON_KEY_VIDEO_URL, videoUrlEncode);
                                        eVar.a("timeout", Integer.valueOf(i2));
                                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_video_buffer_timeout", this.b, eVar);
                                        break;
                                    case 14:
                                        if (!this.C) {
                                            this.x.closeVideoOperate(0, 1);
                                            break;
                                        }
                                        break;
                                    case 15:
                                        if (obj != null && (obj instanceof MBridgeVideoView.v)) {
                                            MBridgeVideoView.v vVar = (MBridgeVideoView.v) obj;
                                            int videoInteractiveType = this.y.getVideoInteractiveType();
                                            if (this.b.getAdSpaceT() == 2) {
                                                SoundImageView soundImageView = this.x.mSoundImageView;
                                                if (soundImageView != null && (soundImageView.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
                                                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.x.mSoundImageView.getLayoutParams();
                                                    layoutParams.setMargins(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f), 0, 0, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 85.0f));
                                                    this.x.mSoundImageView.setLayoutParams(layoutParams);
                                                }
                                                TextView textView = this.x.tvFlag;
                                                if (textView != null && (textView.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
                                                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.x.tvFlag.getLayoutParams();
                                                    layoutParams2.setMargins(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f), 0, 0, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 85.0f));
                                                    this.x.tvFlag.setVisibility(0);
                                                    this.x.tvFlag.setLayoutParams(layoutParams2);
                                                }
                                                this.y.showVideoClickView(1);
                                            } else if (videoInteractiveType >= 0 && vVar.f9880a >= videoInteractiveType) {
                                                this.y.showVideoClickView(1);
                                                this.x.soundOperate(0, 1);
                                            }
                                            this.C = vVar.c;
                                            if (this.b.getDynamicTempCode() == 5) {
                                                a(vVar.f9880a, vVar.b);
                                                break;
                                            } else {
                                                int i4 = this.z;
                                                if (((i4 >= 0 && ((i3 = vVar.f9880a) >= i4 || i3 == vVar.b)) || (this.b.getVideoCompleteTime() > 0 && (vVar.f9880a > this.b.getVideoCompleteTime() || vVar.f9880a == vVar.b))) && !this.C) {
                                                    this.x.closeVideoOperate(0, 2);
                                                    this.C = true;
                                                    break;
                                                }
                                            }
                                        }
                                        break;
                                }
                            } else if (q0.a().a("i_l_s_t_r_i", false) && (obj instanceof MBridgeVideoView.u)) {
                                this.H = (MBridgeVideoView.u) obj;
                            }
                        }
                    } else if (obj != null && (obj instanceof Integer)) {
                        if (((Integer) obj).intValue() == 1) {
                            num = 2;
                        } else {
                            num = 1;
                        }
                        this.x.soundOperate(num.intValue(), -1);
                    }
                }
                this.x.dismissAllAlert();
                this.x.videoOperate(3);
                CampaignEx campaignEx5 = this.b;
                if (campaignEx5 != null && campaignEx5.isDynamicView() && this.b.getDynamicTempCode() == 5) {
                    if (this.y != null) {
                        MBridgeVideoView mBridgeVideoView6 = this.x;
                        if (mBridgeVideoView6.mCurrPlayNum == mBridgeVideoView6.mCampaignSize) {
                            if (this.b.getAdSpaceT() != 2) {
                                this.y.setRewardStatus(true);
                                this.y.showOrderCampView();
                            }
                            i = 16;
                        }
                    }
                    com.mbridge.msdk.video.bt.module.orglistener.f.a(this.b, this.g, this.x.mCurrentPlayProgressTime);
                }
                if (this.G == 2 && !this.y.endCardShowing() && this.b.getAdSpaceT() != 2) {
                    this.y.showEndcard(this.b.getVideo_end_type());
                }
                i = 16;
            } else if (!this.y.endCardShowing()) {
                int videoInteractiveType2 = this.y.getVideoInteractiveType();
                if (videoInteractiveType2 != -2) {
                    if (videoInteractiveType2 == -1) {
                        if (this.y.isLast()) {
                            this.y.showVideoClickView(1);
                            this.x.soundOperate(0, 1);
                            p();
                        } else {
                            this.y.showVideoClickView(-1);
                            this.x.soundOperate(0, 2);
                            n();
                        }
                    }
                } else if (this.y.miniCardLoaded()) {
                    this.y.showVideoClickView(2);
                }
            }
        }
        super.a(i, obj);
    }

    private void a(int i, int i2) {
        CampaignEx campaignEx;
        if (this.C || this.x == null || (campaignEx = this.b) == null) {
            return;
        }
        int i3 = this.z;
        int i4 = (i3 < 0 || i < i3) ? 1 : 2;
        if (i4 != 2 && (campaignEx.getVideoCompleteTime() != 0 ? i > this.b.getVideoCompleteTime() : this.x.mCurrPlayNum > 1)) {
            i4 = 2;
        }
        if (i4 != 2 && this.x.mCurrPlayNum > 1 && i == i2) {
            i4 = 2;
        }
        if (i4 == 2) {
            this.x.closeVideoOperate(0, i4);
            this.C = true;
        }
    }
}
