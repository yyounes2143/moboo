package com.mbridge.msdk.foundation.same.directory;

import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private List<a> f9005a;
    private String b;
    private a c;
    private c d;

    public void a(c cVar, String str) {
        a aVar = new a();
        aVar.a(cVar);
        aVar.a(str);
        a(aVar);
    }

    public String b() {
        return this.b;
    }

    public a c() {
        return this.c;
    }

    public c d() {
        return this.d;
    }

    public void b(a aVar) {
        this.c = aVar;
    }

    public void a(a aVar) {
        if (this.f9005a == null) {
            this.f9005a = new ArrayList();
        }
        aVar.b(this);
        this.f9005a.add(aVar);
    }

    public void a(List<a> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (a aVar : list) {
            a(aVar);
        }
    }

    public List<a> a() {
        return this.f9005a;
    }

    public void a(String str) {
        this.b = str;
    }

    public void a(c cVar) {
        this.d = cVar;
    }
}
