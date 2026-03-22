package com.facebook.ads.redexgen.X;

import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.S2SRewardedVideoAdExtendedListener;
import com.google.common.base.Ascii;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.gy  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1596gy extends MQ {
    public static byte[] A01;
    public final /* synthetic */ C1594gw A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 43);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{9, Ascii.CAN, 1, 36, 40, 41, 51, 53, 40, 43, 43, 34, 53, 103, 46, 52, 103, 41, 50, 43, 43};
    }

    public C1596gy(C1594gw c1594gw) {
        this.A00 = c1594gw;
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A06() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A07() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardServerSuccess();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A08() {
        RewardedVideoAd rewardedVideoAd;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd == null) {
            s2SRewardedVideoAdExtendedListener = this.A00.A08;
            s2SRewardedVideoAdExtendedListener.onRewardedVideoCompleted();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A09() {
        RewardedVideoAd rewardedVideoAd;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd == null) {
            s2SRewardedVideoAdExtendedListener = this.A00.A08;
            s2SRewardedVideoAdExtendedListener.onRewardedVideoActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0A() {
        RewardedVideoAd rewardedVideoAd;
        RewardedVideoAd rewardedVideoAd2;
        long j;
        RewardedVideoAd rewardedVideoAd3;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd != null) {
            rewardedVideoAd2 = this.A00.A03;
            C0942Rb c0942Rb = (C0942Rb) rewardedVideoAd2.buildShowAdConfig();
            long currentTimeMillis = System.currentTimeMillis();
            j = this.A00.A02;
            c0942Rb.A02(currentTimeMillis - j);
            rewardedVideoAd3 = this.A00.A03;
            rewardedVideoAd3.show(c0942Rb.build());
            return;
        }
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        s2SRewardedVideoAdExtendedListener.onRewardedVideoClosed();
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0C() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C1584gm c1584gm;
        this.A00.A07.A0F().A3C();
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        c1584gm = this.A00.A09;
        s2SRewardedVideoAdExtendedListener.onAdClicked(c1584gm.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0D() {
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C1584gm c1584gm;
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        c1584gm = this.A00.A09;
        s2SRewardedVideoAdExtendedListener.onLoggingImpression(c1584gm.A6c());
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0F(MP mp) {
        C04316r c04316r;
        C1584gm c1584gm;
        C1584gm c1584gm2;
        C04316r c04316r2;
        AbstractC0827Mo abstractC0827Mo;
        RewardedVideoAd rewardedVideoAd;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C1584gm c1584gm3;
        AbstractC0827Mo abstractC0827Mo2;
        RewardedVideoAd rewardedVideoAd2;
        AbstractC0827Mo abstractC0827Mo3;
        C1584gm c1584gm4;
        RewardedVideoAd rewardedVideoAd3;
        AbstractC0827Mo abstractC0827Mo4;
        C1584gm c1584gm5;
        C1584gm c1584gm6;
        C1584gm c1584gm7;
        AbstractC0827Mo abstractC0827Mo5;
        C1584gm c1584gm8;
        c04316r = this.A00.A05;
        if (c04316r == null) {
            this.A00.A07.A08().AAy(A00(0, 3, 67), AbstractC0987Sv.A0N, new C0988Sw(A00(3, 18, 108)));
            return;
        }
        AbstractC1667iA abstractC1667iA = (AbstractC1667iA) mp;
        c1584gm = this.A00.A09;
        if (c1584gm.A03 != null) {
            c1584gm8 = this.A00.A09;
            abstractC1667iA.A02(c1584gm8.A03);
        }
        c1584gm2 = this.A00.A09;
        c1584gm2.A00 = abstractC1667iA.A0H();
        this.A00.A06 = true;
        C1594gw c1594gw = this.A00;
        c04316r2 = this.A00.A05;
        c1594gw.A04 = c04316r2.A0I();
        abstractC0827Mo = this.A00.A04;
        if (abstractC0827Mo != null) {
            int i = 0;
            abstractC0827Mo4 = this.A00.A04;
            if (!abstractC0827Mo4.A1T()) {
                abstractC0827Mo5 = this.A00.A04;
                i = ((AbstractC1657hy) abstractC0827Mo5).A1x();
            }
            if (i > 0) {
                WR wr = new WR();
                C1376dL c1376dL = this.A00.A07;
                c1584gm5 = this.A00.A09;
                if (wr.A09(c1376dL, c1584gm5.A06, i)) {
                    wr.A08(this.A00.A07, true);
                    C1594gw c1594gw2 = this.A00;
                    C1376dL c1376dL2 = this.A00.A07;
                    c1584gm6 = this.A00.A09;
                    String str = c1584gm6.A0D;
                    c1584gm7 = this.A00.A09;
                    c1594gw2.A03 = wr.A07(c1376dL2, str, c1584gm7.A06);
                } else {
                    wr.A08(this.A00.A07, false);
                }
            }
        }
        rewardedVideoAd = this.A00.A03;
        if (rewardedVideoAd == null) {
            s2SRewardedVideoAdExtendedListener = this.A00.A08;
            c1584gm3 = this.A00.A09;
            s2SRewardedVideoAdExtendedListener.onAdLoaded(c1584gm3.A6c());
            return;
        }
        abstractC0827Mo2 = this.A00.A04;
        ((AbstractC1657hy) abstractC0827Mo2).A2A(true);
        rewardedVideoAd2 = this.A00.A03;
        RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withFailOnCacheFailureEnabled = rewardedVideoAd2.buildLoadAdConfig().withFailOnCacheFailureEnabled(true);
        abstractC0827Mo3 = this.A00.A04;
        RewardedVideoAd.RewardedVideoAdLoadConfigBuilder withRewardData = withFailOnCacheFailureEnabled.withRewardData(abstractC0827Mo3.A0p());
        c1584gm4 = this.A00.A09;
        RewardedVideoAd.RewardedVideoLoadAdConfig loadAdConfig = withRewardData.withAdExperience(c1584gm4.A02).withAdListener(new C0843Ne(this)).build();
        rewardedVideoAd3 = this.A00.A03;
        rewardedVideoAd3.loadAd(loadAdConfig);
    }

    @Override // com.facebook.ads.redexgen.X.MQ
    public final void A0G(V1 v1) {
        C1584gm c1584gm;
        long j;
        S2SRewardedVideoAdExtendedListener s2SRewardedVideoAdExtendedListener;
        C1584gm c1584gm2;
        this.A00.A0D(true);
        c1584gm = this.A00.A09;
        LH A0F = c1584gm.A0B.A0F();
        j = this.A00.A01;
        A0F.A3F(XG.A01(j), v1.A03().getErrorCode(), v1.A04());
        s2SRewardedVideoAdExtendedListener = this.A00.A08;
        c1584gm2 = this.A00.A09;
        s2SRewardedVideoAdExtendedListener.onError(c1584gm2.A6c(), WT.A00(v1));
    }
}
