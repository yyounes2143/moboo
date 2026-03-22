package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: assets/audience_network.dex */
public class ZB implements View.OnTouchListener {
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i;
        switch (motionEvent.getAction()) {
            case 0:
                i = ZH.A0H;
                XP.A0K(view, i);
                break;
            case 1:
                XP.A0K(view, 0);
                break;
        }
        return false;
    }
}
