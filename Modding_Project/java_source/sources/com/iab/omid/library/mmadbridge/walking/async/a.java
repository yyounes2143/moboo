package com.iab.omid.library.mmadbridge.walking.async;

import com.iab.omid.library.mmadbridge.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class a extends b {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f8376Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f8377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<String> f8378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public a(b.InterfaceC0073b interfaceC0073b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0073b);
        this.f8378Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>(hashSet);
        this.f8377Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = jSONObject;
        this.f8376Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
    }
}
