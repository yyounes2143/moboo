package com.iab.omid.library.mmadbridge.walking.async;

import android.text.TextUtils;
import com.iab.omid.library.mmadbridge.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class f extends a {
    public f(b.InterfaceC0073b interfaceC0073b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0073b, hashSet, jSONObject, j);
    }

    private void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        com.iab.omid.library.mmadbridge.internal.c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.mmadbridge.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            for (com.iab.omid.library.mmadbridge.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (this.f8378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(aVar.Wwwwwwwwwwwwwwww())) {
                    aVar.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwww(str, this.f8376Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwww(this.f8377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.a())) {
            return null;
        }
        this.f8379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.a(this.f8377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        return this.f8377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString();
    }

    @Override // com.iab.omid.library.mmadbridge.walking.async.b, android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }
        super.onPostExecute(str);
    }
}
