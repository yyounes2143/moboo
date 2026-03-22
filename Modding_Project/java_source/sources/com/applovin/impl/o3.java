package com.applovin.impl;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.applovin.impl.j2;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v2;
import com.applovin.sdk.R;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class o3 extends j2 {
    private final v2 n;
    private final Context o;

    public o3(v2 v2Var, Context context) {
        super(j2.c.DETAIL);
        this.n = v2Var;
        this.o = context;
        this.c = t();
        this.d = s();
    }

    private SpannedString q() {
        if (this.n.A()) {
            if (!TextUtils.isEmpty(this.n.c())) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("ADAPTER  ", -7829368));
                spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.n.c(), ViewCompat.MEASURED_STATE_MASK));
                if (this.n.B()) {
                    spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("  LATEST  ", i0.a(R.color.applovin_sdk_orangeColor, this.o)));
                    spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.n.k(), ViewCompat.MEASURED_STATE_MASK));
                }
                if (!this.n.C()) {
                    spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
                    spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSubSpannedString("INCOMPATIBLE WITH MAX SDK VERSION", SupportMenu.CATEGORY_MASK));
                }
                return new SpannedString(spannableStringBuilder);
            }
            return StringUtils.createListItemDetailSpannedString("Adapter Found", ViewCompat.MEASURED_STATE_MASK);
        }
        return StringUtils.createListItemDetailSpannedString("Adapter Missing", SupportMenu.CATEGORY_MASK);
    }

    private SpannedString s() {
        if (!o()) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) u());
        spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
        spannableStringBuilder.append((CharSequence) q());
        if (this.n.q() == v2.a.INVALID_INTEGRATION) {
            spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString("Invalid Integration", SupportMenu.CATEGORY_MASK));
        } else if (this.n.q() == v2.a.INCOMPLETE_INTEGRATION && this.n.F()) {
            spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
            spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString("Mismatched SDK/Adapter Versions", SupportMenu.CATEGORY_MASK));
        }
        return new SpannedString(spannableStringBuilder);
    }

    private SpannedString t() {
        int i;
        if (o()) {
            i = ViewCompat.MEASURED_STATE_MASK;
        } else {
            i = -7829368;
        }
        return StringUtils.createSpannedString(this.n.g(), i, 18, 1);
    }

    private SpannedString u() {
        String str;
        if (this.n.G()) {
            if (StringUtils.isValidString(this.n.p())) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(StringUtils.createListItemDetailSubSpannedString("SDK\t\t\t\t\t  ", -7829368));
                spannableStringBuilder.append((CharSequence) StringUtils.createListItemDetailSpannedString(this.n.p(), ViewCompat.MEASURED_STATE_MASK));
                return new SpannedString(spannableStringBuilder);
            }
            if (this.n.A()) {
                str = "Retrieving SDK Version...";
            } else {
                str = "SDK Found";
            }
            return StringUtils.createListItemDetailSpannedString(str, ViewCompat.MEASURED_STATE_MASK);
        }
        return StringUtils.createListItemDetailSpannedString("SDK Missing", SupportMenu.CATEGORY_MASK);
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
    public int h() {
        int h = this.n.h();
        if (h > 0) {
            return h;
        }
        return R.drawable.applovin_ic_mediation_placeholder;
    }

    @Override // com.applovin.impl.j2
    public boolean o() {
        if (this.n.q() != v2.a.MISSING) {
            return true;
        }
        return false;
    }

    public v2 r() {
        return this.n;
    }

    public String toString() {
        return "MediatedNetworkListItemViewModel{text=" + ((Object) this.c) + ", detailText=" + ((Object) this.d) + ", network=" + this.n + "}";
    }
}
