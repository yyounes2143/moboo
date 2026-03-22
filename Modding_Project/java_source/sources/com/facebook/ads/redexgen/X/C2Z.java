package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
/* renamed from: com.facebook.ads.redexgen.X.2Z  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C2Z extends AbstractC0581Da implements View.OnClickListener {
    public final DX A00;
    public final DR A01;
    public final DP A02;
    public final DN A03;
    public final C1416e0 A04;

    public C2Z(C1376dL c1376dL) {
        this(c1376dL, null);
    }

    public C2Z(C1376dL c1376dL, AttributeSet attributeSet) {
        this(c1376dL, attributeSet, 0);
    }

    public C2Z(C1376dL c1376dL, AttributeSet attributeSet, int i) {
        super(c1376dL, attributeSet, i);
        this.A03 = new DN() { // from class: com.facebook.ads.redexgen.X.2o
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(DO r3) {
                C2Z.this.setVisibility(0);
            }
        };
        this.A01 = new DR() { // from class: com.facebook.ads.redexgen.X.2m
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(C3Y c3y) {
                C1416e0 c1416e0;
                c1416e0 = C2Z.this.A04;
                c1416e0.setChecked(true);
            }
        };
        this.A02 = new DP() { // from class: com.facebook.ads.redexgen.X.2k
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(DQ dq) {
                C1416e0 c1416e0;
                c1416e0 = C2Z.this.A04;
                c1416e0.setChecked(false);
            }
        };
        this.A00 = new DX() { // from class: com.facebook.ads.redexgen.X.2j
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC0997Tf
            /* renamed from: A00 */
            public final void A03(C03393d c03393d) {
                C1416e0 c1416e0;
                c1416e0 = C2Z.this.A04;
                c1416e0.setChecked(true);
            }
        };
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.A04 = new C1416e0(c1376dL);
        this.A04.setChecked(true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 25.0f), (int) (displayMetrics.density * 25.0f));
        setVisibility(8);
        addView(this.A04, layoutParams);
        setClickable(true);
        setFocusable(true);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0581Da
    public final void A07() {
        super.A07();
        setOnClickListener(this);
        this.A04.setOnClickListener(this);
        if (getVideoView() != null) {
            getVideoView().getEventBus().A03(this.A03, this.A00, this.A01, this.A02);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0581Da
    public final void A08() {
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A02, this.A01, this.A00, this.A03);
        }
        setOnClickListener(null);
        this.A04.setOnClickListener(null);
        super.A08();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            E1 videoView = getVideoView();
            if (videoView == null) {
                return;
            }
            if (videoView.getState() == EnumC1446eU.A07 || videoView.getState() == EnumC1446eU.A05 || videoView.getState() == EnumC1446eU.A06) {
                videoView.A0h(EnumC1392db.A04, 11);
            } else if (videoView.getState() == EnumC1446eU.A0A) {
                videoView.A0l(true, 7);
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }

    public void setPauseAccessibilityLabel(String str) {
        this.A04.setPauseAccessibilityLabel(str);
    }

    public void setPlayAccessibilityLabel(String str) {
        this.A04.setPlayAccessibilityLabel(str);
    }
}
