package com.applovin.impl;

import androidx.media3.common.MimeTypes;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class e7 {
    private static final List f = Arrays.asList("video/mp4", "video/webm", "video/3gpp", MimeTypes.VIDEO_MATROSKA);

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3124a;
    private final JSONObject c;
    private final JSONObject d;
    protected List b = new ArrayList();
    private final long e = System.currentTimeMillis();

    public e7(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.k kVar) {
        this.f3124a = kVar;
        this.c = jSONObject;
        this.d = jSONObject2;
    }

    public List a() {
        return this.b;
    }

    public JSONObject b() {
        return this.c;
    }

    public long c() {
        return this.e;
    }

    public int d() {
        return this.b.size();
    }

    public JSONObject e() {
        return this.d;
    }

    public List f() {
        List<String> explode = CollectionUtils.explode(JsonUtils.getString(this.c, "vast_preferred_video_types", null));
        if (!explode.isEmpty()) {
            return explode;
        }
        return f;
    }

    public int g() {
        return z6.a(JsonUtils.getInt(this.c, "video_completion_percent", -1));
    }
}
