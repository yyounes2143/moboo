package com.mbridge.msdk.dycreator.baseview.extview;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class MBExtFeedBackView extends FeedBackButton implements InterBase {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f8851a;
    private Map<String, Boolean> b;
    private String c;

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.extview.MBExtFeedBackView$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8852a;

        static {
            int[] iArr = new int[c.values().length];
            f8852a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8852a[c.text.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8852a[c.ellipsize.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8852a[c.singleLine.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8852a[c.lines.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8852a[c.drawableLeft.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8852a[c.drawablePadding.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8852a[c.fadingEdge.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8852a[c.scrollHorizontally.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8852a[c.textColor.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8852a[c.textSize.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8852a[c.visibility.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f8852a[c.background.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f8852a[c.textStyle.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f8852a[c.style.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f8852a[c.contentDescription.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f8852a[c.tag.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f8852a[c.gravity.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f8852a[c.padding.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f8852a[c.paddingTop.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f8852a[c.paddingBottom.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f8852a[c.paddingLeft.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f8852a[c.paddingRight.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f8852a[c.paddingStart.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f8852a[c.paddingEnd.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f8852a[c.layout_width.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f8852a[c.layout_height.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public MBExtFeedBackView(Context context) {
        super(context);
        this.c = "";
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        HashMap b = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            c cVar = (c) b.get(attributeSet.getAttributeName(i));
            if (cVar != null) {
                int i2 = AnonymousClass1.f8852a[cVar.ordinal()];
                if (i2 != 26) {
                    if (i2 == 27) {
                        String attributeValue = attributeSet.getAttributeValue(i);
                        if (!attributeValue.startsWith("f") && !attributeValue.startsWith("m")) {
                            if (attributeValue.startsWith("wrap")) {
                                layoutParams.height = -2;
                            } else {
                                layoutParams.height = b.a().a(attributeValue);
                            }
                        } else {
                            layoutParams.height = -1;
                        }
                    }
                } else {
                    String attributeValue2 = attributeSet.getAttributeValue(i);
                    if (!attributeValue2.startsWith("f") && !attributeValue2.startsWith("m")) {
                        if (attributeValue2.startsWith("wrap")) {
                            layoutParams.width = -2;
                        } else {
                            layoutParams.width = b.a().a(attributeValue2);
                        }
                    } else {
                        layoutParams.width = -1;
                    }
                }
            }
        }
        return layoutParams;
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f8851a;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f8851a.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f8851a;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f8851a.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f8851a;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f8851a.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f8851a;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f8851a.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f8851a;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f8851a.get("mbridgeStrategy");
        }
        return "";
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.b;
        if (map != null && map.containsKey("mbridgeAttached") && this.b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.c);
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.b;
        if (map != null && map.containsKey("mbridgeDetached") && this.b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.c);
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        String str;
        String attributeValue;
        HashMap<String, c> c = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < attributeCount; i5++) {
            c cVar = c.get(attributeSet.getAttributeName(i5));
            if (cVar != null) {
                cVar.toString();
                switch (AnonymousClass1.f8852a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue2 = attributeSet.getAttributeValue(i5);
                        if (!attributeValue2.startsWith("@+id/")) {
                            break;
                        } else {
                            setId(attributeValue2.substring(5).hashCode());
                            continue;
                        }
                    case 2:
                        String attributeValue3 = attributeSet.getAttributeValue(i5);
                        if (TextUtils.isEmpty(attributeValue3)) {
                            continue;
                        } else if (attributeValue3.startsWith("@string/")) {
                            setText(b.a().f(attributeSet.getAttributeValue(i5)));
                            break;
                        } else {
                            setText(attributeValue3);
                            break;
                        }
                    case 3:
                        String attributeValue4 = attributeSet.getAttributeValue(i5);
                        if (!TextUtils.isEmpty(attributeValue4)) {
                            if (attributeValue4.equals("end")) {
                                setEllipsize(TextUtils.TruncateAt.END);
                            }
                            if (attributeValue4.equals("start")) {
                                setEllipsize(TextUtils.TruncateAt.START);
                            }
                            if (attributeValue4.equals("middle")) {
                                setEllipsize(TextUtils.TruncateAt.MIDDLE);
                            }
                            if (attributeValue4.equals("marquee")) {
                                setEllipsize(TextUtils.TruncateAt.MARQUEE);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 4:
                        setSingleLine(attributeSet.getAttributeBooleanValue(i5, false));
                        continue;
                    case 5:
                        setLines(attributeSet.getAttributeIntValue(i5, 1));
                        continue;
                    case 6:
                        String attributeValue5 = attributeSet.getAttributeValue(i5);
                        if (attributeValue5.startsWith("@drawable/")) {
                            str = attributeValue5.substring(10);
                        } else {
                            str = "";
                        }
                        if (!TextUtils.isEmpty(str)) {
                            Drawable drawable = getResources().getDrawable(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "drawable"));
                            drawable.setBounds(0, 0, t0.a(getContext(), 14.0f), t0.a(getContext(), 14.0f));
                            setCompoundDrawables(drawable, null, null, null);
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        setCompoundDrawablePadding(b.a().a(attributeSet.getAttributeValue(i5)));
                        continue;
                    case 8:
                        setHorizontalFadingEdgeEnabled(attributeSet.getAttributeBooleanValue(i5, false));
                        continue;
                    case 9:
                        setHorizontallyScrolling(attributeSet.getAttributeBooleanValue(i5, false));
                        continue;
                    case 10:
                        setTextColor(b.a().d(attributeSet.getAttributeValue(i5)));
                        continue;
                    case 11:
                        if (!TextUtils.isEmpty(attributeSet.getAttributeValue(i5))) {
                            setTextSize(b.a().a(attributeValue));
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        String attributeValue6 = attributeSet.getAttributeValue(i5);
                        if (TextUtils.isEmpty(attributeValue6)) {
                            continue;
                        } else if (attributeValue6.equals("invisible")) {
                            setVisibility(4);
                            break;
                        } else if (attributeValue6.equalsIgnoreCase("gone")) {
                            setVisibility(8);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        String attributeValue7 = attributeSet.getAttributeValue(i5);
                        if (attributeValue7.startsWith("#")) {
                            setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i5)));
                            continue;
                        } else {
                            if (attributeValue7.startsWith("@drawable/")) {
                                attributeValue7 = attributeValue7.substring(10);
                            }
                            setBackgroundResource(getResources().getIdentifier(attributeValue7, "drawable", getContext().getPackageName()));
                            break;
                        }
                    case 14:
                        if ("bold".equalsIgnoreCase(attributeSet.getAttributeValue(i5))) {
                            setTypeface(Typeface.defaultFromStyle(1));
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        String attributeValue8 = attributeSet.getAttributeValue(i5);
                        String substring = attributeValue8.substring(attributeValue8.indexOf("/") + 1);
                        setTextAppearance(getContext(), b.a().c("R.style." + substring));
                        continue;
                    case 16:
                        String attributeValue9 = attributeSet.getAttributeValue(i5);
                        if (!TextUtils.isEmpty(attributeValue9)) {
                            CharSequence charSequence = (String) com.mbridge.msdk.dycreator.utils.b.f8915a.get(attributeValue9.substring(8));
                            if (TextUtils.isEmpty(charSequence)) {
                                break;
                            } else {
                                setContentDescription(charSequence);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 17:
                        String attributeValue10 = attributeSet.getAttributeValue(i5);
                        if (TextUtils.isEmpty(attributeValue10)) {
                            break;
                        } else {
                            String str2 = com.mbridge.msdk.dycreator.utils.b.f8915a.get(attributeValue10.substring(8));
                            if (TextUtils.isEmpty(str2)) {
                                break;
                            } else {
                                setTag(str2);
                                continue;
                            }
                        }
                    case 18:
                        setGravity(b.a().b(attributeSet.getAttributeValue(i5)));
                        continue;
                    case 19:
                        int a2 = b.a().a(attributeSet.getAttributeValue(i5));
                        setPadding(a2, a2, a2, a2);
                        continue;
                    case 20:
                        i4 = b.a().a(attributeSet.getAttributeValue(i5));
                        setPadding(i, i4, i2, i3);
                        continue;
                    case 21:
                        i3 = b.a().a(attributeSet.getAttributeValue(i5));
                        setPadding(i, i4, i2, i3);
                        continue;
                    case 22:
                        i = b.a().a(attributeSet.getAttributeValue(i5));
                        setPadding(i, i4, i2, i3);
                        continue;
                    case 23:
                        i2 = b.a().a(attributeSet.getAttributeValue(i5));
                        setPadding(i, i4, i2, i3);
                        continue;
                    case 24:
                        setPadding(b.a().a(attributeSet.getAttributeValue(i5)), i4, i2, i3);
                        continue;
                    case 25:
                        setPadding(i, i4, b.a().a(attributeSet.getAttributeValue(i5)), i3);
                        continue;
                }
            }
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.b = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.c = campaignEx.getCampaignUnitId();
        }
    }

    public MBExtFeedBackView(Context context, AttributeSet attributeSet) {
        super(context);
        this.c = "";
        try {
            this.f8851a = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f8851a, this);
        } catch (Exception e) {
            o0.b("MBExtFeedBackView", e.getMessage());
        }
    }

    public MBExtFeedBackView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = "";
    }
}
