package com.iab.omid.library.vungle.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.vungle.internal.j;
import com.iab.omid.library.vungle.processor.a;
import com.iab.omid.library.vungle.utils.f;
import com.iab.omid.library.vungle.utils.h;
import com.iab.omid.library.vungle.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class TreeWalker implements a.InterfaceC0078a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f8655Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f8661Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static TreeWalker f8654Wwwwwwwwwwwwwwwwwwwwwwwwww = new TreeWalker();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Handler f8653Wwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Handler f8652Wwwwwwwwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Runnable f8651Wwwwwwwwwwwwwwwwwwwwwww = new b();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Runnable f8650Wwwwwwwwwwwwwwwwwwwwww = new c();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<TreeWalkerTimeLogger> f8662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8660Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<com.iab.omid.library.vungle.weakreference.a> f8659Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.vungle.walking.a f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.vungle.walking.a();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.vungle.processor.b f8658Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.vungle.processor.b();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.vungle.walking.b f8656Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.vungle.walking.b(new com.iab.omid.library.vungle.walking.async.c());

    /* loaded from: classes5.dex */
    public interface TreeWalkerNanoTimeLogger extends TreeWalkerTimeLogger {
        void onTreeProcessedNano(int i, long j);
    }

    /* loaded from: classes5.dex */
    public interface TreeWalkerTimeLogger {
        void onTreeProcessed(int i, long j);
    }

    /* loaded from: classes5.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.this.f8656Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    /* loaded from: classes5.dex */
    public class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww();
        }
    }

    /* loaded from: classes5.dex */
    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.f8652Wwwwwwwwwwwwwwwwwwwwwwww != null) {
                TreeWalker.f8652Wwwwwwwwwwwwwwwwwwwwwwww.post(TreeWalker.f8651Wwwwwwwwwwwwwwwwwwwwwww);
                TreeWalker.f8652Wwwwwwwwwwwwwwwwwwwwwwww.postDelayed(TreeWalker.f8650Wwwwwwwwwwwwwwwwwwwwww, 200L);
            }
        }
    }

    public static TreeWalker Wwwwwwwwwwwwwwwwwww() {
        return f8654Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwww();
        j.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwww() {
        Handler handler = f8652Wwwwwwwwwwwwwwwwwwwwwwww;
        if (handler != null) {
            handler.removeCallbacks(f8650Wwwwwwwwwwwwwwwwwwwwww);
            f8652Wwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    public void Wwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwww();
        this.f8662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        f8653Wwwwwwwwwwwwwwwwwwwwwwwww.post(new a());
    }

    public final void Wwwwwwwwwwwwwwwww() {
        if (f8652Wwwwwwwwwwwwwwwwwwwwwwww == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f8652Wwwwwwwwwwwwwwwwwwwwwwww = handler;
            handler.post(f8651Wwwwwwwwwwwwwwwwwwwwwww);
            f8652Wwwwwwwwwwwwwwwwwwwwwwww.postDelayed(f8650Wwwwwwwwwwwwwwwwwwwwww, 200L);
        }
    }

    public void Wwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwww();
    }

    public void Wwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwww();
    }

    @VisibleForTesting
    public void Wwwwwwwwwwwwwwwwwwwww() {
        TreeWalker treeWalker;
        this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        com.iab.omid.library.vungle.processor.a Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8658Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().size() > 0) {
            Iterator<String> it = this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.a(null);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(next, this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(next), a2);
                com.iab.omid.library.vungle.utils.c.Wwwwwwwwwwwwwwwwwwwwww(a2);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f8656Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a2, hashSet, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
        if (this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww().size() > 0) {
            JSONObject a3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.a(null);
            treeWalker = this;
            treeWalker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, a3, com.iab.omid.library.vungle.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.vungle.utils.c.Wwwwwwwwwwwwwwwwwwwwww(a3);
            treeWalker.f8656Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a3, treeWalker.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (treeWalker.f8660Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                for (com.iab.omid.library.vungle.adsession.a aVar : com.iab.omid.library.vungle.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwww(treeWalker.f8659Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
        } else {
            treeWalker = this;
            treeWalker.f8656Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        treeWalker.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww() {
        this.f8661Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        this.f8659Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8660Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        Iterator<com.iab.omid.library.vungle.adsession.a> it = com.iab.omid.library.vungle.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().Wwwwwwwwwwwwwwwwwwww()) {
                this.f8660Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                break;
            }
        }
        this.f8655Wwwwwwwwwwwwwwwwwwwwwwwwwww = f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - this.f8655Wwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww(View view, JSONObject jSONObject) {
        String Wwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(view);
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            com.iab.omid.library.vungle.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, Wwwwwwwwwwwwwwwwwwwwwwwww2);
            com.iab.omid.library.vungle.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, Boolean.valueOf(this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww(view)));
            com.iab.omid.library.vungle.utils.c.Wwwwwwwwwwwwwwwwwwwww(jSONObject, Boolean.valueOf(this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2)));
            this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww();
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, JSONObject jSONObject) {
        a.C0080a Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            com.iab.omid.library.vungle.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return true;
        }
        return false;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.vungle.processor.a Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8658Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            JSONObject a2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.a(view);
            com.iab.omid.library.vungle.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwww(a2, str);
            com.iab.omid.library.vungle.utils.c.Wwwwwwwwwwwwwwwwwwww(a2, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
            com.iab.omid.library.vungle.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, a2);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, com.iab.omid.library.vungle.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.vungle.walking.c cVar, boolean z) {
        boolean z2;
        if (cVar == com.iab.omid.library.vungle.walking.c.PARENT_VIEW) {
            z2 = true;
        } else {
            z2 = false;
        }
        aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, jSONObject, this, z2, z);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (this.f8662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f8662Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                treeWalkerTimeLogger.onTreeProcessed(this.f8661Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, TimeUnit.NANOSECONDS.toMillis(j));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f8661Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, j);
                }
            }
        }
    }

    @Override // com.iab.omid.library.vungle.processor.a.InterfaceC0078a
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, com.iab.omid.library.vungle.processor.a aVar, JSONObject jSONObject, boolean z) {
        com.iab.omid.library.vungle.walking.c Wwwwwwwwwwwwwwwwwwwwww2;
        TreeWalker treeWalker;
        boolean z2;
        if (!h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(view) || (Wwwwwwwwwwwwwwwwwwwwww2 = this.f8657Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(view)) == com.iab.omid.library.vungle.walking.c.UNDERLYING_VIEW) {
            return;
        }
        JSONObject a2 = aVar.a(view);
        com.iab.omid.library.vungle.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, a2);
        if (!Wwwwwwwwwwwwwwwwwwwwwwwww(view, a2)) {
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(view, a2);
            if (!z && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (this.f8660Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Wwwwwwwwwwwwwwwwwwwwww2 == com.iab.omid.library.vungle.walking.c.OBSTRUCTION_VIEW && !z2) {
                this.f8659Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new com.iab.omid.library.vungle.weakreference.a(view));
            }
            treeWalker = this;
            treeWalker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, aVar, a2, Wwwwwwwwwwwwwwwwwwwwww2, z2);
        } else {
            treeWalker = this;
        }
        treeWalker.f8661Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww++;
    }
}
