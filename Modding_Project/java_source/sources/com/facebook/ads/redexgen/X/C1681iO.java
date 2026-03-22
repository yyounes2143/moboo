package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.facebook.ads.redexgen.X.iO  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1681iO extends AbstractRunnableC1061Vt {
    public final /* synthetic */ C1680iN A00;
    public final /* synthetic */ Map A01;
    public final /* synthetic */ Map A02;

    public C1681iO(C1680iN c1680iN, Map map, Map map2) {
        this.A00 = c1680iN;
        this.A02 = map;
        this.A01 = map2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1061Vt
    public final void A07() {
        C1668iB c1668iB;
        C1376dL c1376dL;
        C1668iB c1668iB2;
        c1668iB = this.A00.A01;
        if (!TextUtils.isEmpty(c1668iB.A7G())) {
            HashMap hashMap = new HashMap();
            Map<String, String> extraData = this.A02;
            hashMap.putAll(extraData);
            Map<String, String> extraData2 = this.A01;
            hashMap.putAll(extraData2);
            c1376dL = this.A00.A0A;
            US A0A = c1376dL.A0A();
            c1668iB2 = this.A00.A01;
            A0A.ABT(c1668iB2.A7G(), hashMap);
        }
    }
}
