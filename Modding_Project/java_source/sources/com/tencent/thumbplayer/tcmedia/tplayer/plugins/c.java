package com.tencent.thumbplayer.tcmedia.tplayer.plugins;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes6.dex */
public class c implements b {

    /* renamed from: a  reason: collision with root package name */
    private CopyOnWriteArrayList<a> f10674a = new CopyOnWriteArrayList<>();

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.a
    public void a() {
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.b
    public void c() {
        CopyOnWriteArrayList<a> copyOnWriteArrayList = this.f10674a;
        if (copyOnWriteArrayList != null) {
            Iterator<a> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next != null) {
                    next.b();
                }
            }
            this.f10674a.clear();
        }
        this.f10674a = null;
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.a
    public void a(int i, int i2, int i3, String str, Object obj) {
        CopyOnWriteArrayList<a> copyOnWriteArrayList = this.f10674a;
        if (copyOnWriteArrayList != null) {
            Iterator<a> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                a next = it.next();
                int i4 = i;
                int i5 = i2;
                int i6 = i3;
                String str2 = str;
                Object obj2 = obj;
                if (next != null) {
                    next.a(i4, i5, i6, str2, obj2);
                }
                i = i4;
                i2 = i5;
                i3 = i6;
                str = str2;
                obj = obj2;
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.b
    public void a(a aVar) {
        CopyOnWriteArrayList<a> copyOnWriteArrayList = this.f10674a;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.contains(aVar)) {
            return;
        }
        aVar.a();
        this.f10674a.add(aVar);
    }

    @Override // com.tencent.thumbplayer.tcmedia.tplayer.plugins.a
    public void b() {
    }
}
