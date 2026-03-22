package com.iab.omid.library.unity3d.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.unity3d.processor.a;
import com.iab.omid.library.unity3d.utils.f;
import com.iab.omid.library.unity3d.utils.h;
import com.iab.omid.library.unity3d.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class TreeWalker implements a.InterfaceC0074a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f8494Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f8500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static TreeWalker f8493Wwwwwwwwwwwwwwwwwwwwwwwwww = new TreeWalker();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Handler f8492Wwwwwwwwwwwwwwwwwwwwwwwww = new Handler(Looper.getMainLooper());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Handler f8491Wwwwwwwwwwwwwwwwwwwwwwww = null;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Runnable f8490Wwwwwwwwwwwwwwwwwwwwwww = new b();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Runnable f8489Wwwwwwwwwwwwwwwwwwwwww = new c();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<TreeWalkerTimeLogger> f8501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<com.iab.omid.library.unity3d.weakreference.a> f8498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.unity3d.walking.a f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.unity3d.walking.a();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.unity3d.processor.b f8497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.unity3d.processor.b();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.unity3d.walking.b f8495Wwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.unity3d.walking.b(new com.iab.omid.library.unity3d.walking.async.c());

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
            TreeWalker.this.f8495Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
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
            if (TreeWalker.f8491Wwwwwwwwwwwwwwwwwwwwwwww != null) {
                TreeWalker.f8491Wwwwwwwwwwwwwwwwwwwwwwww.post(TreeWalker.f8490Wwwwwwwwwwwwwwwwwwwwwww);
                TreeWalker.f8491Wwwwwwwwwwwwwwwwwwwwwwww.postDelayed(TreeWalker.f8489Wwwwwwwwwwwwwwwwwwwwww, 200L);
            }
        }
    }

    public static TreeWalker Wwwwwwwwwwwwwwwwwww() {
        return f8493Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwww() {
        Handler handler = f8491Wwwwwwwwwwwwwwwwwwwwwwww;
        if (handler != null) {
            handler.removeCallbacks(f8489Wwwwwwwwwwwwwwwwwwwwww);
            f8491Wwwwwwwwwwwwwwwwwwwwwwww = null;
        }
    }

    public void Wwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwww();
        this.f8501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        f8492Wwwwwwwwwwwwwwwwwwwwwwwww.post(new a());
    }

    public final void Wwwwwwwwwwwwwwwww() {
        if (f8491Wwwwwwwwwwwwwwwwwwwwwwww == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f8491Wwwwwwwwwwwwwwwwwwwwwwww = handler;
            handler.post(f8490Wwwwwwwwwwwwwwwwwwwwwww);
            f8491Wwwwwwwwwwwwwwwwwwwwwwww.postDelayed(f8489Wwwwwwwwwwwwwwwwwwwwww, 200L);
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
        this.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww();
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        com.iab.omid.library.unity3d.processor.a Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (this.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().size() > 0) {
            Iterator<String> it = this.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.a(null);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(next, this.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(next), a2);
                com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwww(a2);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f8495Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a2, hashSet, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
        if (this.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww().size() > 0) {
            JSONObject a3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.a(null);
            treeWalker = this;
            treeWalker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, a3, com.iab.omid.library.unity3d.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwww(a3);
            treeWalker.f8495Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a3, treeWalker.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (treeWalker.f8499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                for (com.iab.omid.library.unity3d.adsession.a aVar : com.iab.omid.library.unity3d.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(treeWalker.f8498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
        } else {
            treeWalker = this;
            treeWalker.f8495Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        treeWalker.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww() {
        this.f8500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
        this.f8498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
        this.f8499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        Iterator<com.iab.omid.library.unity3d.adsession.a> it = com.iab.omid.library.unity3d.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().Wwwwwwwwwwwwwwwwwwwwwww()) {
                this.f8499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
                break;
            }
        }
        this.f8494Wwwwwwwwwwwwwwwwwwwwwwwwwww = f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() - this.f8494Wwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwww(View view, JSONObject jSONObject) {
        String Wwwwwwwwwwwwwwwwwwwwwwww2 = this.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(view);
        if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, Wwwwwwwwwwwwwwwwwwwwwwww2);
            com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, Boolean.valueOf(this.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(view)));
            this.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwww();
            return true;
        }
        return false;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, JSONObject jSONObject) {
        a.C0076a Wwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(view);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, Wwwwwwwwwwwwwwwwwwwwwwwwww2);
            return true;
        }
        return false;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.unity3d.processor.a Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            JSONObject a2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.a(view);
            com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwww(a2, str);
            com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwww(a2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, a2);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, com.iab.omid.library.unity3d.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.unity3d.walking.c cVar, boolean z) {
        boolean z2;
        if (cVar == com.iab.omid.library.unity3d.walking.c.PARENT_VIEW) {
            z2 = true;
        } else {
            z2 = false;
        }
        aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, jSONObject, this, z2, z);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (this.f8501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f8501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                treeWalkerTimeLogger.onTreeProcessed(this.f8500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, TimeUnit.NANOSECONDS.toMillis(j));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f8500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, j);
                }
            }
        }
    }

    @Override // com.iab.omid.library.unity3d.processor.a.InterfaceC0074a
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, com.iab.omid.library.unity3d.processor.a aVar, JSONObject jSONObject, boolean z) {
        com.iab.omid.library.unity3d.walking.c Wwwwwwwwwwwwwwwwwwwwww2;
        TreeWalker treeWalker;
        boolean z2;
        if (!h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view) || (Wwwwwwwwwwwwwwwwwwwwww2 = this.f8496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(view)) == com.iab.omid.library.unity3d.walking.c.UNDERLYING_VIEW) {
            return;
        }
        JSONObject a2 = aVar.a(view);
        com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, a2);
        if (!Wwwwwwwwwwwwwwwwwwwwwwwww(view, a2)) {
            boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(view, a2);
            if (!z && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (this.f8499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Wwwwwwwwwwwwwwwwwwwwww2 == com.iab.omid.library.unity3d.walking.c.OBSTRUCTION_VIEW && !z2) {
                this.f8498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new com.iab.omid.library.unity3d.weakreference.a(view));
            }
            treeWalker = this;
            treeWalker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view, aVar, a2, Wwwwwwwwwwwwwwwwwwwwww2, z2);
        } else {
            treeWalker = this;
        }
        treeWalker.f8500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww++;
    }
}
