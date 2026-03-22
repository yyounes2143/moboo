package com.applovin.impl;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class c4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f3098a;
    private final String b;
    private final boolean c;

    public c4(String str, String str2, Context context) {
        this.f3098a = str.replace("android.permission.", "");
        this.b = str2;
        this.c = k0.a(str, context);
    }

    public String a() {
        return this.b;
    }

    public String b() {
        return this.f3098a;
    }

    public boolean c() {
        return this.c;
    }
}
