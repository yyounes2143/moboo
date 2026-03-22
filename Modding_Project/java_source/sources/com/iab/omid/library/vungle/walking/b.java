package com.iab.omid.library.vungle.walking;

import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.vungle.walking.async.b;
import com.iab.omid.library.vungle.walking.async.d;
import com.iab.omid.library.vungle.walking.async.e;
import com.iab.omid.library.vungle.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b implements b.InterfaceC0081b {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final com.iab.omid.library.vungle.walking.async.c f8685Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public JSONObject f8686Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public b(com.iab.omid.library.vungle.walking.async.c cVar) {
        this.f8685Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cVar;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f8685Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new f(this, hashSet, jSONObject, j));
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8685Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new d(this));
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f8685Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new e(this, hashSet, jSONObject, j));
    }

    @Override // com.iab.omid.library.vungle.walking.async.b.InterfaceC0081b
    @VisibleForTesting
    public JSONObject a() {
        return this.f8686Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.iab.omid.library.vungle.walking.async.b.InterfaceC0081b
    @VisibleForTesting
    public void a(JSONObject jSONObject) {
        this.f8686Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
    }
}
