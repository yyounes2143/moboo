package com.iab.omid.library.unity3d.walking.async;

import android.text.TextUtils;
import com.iab.omid.library.unity3d.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class f extends a {
    public f(b.InterfaceC0077b interfaceC0077b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0077b, hashSet, jSONObject, j);
    }

    private void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        com.iab.omid.library.unity3d.internal.c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.unity3d.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            for (com.iab.omid.library.unity3d.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (this.f8516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(aVar.Wwwwwwwwwwwwwwwwwwww())) {
                    aVar.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwww(str, this.f8514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwww(this.f8515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.a())) {
            return null;
        }
        this.f8517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.a(this.f8515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        return this.f8515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString();
    }

    @Override // com.iab.omid.library.unity3d.walking.async.b, android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }
        super.onPostExecute(str);
    }
}
