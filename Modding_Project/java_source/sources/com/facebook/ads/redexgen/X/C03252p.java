package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
/* renamed from: com.facebook.ads.redexgen.X.2p  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C03252p extends AbstractC0581Da {
    public static String[] A04 = {"hk0dnqphYZ0B2FA2HHbeoaEOUC9cHUBv", "tTD1hmxYdA3U5n9t8Z20NsAIS", "BfpeWRttIDT9n", "BdF5VvNpfNEd8dAFz8yBB3tju8j2QPKu", "opIRFI8OjkHX6xnIsWRzCqWD0", "Ob0oYr4gU4dgC4EVWukqT8XlG8BtSCcB", "HPuRIIJ62FmEL4YF0ip1f4WrSa12U9bK", "7SB"};
    public final ImageView A00;
    public final C1376dL A01;
    public final AbstractC0997Tf<C03393d> A02;
    public final AbstractC0997Tf<DQ> A03;

    public C03252p(C1376dL c1376dL) {
        this(c1376dL, false);
    }

    public C03252p(C1376dL c1376dL, boolean z) {
        super(c1376dL);
        ImageView.ScaleType scaleType;
        int color;
        this.A03 = new C0580Cz(this);
        this.A02 = new C0579Cy(this);
        this.A01 = c1376dL;
        this.A00 = new ImageView(c1376dL);
        if (!z) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
            color = ViewCompat.MEASURED_STATE_MASK;
        } else {
            scaleType = ImageView.ScaleType.FIT_START;
            color = 0;
        }
        this.A00.setScaleType(scaleType);
        XP.A0K(this.A00, color);
        this.A00.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        addView(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0581Da
    public final void A07() {
        super.A07();
        if (getVideoView() != null) {
            C0996Te<AbstractC0997Tf, C0995Td> eventBus = getVideoView().getEventBus();
            AbstractC0997Tf[] abstractC0997TfArr = new AbstractC0997Tf[2];
            String[] strArr = A04;
            if (strArr[3].charAt(25) != strArr[5].charAt(25)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[7] = "Nqq";
            strArr2[2] = "4efeQvUmAeHBj";
            abstractC0997TfArr[0] = this.A03;
            abstractC0997TfArr[1] = this.A02;
            eventBus.A03(abstractC0997TfArr);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0581Da
    public final void A08() {
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A02, this.A03);
        }
        super.A08();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.A00.layout(0, 0, i3 - i, i4 - i2);
    }

    public void setImage(String str) {
        setImage(str, null);
    }

    public void setImage(String str, InterfaceC1158Zo interfaceC1158Zo) {
        if (str == null) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        KZ downloadImageTask = new KZ(this.A00, this.A01).A04();
        if (interfaceC1158Zo != null) {
            downloadImageTask.A06(interfaceC1158Zo);
        }
        downloadImageTask.A07(str);
    }
}
