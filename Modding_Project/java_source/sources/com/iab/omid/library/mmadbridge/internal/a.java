package com.iab.omid.library.mmadbridge.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.mmadbridge.internal.d;
import java.util.Date;
/* loaded from: classes5.dex */
public class a implements d.a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static a f8287Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new a(new d());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public d f8289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Date f8291Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.mmadbridge.utils.f f8292Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.mmadbridge.utils.f();

    public a(d dVar) {
        this.f8289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dVar;
    }

    public static a Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f8287Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8292Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Date date = this.f8291Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (date != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.after(date)) {
            return;
        }
        this.f8291Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f8291Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            for (com.iab.omid.library.mmadbridge.adsession.a aVar : c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                aVar.Wwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
    }

    public Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Date date = this.f8291Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        if (!this.f8290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f8289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            this.f8289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            this.f8289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f8288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f8289Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f8290Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        }
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d.a
    public void a(boolean z) {
        if (!this.f8288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && z) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f8288Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }
}
