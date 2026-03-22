package com.facebook.ads.redexgen.X;

import java.util.Collection;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.io  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1705io implements MK {
    public final /* synthetic */ C1376dL A00;
    public final /* synthetic */ String A01;
    public final /* synthetic */ JSONObject A02;

    public C1705io(JSONObject jSONObject, C1376dL c1376dL, String str) {
        this.A02 = jSONObject;
        this.A00 = c1376dL;
        this.A01 = str;
    }

    @Override // com.facebook.ads.redexgen.X.MK
    public final String A7G() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.MK
    public final Collection<String> A7h() {
        return ML.A03(this.A00, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.MK
    public final MJ A8C() {
        return ML.A00(this.A02);
    }
}
