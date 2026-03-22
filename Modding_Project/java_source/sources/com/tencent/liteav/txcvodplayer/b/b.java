package com.tencent.liteav.txcvodplayer.b;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcvodplayer.b.c;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    String f10317a;
    String b;
    String c;
    int d;
    long e;
    public String f;
    List<c.e> g;
    String h;
    c.C0210c i;
    List<c.d> j;
    private JSONObject k;
    private String l;
    private List<a> m;
    private String n;
    private String o;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f10318a;
        public String b;
    }

    public b(JSONObject jSONObject) {
        this.k = jSONObject;
        c();
    }

    private void a(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        this.g = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            c.e eVar = new c.e();
            int optInt = jSONObject.optInt("width");
            int optInt2 = jSONObject.optInt("height");
            eVar.b = optInt;
            eVar.c = optInt2;
            eVar.f10330a = jSONObject.optString("resolutionName");
            eVar.d = jSONObject.optString("type");
            eVar.e = jSONObject.optLong("size");
            eVar.f = jSONObject.optString("url");
            this.g.add(eVar);
        }
    }

    private void c() {
        JSONObject optJSONObject;
        try {
            JSONObject jSONObject = this.k.getJSONObject("media");
            if (jSONObject != null) {
                JSONObject optJSONObject2 = jSONObject.optJSONObject("basicInfo");
                if (optJSONObject2 != null) {
                    this.f10317a = optJSONObject2.optString("name");
                    String optString = optJSONObject2.optString("description");
                    this.b = optString;
                    if (TextUtils.isEmpty(optString)) {
                        this.b = this.f10317a;
                    }
                    this.c = optJSONObject2.optString("coverUrl");
                    this.d = optJSONObject2.optInt(TypedValues.TransitionType.S_DURATION);
                    this.e = optJSONObject2.optLong("size");
                }
                String optString2 = jSONObject.optString("audioVideoType");
                if (TextUtils.equals(optString2, "AdaptiveDynamicStream")) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("streamingInfo");
                    if (jSONObject2 != null) {
                        JSONObject optJSONObject3 = jSONObject2.optJSONObject("plainOutput");
                        if (optJSONObject3 != null) {
                            this.l = optJSONObject3.optString("url");
                            a(optJSONObject3.optJSONArray("subStreams"));
                        }
                        JSONArray optJSONArray = jSONObject2.optJSONArray("drmOutput");
                        if (optJSONArray != null && optJSONArray.length() > 0) {
                            this.m = new ArrayList();
                            for (int i = 0; i < optJSONArray.length(); i++) {
                                JSONObject optJSONObject4 = optJSONArray.optJSONObject(i);
                                String optString3 = optJSONObject4.optString("type");
                                String optString4 = optJSONObject4.optString("url");
                                a aVar = new a();
                                aVar.f10318a = optString3;
                                aVar.b = optString4;
                                if (optString3.equalsIgnoreCase("SimpleAES")) {
                                    this.h = optString3;
                                }
                                this.m.add(aVar);
                                a(optJSONObject4.optJSONArray("subStreams"));
                            }
                        }
                        this.n = jSONObject2.optString("drmToken");
                        String optString5 = jSONObject2.optString("widevineLicenseUrl");
                        this.o = optString5;
                        if (!TextUtils.isEmpty(optString5)) {
                            this.h = "Widevine";
                        }
                    }
                } else if (TextUtils.equals(optString2, "Transcode")) {
                    JSONObject optJSONObject5 = jSONObject.optJSONObject("transcodeInfo");
                    if (optJSONObject5 != null) {
                        this.l = optJSONObject5.optString("url");
                    }
                } else if (TextUtils.equals(optString2, "Original") && (optJSONObject = jSONObject.optJSONObject("originalInfo")) != null) {
                    this.l = optJSONObject.optString("url");
                }
                JSONObject optJSONObject6 = jSONObject.optJSONObject("imageSpriteInfo");
                if (optJSONObject6 != null) {
                    c.C0210c c0210c = new c.C0210c();
                    this.i = c0210c;
                    c0210c.b = optJSONObject6.getString("webVttUrl");
                    JSONArray optJSONArray2 = optJSONObject6.optJSONArray("imageUrls");
                    if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                        ArrayList<String> arrayList = new ArrayList<>();
                        for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                            arrayList.add(optJSONArray2.getString(i2));
                        }
                        this.i.f10328a = arrayList;
                    }
                }
                a(jSONObject);
                JSONObject optJSONObject7 = jSONObject.optJSONObject("ghostWatermarkInfo");
                if (optJSONObject7 != null) {
                    this.f = optJSONObject7.optString("text");
                }
            }
        } catch (JSONException e) {
            LiteavLog.e("TXCPlayInfoParserV4", e.getMessage());
        }
    }

    public final String b() {
        if (!TextUtils.isEmpty(this.o)) {
            return this.o;
        }
        return null;
    }

    private void a(JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject optJSONObject = jSONObject.optJSONObject("keyFrameDescInfo");
        if (optJSONObject != null) {
            this.j = new ArrayList();
            JSONArray optJSONArray = optJSONObject.optJSONArray("keyFrameDescList");
            if (optJSONArray == null || optJSONArray.length() <= 0) {
                return;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                try {
                    jSONObject2 = optJSONArray.getJSONObject(i);
                } catch (JSONException e) {
                    e.printStackTrace();
                    jSONObject2 = null;
                }
                c.d dVar = new c.d();
                dVar.b = (float) jSONObject2.optLong("timeOffset");
                dVar.f10329a = jSONObject2.optString("content");
                this.j.add(dVar);
            }
        }
    }

    public final String a(String str) {
        if ("plain".equalsIgnoreCase(str)) {
            return this.l;
        }
        List<a> list = this.m;
        if (list != null) {
            for (a aVar : list) {
                String str2 = aVar.f10318a;
                if (str2 != null && str2.equalsIgnoreCase(str)) {
                    return aVar.b;
                }
            }
            return null;
        }
        return null;
    }

    public final String a() {
        if (TextUtils.isEmpty(this.n)) {
            return null;
        }
        return this.n;
    }
}
