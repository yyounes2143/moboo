package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.HashMap;
/* renamed from: com.facebook.ads.redexgen.X.ae  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC1210ae extends RelativeLayout {
    public C0837My A00;
    public boolean A01;
    public final C1376dL A02;
    public final US A03;
    public final KE A04;
    public final C1196aQ A05;
    public final C1214ai A06;
    public static final int A07 = (int) (AbstractC1077Wl.A02 * 16.0f);
    public static final int A08 = (int) (AbstractC1077Wl.A02 * 28.0f);
    public static final int A0B = (int) (AbstractC1077Wl.A02 * 2.0f);
    public static final int A0E = (int) (AbstractC1077Wl.A02 * 4.0f);
    public static final int A0I = (int) (AbstractC1077Wl.A02 * 8.0f);
    public static final int A09 = (int) (AbstractC1077Wl.A02 * 12.0f);
    public static final int A0A = (int) (AbstractC1077Wl.A02 * 16.0f);
    public static final int A0C = (int) (AbstractC1077Wl.A02 * 20.0f);
    public static final int A0D = (int) (AbstractC1077Wl.A02 * 24.0f);
    public static final int A0F = (int) (AbstractC1077Wl.A02 * 44.0f);
    public static final int A0G = (int) (AbstractC1077Wl.A02 * 48.0f);
    public static final int A0H = (int) (AbstractC1077Wl.A02 * 64.0f);
    public static final int A0J = (int) (AbstractC1077Wl.A02 * 32.0f);

    public abstract boolean A1M();

    public AbstractC1210ae(C1214ai c1214ai, boolean z) {
        super(c1214ai.A06());
        C0837My A00;
        this.A06 = c1214ai;
        this.A02 = c1214ai.A06();
        this.A03 = c1214ai.A07();
        if (c1214ai.A00() == 1) {
            A00 = c1214ai.A05().A1z().A01();
        } else {
            A00 = c1214ai.A05().A1z().A00();
        }
        this.A00 = A00;
        this.A01 = z;
        this.A04 = new KE(c1214ai.A06(), c1214ai.A05(), this.A00, c1214ai.A07(), c1214ai.A0D(), c1214ai.A0G(), c1214ai.A0A(), c1214ai.A09());
        this.A04.setRoundedCornersEnabled(A01());
        this.A04.setViewShowsOverMedia(A0C());
        XP.A0E(1001, this.A04);
        this.A05 = new C1196aQ(this.A02, this.A00, this.A01, A02(), A0D());
        XP.A0I(this.A05);
    }

    public final ImageView A00(C1376dL c1376dL, AbstractC1657hy abstractC1657hy, C1017Ua c1017Ua, Z5 z5, InterfaceC1105Xn interfaceC1105Xn, Handler handler) {
        ImageView A01 = Z9.A01(c1376dL, c1017Ua, abstractC1657hy, z5, interfaceC1105Xn, handler);
        XP.A0I(A01);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(A0A, 0, 0, A0A);
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        A01.setLayoutParams(layoutParams);
        return A01;
    }

    public boolean A01() {
        return true;
    }

    public boolean A02() {
        return true;
    }

    public final boolean A03() {
        return this.A06.A05().A1m() || this.A06.A05().A1o();
    }

    public boolean A0C() {
        return true;
    }

    public boolean A0D() {
        return true;
    }

    public ME A1A(String str) {
        return getCtaButton().A0E(str);
    }

    public void A1B() {
    }

    public void A1C() {
    }

    public void A1D() {
    }

    public void A1E() {
    }

    public void A1F() {
    }

    public void A1G(C0828Mp c0828Mp, String str, double d, Bundle bundle) {
        this.A05.A04(c0828Mp.A0I().A0E(), c0828Mp.A0I().A04(), null, false, !A1M() && d > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && d < 1.0d);
        this.A04.setCta(c0828Mp.A0J(), str, new HashMap());
    }

    public void A1H(C03393d c03393d) {
    }

    public void A1I(DO r1) {
    }

    public void A1J(C3Q c3q, int i) {
    }

    public boolean A1K() {
        return false;
    }

    public boolean A1L() {
        return true;
    }

    public boolean A1N(boolean z) {
        return false;
    }

    public C1376dL getAdContextWrapper() {
        return this.A02;
    }

    public US getAdEventManager() {
        return this.A03;
    }

    public int getCloseButtonStyle() {
        return 0;
    }

    public C0837My getColors() {
        return this.A00;
    }

    public KE getCtaButton() {
        return this.A04;
    }

    public C1196aQ getTitleDescContainer() {
        return this.A05;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        C0837My A00;
        super.onConfigurationChanged(configuration);
        if (configuration.orientation == 1) {
            A00 = this.A06.A05().A1z().A01();
        } else {
            A00 = this.A06.A05().A1z().A00();
        }
        this.A00 = A00;
        this.A04.setViewShowsOverMedia(A0C());
        this.A04.setUpButtonColors(this.A00);
        this.A05.A03(this.A00, this.A01);
    }

    public void setAccidentalClickCappingListener(MF mf) {
        getCtaButton().getCtaActionHelper().A07(mf);
    }

    public void setChainedWatchAndBrowseSkippableStatus(boolean z) {
    }
}
