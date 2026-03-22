package com.tencent.thumbplayer.tcmedia.g;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
import com.tencent.thumbplayer.tcmedia.g.b;
import com.tencent.thumbplayer.tcmedia.g.b.c;
import com.tencent.thumbplayer.tcmedia.g.b.d;
import com.tencent.thumbplayer.tcmedia.g.b.e;
import com.tencent.thumbplayer.tcmedia.g.b.f;
import com.tencent.thumbplayer.tcmedia.g.b.g;
import com.tencent.thumbplayer.tcmedia.g.f.a;
import java.util.HashMap;
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final a f10614a = new a();
    private static boolean e = false;
    private static boolean f = true;
    private boolean d;
    private com.tencent.thumbplayer.tcmedia.g.f.b b = com.tencent.thumbplayer.tcmedia.g.f.b.e;
    private boolean c = true;
    private final HashMap<b, c> g = new HashMap<>();
    private final com.tencent.thumbplayer.tcmedia.g.e.a h = new com.tencent.thumbplayer.tcmedia.g.e.a();
    private final com.tencent.thumbplayer.tcmedia.g.d.a i = new com.tencent.thumbplayer.tcmedia.g.d.a();
    private final com.tencent.thumbplayer.tcmedia.g.d.a j = new com.tencent.thumbplayer.tcmedia.g.d.a();
    private boolean k = true;

    public static a a() {
        return f10614a;
    }

    private c b(MediaFormat mediaFormat, b bVar) {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("TCodecManager", "createNewReuseCodecWrapper mediaFormat:" + mediaFormat + " createBy:" + bVar.a() + " nameOrType:" + bVar.l());
        }
        String string = mediaFormat.getString("mime");
        e a2 = e.a(mediaFormat);
        com.tencent.thumbplayer.tcmedia.g.f.a.a(a2, mediaFormat);
        return f.a(bVar.a() == b.EnumC0230b.CreateByName ? MediaCodec.createByCodecName(bVar.l()) : MediaCodec.createDecoderByType(string), string, a2);
    }

    private void c(c cVar) {
        com.tencent.thumbplayer.tcmedia.g.d.a aVar;
        if (e()) {
            if (cVar instanceof g) {
                aVar = this.i;
            } else if (!(cVar instanceof com.tencent.thumbplayer.tcmedia.g.b.a)) {
                return;
            } else {
                aVar = this.j;
            }
            aVar.a((f) cVar);
        }
    }

    public final com.tencent.thumbplayer.tcmedia.g.f.b d() {
        return this.b;
    }

    public final boolean e() {
        return this.c;
    }

    public final boolean f() {
        return this.k;
    }

    public static void b() {
    }

    public static boolean c() {
        return f;
    }

    public final c a(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i, b bVar) {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("TCodecManager", "configureStart videoPoolInfo:" + this.i.a() + ", audioPoolInfo:" + this.j.a());
        }
        this.d = true;
        this.k = true;
        c a2 = a(mediaFormat, bVar, surface);
        c(a2);
        a2.a(bVar.c());
        a2.a(mediaFormat, surface, mediaCrypto, i);
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("TCodecManager", "configureEnd   videoPoolInfo:" + this.i.a() + ", audioPoolInfo:" + this.j.a());
        }
        return a2;
    }

    private c a(MediaFormat mediaFormat, b bVar) {
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("TCodecManager", "createDirectCodecWrapper mediaFormat:" + mediaFormat + " createBy:" + bVar.a() + " nameOrType:" + bVar.l());
        }
        return bVar.a() == b.EnumC0230b.CreateByName ? new d(MediaCodec.createByCodecName(bVar.l())) : new d(MediaCodec.createDecoderByType(bVar.l()));
    }

    public final void b(c cVar) {
        com.tencent.thumbplayer.tcmedia.g.d.a aVar;
        if (e()) {
            if (cVar instanceof g) {
                aVar = this.i;
            } else if (!(cVar instanceof com.tencent.thumbplayer.tcmedia.g.b.a)) {
                return;
            } else {
                aVar = this.j;
            }
            aVar.c((f) cVar);
        }
    }

    private c a(MediaFormat mediaFormat, b bVar, Surface surface) {
        boolean b = bVar.b();
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("TCodecManager", "getCodec isVideo:" + b + " codecFinalReuseEnable:" + bVar.f10615a);
        }
        if (!bVar.f10615a) {
            bVar.b = false;
            if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
                com.tencent.thumbplayer.tcmedia.g.h.b.b("TCodecManager", "getCodec return DirectCodecWrapper for mediaFormat:" + mediaFormat + " codecFinalReuseEnable:false surface:" + surface);
            }
            return a(mediaFormat, bVar);
        }
        e a2 = e.a(mediaFormat);
        c a3 = a(b, a2);
        e.a(a2.f10622a);
        if (a3 != null) {
            a.b b2 = a3.b(a2);
            if (b2 == a.b.KEEP_CODEC_RESULT_YES_WITHOUT_RECONFIGURATION || b2 == a.b.KEEP_CODEC_RESULT_YES_WITH_RECONFIGURATION) {
                if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
                    com.tencent.thumbplayer.tcmedia.g.h.b.b("TCodecManager", "getCodec reuse, isVideo:" + b + " reuseType:" + b2);
                }
                a3.b();
                a3.c();
                bVar.b = true;
                return a3;
            } else if (b2 == a.b.KEEP_CODEC_RESULT_NO && com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
                com.tencent.thumbplayer.tcmedia.g.h.b.d("TCodecManager", "getCodec not reuse, isVideo:" + b + " reuseType:" + b2);
            }
        }
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("TCodecManager", "getCodec not reuse, for can't find reUseAble CodecWrapper. isVideo:".concat(String.valueOf(b)));
        }
        bVar.b = false;
        c b3 = b(mediaFormat, bVar);
        b3.b();
        this.g.put(bVar, b3);
        return b3;
    }

    private c a(boolean z, e eVar) {
        return (z ? this.i : this.j).a(eVar);
    }

    public final void a(c cVar) {
        com.tencent.thumbplayer.tcmedia.g.d.a aVar;
        if (e()) {
            if (cVar instanceof g) {
                aVar = this.i;
            } else if (!(cVar instanceof com.tencent.thumbplayer.tcmedia.g.b.a)) {
                return;
            } else {
                aVar = this.j;
            }
            aVar.b((f) cVar);
        }
    }

    public final void a(com.tencent.thumbplayer.tcmedia.g.h.a aVar) {
        com.tencent.thumbplayer.tcmedia.g.h.b.a(aVar);
    }

    public final void a(boolean z) {
        com.tencent.thumbplayer.tcmedia.g.h.b.a(z);
    }

    public final boolean a(b bVar, Surface surface) {
        boolean e2 = e();
        boolean d = bVar.d();
        boolean b = bVar.b();
        boolean z = e2 && d;
        boolean a2 = com.tencent.thumbplayer.tcmedia.g.h.c.a();
        boolean z2 = !a2;
        if (com.tencent.thumbplayer.tcmedia.g.h.b.a()) {
            com.tencent.thumbplayer.tcmedia.g.h.b.b("TCodecManager", "reuseEnable getCodec isVideo:" + b + " reuseEnable:" + z + " globalReuseEnable:" + e2 + " mediaCodecReuseEnable:" + d + " canUseSetOutputSurfaceAPI:" + z2 + " ,surface:" + surface);
        }
        return z && b && !a2 && surface != null;
    }
}
