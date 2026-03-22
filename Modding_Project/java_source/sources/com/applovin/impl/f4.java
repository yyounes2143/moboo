package com.applovin.impl;

import android.content.Context;
import android.text.SpannedString;
import com.applovin.impl.j2;
import com.applovin.impl.l0;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class f4 extends j2 {
    private final l0.a n;
    private final Context o;
    private final boolean p;

    public f4(l0.a aVar, boolean z, Context context) {
        super(j2.c.RIGHT_DETAIL);
        this.n = aVar;
        this.o = context;
        this.c = new SpannedString(aVar.a());
        this.p = z;
    }

    @Override // com.applovin.impl.j2
    public SpannedString f() {
        return new SpannedString(this.n.a(this.o));
    }

    @Override // com.applovin.impl.j2
    public boolean o() {
        return false;
    }

    @Override // com.applovin.impl.j2
    public boolean p() {
        Boolean b = this.n.b(this.o);
        if (b != null) {
            return b.equals(Boolean.valueOf(this.p));
        }
        return false;
    }
}
