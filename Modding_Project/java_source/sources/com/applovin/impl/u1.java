package com.applovin.impl;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.impl.a7;
import com.applovin.impl.w0;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class u1 extends v1 {
    private final a7 q0;
    private final Set r0;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements w0.b {
        public a() {
        }

        @Override // com.applovin.impl.w0.b
        public void a() {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(u1.this.h0 - (u1.this.Q.getDuration() - u1.this.Q.getCurrentPosition()));
            int D = u1.this.D();
            HashSet hashSet = new HashSet();
            for (k7 k7Var : new HashSet(u1.this.r0)) {
                if (k7Var.a(seconds, D)) {
                    hashSet.add(k7Var);
                    u1.this.r0.remove(k7Var);
                }
            }
            u1.this.a(hashSet);
            if (D >= 25 && D < 50) {
                u1.this.q0.getAdEventTracker().x();
            } else if (D >= 50 && D < 75) {
                u1.this.q0.getAdEventTracker().y();
            } else if (D >= 75) {
                u1.this.q0.getAdEventTracker().C();
            }
        }

        @Override // com.applovin.impl.w0.b
        public boolean b() {
            return !u1.this.k0;
        }
    }

    public u1(com.applovin.impl.sdk.ad.b bVar, final Activity activity, Map map, final com.applovin.impl.sdk.k kVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, kVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        HashSet hashSet = new HashSet();
        this.r0 = hashSet;
        a7 a7Var = (a7) bVar;
        this.q0 = a7Var;
        if (a7Var.z1()) {
            ImageView a2 = g7.a(a7Var.t1().e(), activity, kVar);
            this.Y = a2;
            a2.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.Ll
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    u1.this.a(activity, kVar, view);
                }
            });
        }
        a7.d dVar = a7.d.VIDEO;
        hashSet.addAll(a7Var.a(dVar, l7.f3187a));
        a(a7.d.IMPRESSION);
        a(dVar, "creativeView");
        a7Var.getAdEventTracker().g();
    }

    private boolean X() {
        if (this.Y != null && this.q0.z1()) {
            return true;
        }
        return false;
    }

    private void Y() {
        if (H() && !this.r0.isEmpty()) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                oVar.k("AppLovinFullscreenActivity", "Firing " + this.r0.size() + " un-fired video progress trackers when video was completed.");
            }
            a(this.r0);
        }
    }

    @Override // com.applovin.impl.v1
    public void E() {
        a(a7.d.VIDEO, "skip");
        this.q0.getAdEventTracker().B();
        super.E();
    }

    @Override // com.applovin.impl.v1
    public void F() {
        super.F();
        a7 a7Var = this.q0;
        if (a7Var != null) {
            a7Var.getAdEventTracker().i();
        }
    }

    @Override // com.applovin.impl.v1
    public void P() {
        long Z;
        int s;
        long j = 0;
        if (this.q0.Y() < 0 && this.q0.Z() < 0) {
            return;
        }
        if (this.q0.Y() >= 0) {
            Z = this.q0.Y();
        } else {
            a7 a7Var = this.q0;
            n7 x1 = a7Var.x1();
            if (x1 != null && x1.d() > 0) {
                j = TimeUnit.SECONDS.toMillis(x1.d());
            } else {
                long j2 = this.h0;
                if (j2 > 0) {
                    j = j2;
                }
            }
            if (a7Var.f1() && (s = (int) a7Var.s()) > 0) {
                j += TimeUnit.SECONDS.toMillis(s);
            }
            Z = (long) (j * (this.q0.Z() / 100.0d));
        }
        c(Z);
    }

    @Override // com.applovin.impl.v1
    public void T() {
        super.T();
        a7 a7Var = this.q0;
        if (a7Var != null) {
            a7Var.getAdEventTracker().j();
        }
    }

    @Override // com.applovin.impl.v1
    public void U() {
        Y();
        if (m7.a(this.q0)) {
            if (!this.k0) {
                a(a7.d.COMPANION, "creativeView");
                this.q0.getAdEventTracker().w();
                super.U();
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.o.a()) {
            this.c.a("AppLovinFullscreenActivity", "VAST ad does not have valid companion ad - dismissing...");
        }
        a("no_valid_companion_ad");
    }

    @Override // com.applovin.impl.v1
    public void W() {
        String str;
        super.W();
        a7.d dVar = a7.d.VIDEO;
        if (this.g0) {
            str = CampaignEx.JSON_NATIVE_VIDEO_MUTE;
        } else {
            str = CampaignEx.JSON_NATIVE_VIDEO_UNMUTE;
        }
        a(dVar, str);
        this.q0.getAdEventTracker().b(this.g0);
    }

    @Override // com.applovin.impl.v1
    public void d(long j) {
        super.d(j);
        this.q0.getAdEventTracker().b((float) TimeUnit.MILLISECONDS.toSeconds(j), z6.e(this.b));
    }

    @Override // com.applovin.impl.v1
    public void g(String str) {
        a(a7.d.ERROR, f7.MEDIA_FILE_ERROR);
        this.q0.getAdEventTracker().b(str);
        super.g(str);
    }

    @Override // com.applovin.impl.r1
    public void t() {
        a7.d dVar;
        super.t();
        if (this.k0) {
            dVar = a7.d.COMPANION;
        } else {
            dVar = a7.d.VIDEO;
        }
        a(dVar, CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        this.q0.getAdEventTracker().z();
    }

    @Override // com.applovin.impl.r1
    public void u() {
        a7.d dVar;
        super.u();
        if (this.k0) {
            dVar = a7.d.COMPANION;
        } else {
            dVar = a7.d.VIDEO;
        }
        a(dVar, CampaignEx.JSON_NATIVE_VIDEO_RESUME);
        this.q0.getAdEventTracker().A();
    }

    @Override // com.applovin.impl.v1, com.applovin.impl.r1
    public void w() {
        this.d0.c();
        super.w();
    }

    @Override // com.applovin.impl.v1, com.applovin.impl.r1
    public void x() {
        a((ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SensorsDataInstrumented
    public /* synthetic */ void a(Activity activity, com.applovin.impl.sdk.k kVar, View view) {
        Uri c = this.q0.t1().c();
        if (c != null) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                oVar.a("AppLovinFullscreenActivity", "Industry Icon clicked, opening URL: " + c);
            }
            a(a7.d.INDUSTRY_ICON_CLICK);
            w6.a(c, activity, kVar);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    @Override // com.applovin.impl.v1, com.applovin.impl.r1
    public void a(String str) {
        if (this.q0 != null) {
            a(a7.d.VIDEO, "close");
            a(a7.d.COMPANION, "close");
        }
        super.a(str);
    }

    @Override // com.applovin.impl.v1, com.applovin.impl.r1
    public void a(ViewGroup viewGroup) {
        super.a(viewGroup);
        if (X()) {
            a(a7.d.INDUSTRY_ICON_IMPRESSION);
            this.Y.setVisibility(0);
        }
        this.d0.a("PROGRESS_TRACKING", TimeUnit.SECONDS.toMillis(1L), new a());
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.a aVar = this.R;
        if (aVar != null) {
            arrayList.add(new u3(aVar, FriendlyObstructionPurpose.OTHER, "video stream buffering indicator"));
        }
        com.applovin.impl.adview.g gVar = this.S;
        if (gVar != null) {
            arrayList.add(new u3(gVar, FriendlyObstructionPurpose.CLOSE_AD, "skip button"));
        }
        e0 e0Var = this.T;
        if (e0Var != null) {
            arrayList.add(new u3(e0Var, FriendlyObstructionPurpose.OTHER, "countdown clock"));
        }
        ProgressBar progressBar = this.W;
        if (progressBar != null) {
            arrayList.add(new u3(progressBar, FriendlyObstructionPurpose.OTHER, "progress bar"));
        }
        ProgressBar progressBar2 = this.X;
        if (progressBar2 != null) {
            arrayList.add(new u3(progressBar2, FriendlyObstructionPurpose.OTHER, "postitial progress bar"));
        }
        ImageView imageView = this.U;
        if (imageView != null) {
            arrayList.add(new u3(imageView, FriendlyObstructionPurpose.VIDEO_CONTROLS, "mute button"));
        }
        com.applovin.impl.adview.l lVar = this.V;
        if (lVar != null) {
            arrayList.add(new u3(lVar, FriendlyObstructionPurpose.VIDEO_CONTROLS, "generic webview overlay containing HTML controls"));
        }
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null && kVar.a()) {
            com.applovin.impl.adview.k kVar2 = this.j;
            arrayList.add(new u3(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier()));
        }
        this.q0.getAdEventTracker().b(this.Q, arrayList);
    }

    @Override // com.applovin.impl.v1
    public void a(MotionEvent motionEvent, Bundle bundle) {
        a(a7.d.VIDEO_CLICK);
        this.q0.getAdEventTracker().v();
        super.a(motionEvent, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Set set) {
        a(set, f7.UNSPECIFIED);
    }

    private void a(a7.d dVar) {
        a(dVar, f7.UNSPECIFIED);
    }

    private void a(a7.d dVar, String str) {
        a(dVar, str, f7.UNSPECIFIED);
    }

    private void a(a7.d dVar, f7 f7Var) {
        a(dVar, "", f7Var);
    }

    private void a(a7.d dVar, String str, f7 f7Var) {
        a(this.q0.a(dVar, str), f7Var);
    }

    private void a(Set set, f7 f7Var) {
        if (set == null || set.isEmpty()) {
            return;
        }
        long seconds = TimeUnit.MILLISECONDS.toSeconds(this.Q.getCurrentPosition());
        o7 y1 = this.q0.y1();
        Uri d = y1 != null ? y1.d() : null;
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            oVar.a("AppLovinFullscreenActivity", "Firing " + set.size() + " tracker(s): " + set);
        }
        m7.a(set, seconds, d, f7Var, this.b);
    }
}
