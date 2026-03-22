package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.h4  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1601h4 extends MQ {
    public static byte[] A01;
    public static String[] A02 = {"swComlxz6aoGHqKS8LOj1g5iAOstdInC", "iLoXwxITRpbgZFbT1koR1uJW4vvDXY2W", "MpkXHfR6HdYIg9t449R", "HQI6v11U6roDlbOuDHGyMjhCWVrAbgmk", "qsbQ14vrFuO8q1N0nwgFIOsRNgh3HWyt", "NXqrvE65RyYHWICx", "E9yzS8MfEszoKvwo", "osh9YHk0bwFUuMRHqHbnPk"};
    public final /* synthetic */ C1597gz A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 98);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{97, 112, 105, 47, 35, 34, 56, 62, 35, 32, 32, 41, 62, 108, 37, 63, 108, 34, 57, 32, 32};
    }

    static {
        A01();
    }

    public C1601h4(C1597gz c1597gz) {
        this.A00 = c1597gz;
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A02() {
        InterstitialAd interstitialAd;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAd = this.A00.A01;
        if (interstitialAd == null) {
            this.A00.A04 = false;
            interstitialAdExtendedListener = this.A00.A07;
            interstitialAdExtendedListener.onInterstitialActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A04() {
        InterstitialAd interstitialAd;
        InterstitialAd interstitialAd2;
        C04386y c04386y;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C1593gv c1593gv;
        C04386y c04386y2;
        C04386y c04386y3;
        C04386y c04386y4;
        interstitialAd = this.A00.A01;
        if (interstitialAd != null) {
            interstitialAd2 = this.A00.A01;
            interstitialAd2.show();
            return;
        }
        this.A00.A04 = false;
        c04386y = this.A00.A03;
        if (c04386y != null && U7.A26(this.A00.A06)) {
            c04386y2 = this.A00.A03;
            c04386y2.A0S(new C1602h5(this));
            c04386y3 = this.A00.A03;
            c04386y3.A0N();
            c04386y4 = this.A00.A03;
            c04386y4.A0K();
            this.A00.A03 = null;
        }
        interstitialAdExtendedListener = this.A00.A07;
        c1593gv = this.A00.A08;
        interstitialAdExtendedListener.onInterstitialDismissed(c1593gv.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A05() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C1593gv c1593gv;
        interstitialAdExtendedListener = this.A00.A07;
        c1593gv = this.A00.A08;
        interstitialAdExtendedListener.onInterstitialDisplayed(c1593gv.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A06() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAdExtendedListener = this.A00.A07;
        interstitialAdExtendedListener.onRewardedAdServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A07() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAdExtendedListener = this.A00.A07;
        interstitialAdExtendedListener.onRewardedAdServerSucceeded();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A08() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        interstitialAdExtendedListener = this.A00.A07;
        interstitialAdExtendedListener.onRewardedAdCompleted();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0C() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C1593gv c1593gv;
        this.A00.A06.A0F().A3C();
        interstitialAdExtendedListener = this.A00.A07;
        c1593gv = this.A00.A08;
        interstitialAdExtendedListener.onAdClicked(c1593gv.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0D() {
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C1593gv c1593gv;
        interstitialAdExtendedListener = this.A00.A07;
        c1593gv = this.A00.A08;
        interstitialAdExtendedListener.onLoggingImpression(c1593gv.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0E(View view) {
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0F(MP mp) {
        C04386y c04386y;
        C04386y c04386y2;
        AbstractC0827Mo abstractC0827Mo;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C1593gv c1593gv;
        AbstractC0827Mo abstractC0827Mo2;
        InterstitialAd interstitialAd;
        InterstitialAdExtendedListener interstitialAdExtendedListener2;
        C1593gv c1593gv2;
        InterstitialAdExtendedListener interstitialAdExtendedListener3;
        C1593gv c1593gv3;
        InterstitialAd interstitialAd2;
        C1593gv c1593gv4;
        C1593gv c1593gv5;
        InterstitialAd interstitialAd3;
        C1593gv c1593gv6;
        C1593gv c1593gv7;
        C1593gv c1593gv8;
        c04386y = this.A00.A03;
        if (c04386y != null) {
            this.A00.A05 = true;
            C1597gz c1597gz = this.A00;
            c04386y2 = this.A00.A03;
            c1597gz.A02 = c04386y2.A0I();
            abstractC0827Mo = this.A00.A02;
            if (!(abstractC0827Mo instanceof AbstractC1657hy)) {
                interstitialAdExtendedListener = this.A00.A07;
                String[] strArr = A02;
                if (strArr[0].charAt(8) == strArr[3].charAt(8)) {
                    String[] strArr2 = A02;
                    strArr2[6] = "JHAXxmwzHKs3NajX";
                    strArr2[5] = "FHZeNyejFCAXh3Vz";
                    c1593gv = this.A00.A08;
                    interstitialAdExtendedListener.onAdLoaded(c1593gv.A6c());
                    return;
                }
            } else {
                abstractC0827Mo2 = this.A00.A02;
                AbstractC1657hy abstractC1657hy = (AbstractC1657hy) abstractC0827Mo2;
                if (abstractC1657hy.A1x() > 0) {
                    WR wr = new WR();
                    C1376dL c1376dL = this.A00.A06;
                    c1593gv6 = this.A00.A08;
                    if (wr.A09(c1376dL, c1593gv6.A08(), abstractC1657hy.A1x())) {
                        wr.A08(this.A00.A06, true);
                        C1597gz c1597gz2 = this.A00;
                        C1376dL c1376dL2 = this.A00.A06;
                        c1593gv7 = this.A00.A08;
                        String A0A = c1593gv7.A0A();
                        c1593gv8 = this.A00.A08;
                        c1597gz2.A01 = wr.A06(c1376dL2, A0A, c1593gv8.A08());
                    } else {
                        C1597gz c1597gz3 = this.A00;
                        if (A02[1].charAt(2) != 'w') {
                            A02[7] = "alFbtn3b1";
                            wr.A08(c1597gz3.A06, false);
                        } else {
                            String[] strArr3 = A02;
                            strArr3[6] = "OkLAbmcEeyte5Vfo";
                            strArr3[5] = "zgaU15rF2mVDrexS";
                            wr.A08(c1597gz3.A06, false);
                        }
                    }
                }
                C1597gz c1597gz4 = this.A00;
                if (A02[1].charAt(2) != 'w') {
                    A02[1] = "23I4hcZMgJ395X2lYna8PMjzW0ozt3hz";
                    interstitialAd = c1597gz4.A01;
                    if (interstitialAd != null) {
                        abstractC1657hy.A2A(true);
                        interstitialAd2 = this.A00.A01;
                        InterstitialAd.InterstitialAdLoadConfigBuilder withAdListener = interstitialAd2.buildLoadAdConfig().withAdListener(new C0842Nd(this, abstractC1657hy));
                        c1593gv4 = this.A00.A08;
                        InterstitialAd.InterstitialAdLoadConfigBuilder withCacheFlags = withAdListener.withCacheFlags(c1593gv4.A0B());
                        c1593gv5 = this.A00.A08;
                        InterstitialAd.InterstitialLoadAdConfig loadAdConfig = withCacheFlags.withRewardData(c1593gv5.A03()).build();
                        interstitialAd3 = this.A00.A01;
                        interstitialAd3.loadAd(loadAdConfig);
                        return;
                    }
                    C1597gz c1597gz5 = this.A00;
                    String[] strArr4 = A02;
                    if (strArr4[0].charAt(8) != strArr4[3].charAt(8)) {
                        interstitialAdExtendedListener3 = c1597gz5.A07;
                        c1593gv3 = this.A00.A08;
                        interstitialAdExtendedListener3.onAdLoaded(c1593gv3.A6c());
                        return;
                    }
                    A02[2] = "joZPUUFug9Ts";
                    interstitialAdExtendedListener2 = c1597gz5.A07;
                    c1593gv2 = this.A00.A08;
                    interstitialAdExtendedListener2.onAdLoaded(c1593gv2.A6c());
                    return;
                }
            }
            throw new RuntimeException();
        }
        this.A00.A06.A08().AAy(A00(0, 3, 98), AbstractC0987Sv.A0N, new C0988Sw(A00(3, 18, 46)));
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0G(V1 v1) {
        long j;
        InterstitialAdExtendedListener interstitialAdExtendedListener;
        C1593gv c1593gv;
        LH A0F = this.A00.A06.A0F();
        j = this.A00.A00;
        A0F.A3F(XG.A01(j), v1.A03().getErrorCode(), v1.A04());
        interstitialAdExtendedListener = this.A00.A07;
        c1593gv = this.A00.A08;
        interstitialAdExtendedListener.onError(c1593gv.A6c(), WT.A00(v1));
    }
}
