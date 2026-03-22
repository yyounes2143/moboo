package com.iab.omid.library.vungle.walking.async;

import android.text.TextUtils;
import com.iab.omid.library.vungle.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class f extends a {
    public f(b.InterfaceC0081b interfaceC0081b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0081b, hashSet, jSONObject, j);
    }

    private void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        com.iab.omid.library.vungle.internal.c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.vungle.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            for (com.iab.omid.library.vungle.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (this.f8678Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(aVar.Wwwwwwwwwwwwwwwwwwwwwwww())) {
                    aVar.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww(str, this.f8676Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.vungle.utils.c.Wwwwwwwwwwwww(this.f8677Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8679Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.a())) {
            return null;
        }
        this.f8679Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.a(this.f8677Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        return this.f8677Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString();
    }

    @Override // com.iab.omid.library.vungle.walking.async.b, android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }
        super.onPostExecute(str);
    }
}
