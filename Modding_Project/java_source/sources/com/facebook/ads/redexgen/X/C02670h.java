package com.facebook.ads.redexgen.X;

import android.os.Build;
/* renamed from: com.facebook.ads.redexgen.X.0h  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C02670h extends C04206g {
    public static String[] A00 = {"4mrgyhu5NuMSfoRJ7wvth", "0QrbVGKHuGc2eSGsbm7N10peHve4GVgP", "Meba3O6SWeMBrZzPyfP10SBJe7jX", "3Oa5wanHMWuCrkjHvXNfwyLB0ZtCKHr4", "YOQh7xYBrfW2123ECT3lDkRgUFpenV07", "JuO7BKBrPjkMVs4", "5m", "UWhmaXdvjdchgK72Wd2HML9QO634NCpp"};

    public C02670h(C1376dL c1376dL) {
        super(c1376dL);
        setCarouselLayoutManager(c1376dL);
    }

    public FG getFullscreenCarouselRecyclerViewAdapter() {
        getAdapter();
        if (0 != 0) {
            getAdapter();
            return null;
        } else if (A00[6].length() != 2) {
            throw new RuntimeException();
        } else {
            A00[2] = "XAsjP5XwQSgGjSaOGRXjEIyXW47w";
            return null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.C04206g
    public C1556gI getLayoutManager() {
        return (C1556gI) super.getLayoutManager();
    }

    public QT getOnScrollListener() {
        return new OC(this);
    }

    private void setCarouselLayoutManager(C1376dL c1376dL) {
        C1556gI c1556gI = new C1556gI(c1376dL, 0, false);
        if (Build.VERSION.SDK_INT >= 24) {
            c1556gI.A1T(true);
        }
        super.setLayoutManager(c1556gI);
    }

    @Override // com.facebook.ads.redexgen.X.C04206g
    public void setLayoutManager(QO qo) {
    }
}
