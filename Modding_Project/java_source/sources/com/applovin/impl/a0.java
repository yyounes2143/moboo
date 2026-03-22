package com.applovin.impl;

import com.applovin.impl.g5;
import com.applovin.impl.i5;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class a0 implements i5.b, g5.b {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3015a;
    private final a b;
    private y c;
    private String d;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void a(b bVar, String str);

        void a(y yVar, String str);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum b {
        APP_DETAILS_NOT_FOUND,
        INVALID_DEVELOPER_URI,
        APPADSTXT_NOT_FOUND,
        MISSING_APPLOVIN_ENTRIES,
        MISSING_NON_APPLOVIN_ENTRIES
    }

    public a0(com.applovin.impl.sdk.k kVar, a aVar) {
        this.f3015a = kVar;
        this.b = aVar;
    }

    public void a() {
        y yVar = this.c;
        if (yVar != null) {
            this.b.a(yVar, this.d);
            return;
        }
        this.f3015a.q0().a(new i5(this.f3015a, this));
    }

    @Override // com.applovin.impl.i5.b
    public void a(String str) {
        this.f3015a.q0().a(new g5(this.f3015a, str, this));
    }

    @Override // com.applovin.impl.i5.b
    public void a(b bVar) {
        this.b.a(bVar, (String) null);
    }

    @Override // com.applovin.impl.g5.b
    public void a(String str, String str2) {
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        int i = 1;
        for (String str3 : str.split("\n")) {
            String trim = str3.split("#", 2)[0].trim();
            if (StringUtils.isValidString(trim)) {
                z zVar = new z(trim, i);
                if (zVar.h()) {
                    String b2 = zVar.b();
                    List arrayList2 = hashMap.containsKey(b2) ? (List) hashMap.get(b2) : new ArrayList();
                    if (arrayList2 != null) {
                        arrayList2.add(zVar);
                        hashMap.put(b2, arrayList2);
                    }
                } else {
                    arrayList.add(zVar);
                }
            }
            i++;
        }
        this.c = new y(hashMap, arrayList);
        this.d = str2;
        this.f3015a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f3015a.O().a("AppAdsTxtService", "app-ads.txt fetched: " + this.c);
        }
        this.b.a(this.c, str2);
    }

    @Override // com.applovin.impl.g5.b
    public void a(b bVar, String str) {
        this.b.a(bVar, str);
    }
}
