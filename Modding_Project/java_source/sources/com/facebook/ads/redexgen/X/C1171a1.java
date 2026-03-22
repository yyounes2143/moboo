package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;
/* renamed from: com.facebook.ads.redexgen.X.a1  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1171a1 extends AnimatorListenerAdapter {
    public static String[] A01 = {"k5y4HcmP3WilCE2VZpLOaWttH3xAOLy7", "eSgi8sc1orY1QZ7cQ8", "F5TnCrJPDClPJtEwFB2oNUJ5nCiidBg4", "xnMEtwlIMFZfWKB3cS73n7KTRrxCMhoB", "b1arQw", "C6TpqlDsaihj5jN4aw6xm6FVirU9LDzB", "ZuNDUcp", "YICO88MFw7L51"};
    public final /* synthetic */ RunnableC1172a2 A00;

    public C1171a1(RunnableC1172a2 runnableC1172a2) {
        this.A00 = runnableC1172a2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.setDuration(250L);
        layoutTransition.setDuration(3, 0L);
        layoutTransition.addTransitionListener(new C1170a0(this));
        this.A00.A00.A0M.setLayoutTransition(layoutTransition);
        ((AbstractC1165Zv) this.A00.A00).A09.setVisibility(8);
        this.A00.A00.A0Q.setVisibility(8);
        this.A00.A00.A0P.setVisibility(8);
        if (this.A00.A00.A0Y) {
            C04045q c04045q = this.A00.A00;
            String[] strArr = A01;
            if (strArr[1].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[2] = "HvpcnuIP3azyMlwgm6bi6Lo5XdKDqYiT";
            strArr2[0] = "sNLw3uGPuxJcolBE07vEciKR5UF7mh9p";
            c04045q.A0n();
        }
    }
}
