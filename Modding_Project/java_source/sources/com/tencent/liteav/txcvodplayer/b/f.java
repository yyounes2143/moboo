package com.tencent.liteav.txcvodplayer.b;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.txcvodplayer.b.c;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    protected JSONObject f10334a;
    g b;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f10335a;
        public String b;
        public List<Integer> c;
    }

    public f(JSONObject jSONObject) {
        this.f10334a = jSONObject;
    }

    private g l() {
        try {
            JSONObject jSONObject = this.f10334a.getJSONObject("videoInfo").getJSONObject("masterPlayList");
            g gVar = new g();
            gVar.f10336a = jSONObject.getString("url");
            return gVar;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private String m() {
        try {
            return this.f10334a.getJSONObject("playerInfo").getString("defaultVideoClassification");
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private List<Integer> n() {
        List<a> k = k();
        String m = m();
        if (m != null && k != null) {
            for (a aVar : k) {
                if (aVar.f10335a.equals(m)) {
                    return aVar.c;
                }
            }
            return null;
        }
        return null;
    }

    public final String a() {
        if (this.b == null) {
            this.b = c();
        }
        g gVar = this.b;
        if (gVar != null) {
            return gVar.f10336a;
        }
        return null;
    }

    public final int b() {
        if (this.b == null) {
            this.b = c();
        }
        g gVar = this.b;
        if (gVar != null) {
            return gVar.e;
        }
        return -1;
    }

    public final g c() {
        if (l() != null) {
            return l();
        }
        if (e().size() != 0) {
            List<Integer> n = n();
            if (n != null) {
                for (g gVar : e()) {
                    if (n.contains(Integer.valueOf(gVar.i))) {
                        return gVar;
                    }
                }
            }
            return e().get(0);
        }
        return f();
    }

    public final String d() {
        try {
            JSONObject jSONObject = this.f10334a.getJSONObject("coverInfo");
            if (jSONObject != null) {
                return jSONObject.getString("coverUrl");
            }
            return null;
        } catch (JSONException e) {
            LiteavLog.e("TXPlayInfoResponse", "get cover url failed.", e);
            return null;
        }
    }

    public final List<g> e() {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = this.f10334a.getJSONObject("videoInfo").getJSONArray("transcodeList");
            if (jSONArray != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    g gVar = new g();
                    gVar.f10336a = jSONObject.getString("url");
                    gVar.e = jSONObject.getInt(TypedValues.TransitionType.S_DURATION);
                    gVar.c = jSONObject.getInt("width");
                    gVar.b = jSONObject.getInt("height");
                    gVar.d = Math.max(jSONObject.getLong("totalSize"), jSONObject.getLong("size"));
                    gVar.f = jSONObject.getInt("bitrate");
                    gVar.i = jSONObject.getInt("definition");
                    gVar.g = jSONObject.getString(TtmlNode.RUBY_CONTAINER);
                    gVar.h = jSONObject.getString("templateName");
                    arrayList.add(gVar);
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public final g f() {
        try {
            JSONObject jSONObject = this.f10334a.getJSONObject("videoInfo").getJSONObject("sourceVideo");
            g gVar = new g();
            gVar.f10336a = jSONObject.getString("url");
            gVar.e = jSONObject.getInt(TypedValues.TransitionType.S_DURATION);
            gVar.c = jSONObject.getInt("width");
            gVar.b = jSONObject.getInt("height");
            gVar.d = Math.max(jSONObject.getLong("size"), jSONObject.getLong("totalSize"));
            gVar.f = jSONObject.getInt("bitrate");
            return gVar;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final String g() {
        try {
            JSONObject jSONObject = this.f10334a.getJSONObject("videoInfo").getJSONObject("basicInfo");
            if (jSONObject != null) {
                return jSONObject.getString("name");
            }
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final String h() {
        try {
            JSONObject jSONObject = this.f10334a.getJSONObject("videoInfo").getJSONObject("basicInfo");
            if (jSONObject != null) {
                return jSONObject.getString("description");
            }
            return null;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public final c.C0210c i() {
        JSONObject optJSONObject = this.f10334a.optJSONObject("imageSpriteInfo");
        if (optJSONObject != null) {
            try {
                JSONArray jSONArray = optJSONObject.getJSONArray("imageSpriteList");
                if (jSONArray == null) {
                    return null;
                }
                JSONObject jSONObject = jSONArray.getJSONObject(jSONArray.length() - 1);
                c.C0210c c0210c = new c.C0210c();
                c0210c.b = jSONObject.getString("webVttUrl");
                JSONArray jSONArray2 = jSONObject.getJSONArray("imageUrls");
                ArrayList<String> arrayList = new ArrayList<>();
                for (int i = 0; i < jSONArray2.length(); i++) {
                    arrayList.add(jSONArray2.getString(i));
                }
                c0210c.f10328a = arrayList;
                return c0210c;
            } catch (JSONException unused) {
                LiteavLog.e("TXPlayInfoResponse", "v2 getImageSpriteInfo exception");
            }
        }
        return null;
    }

    public final List<c.d> j() {
        JSONObject optJSONObject = this.f10334a.optJSONObject("keyFrameDescInfo");
        if (optJSONObject != null) {
            try {
                return a(optJSONObject);
            } catch (JSONException unused) {
                LiteavLog.e("TXPlayInfoResponse", "v2 parseKeyFrameDescInfo exception");
                return null;
            }
        }
        return null;
    }

    public final List<a> k() {
        try {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = this.f10334a.getJSONObject("playerInfo").getJSONArray("videoClassification");
            for (int i = 0; i < jSONArray.length(); i++) {
                a aVar = new a();
                aVar.f10335a = jSONArray.getJSONObject(i).getString("id");
                aVar.b = jSONArray.getJSONObject(i).getString("name");
                aVar.c = new ArrayList();
                JSONArray jSONArray2 = jSONArray.getJSONObject(i).getJSONArray("definitionList");
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    aVar.c.add(Integer.valueOf(jSONArray2.getInt(i2)));
                }
                arrayList.add(aVar);
            }
            return arrayList;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static List<c.d> a(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("keyFrameDescList");
        if (jSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                String string = jSONArray.getJSONObject(i).getString("content");
                float f = (float) (jSONArray.getJSONObject(i).getLong("timeOffset") / 1000.0d);
                c.d dVar = new c.d();
                try {
                    dVar.f10329a = URLDecoder.decode(string, "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                    dVar.f10329a = "";
                }
                dVar.b = f;
                arrayList.add(dVar);
            }
            return arrayList;
        }
        return null;
    }
}
