package com.iab.omid.library.mmadbridge.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.mmadbridge.internal.j;
import com.iab.omid.library.mmadbridge.processor.a;
import com.iab.omid.library.mmadbridge.utils.f;
import com.iab.omid.library.mmadbridge.utils.h;
import com.iab.omid.library.mmadbridge.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class TreeWalker implements a.InterfaceC0070a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f8355Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f8361Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static TreeWalker f8354Wwwwwwwwwwwwwwwwwwwwwwwwww = new TreeWalker();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Handler f8353Wwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Handler f8352Wwwwwwwwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Runnable f8351Wwwwwwwwwwwwwwwwwwwwwww = new b();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Runnable f8350Wwwwwwwwwwwwwwwwwwwwww = new c();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<TreeWalkerTimeLogger> f8362Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8360Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<com.iab.omid.library.mmadbridge.weakreference.a> f8359Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.mmadbridge.walking.a f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.mmadbridge.walking.a();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.mmadbridge.processor.b f8358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.mmadbridge.processor.b();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.mmadbridge.walking.b f8356Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.mmadbridge.walking.b(new com.iab.omid.library.mmadbridge.walking.async.c());

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
            TreeWalker.this.f8356Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
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
            if (TreeWalker.f8352Wwwwwwwwwwwwwwwwwwwwwwww != null) {
                TreeWalker.f8352Wwwwwwwwwwwwwwwwwwwwwwww.post(TreeWalker.f8351Wwwwwwwwwwwwwwwwwwwwwww);
                TreeWalker.f8352Wwwwwwwwwwwwwwwwwwwwwwww.postDelayed(TreeWalker.f8350Wwwwwwwwwwwwwwwwwwwwww, 200L);
            }
        }
    }

    public static TreeWalker Wwwwwwwwwwwwwwwwwww() {
        return f8354Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwww();
        j.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwww() {
        Handler handler = f8352Wwwwwwwwwwwwwwwwwwwwwwww;
        if (handler != null) {
            handler.removeCallbacks(f8350Wwwwwwwwwwwwwwwwwwwwww);
            f8352Wwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    public void Wwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwww();
        this.f8362Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        f8353Wwwwwwwwwwwwwwwwwwwwwwwww.post(new a());
    }

    public final void Wwwwwwwwwwwwwwwww() {
        if (f8352Wwwwwwwwwwwwwwwwwwwwwwww == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f8352Wwwwwwwwwwwwwwwwwwwwwwww = handler;
            handler.post(f8351Wwwwwwwwwwwwwwwwwwwwwww);
            f8352Wwwwwwwwwwwwwwwwwwwwwwww.postDelayed(f8350Wwwwwwwwwwwwwwwwwwwwww, 200L);
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
        this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        com.iab.omid.library.mmadbridge.processor.a Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().size() > 0) {
            Iterator<String> it = this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.a(null);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(next, this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(next), a2);
                com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwwwww(a2);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f8356Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a2, hashSet, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
        if (this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww().size() > 0) {
            JSONObject a3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.a(null);
            treeWalker = this;
            treeWalker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, a3, com.iab.omid.library.mmadbridge.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwwwww(a3);
            treeWalker.f8356Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a3, treeWalker.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (treeWalker.f8360Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                for (com.iab.omid.library.mmadbridge.adsession.a aVar : com.iab.omid.library.mmadbridge.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    aVar.Wwwwwwwwwwwwwwwwwwwwwwwww(treeWalker.f8359Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
        } else {
            treeWalker = this;
            treeWalker.f8356Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        treeWalker.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww() {
        this.f8361Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        this.f8359Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8360Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        Iterator<com.iab.omid.library.mmadbridge.adsession.a> it = com.iab.omid.library.mmadbridge.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().Wwwwwwwwwwwwwwwwwww()) {
                this.f8360Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                break;
            }
        }
        this.f8355Wwwwwwwwwwwwwwwwwwwwwwwwwww = f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - this.f8355Wwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww(View view, JSONObject jSONObject) {
        String Wwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(view);
        if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, Wwwwwwwwwwwwwwwwwwwwwwwww2);
            com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, Boolean.valueOf(this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww(view)));
            com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwwww(jSONObject, Boolean.valueOf(this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2)));
            this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww();
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, JSONObject jSONObject) {
        a.C0072a Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return true;
        }
        return false;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.mmadbridge.processor.a Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8358Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            JSONObject a2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.a(view);
            com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwww(a2, str);
            com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwww(a2, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
            com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, a2);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, com.iab.omid.library.mmadbridge.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.mmadbridge.walking.c cVar, boolean z) {
        boolean z2;
        if (cVar == com.iab.omid.library.mmadbridge.walking.c.PARENT_VIEW) {
            z2 = true;
        } else {
            z2 = false;
        }
        aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, jSONObject, this, z2, z);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (this.f8362Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f8362Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                treeWalkerTimeLogger.onTreeProcessed(this.f8361Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, TimeUnit.NANOSECONDS.toMillis(j));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f8361Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, j);
                }
            }
        }
    }

    @Override // com.iab.omid.library.mmadbridge.processor.a.InterfaceC0070a
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, com.iab.omid.library.mmadbridge.processor.a aVar, JSONObject jSONObject, boolean z) {
        com.iab.omid.library.mmadbridge.walking.c Wwwwwwwwwwwwwwwwwwwwww2;
        TreeWalker treeWalker;
        boolean z2;
        if (!h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(view) || (Wwwwwwwwwwwwwwwwwwwwww2 = this.f8357Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(view)) == com.iab.omid.library.mmadbridge.walking.c.UNDERLYING_VIEW) {
            return;
        }
        JSONObject a2 = aVar.a(view);
        com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, a2);
        if (!Wwwwwwwwwwwwwwwwwwwwwwwww(view, a2)) {
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(view, a2);
            if (!z && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (this.f8360Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Wwwwwwwwwwwwwwwwwwwwww2 == com.iab.omid.library.mmadbridge.walking.c.OBSTRUCTION_VIEW && !z2) {
                this.f8359Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new com.iab.omid.library.mmadbridge.weakreference.a(view));
            }
            treeWalker = this;
            treeWalker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, aVar, a2, Wwwwwwwwwwwwwwwwwwwwww2, z2);
        } else {
            treeWalker = this;
        }
        treeWalker.f8361Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww++;
    }
}
