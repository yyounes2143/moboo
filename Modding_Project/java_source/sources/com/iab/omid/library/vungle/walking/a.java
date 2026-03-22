package com.iab.omid.library.vungle.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.vungle.internal.e;
import com.iab.omid.library.vungle.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8664Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<View, String> f8673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<View, C0080a> f8672Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<String, View> f8671Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<View> f8670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<String> f8669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<String> f8668Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<String, String> f8667Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<String> f8666Wwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<View, Boolean> f8665Wwwwwwwwwwwwwwwwwwwwwwwwww = new WeakHashMap();

    /* renamed from: com.iab.omid.library.vungle.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0080a {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayList<String> f8674Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final e f8675Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public C0080a(e eVar, String str) {
            this.f8675Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = eVar;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }

        public ArrayList<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f8674Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            this.f8674Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(str);
        }

        public e Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f8675Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public boolean Wwwwwwwwwwwwwwwwwww(View view) {
        if (this.f8665Wwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(view)) {
            this.f8665Wwwwwwwwwwwwwwwwwwwwwwwwww.put(view, Boolean.TRUE);
            return false;
        }
        return true;
    }

    public void Wwwwwwwwwwwwwwwwwwww() {
        com.iab.omid.library.vungle.internal.c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.vungle.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            for (com.iab.omid.library.vungle.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                View Wwwwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwwwww();
                if (aVar.Wwwwwwwwwwwwwwwwwww()) {
                    String Wwwwwwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
                        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                            this.f8666Wwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                            this.f8669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwww2);
                            this.f8673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwww2);
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar);
                        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != "noWindowFocus") {
                            this.f8668Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwww2);
                            this.f8671Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwww2);
                            this.f8667Wwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                    } else {
                        this.f8668Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwwwwwww2);
                        this.f8667Wwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwwwwwww2, "noAdView");
                    }
                }
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwww() {
        this.f8664Wwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public c Wwwwwwwwwwwwwwwwwwwwww(View view) {
        if (this.f8670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(view)) {
            return c.PARENT_VIEW;
        }
        if (this.f8664Wwwwwwwwwwwwwwwwwwwwwwwww) {
            return c.OBSTRUCTION_VIEW;
        }
        return c.UNDERLYING_VIEW;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f8666Wwwwwwwwwwwwwwwwwwwwwwwwwww.contains(str);
    }

    public HashSet<String> Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (this.f8673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() == 0) {
            return null;
        }
        String str = this.f8673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        if (str != null) {
            this.f8673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(view);
        }
        return str;
    }

    public HashSet<String> Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8668Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f8667Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
    }

    public C0080a Wwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        C0080a c0080a = this.f8672Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        if (c0080a != null) {
            this.f8672Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(view);
        }
        return c0080a;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(e eVar, com.iab.omid.library.vungle.adsession.a aVar) {
        View view = eVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get();
        if (view == null) {
            return;
        }
        C0080a c0080a = this.f8672Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        if (c0080a != null) {
            c0080a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar.Wwwwwwwwwwwwwwwwwwwwwwww());
        } else {
            this.f8672Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(view, new C0080a(eVar, aVar.Wwwwwwwwwwwwwwwwwwwwwwww()));
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.vungle.adsession.a aVar) {
        for (e eVar : aVar.Wwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(eVar, aVar);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8673Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8672Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8671Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8669Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8668Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8667Wwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8664Wwwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f8666Wwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, boolean z) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view).booleanValue() && !z) {
            return "noWindowFocus";
        }
        HashSet hashSet = new HashSet();
        while (view != null) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            hashSet.add(view);
            ViewParent parent = view.getParent();
            if (parent instanceof View) {
                view = (View) parent;
            } else {
                view = null;
            }
        }
        this.f8670Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAll(hashSet);
        return null;
    }

    public final Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (view.hasWindowFocus()) {
            this.f8665Wwwwwwwwwwwwwwwwwwwwwwwwww.remove(view);
            return Boolean.FALSE;
        } else if (this.f8665Wwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(view)) {
            return this.f8665Wwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        } else {
            Map<View, Boolean> map = this.f8665Wwwwwwwwwwwwwwwwwwwwwwwwww;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f8671Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
    }
}
