package com.tencent.thumbplayer.tcmedia.g.d;

import android.text.TextUtils;
import com.tencent.thumbplayer.tcmedia.g.b.e;
import com.tencent.thumbplayer.tcmedia.g.b.f;
import com.tencent.thumbplayer.tcmedia.g.f.a;
import com.tencent.thumbplayer.tcmedia.g.f.b;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private c f10633a;
    private final int b;
    private final String c;
    private final CopyOnWriteArraySet<f> d = new CopyOnWriteArraySet<>();

    public b(int i, String str) {
        this.b = i;
        this.c = str;
    }

    private f b() {
        Iterator<f> it = this.d.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    private f c(f fVar) {
        f a2;
        Iterator<f> it = this.d.iterator();
        if (com.tencent.thumbplayer.tcmedia.g.a.a().d().d == b.a.SAME && (a2 = a(fVar, it)) != null) {
            return a2;
        }
        return b();
    }

    public final f a(e eVar) {
        f b = b(eVar);
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("CodecWrapperPool", "obtain codecWrapper:".concat(String.valueOf(b)));
        }
        if (b != null) {
            this.d.remove(b);
            return b;
        }
        return null;
    }

    public final String toString() {
        return "size:" + this.d.size() + " elements:" + this.d;
    }

    private f a(f fVar, Iterator it) {
        while (it.hasNext()) {
            f fVar2 = (f) it.next();
            if (TextUtils.equals(fVar.m(), fVar2.m())) {
                return fVar2;
            }
        }
        return null;
    }

    private final f b(e eVar) {
        Iterator<f> it = this.d.iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (!next.b && next.a(eVar) != a.b.KEEP_CODEC_RESULT_NO) {
                return next;
            }
            next.k();
            if (next.l()) {
                b(next);
            }
        }
        return null;
    }

    public final void a(f fVar) {
        if (a()) {
            b(c(fVar));
        }
        this.d.add(fVar);
    }

    public final void b(f fVar) {
        if (this.d.remove(fVar)) {
            c cVar = this.f10633a;
            if (cVar != null) {
                cVar.a(fVar);
                return;
            }
            return;
        }
        com.tencent.thumbplayer.tcmedia.g.h.b.d("CodecWrapperPool", "pool:" + this.c + " remove " + fVar + " not found");
    }

    public final void a(c cVar) {
        this.f10633a = cVar;
    }

    public final boolean a() {
        return this.d.size() == this.b;
    }
}
