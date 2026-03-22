package com.applovin.impl;

import android.text.SpannedString;
import com.applovin.impl.j2;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class j4 extends j2 {
    public j4(String str) {
        super(j2.c.SECTION);
        this.c = new SpannedString(str);
    }

    public String toString() {
        return "SectionListItemViewModel{text=" + ((Object) this.c) + "}";
    }
}
