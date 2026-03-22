package com.applovin.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class k3 {

    /* renamed from: a  reason: collision with root package name */
    private final List f3170a = Collections.synchronizedList(new ArrayList());

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void a(q2 q2Var);
    }

    public void a(a aVar) {
        this.f3170a.add(aVar);
    }

    public void b(a aVar) {
        this.f3170a.remove(aVar);
    }

    public void a(q2 q2Var) {
        ArrayList arrayList = new ArrayList(this.f3170a);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((a) obj).a(q2Var);
        }
    }
}
