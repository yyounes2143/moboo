package com.iab.omid.library.unity3d.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.unity3d.internal.e;
import com.iab.omid.library.unity3d.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8503Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<View, String> f8511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<View, C0076a> f8510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<String, View> f8509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<View> f8508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<String> f8507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<String> f8506Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<String, String> f8505Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<View, Boolean> f8504Wwwwwwwwwwwwwwwwwwwwwwwwwww = new WeakHashMap();

    /* renamed from: com.iab.omid.library.unity3d.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0076a {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayList<String> f8512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final e f8513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public C0076a(e eVar, String str) {
            this.f8513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = eVar;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }

        public ArrayList<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f8512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            this.f8512Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(str);
        }

        public e Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f8513Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public boolean Wwwwwwwwwwwwwwwwwwww(View view) {
        if (this.f8504Wwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(view)) {
            this.f8504Wwwwwwwwwwwwwwwwwwwwwwwwwww.put(view, Boolean.TRUE);
            return false;
        }
        return true;
    }

    public void Wwwwwwwwwwwwwwwwwwwww() {
        com.iab.omid.library.unity3d.internal.c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.unity3d.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            for (com.iab.omid.library.unity3d.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                View Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (aVar.Wwwwwwwwwwwwwwwwwwwwww()) {
                    String Wwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                            this.f8507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwww2);
                            this.f8511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwww2);
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar);
                        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != "noWindowFocus") {
                            this.f8506Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwww2);
                            this.f8509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
                            this.f8505Wwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                    } else {
                        this.f8506Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwwwwwww2);
                        this.f8505Wwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwww2, "noAdView");
                    }
                }
            }
        }
    }

    public c Wwwwwwwwwwwwwwwwwwwwww(View view) {
        if (this.f8508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(view)) {
            return c.PARENT_VIEW;
        }
        if (this.f8503Wwwwwwwwwwwwwwwwwwwwwwwwww) {
            return c.OBSTRUCTION_VIEW;
        }
        return c.UNDERLYING_VIEW;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwww() {
        this.f8503Wwwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (this.f8511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() == 0) {
            return null;
        }
        String str = this.f8511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        if (str != null) {
            this.f8511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(view);
        }
        return str;
    }

    public HashSet<String> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public C0076a Wwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        C0076a c0076a = this.f8510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        if (c0076a != null) {
            this.f8510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(view);
        }
        return c0076a;
    }

    public HashSet<String> Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8506Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f8505Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
    }

    public final Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (view.hasWindowFocus()) {
            this.f8504Wwwwwwwwwwwwwwwwwwwwwwwwwww.remove(view);
            return Boolean.FALSE;
        } else if (this.f8504Wwwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(view)) {
            return this.f8504Wwwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        } else {
            Map<View, Boolean> map = this.f8504Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e eVar, com.iab.omid.library.unity3d.adsession.a aVar) {
        View view = eVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get();
        if (view == null) {
            return;
        }
        C0076a c0076a = this.f8510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        if (c0076a != null) {
            c0076a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar.Wwwwwwwwwwwwwwwwwwww());
        } else {
            this.f8510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(view, new C0076a(eVar, aVar.Wwwwwwwwwwwwwwwwwwww()));
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.unity3d.adsession.a aVar) {
        for (e eVar : aVar.Wwwwwwwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eVar, aVar);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8511Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8507Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8506Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8505Wwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8503Wwwwwwwwwwwwwwwwwwwwwwwwww = false;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (!view.isAttachedToWindow()) {
            return "notAttached";
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(view).booleanValue()) {
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
        this.f8508Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAll(hashSet);
        return null;
    }

    public View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f8509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
    }
}
