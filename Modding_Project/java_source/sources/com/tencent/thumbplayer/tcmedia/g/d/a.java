package com.tencent.thumbplayer.tcmedia.g.d;

import com.tencent.thumbplayer.tcmedia.g.b.e;
import com.tencent.thumbplayer.tcmedia.g.b.f;
import com.tencent.thumbplayer.tcmedia.g.h.d;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final b f10630a;
    private final b b;

    public a() {
        b bVar = new b(2, "keep");
        this.f10630a = bVar;
        this.b = new b(Integer.MAX_VALUE, "running");
        bVar.a(new c() { // from class: com.tencent.thumbplayer.tcmedia.g.d.a.2
            @Override // com.tencent.thumbplayer.tcmedia.g.d.c
            public void a(f fVar) {
                if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
                    com.tencent.thumbplayer.tcmedia.g.h.b.b("CodecWrapperManager", "onErase codecWrapper:".concat(String.valueOf(fVar)));
                }
                fVar.i();
            }
        });
    }

    public final f a(e eVar) {
        f a2 = this.f10630a.a(eVar);
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("CodecWrapperManager", "obtainCodecWrapper codecWrapper:".concat(String.valueOf(a2)));
        }
        return a2;
    }

    public final void b(f fVar) {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("CodecWrapperManager", "removeFromRunning codecWrapper:".concat(String.valueOf(fVar)));
        }
        this.b.b(fVar);
    }

    public final void c(f fVar) {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("CodecWrapperManager", "transTokeep codecWrapper:".concat(String.valueOf(fVar)));
        }
        this.b.b(fVar);
        this.f10630a.a(fVar);
        com.tencent.thumbplayer.tcmedia.g.a.a h = fVar.h();
        if (h != null) {
            h.onTransToKeepPool();
        }
    }

    public final String a() {
        return "runningPool:" + this.b + " keepPool:" + this.f10630a;
    }

    public final void a(final f fVar) {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("CodecWrapperManager", "transToRunning codecWrapper:".concat(String.valueOf(fVar)));
        }
        this.f10630a.b(fVar);
        this.b.a(fVar);
        d.b(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.g.d.a.1
            @Override // java.lang.Runnable
            public void run() {
                com.tencent.thumbplayer.tcmedia.g.a.a h = fVar.h();
                if (h != null) {
                    h.onTransToRunningPool();
                }
            }
        });
    }
}
