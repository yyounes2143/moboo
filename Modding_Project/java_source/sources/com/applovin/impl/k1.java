package com.applovin.impl;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import com.applovin.impl.j2;
import com.applovin.sdk.R;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class k1 extends j2 {
    private final l1 n;
    private final Context o;

    public k1(l1 l1Var, Context context) {
        super(j2.c.DETAIL);
        this.n = l1Var;
        this.o = context;
        this.c = r();
        this.d = q();
    }

    private SpannedString q() {
        return new SpannedString("Displayed " + z6.a(this.n.b(), true));
    }

    private SpannedString r() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) this.n.c());
        spannableStringBuilder.append((CharSequence) " - ");
        spannableStringBuilder.append((CharSequence) this.n.d());
        return new SpannedString(spannableStringBuilder);
    }

    @Override // com.applovin.impl.j2
    public int d() {
        if (o()) {
            return R.drawable.applovin_ic_disclosure_arrow;
        }
        return super.h();
    }

    @Override // com.applovin.impl.j2
    public int e() {
        return i0.a(R.color.applovin_sdk_disclosureButtonColor, this.o);
    }

    @Override // com.applovin.impl.j2
    public boolean o() {
        return true;
    }
}
