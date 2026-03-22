package com.tencent.thumbplayer.tcmedia.utils;

import android.content.Context;
import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes6.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private a f10686a;
    private a b;
    private ArrayList<String> c;
    private String d;

    public c(Context context, String str) {
        this.f10686a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.f10686a = a.a(context, str);
        String str2 = str + "_key";
        this.d = str2;
        a a2 = a.a(context, str2);
        this.b = a2;
        ArrayList<String> arrayList = (ArrayList) a2.b(this.d);
        this.c = arrayList;
        if (arrayList == null) {
            this.c = new ArrayList<>();
        }
    }

    public synchronized Object a() {
        Object b;
        try {
            ArrayList arrayList = (ArrayList) this.b.b(this.d);
            ArrayList arrayList2 = null;
            if (arrayList != null && arrayList.size() > 0) {
                for (int i = 0; i < arrayList.size(); i++) {
                    String str = (String) arrayList.get(i);
                    if (!TextUtils.isEmpty(str) && (b = this.f10686a.b(str)) != null) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(b);
                    }
                }
                this.f10686a.a();
                this.b.a();
                this.c.clear();
                return arrayList2;
            }
            return null;
        } finally {
        }
    }

    public synchronized Object b(String str) {
        return this.f10686a.b(str);
    }

    public synchronized void c() {
        this.f10686a.a();
        this.b.a();
        this.c.clear();
    }

    public synchronized void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f10686a.c(str);
        this.c.remove(str);
        this.b.c(this.d);
        if (!this.c.isEmpty()) {
            this.b.a(this.d, this.c);
        }
    }

    public synchronized ArrayList<String> b() {
        return (ArrayList) this.c.clone();
    }

    public synchronized void a(String str, Serializable serializable) {
        if (serializable != null) {
            if (!TextUtils.isEmpty(str)) {
                this.f10686a.c(str);
                this.f10686a.a(str, serializable);
                this.c.remove(str);
                this.c.add(str);
                this.b.c(this.d);
                this.b.a(this.d, this.c);
            }
        }
    }
}
