package com.iab.omid.library.unity3d.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.unity3d.internal.d;
import java.util.Date;
/* loaded from: classes5.dex */
public class a implements d.a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static a f8434Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new a(new d());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public d f8436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f8437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Date f8438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.unity3d.utils.f f8439Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new com.iab.omid.library.unity3d.utils.f();

    public a(d dVar) {
        this.f8436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dVar;
    }

    public static a Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f8434Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f8439Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Date date = this.f8438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (date != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.after(date)) {
            return;
        }
        this.f8438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f8438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            for (com.iab.omid.library.unity3d.adsession.a aVar : c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                aVar.Wwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
    }

    public Date Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Date date = this.f8438Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        if (!this.f8437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            this.f8436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            this.f8436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            this.f8436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f8435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f8436Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f8437Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
        }
    }

    @Override // com.iab.omid.library.unity3d.internal.d.a
    public void a(boolean z) {
        if (!this.f8435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && z) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        this.f8435Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }
}
