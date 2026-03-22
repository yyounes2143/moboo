package com.iab.omid.library.mmadbridge.walking.async;

import com.iab.omid.library.mmadbridge.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class e extends a {
    public e(b.InterfaceC0073b interfaceC0073b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0073b, hashSet, jSONObject, j);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        com.iab.omid.library.mmadbridge.internal.c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.mmadbridge.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            for (com.iab.omid.library.mmadbridge.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (this.f8378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(aVar.Wwwwwwwwwwwwwwww())) {
                    aVar.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww(str, this.f8376Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public String doInBackground(Object... objArr) {
        return this.f8377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString();
    }

    @Override // com.iab.omid.library.mmadbridge.walking.async.b, android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void onPostExecute(String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        super.onPostExecute(str);
    }
}
