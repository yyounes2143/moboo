package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.applovin.impl.x1;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class k extends View {

    /* renamed from: a  reason: collision with root package name */
    private final x1 f3073a;
    private boolean b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void onFailure();
    }

    public k(x1 x1Var, Context context) {
        super(context);
        this.f3073a = x1Var;
        setClickable(false);
        setFocusable(false);
    }

    public boolean a() {
        return this.b;
    }

    public void b() {
        a(null);
    }

    public String getIdentifier() {
        return this.f3073a.b();
    }

    public void a(a aVar) {
        if (this.b) {
            if (aVar != null) {
                aVar.a();
                return;
            }
            return;
        }
        Drawable a2 = this.f3073a.a();
        if (a2 == null) {
            if (aVar != null) {
                aVar.onFailure();
                return;
            }
            return;
        }
        setBackground(a2);
        this.b = true;
        if (aVar != null) {
            aVar.a();
        }
    }
}
