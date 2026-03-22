package com.iab.omid.library.vungle.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.vungle.internal.d;
import java.util.Date;
/* loaded from: classes5.dex */
public class a implements d.a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static a f8588Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new a(new d());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8589Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public d f8590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Date f8592Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.vungle.utils.f f8593Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.vungle.utils.f();

    public a(d dVar) {
        this.f8590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dVar;
    }

    public static a Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f8588Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8593Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Date date = this.f8592Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (date != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.after(date)) {
            return;
        }
        this.f8592Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f8592Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            for (com.iab.omid.library.vungle.adsession.a aVar : c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                aVar.Wwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
    }

    public Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Date date = this.f8592Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        if (!this.f8591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f8590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            this.f8590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            this.f8590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f8589Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f8590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f8591Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        }
    }

    @Override // com.iab.omid.library.vungle.internal.d.a
    public void a(boolean z) {
        if (!this.f8589Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && z) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f8589Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }
}
