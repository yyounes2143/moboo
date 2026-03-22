package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import java.util.Arrays;
import java.util.Map;
import javax.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.5Q  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public abstract class C5Q extends AbstractC0727Ir implements Wf {
    public static byte[] A0L;
    public static String[] A0M = {"XgHadHW09EVAxZ9Csjyh8Iwd", "cGY", "0gnHO0byxZtUV0t5q6", "nitlVKI6s75UlUdu4qHy2TBluRJ6Vnqb", "dqu", "CAnKNEP5j3LNWAO1IgUwk41cBq", "Gj8h5dX0pUMTu0Q6FRM85YsFx7LjGw4a", "ydUjPQqek3X4wwrCfoz9Rz5n"};
    public static final int A0N;
    public static final int A0O;
    public static final int A0P;
    public RelativeLayout A00;
    public YM A01;
    @Nullable
    public InterfaceC1265bX A02;
    public FH A03;
    public C1345cp A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public final Paint A08;
    public final Path A09;
    public final RectF A0A;
    public final C1376dL A0B;
    public final C1073Wh A0C;
    public final InterfaceC1105Xn A0D;
    public final C1214ai A0E;
    public final DX A0F;
    public final DR A0G;
    public final DP A0H;
    public final DN A0I;
    public final DE A0J;
    public final String A0K;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A0M;
            if (strArr[0].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[1] = "5LW";
            strArr2[4] = "hlZ";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 11);
            i4++;
        }
    }

    public static void A03() {
        A0L = new byte[]{68, 70, 85, 72, 82, 84, 66, 75, 120, 68, 70, 85, 67};
    }

    public abstract void A1V(C1376dL c1376dL);

    static {
        A03();
        A0O = (int) (AbstractC1077Wl.A02 * 1.0f);
        A0P = (int) (AbstractC1077Wl.A02 * 4.0f);
        A0N = (int) (AbstractC1077Wl.A02 * 6.0f);
    }

    public C5Q(C1214ai c1214ai, boolean z, String str, FH fh) {
        super(c1214ai, z);
        this.A09 = new Path();
        this.A0A = new RectF();
        this.A0J = new DE() { // from class: com.facebook.ads.redexgen.X.5Y
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(DF df) {
                FH fh2;
                fh2 = C5Q.this.A03;
                fh2.A0P().setVolume(C5Q.this.getVideoView().getVolume());
            }
        };
        this.A0F = new DX() { // from class: com.facebook.ads.redexgen.X.5X
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(C03393d c03393d) {
                FH fh2;
                fh2 = C5Q.this.A03;
                fh2.A0N().AFc(((Integer) C5Q.this.getTag(-1593835536)).intValue());
            }
        };
        this.A0H = new DP() { // from class: com.facebook.ads.redexgen.X.5W
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(DQ dq) {
                FH fh2;
                fh2 = C5Q.this.A03;
                fh2.A0O().AFo(C5Q.this);
            }
        };
        this.A0G = new DR() { // from class: com.facebook.ads.redexgen.X.5V
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(C3Y c3y) {
                FH fh2;
                fh2 = C5Q.this.A03;
                fh2.A0O().AFm(C5Q.this);
            }
        };
        this.A0I = new DN() { // from class: com.facebook.ads.redexgen.X.5U
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(DO r3) {
                C5Q.this.A07 = true;
                C5Q.this.A02();
            }
        };
        this.A0D = c1214ai.A0D();
        this.A0E = c1214ai;
        this.A03 = fh;
        this.A0K = str;
        this.A0B = c1214ai.A06();
        this.A0C = C1073Wh.A00(c1214ai.A06(), c1214ai.A05(), this);
        setGravity(17);
        setPadding(A0O, 0, A0O, A0O);
        XP.A0K(this, 0);
        setUpView(this.A0B);
        this.A08 = new Paint();
        this.A08.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.A08.setStyle(Paint.Style.FILL);
        this.A08.setAlpha(16);
        this.A08.setAntiAlias(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        if (this.A02 == null) {
            return;
        }
        if ((A1T() && this.A07) || (!A1T() && this.A06)) {
            this.A02.ACO();
        }
    }

    private void A04(View view) {
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        XP.A0I(view);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public boolean A0C() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public final void A1B() {
        super.A1B();
        this.A0C.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1210ae
    public final boolean A1M() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0727Ir
    public final void A1P() {
        if (A1T()) {
            this.A04.A01();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0727Ir
    public final void A1Q() {
        if (A1T()) {
            A1R();
            C1345cp c1345cp = this.A04;
            EnumC1392db enumC1392db = EnumC1392db.A02;
            if (A0M[2].length() == 4) {
                throw new RuntimeException();
            }
            A0M[2] = "GrzUS";
            c1345cp.A05(enumC1392db);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0727Ir
    public final void A1R() {
        float volume = this.A03.A0P().getVolume();
        if (A1T()) {
            float newVolume = this.A04.getVolume();
            if (volume != newVolume) {
                C1345cp c1345cp = this.A04;
                if (A0M[5].length() == 9) {
                    throw new RuntimeException();
                }
                String[] strArr = A0M;
                strArr[1] = "cdp";
                strArr[4] = "iOc";
                c1345cp.setVolume(volume);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0727Ir
    public final boolean A1S() {
        if (A1T()) {
            boolean A06 = this.A04.A06();
            if (A0M[2].length() == 4) {
                throw new RuntimeException();
            }
            A0M[2] = "SbvNib3Q04NWLkmSI4CaBbpy";
            if (A06) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0727Ir
    public final boolean A1T() {
        return this.A05;
    }

    public final /* synthetic */ void A1U(View view) {
        getCtaButton().A0E(A01(0, 13, 44));
    }

    public final void A1W(Map<String, String> extraParams) {
        this.A04.A02();
        if (A1T()) {
            this.A04.A04(getAdEventManager(), this.A0K, extraParams);
        }
    }

    public final RelativeLayout getMediaContainer() {
        return this.A00;
    }

    public final C1345cp getVideoView() {
        return this.A04;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        this.A09.reset();
        this.A0A.set(0.0f, 0.0f, getWidth(), getHeight());
        this.A09.addRoundRect(this.A0A, A0N, A0N, Path.Direction.CW);
        canvas.drawPath(this.A09, this.A08);
        this.A0A.set(A0O, 0.0f, getWidth() - A0O, getHeight() - A0O);
        this.A09.addRoundRect(this.A0A, A0P, A0P, Path.Direction.CW);
        canvas.clipPath(this.A09);
        super.onDraw(canvas);
    }

    public void setAdTitleAndDescription(String str, String str2) {
        getTitleDescContainer().A04(str, str2, null, true, false);
    }

    public void setCTAInfo(C0838Mz c0838Mz, Map<String, String> extraData) {
        getCtaButton().setCta(c0838Mz, this.A0K, extraData);
    }

    public void setImageUrl(String str) {
        this.A01.setVisibility(0);
        this.A04.setVisibility(8);
        new KZ(this.A01, this.A0B).A04().A06(new C0721Il(this)).A07(str);
    }

    public void setIsVideo(boolean z) {
        this.A05 = z;
    }

    public void setOnAssetsLoadedListener(InterfaceC1265bX interfaceC1265bX) {
        this.A02 = interfaceC1265bX;
    }

    public void setUpImageView(C1376dL c1376dL) {
        this.A01 = new YM(c1376dL);
        if (U7.A1I(c1376dL)) {
            AbstractC1162Zs.A00(this.A01, U7.A1J(c1376dL), new View$OnClickListenerC1271bd(this));
        }
        A04(this.A01);
    }

    public void setUpMediaContainer(C1376dL c1376dL) {
        this.A00 = new RelativeLayout(c1376dL);
        A04(this.A00);
        C1072Wg A02 = this.A0C.A02(this.A0E.A05());
        this.A0E.A06().A0H().A00(A02.A01);
        getCtaButton().setCreativeAsCtaLoggingHelper(this.A0C);
        if (this.A0E.A05().A1W() && U7.A2o(this.A0B)) {
            this.A00.setOnClickListener(new View$OnClickListenerC1270bc(this));
        } else if (!A02.A00) {
        } else {
            this.A00.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.bb
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C5Q.this.A1U(view);
                }
            });
        }
    }

    public void setUpVideoView(C1376dL c1376dL) {
        this.A04 = new C1345cp(c1376dL, new C1017Ua(this.A0K, getAdEventManager()));
        if (U7.A1K(c1376dL)) {
            AbstractC1162Zs.A00(this.A04, U7.A1L(c1376dL), new View$OnClickListenerC1272be(this));
        }
        A04(this.A04);
    }

    private void setUpView(C1376dL c1376dL) {
        setUpImageView(c1376dL);
        setUpVideoView(c1376dL);
        setUpMediaContainer(c1376dL);
        this.A00.addView(this.A01);
        this.A00.addView(this.A04);
        A1V(c1376dL);
    }

    public void setVideoPlaceholderUrl(String str) {
        this.A04.setPlaceholderUrl(str);
    }

    public void setVideoUrl(String str) {
        this.A01.setVisibility(8);
        this.A04.setVisibility(0);
        this.A04.setVideoURI(str);
        this.A04.A03(this.A0J);
        this.A04.A03(this.A0F);
        this.A04.A03(this.A0H);
        this.A04.A03(this.A0G);
        this.A04.A03(this.A0I);
    }
}
