package com.applovin.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class w7 {

    /* renamed from: a  reason: collision with root package name */
    private final String f3805a;
    private final String b;
    private final List c;

    public w7(JSONObject jSONObject) {
        this.f3805a = JsonUtils.getString(jSONObject, "user_type", TtmlNode.COMBINE_ALL);
        this.b = JsonUtils.getString(jSONObject, "device_type", TtmlNode.COMBINE_ALL);
        this.c = JsonUtils.getStringList(jSONObject, "segments", null);
    }

    public String a() {
        return this.f3805a;
    }

    public String b() {
        return this.b;
    }

    public List c() {
        return this.c;
    }
}
