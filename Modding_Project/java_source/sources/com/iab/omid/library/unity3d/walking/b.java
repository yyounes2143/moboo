package com.iab.omid.library.unity3d.walking;

import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.unity3d.walking.async.b;
import com.iab.omid.library.unity3d.walking.async.d;
import com.iab.omid.library.unity3d.walking.async.e;
import com.iab.omid.library.unity3d.walking.async.f;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class b implements b.InterfaceC0077b {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final com.iab.omid.library.unity3d.walking.async.c f8523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public JSONObject f8524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public b(com.iab.omid.library.unity3d.walking.async.c cVar) {
        this.f8523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cVar;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f8523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new f(this, hashSet, jSONObject, j));
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new d(this));
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, HashSet<String> hashSet, long j) {
        this.f8523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new e(this, hashSet, jSONObject, j));
    }

    @Override // com.iab.omid.library.unity3d.walking.async.b.InterfaceC0077b
    @VisibleForTesting
    public JSONObject a() {
        return this.f8524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.iab.omid.library.unity3d.walking.async.b.InterfaceC0077b
    @VisibleForTesting
    public void a(JSONObject jSONObject) {
        this.f8524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
    }
}
