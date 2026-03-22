package com.applovin.impl;

import android.view.View;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class u3 {

    /* renamed from: a  reason: collision with root package name */
    private final View f3774a;
    private final FriendlyObstructionPurpose b;
    private final String c;

    public u3(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f3774a = view;
        this.b = friendlyObstructionPurpose;
        this.c = str;
    }

    public String a() {
        return this.c;
    }

    public FriendlyObstructionPurpose b() {
        return this.b;
    }

    public View c() {
        return this.f3774a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            u3 u3Var = (u3) obj;
            View view = this.f3774a;
            if (view == null ? u3Var.f3774a != null : !view.equals(u3Var.f3774a)) {
                return false;
            }
            if (this.b != u3Var.b) {
                return false;
            }
            String str = this.c;
            String str2 = u3Var.c;
            if (str != null) {
                return str.equals(str2);
            }
            if (str2 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i;
        int i2;
        View view = this.f3774a;
        int i3 = 0;
        if (view != null) {
            i = view.hashCode();
        } else {
            i = 0;
        }
        int i4 = i * 31;
        FriendlyObstructionPurpose friendlyObstructionPurpose = this.b;
        if (friendlyObstructionPurpose != null) {
            i2 = friendlyObstructionPurpose.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        String str = this.c;
        if (str != null) {
            i3 = str.hashCode();
        }
        return i5 + i3;
    }
}
