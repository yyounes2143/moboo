package com.iab.omid.library.unity3d.walking.async;

import com.iab.omid.library.unity3d.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class a extends b {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f8514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f8515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<String> f8516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public a(b.InterfaceC0077b interfaceC0077b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0077b);
        this.f8516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>(hashSet);
        this.f8515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
        this.f8514Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
    }
}
