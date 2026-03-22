package com.applovin.impl;

import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class j0 extends w4 {
    private final String g;
    private final com.applovin.impl.sdk.network.a h;

    public j0(String str, com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
        super("CommunicatorRequestTask", kVar, str);
        this.g = str;
        this.h = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3803a.q0().a(new a(this.h, this.f3803a, d()));
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends z5 {
        public a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar, boolean z) {
            super(aVar, kVar, z);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, JSONObject jSONObject, int i) {
            this.f3803a.u().a(j0.this.g, j0.this.h.f(), i, jSONObject, null, true);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            this.f3803a.u().a(j0.this.g, j0.this.h.f(), i, jSONObject, str2, false);
        }
    }
}
