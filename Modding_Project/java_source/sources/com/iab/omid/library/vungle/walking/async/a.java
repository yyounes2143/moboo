package com.iab.omid.library.vungle.walking.async;

import com.iab.omid.library.vungle.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class a extends b {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f8676Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f8677Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<String> f8678Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public a(b.InterfaceC0081b interfaceC0081b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0081b);
        this.f8678Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>(hashSet);
        this.f8677Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
        this.f8676Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
    }
}
