package com.iab.omid.library.applovin.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.applovin.internal.d;
import java.util.Date;
/* loaded from: classes5.dex */
public class a implements d.a {
    private static a f = new a(new d());

    /* renamed from: a  reason: collision with root package name */
    protected com.iab.omid.library.applovin.utils.f f8190a = new com.iab.omid.library.applovin.utils.f();
    private Date b;
    private boolean c;
    private d d;
    private boolean e;

    private a(d dVar) {
        this.d = dVar;
    }

    public static a a() {
        return f;
    }

    private void c() {
        if (this.c && this.b != null) {
            for (com.iab.omid.library.applovin.adsession.a aVar : c.c().a()) {
                aVar.d().a(b());
            }
        }
    }

    public Date b() {
        Date date = this.b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date a2 = this.f8190a.a();
        Date date = this.b;
        if (date != null && !a2.after(date)) {
            return;
        }
        this.b = a2;
        c();
    }

    public void a(@NonNull Context context) {
        if (this.c) {
            return;
        }
        this.d.a(context);
        this.d.a(this);
        this.d.e();
        this.e = this.d.c();
        this.c = true;
    }

    @Override // com.iab.omid.library.applovin.internal.d.a
    public void a(boolean z) {
        if (!this.e && z) {
            d();
        }
        this.e = z;
    }
}
