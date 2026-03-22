package com.sensorsdata.analytics.android.sdk.exposure;

import android.graphics.Rect;
import android.view.View;
import com.sensorsdata.analytics.android.sdk.util.WindowHelper;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class ExposureVisible {
    private final HashMap<String, Boolean> mVisible = new HashMap<>();

    /* JADX WARN: Removed duplicated region for block: B:10:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isParentVisible(android.view.View r4) {
        /*
            r3 = this;
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            android.view.ViewParent r4 = r4.getParent()
        L8:
            boolean r1 = r4 instanceof android.view.View
            if (r1 != 0) goto Le
            r4 = 1
            return r4
        Le:
            r1 = r4
            android.view.View r1 = (android.view.View) r1
            android.graphics.Rect r2 = new android.graphics.Rect
            r2.<init>()
            boolean r1 = r3.isViewSelfVisible(r1, r2)
            if (r1 != 0) goto L1d
            return r0
        L1d:
            android.view.ViewParent r4 = r4.getParent()
            if (r4 != 0) goto L8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.exposure.ExposureVisible.isParentVisible(android.view.View):boolean");
    }

    private boolean isViewSelfVisible(View view, Rect rect) {
        boolean booleanValue;
        if (view != null && view.getWindowVisibility() != 8) {
            HashMap<String, Boolean> hashMap = this.mVisible;
            Boolean bool = hashMap.get(view.hashCode() + "");
            if (bool == null) {
                booleanValue = view.getLocalVisibleRect(rect);
                HashMap<String, Boolean> hashMap2 = this.mVisible;
                hashMap2.put(view.hashCode() + "", Boolean.valueOf(booleanValue));
            } else {
                booleanValue = bool.booleanValue();
            }
            if (WindowHelper.isDecorView(view.getClass())) {
                return true;
            }
            if (view.getWidth() > 0 && view.getHeight() > 0 && view.getAlpha() > 0.0f && booleanValue && ((view.getAnimation() != null && view.getAnimation().getFillAfter()) || view.getVisibility() == 0)) {
                return true;
            }
        }
        return false;
    }

    public void cleanVisible() {
        this.mVisible.clear();
    }

    public boolean isVisible(View view, Rect rect) {
        if (!isViewSelfVisible(view, rect) || !isParentVisible(view)) {
            return false;
        }
        return view.isShown();
    }
}
