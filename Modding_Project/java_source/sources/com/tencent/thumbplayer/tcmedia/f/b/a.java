package com.tencent.thumbplayer.tcmedia.f.b;

import android.os.SystemClock;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tencent.thumbplayer.tcmedia.api.richmedia.TPRichMediaFeature;
import com.tencent.thumbplayer.tcmedia.config.TPPlayerConfig;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.tencent.thumbplayer.tcmedia.utils.i;
import com.tencent.thumbplayer.tcmedia.utils.l;
import com.tencent.thumbplayer.tcmedia.utils.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes6.dex */
public class a implements com.tencent.thumbplayer.tcmedia.tplayer.plugins.a {
    private String b;
    private String c;
    private TPRichMediaFeature[] d;

    /* renamed from: a  reason: collision with root package name */
    m f10609a = new m();
    private int e = 0;
    private int f = 0;
    private int g = -1;
    private long h = 0;
    private List<b> i = new ArrayList();
    private Map<Integer, C0228a> j = new HashMap();

    /* renamed from: com.tencent.thumbplayer.tcmedia.f.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0228a {

        /* renamed from: a  reason: collision with root package name */
        public int f10611a;
        public long b;

        private C0228a() {
        }
    }

    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f10612a;
        public int b;
        public long c;

        private b() {
        }
    }

    private void c() {
        this.h = SystemClock.elapsedRealtime();
    }

    private void d() {
        g(0);
    }

    private void e() {
        g(0);
    }

    private void f() {
        this.d = null;
        this.e = 0;
        this.f = 0;
        this.h = 0L;
        this.i.clear();
        this.j.clear();
    }

    private void g(int i) {
        h(i);
        f();
    }

    private void h(int i) {
        l(i);
        i(i);
        j(i);
    }

    private void i(int i) {
        if (this.d != null) {
            for (int i2 = 0; i2 < this.d.length; i2++) {
                b(i2, 0);
            }
        }
    }

    private void j(int i) {
        if (this.d != null) {
            for (int i2 = 0; i2 < this.d.length; i2++) {
                c(i2, 0);
            }
        }
    }

    private String k(int i) {
        TPRichMediaFeature[] tPRichMediaFeatureArr = this.d;
        if (tPRichMediaFeatureArr != null && i >= 0 && i < tPRichMediaFeatureArr.length) {
            return tPRichMediaFeatureArr[i].getFeatureType();
        }
        return "";
    }

    private void l(int i) {
        if (this.h <= 0) {
            return;
        }
        l lVar = new l();
        lVar.a(TypedValues.TransitionType.S_DURATION, SystemClock.elapsedRealtime() - this.h);
        lVar.a("code", i);
        a("rich_media_prepare", lVar);
        this.h = 0L;
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.a
    public void a() {
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.a
    public void b() {
    }

    private void a(int i) {
        this.e++;
        b bVar = new b();
        bVar.f10612a = i;
        bVar.b = this.e;
        bVar.c = SystemClock.elapsedRealtime();
        this.i.add(bVar);
    }

    private void b(int i) {
        b(i, 0);
        if (this.j.containsKey(Integer.valueOf(i))) {
            return;
        }
        this.f++;
        C0228a c0228a = new C0228a();
        c0228a.f10611a = this.f;
        c0228a.b = SystemClock.elapsedRealtime();
        this.j.put(Integer.valueOf(i), c0228a);
    }

    private void c(int i) {
        b(i, 0);
    }

    private void d(int i) {
        c(i, 0);
    }

    private void e(int i) {
        g(i);
    }

    private void f(int i) {
        this.g = i;
    }

    private void a(int i, int i2) {
        b(i, i2);
        c(i, i2);
    }

    private void b(int i, int i2) {
        String k = k(i);
        Iterator<b> it = this.i.iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (next.f10612a == i) {
                a(next, k, i2);
                it.remove();
            }
        }
    }

    private void c(int i, int i2) {
        if (this.j.containsKey(Integer.valueOf(i))) {
            a(this.j.get(Integer.valueOf(i)), k(i), i2);
            this.j.remove(Integer.valueOf(i));
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.a
    public void a(int i, int i2, int i3, String str, Object obj) {
        this.f10609a.writeLock().lock();
        switch (i) {
            case 300:
                c();
                break;
            case 301:
                a(obj);
                break;
            case 302:
                a(i2);
                break;
            case 303:
                b(i2);
                break;
            case 304:
                c(i2);
                break;
            case 305:
                d(i2);
                break;
            case 306:
                d();
                break;
            case 307:
                e();
                break;
            case 308:
                e(i2);
                break;
            case 309:
                a(str);
                break;
            case 310:
                a(i2, i3);
                break;
            case 311:
                f(i2);
                break;
        }
        this.f10609a.writeLock().unlock();
    }

    private void a(com.tencent.thumbplayer.tcmedia.common.a.a aVar) {
        aVar.a("url", this.c);
        aVar.a("flowid", this.b);
        aVar.a(TPDownloadProxyEnum.USER_GUID, TPPlayerConfig.getGuid());
        aVar.a("appplatform", TPPlayerConfig.getPlatform());
        aVar.a("network", i.b());
    }

    private void a(C0228a c0228a, String str, int i) {
        l lVar = new l();
        lVar.a(TypedValues.TransitionType.S_DURATION, SystemClock.elapsedRealtime() - c0228a.b);
        lVar.a("code", i);
        lVar.a("seq", c0228a.f10611a);
        lVar.a("featuretype", str);
        lVar.a("position", this.g);
        a("rich_media_feature_data_callback", lVar);
    }

    private void a(b bVar, String str, int i) {
        l lVar = new l();
        lVar.a(TypedValues.TransitionType.S_DURATION, SystemClock.elapsedRealtime() - bVar.c);
        lVar.a("code", i);
        lVar.a("seq", bVar.b);
        lVar.a("featuretype", str);
        lVar.a("position", this.g);
        a("rich_media_feature_select", lVar);
    }

    private void a(Object obj) {
        if (obj instanceof TPRichMediaFeature[]) {
            this.d = (TPRichMediaFeature[]) obj;
        }
        l(0);
    }

    private void a(String str) {
        this.b = UUID.randomUUID().toString() + System.nanoTime() + "_" + TPPlayerConfig.getPlatform();
        this.c = str;
    }

    private void a(String str, com.tencent.thumbplayer.tcmedia.common.a.a aVar) {
        a(aVar);
    }
}
