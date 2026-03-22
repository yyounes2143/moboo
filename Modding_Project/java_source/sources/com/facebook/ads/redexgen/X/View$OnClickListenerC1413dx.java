package com.facebook.ads.redexgen.X;

import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.dx  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC1413dx implements View.OnClickListener {
    public final /* synthetic */ C2R A00;

    public View$OnClickListenerC1413dx(C2R c2r) {
        this.A00 = c2r;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        E1 videoView;
        C1017Ua c1017Ua;
        C1376dL c1376dL;
        E1 videoView2;
        E1 videoView3;
        E1 videoView4;
        C1017Ua c1017Ua2;
        if (AbstractC1053Vl.A02(this)) {
            return;
        }
        try {
            videoView = this.A00.getVideoView();
            if (videoView != null) {
                c1017Ua = this.A00.A02;
                if (c1017Ua != null) {
                    c1017Ua2 = this.A00.A02;
                    c1017Ua2.A04(UZ.A0x, null);
                }
                c1376dL = this.A00.A01;
                c1376dL.A0F().A3Y();
                int[] iArr = C1414dy.A00;
                videoView2 = this.A00.getVideoView();
                switch (iArr[videoView2.getState().ordinal()]) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        videoView3 = this.A00.getVideoView();
                        videoView3.A0h(EnumC1392db.A04, 12);
                        return;
                    case 5:
                        videoView4 = this.A00.getVideoView();
                        videoView4.A0l(true, 8);
                        return;
                    default:
                        return;
                }
            }
        } catch (Throwable th) {
            AbstractC1053Vl.A00(th, this);
        }
    }
}
