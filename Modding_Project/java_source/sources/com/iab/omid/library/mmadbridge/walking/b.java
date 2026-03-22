package com.iab.omid.library.mmadbridge.walking;

import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.mmadbridge.walking.async.b;
import com.iab.omid.library.mmadbridge.walking.async.d;
import com.iab.omid.library.mmadbridge.walking.async.e;
import com.iab.omid.library.mmadbridge.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b implements b.InterfaceC0073b {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final com.iab.omid.library.mmadbridge.walking.async.c f8385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public JSONObject f8386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public b(com.iab.omid.library.mmadbridge.walking.async.c cVar) {
        this.f8385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cVar;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f8385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new f(this, hashSet, jSONObject, j));
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new d(this));
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f8385Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new e(this, hashSet, jSONObject, j));
    }

    @Override // com.iab.omid.library.mmadbridge.walking.async.b.InterfaceC0073b
    @VisibleForTesting
    public JSONObject a() {
        return this.f8386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.iab.omid.library.mmadbridge.walking.async.b.InterfaceC0073b
    @VisibleForTesting
    public void a(JSONObject jSONObject) {
        this.f8386Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
    }
}
