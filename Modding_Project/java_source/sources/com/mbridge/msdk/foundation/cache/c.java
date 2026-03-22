package com.mbridge.msdk.foundation.cache;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class c {
    public static int i = 1;
    public static int j = 0;
    public static int k = 3;
    public static int l = 2;

    /* renamed from: a  reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f8934a;
    private String b;
    private int c = 21;
    private int d = j;
    private ArrayList<String> e = new ArrayList<>();
    private List<String> f = new ArrayList();
    private List<String> g = new ArrayList();
    private List<String> h = new ArrayList();

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f8934a = copyOnWriteArrayList;
    }

    public String b() {
        List<String> list = this.h;
        if (list == null) {
            return "";
        }
        return list.toString();
    }

    public CopyOnWriteArrayList<CampaignEx> c() {
        return this.f8934a;
    }

    public String d() {
        List<String> list = this.g;
        if (list == null) {
            return "";
        }
        return list.toString();
    }

    public String e() {
        return this.b;
    }

    public String f() {
        List<String> list = this.f;
        if (list == null) {
            return "";
        }
        return list.toString();
    }

    public int g() {
        return this.d;
    }

    public String a() {
        ArrayList<String> arrayList = this.e;
        if (arrayList == null) {
            return "";
        }
        return arrayList.toString();
    }

    public void c(String str) {
        try {
            List<String> list = this.f;
            if (list != null) {
                list.add(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void b(String str) {
        try {
            List<String> list = this.g;
            if (list != null) {
                list.add(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void d(String str) {
        this.b = str;
    }

    public void a(String str) {
        try {
            ArrayList<String> arrayList = this.e;
            if (arrayList != null) {
                arrayList.add(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(int i2) {
        this.d = i2;
    }
}
