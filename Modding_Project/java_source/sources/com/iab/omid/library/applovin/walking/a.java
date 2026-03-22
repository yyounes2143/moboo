package com.iab.omid.library.applovin.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.applovin.internal.e;
import com.iab.omid.library.applovin.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f8215a = new HashMap<>();
    private final HashMap<View, C0068a> b = new HashMap<>();
    private final HashMap<String, View> c = new HashMap<>();
    private final HashSet<View> d = new HashSet<>();
    private final HashSet<String> e = new HashSet<>();
    private final HashSet<String> f = new HashSet<>();
    private final HashMap<String, String> g = new HashMap<>();
    private final HashSet<String> h = new HashSet<>();
    private final Map<View, Boolean> i = new WeakHashMap();
    private boolean j;

    /* renamed from: com.iab.omid.library.applovin.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0068a {

        /* renamed from: a  reason: collision with root package name */
        private final e f8216a;
        private final ArrayList<String> b = new ArrayList<>();

        public C0068a(e eVar, String str) {
            this.f8216a = eVar;
            a(str);
        }

        public e a() {
            return this.f8216a;
        }

        public ArrayList<String> b() {
            return this.b;
        }

        public void a(String str) {
            this.b.add(str);
        }
    }

    public View a(String str) {
        return this.c.get(str);
    }

    public C0068a b(View view) {
        C0068a c0068a = this.b.get(view);
        if (c0068a != null) {
            this.b.remove(view);
        }
        return c0068a;
    }

    public String c(View view) {
        if (this.f8215a.size() == 0) {
            return null;
        }
        String str = this.f8215a.get(view);
        if (str != null) {
            this.f8215a.remove(view);
        }
        return str;
    }

    public c d(View view) {
        return this.d.contains(view) ? c.PARENT_VIEW : this.j ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void e() {
        com.iab.omid.library.applovin.internal.c c = com.iab.omid.library.applovin.internal.c.c();
        if (c != null) {
            for (com.iab.omid.library.applovin.adsession.a aVar : c.a()) {
                View e = aVar.e();
                if (aVar.h()) {
                    String c2 = aVar.c();
                    if (e != null) {
                        boolean e2 = h.e(e);
                        if (e2) {
                            this.h.add(c2);
                        }
                        String a2 = a(e, e2);
                        if (a2 == null) {
                            this.e.add(c2);
                            this.f8215a.put(e, c2);
                            a(aVar);
                        } else if (a2 != "noWindowFocus") {
                            this.f.add(c2);
                            this.c.put(c2, e);
                            this.g.put(c2, a2);
                        }
                    } else {
                        this.f.add(c2);
                        this.g.put(c2, "noAdView");
                    }
                }
            }
        }
    }

    private Boolean a(View view) {
        if (view.hasWindowFocus()) {
            this.i.remove(view);
            return Boolean.FALSE;
        } else if (this.i.containsKey(view)) {
            return this.i.get(view);
        } else {
            Map<View, Boolean> map = this.i;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public String b(String str) {
        return this.g.get(str);
    }

    public HashSet<String> c() {
        return this.e;
    }

    public void d() {
        this.j = true;
    }

    public boolean e(View view) {
        if (this.i.containsKey(view)) {
            this.i.put(view, Boolean.TRUE);
            return false;
        }
        return true;
    }

    private String a(View view, boolean z) {
        if (view.isAttachedToWindow()) {
            if (!a(view).booleanValue() || z) {
                HashSet hashSet = new HashSet();
                while (view != null) {
                    String a2 = h.a(view);
                    if (a2 != null) {
                        return a2;
                    }
                    hashSet.add(view);
                    ViewParent parent = view.getParent();
                    view = parent instanceof View ? (View) parent : null;
                }
                this.d.addAll(hashSet);
                return null;
            }
            return "noWindowFocus";
        }
        return "notAttached";
    }

    public HashSet<String> b() {
        return this.f;
    }

    public boolean c(String str) {
        return this.h.contains(str);
    }

    public void a() {
        this.f8215a.clear();
        this.b.clear();
        this.c.clear();
        this.d.clear();
        this.e.clear();
        this.f.clear();
        this.g.clear();
        this.j = false;
        this.h.clear();
    }

    private void a(com.iab.omid.library.applovin.adsession.a aVar) {
        for (e eVar : aVar.f()) {
            a(eVar, aVar);
        }
    }

    private void a(e eVar, com.iab.omid.library.applovin.adsession.a aVar) {
        View view = eVar.c().get();
        if (view == null) {
            return;
        }
        C0068a c0068a = this.b.get(view);
        if (c0068a != null) {
            c0068a.a(aVar.c());
        } else {
            this.b.put(view, new C0068a(eVar, aVar.c()));
        }
    }
}
