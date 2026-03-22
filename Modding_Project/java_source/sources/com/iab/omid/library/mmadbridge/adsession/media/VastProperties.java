package com.iab.omid.library.mmadbridge.adsession.media;

import com.iab.omid.library.mmadbridge.utils.d;
import com.iab.omid.library.mmadbridge.utils.g;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class VastProperties {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Position f8270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f8271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Float f8272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f8273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public VastProperties(boolean z, Float f, boolean z2, Position position) {
        this.f8273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f8272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f;
        this.f8271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        this.f8270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = position;
    }

    public static VastProperties Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, Position position) {
        g.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(position, "Position is null");
        return new VastProperties(false, null, z, position);
    }

    public JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f8273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (this.f8273Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                jSONObject.put("skipOffset", this.f8272Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            jSONObject.put("autoPlay", this.f8271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            jSONObject.put("position", this.f8270Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            return jSONObject;
        } catch (JSONException e) {
            d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("VastProperties: JSON error", e);
            return jSONObject;
        }
    }
}
