package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Ju  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0756Ju extends AbstractC1210ae implements Wf {
    public static byte[] A03;
    public static String[] A04 = {"jViytUMb8W4ggVUJxJM4ipopCTL5", "9aLNfhHGIgyW1yw0lAvb2knTk6C61HAs", "tSRmVjXXTSnTtzrce7INiQjRTYiInlbV", "4hcdJiGUQmFME9vgh87fiTmYWHBJid0b", "Sl93MFe7LYTqHCUKgRBPFfcYUFdC2Wx2", "6CReOOSeiw7R4vGYWPFAi839J8MszZAI", "rkSedGSxOJTtoP7gEY2R8PFp4jzzUrYJ", "HZKY5YyrBfN27m9O42YnVDeAUeo6GkfS"};
    public final AbstractC1657hy A00;
    public final C1073Wh A01;
    public final InterfaceC1105Xn A02;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A04[0].length() != 28) {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[1] = "P3g3yiO3ICi92ZTGqQIjITPfAPWFUEMm";
            strArr[2] = "pyBqNmisWoZkDTGCi8bHuToayw1uFlPn";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 78);
            i4++;
        }
    }

    public static void A01() {
        A03 = new byte[]{SignedBytes.MAX_POWER_OF_TWO, 68, 72, 78, 76};
    }

    static {
        A01();
    }

    public C0756Ju(C1214ai c1214ai, boolean z) {
        super(c1214ai, true);
        FrameLayout.LayoutParams mediaViewParams;
        this.A02 = c1214ai.A0D();
        this.A00 = c1214ai.A05();
        RelativeLayout relativeLayout = new RelativeLayout(c1214ai.A06());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        XP.A0P(relativeLayout, getAdContextWrapper());
        LinearLayout linearLayout = new LinearLayout(c1214ai.A06());
        linearLayout.setOrientation(!z ? 1 : 0);
        linearLayout.setGravity(80);
        XP.A0I(linearLayout);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(AbstractC1210ae.A07, 0, AbstractC1210ae.A07, AbstractC1210ae.A07);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(z ? -2 : -1, -2);
        layoutParams3.setMargins(z ? AbstractC1210ae.A07 : 0, z ? 0 : AbstractC1210ae.A07, 0, 0);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(z ? 0 : -1, -2);
        layoutParams4.setMargins(0, 0, 0, 0);
        layoutParams4.weight = 1.0f;
        linearLayout.addView(getTitleDescContainer(), layoutParams4);
        this.A01 = C1073Wh.A00(c1214ai.A06(), this.A00, this);
        C1072Wg A02 = this.A01.A02(this.A00);
        c1214ai.A06().A0H().A00(A02.A01);
        if (c1214ai.A0I() && !z) {
            C1342cm c1342cm = new C1342cm(c1214ai.A06());
            c1342cm.setPageDetails(c1214ai.A05().A23());
            int A05 = this.A06.A05().A1z().A00().A05(true);
            c1342cm.A02(A05, A05);
            XP.A0E(1007, c1342cm);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams5.setMargins(0, AbstractC1210ae.A07, 0, 0);
            linearLayout.addView(c1342cm, layoutParams5);
            if (U7.A18(c1214ai.A06())) {
                c1342cm.setOnClickListener(getCtaButton());
            }
        }
        linearLayout.addView(getCtaButton(), layoutParams3);
        relativeLayout.addView(linearLayout, layoutParams2);
        getCtaButton().A0F(c1214ai.A05(), c1214ai.A0C());
        View A022 = c1214ai.A02();
        if (A022 != null && (A02.A00 || U7.A1I(getAdContextWrapper()))) {
            if (z) {
                mediaViewParams = new FrameLayout.LayoutParams(-2, -1);
            } else {
                mediaViewParams = new FrameLayout.LayoutParams(-1, -2);
            }
            mediaViewParams.gravity = 17;
            FrameLayout frameLayout = new FrameLayout(c1214ai.A06());
            frameLayout.addView(A022, mediaViewParams);
            addView(frameLayout, new RelativeLayout.LayoutParams(-1, -1));
            getCtaButton().setCreativeAsCtaLoggingHelper(this.A01);
            if (A02.A00) {
                A022.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.aa
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        C0756Ju.this.A1O(view);
                    }
                });
            } else {
                AbstractC1162Zs.A00(A022, U7.A1J(getAdContextWrapper()), new View$OnClickListenerC1207ab(this));
            }
        } else if (A022 != null) {
            addView(A022, new RelativeLayout.LayoutParams(-1, -1));
        }
        addView(relativeLayout, layoutParams);
        if (U7.A17(c1214ai.A06())) {
            getTitleDescContainer().setCTAClickListener(getCtaButton());
            if (c1214ai.A0C() != null) {
                c1214ai.A0C().setCTAClickListener(getCtaButton());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public final void A1B() {
        super.A1B();
        this.A01.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public final void A1G(C0828Mp c0828Mp, String str, double d, Bundle bundle) {
        super.A1G(c0828Mp, str, d, bundle);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public final boolean A1M() {
        return true;
    }

    public final /* synthetic */ void A1O(View view) {
        getCtaButton().A0E(A00(0, 5, 103));
    }
}
