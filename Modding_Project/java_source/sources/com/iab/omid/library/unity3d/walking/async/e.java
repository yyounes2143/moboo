package com.iab.omid.library.unity3d.walking.async;

import com.iab.omid.library.unity3d.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class e extends a {
    public e(b.InterfaceC0077b interfaceC0077b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0077b, hashSet, jSONObject, j);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        com.iab.omid.library.unity3d.internal.c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.unity3d.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            for (com.iab.omid.library.unity3d.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (this.f8516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(aVar.Wwwwwwwwwwwwwwwwwwww())) {
                    aVar.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww(str, this.f8514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public String doInBackground(Object... objArr) {
        return this.f8515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString();
    }

    @Override // com.iab.omid.library.unity3d.walking.async.b, android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void onPostExecute(String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        super.onPostExecute(str);
    }
}
