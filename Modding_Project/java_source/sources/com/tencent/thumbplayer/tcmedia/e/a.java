package com.tencent.thumbplayer.tcmedia.e;

import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f10604a;
    private b b;

    public a(b bVar) {
        this.b = bVar;
        this.f10604a = bVar.a();
    }

    public b a() {
        return this.b;
    }

    public String b() {
        return this.b.a();
    }

    public void c(String str) {
        TPLogUtil.i(this.b.a(), str);
    }

    public void d(String str) {
        TPLogUtil.w(this.b.a(), str);
    }

    public void e(String str) {
        TPLogUtil.e(this.b.a(), str);
    }

    public a(b bVar, String str) {
        b bVar2 = new b(bVar, str);
        this.b = bVar2;
        this.f10604a = bVar2.a();
    }

    public void a(b bVar) {
        if (bVar == null) {
            this.b = new b(this.f10604a);
        } else {
            this.b = bVar;
        }
    }

    public void b(String str) {
        TPLogUtil.d(this.b.a(), str);
    }

    public void a(Exception exc) {
        TPLogUtil.e(this.b.a(), exc);
    }

    public void a(String str) {
        this.b.a(str);
    }
}
