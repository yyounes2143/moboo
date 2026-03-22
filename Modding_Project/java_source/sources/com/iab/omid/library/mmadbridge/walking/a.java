package com.iab.omid.library.mmadbridge.walking;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.mmadbridge.internal.e;
import com.iab.omid.library.mmadbridge.utils.h;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8364Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<View, String> f8373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<View, C0072a> f8372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<String, View> f8371Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<View> f8370Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<String> f8369Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<String> f8368Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<String, String> f8367Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashSet<String> f8366Wwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<View, Boolean> f8365Wwwwwwwwwwwwwwwwwwwwwwwwww = new WeakHashMap();

    /* renamed from: com.iab.omid.library.mmadbridge.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0072a {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final ArrayList<String> f8374Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final e f8375Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public C0072a(e eVar, String str) {
            this.f8375Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = eVar;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }

        public ArrayList<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f8374Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            this.f8374Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(str);
        }

        public e Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f8375Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public boolean Wwwwwwwwwwwwwwwwwww(View view) {
        if (this.f8365Wwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(view)) {
            this.f8365Wwwwwwwwwwwwwwwwwwwwwwwwww.put(view, Boolean.TRUE);
            return false;
        }
        return true;
    }

    public void Wwwwwwwwwwwwwwwwwwww() {
        com.iab.omid.library.mmadbridge.internal.c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.mmadbridge.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            for (com.iab.omid.library.mmadbridge.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                View Wwwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwwww();
                if (aVar.Wwwwwwwwwwwwwwwwww()) {
                    String Wwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwww();
                    if (Wwwwwwwwwwwwwwwwwwwww2 != null) {
                        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                            this.f8366Wwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwww2);
                        }
                        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                            this.f8369Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwww2);
                            this.f8373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwww2);
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar);
                        } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != "noWindowFocus") {
                            this.f8368Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwww2);
                            this.f8371Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwww2);
                            this.f8367Wwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                    } else {
                        this.f8368Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(Wwwwwwwwwwwwwwww2);
                        this.f8367Wwwwwwwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwww2, "noAdView");
                    }
                }
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwww() {
        this.f8364Wwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public c Wwwwwwwwwwwwwwwwwwwwww(View view) {
        if (this.f8370Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(view)) {
            return c.PARENT_VIEW;
        }
        if (this.f8364Wwwwwwwwwwwwwwwwwwwwwwwww) {
            return c.OBSTRUCTION_VIEW;
        }
        return c.UNDERLYING_VIEW;
    }

    @VisibleForTesting
    public boolean Wwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f8366Wwwwwwwwwwwwwwwwwwwwwwwwwww.contains(str);
    }

    public HashSet<String> Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8369Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (this.f8373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() == 0) {
            return null;
        }
        String str = this.f8373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        if (str != null) {
            this.f8373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(view);
        }
        return str;
    }

    public HashSet<String> Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8368Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f8367Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
    }

    public C0072a Wwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        C0072a c0072a = this.f8372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        if (c0072a != null) {
            this.f8372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(view);
        }
        return c0072a;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(e eVar, com.iab.omid.library.mmadbridge.adsession.a aVar) {
        View view = eVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get();
        if (view == null) {
            return;
        }
        C0072a c0072a = this.f8372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        if (c0072a != null) {
            c0072a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(aVar.Wwwwwwwwwwwwwwww());
        } else {
            this.f8372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(view, new C0072a(eVar, aVar.Wwwwwwwwwwwwwwww()));
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.iab.omid.library.mmadbridge.adsession.a aVar) {
        for (e eVar : aVar.Wwwwwwwwwwwwwwwwwwww()) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(eVar, aVar);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8373Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8372Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8371Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8370Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8369Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8368Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8367Wwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8364Wwwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f8366Wwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
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
        this.f8370Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.addAll(hashSet);
        return null;
    }

    public final Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (view.hasWindowFocus()) {
            this.f8365Wwwwwwwwwwwwwwwwwwwwwwwwww.remove(view);
            return Boolean.FALSE;
        } else if (this.f8365Wwwwwwwwwwwwwwwwwwwwwwwwww.containsKey(view)) {
            return this.f8365Wwwwwwwwwwwwwwwwwwwwwwwwww.get(view);
        } else {
            Map<View, Boolean> map = this.f8365Wwwwwwwwwwwwwwwwwwwwwwwwww;
            Boolean bool = Boolean.FALSE;
            map.put(view, bool);
            return bool;
        }
    }

    public View Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return this.f8371Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
    }
}
